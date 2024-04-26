PROJ_DT_NAMES := mediatek/k6983v1_64 mediatek/oplus6983_21007 mediatek/oplus6983_22021 mediatek/oplus6983_22021_EVB mediatek/oplus6983_22921 mediatek/oplus6983_22823

ABS_DTB_FILES := $(abspath $(addsuffix .dtbo,$(addprefix $(objtree)/arch/arm64/boot/dts/,$(PROJ_DT_NAMES))))

my_dtbo_id := 0
define mk_dtboimg_cfg
echo $(1) >>$(2);\
echo " id=$(my_dtbo_id)" >>$(2);\
$(eval my_dtbo_id:=$(shell echo $$(($(my_dtbo_id)+1))))
endef

dtbs: $(objtree)/dtboimg.cfg

$(objtree)/dtboimg.cfg: FORCE
	rm -f $@.tmp
	$(foreach f,$(ABS_DTB_FILES),$(call mk_dtboimg_cfg,$(f),$@.tmp))
	if ! cmp -s $@.tmp $@; then \
		mv $@.tmp $@; \
	else \
		rm $@.tmp; \
	fi

dtbo: $(ABS_DTB_FILES)

FORCE:
