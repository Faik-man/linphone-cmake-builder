export LINPHONE_WORKDIR="$bundle_res"

#this is very important not to force a shared library path so that native frameworks can find their dependencies by themselves, 
#and not be forced to use the few libraries we have in the bundle that have the same name as native libs (ex: libiconv)
export DYLD_LIBRARY_PATH=

#the fucking script of the gtk-mac-bundler resets LANG due to obscure bugs. Set it back.
LANG=`defaults read .GlobalPreferences AppleLocale`

case "$LANG" in
	*.UTF-8)
		;;
	*)
		if test -d /usr/share/locale/${LANG}.UTF-8 ; then
			LANG=${LANG}.UTF-8
		fi
		;;
esac

export LANG

echo "LANG is $LANG"
