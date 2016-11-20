.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$1;,
        Landroid/content/Intent$CommandOptionHandler;,
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$ShortcutIconResource;
    }
.end annotation


# static fields
.field public static final ACTION_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String; = "android.intent.action.ADVANCED_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

.field public static final ACTION_APPLICATION_PREFERENCES:Ljava/lang/String; = "android.intent.action.APPLICATION_PREFERENCES"

.field public static final ACTION_APPLICATION_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

.field public static final ACTION_APP_ERROR:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field public static final ACTION_ASSIST:Ljava/lang/String; = "android.intent.action.ASSIST"

.field public static final ACTION_ATTACH_DATA:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field public static final ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field public static final ACTION_BATTERY_OKAY:Ljava/lang/String; = "android.intent.action.BATTERY_OKAY"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_BUG_REPORT:Ljava/lang/String; = "android.intent.action.BUG_REPORT"

.field public static final ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final ACTION_CALL_BUTTON:Ljava/lang/String; = "android.intent.action.CALL_BUTTON"

.field public static final ACTION_CALL_EMERGENCY:Ljava/lang/String; = "android.intent.action.CALL_EMERGENCY"

.field public static final ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"

.field public static final ACTION_CAMERA_BUTTON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON"

.field public static final ACTION_CHOOSER:Ljava/lang/String; = "android.intent.action.CHOOSER"

.field public static final ACTION_CLEAR_DNS_CACHE:Ljava/lang/String; = "android.intent.action.CLEAR_DNS_CACHE"

.field public static final ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"

.field public static final ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final ACTION_CREATE_DOCUMENT:Ljava/lang/String; = "android.intent.action.CREATE_DOCUMENT"

.field public static final ACTION_CREATE_SHORTCUT:Ljava/lang/String; = "android.intent.action.CREATE_SHORTCUT"

.field public static final ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field public static final ACTION_DEFAULT:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_DELETE:Ljava/lang/String; = "android.intent.action.DELETE"

.field public static final ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"

.field public static final ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"

.field public static final ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"

.field public static final ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"

.field public static final ACTION_DIAL:Ljava/lang/String; = "android.intent.action.DIAL"

.field public static final ACTION_DISMISS_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

.field public static final ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final ACTION_DREAMING_STARTED:Ljava/lang/String; = "android.intent.action.DREAMING_STARTED"

.field public static final ACTION_DREAMING_STOPPED:Ljava/lang/String; = "android.intent.action.DREAMING_STOPPED"

.field public static final ACTION_DYNAMIC_SENSOR_CHANGED:Ljava/lang/String; = "android.intent.action.DYNAMIC_SENSOR_CHANGED"

.field public static final ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final ACTION_GET_RESTRICTION_ENTRIES:Ljava/lang/String; = "android.intent.action.GET_RESTRICTION_ENTRIES"

.field public static final ACTION_GLOBAL_BUTTON:Ljava/lang/String; = "android.intent.action.GLOBAL_BUTTON"

.field public static final ACTION_GTALK_SERVICE_CONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_CONNECTED"

.field public static final ACTION_GTALK_SERVICE_DISCONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_DISCONNECTED"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_IDLE_MAINTENANCE_END:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

.field public static final ACTION_IDLE_MAINTENANCE_START:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

.field public static final ACTION_INPUT_METHOD_CHANGED:Ljava/lang/String; = "android.intent.action.INPUT_METHOD_CHANGED"

.field public static final ACTION_INSERT:Ljava/lang/String; = "android.intent.action.INSERT"

.field public static final ACTION_INSERT_OR_EDIT:Ljava/lang/String; = "android.intent.action.INSERT_OR_EDIT"

.field public static final ACTION_INSTALL_EPHEMERAL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_EPHEMERAL_PACKAGE"

.field public static final ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_PACKAGE"

.field public static final ACTION_INTENT_FILTER_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

.field public static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final ACTION_LOCKED_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.LOCKED_BOOT_COMPLETED"

.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_AVAILABLE"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final ACTION_MANAGED_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

.field public static final ACTION_MANAGED_PROFILE_UNLOCKED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNLOCKED"

.field public static final ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"

.field public static final ACTION_MANAGE_NETWORK_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_NETWORK_USAGE"

.field public static final ACTION_MANAGE_PACKAGE_STORAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PACKAGE_STORAGE"

.field public static final ACTION_MANAGE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSIONS"

.field public static final ACTION_MANAGE_PERMISSION_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSION_APPS"

.field public static final ACTION_MASTER_CLEAR:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR"

.field public static final ACTION_MEDIA_BAD_REMOVAL:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field public static final ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field public static final ACTION_MEDIA_CHECKING:Ljava/lang/String; = "android.intent.action.MEDIA_CHECKING"

.field public static final ACTION_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field public static final ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field public static final ACTION_MEDIA_NOFS:Ljava/lang/String; = "android.intent.action.MEDIA_NOFS"

.field public static final ACTION_MEDIA_REMOVED:Ljava/lang/String; = "android.intent.action.MEDIA_REMOVED"

.field public static final ACTION_MEDIA_RESOURCE_GRANTED:Ljava/lang/String; = "android.intent.action.MEDIA_RESOURCE_GRANTED"

.field public static final ACTION_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field public static final ACTION_MEDIA_SCANNER_SCAN_FILE:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

.field public static final ACTION_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_STARTED"

.field public static final ACTION_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_SHARED"

.field public static final ACTION_MEDIA_UNMOUNTABLE:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTABLE"

.field public static final ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field public static final ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field public static final ACTION_MY_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_REPLACED"

.field public static final ACTION_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"

.field public static final ACTION_OPEN_DOCUMENT:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT"

.field public static final ACTION_OPEN_DOCUMENT_TREE:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT_TREE"

.field public static final ACTION_PACKAGES_SUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENDED"

.field public static final ACTION_PACKAGES_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_UNSUSPENDED"

.field public static final ACTION_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field public static final ACTION_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "android.intent.action.PACKAGE_DATA_CLEARED"

.field public static final ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "android.intent.action.PACKAGE_FIRST_LAUNCH"

.field public static final ACTION_PACKAGE_FULLY_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final ACTION_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PACKAGE_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

.field public static final ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final ACTION_PACKAGE_RESTARTED:Ljava/lang/String; = "android.intent.action.PACKAGE_RESTARTED"

.field public static final ACTION_PACKAGE_VERIFIED:Ljava/lang/String; = "android.intent.action.PACKAGE_VERIFIED"

.field public static final ACTION_PASTE:Ljava/lang/String; = "android.intent.action.PASTE"

.field public static final ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final ACTION_PICK_ACTIVITY:Ljava/lang/String; = "android.intent.action.PICK_ACTIVITY"

.field public static final ACTION_POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field public static final ACTION_POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field public static final ACTION_POWER_USAGE_SUMMARY:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field public static final ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"

.field public static final ACTION_PROCESS_TEXT:Ljava/lang/String; = "android.intent.action.PROCESS_TEXT"

.field public static final ACTION_PROVIDER_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final ACTION_QUERY_PACKAGE_RESTART:Ljava/lang/String; = "android.intent.action.QUERY_PACKAGE_RESTART"

.field public static final ACTION_QUICK_CLOCK:Ljava/lang/String; = "android.intent.action.QUICK_CLOCK"

.field public static final ACTION_QUICK_VIEW:Ljava/lang/String; = "android.intent.action.QUICK_VIEW"

.field public static final ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_SHUTDOWN"

.field public static final ACTION_RESOLVE_EPHEMERAL_PACKAGE:Ljava/lang/String; = "android.intent.action.RESOLVE_EPHEMERAL_PACKAGE"

.field public static final ACTION_REVIEW_PERMISSIONS:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSIONS"

.field public static final ACTION_RUN:Ljava/lang/String; = "android.intent.action.RUN"

.field public static final ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final ACTION_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final ACTION_SEARCH_LONG_PRESS:Ljava/lang/String; = "android.intent.action.SEARCH_LONG_PRESS"

.field public static final ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final ACTION_SENDTO:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final ACTION_SEND_MULTIPLE:Ljava/lang/String; = "android.intent.action.SEND_MULTIPLE"

.field public static final ACTION_SETTING_RESTORED:Ljava/lang/String; = "android.os.action.SETTING_RESTORED"

.field public static final ACTION_SET_WALLPAPER:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER"

.field public static final ACTION_SHOW_APP_INFO:Ljava/lang/String; = "android.intent.action.SHOW_APP_INFO"

.field public static final ACTION_SHOW_BRIGHTNESS_DIALOG:Ljava/lang/String; = "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

.field public static final ACTION_SHOW_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final ACTION_SIM_ACTIVATION_REQUEST:Ljava/lang/String; = "android.intent.action.SIM_ACTIVATION_REQUEST"

.field public static final ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

.field public static final ACTION_THERMAL_EVENT:Ljava/lang/String; = "android.intent.action.THERMAL_EVENT"

.field public static final ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field public static final ACTION_TIME_CHANGED:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final ACTION_TIME_TICK:Ljava/lang/String; = "android.intent.action.TIME_TICK"

.field public static final ACTION_UID_REMOVED:Ljava/lang/String; = "android.intent.action.UID_REMOVED"

.field public static final ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UMS_DISCONNECTED:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.UNINSTALL_PACKAGE"

.field public static final ACTION_UPGRADE_SETUP:Ljava/lang/String; = "android.intent.action.UPGRADE_SETUP"

.field public static final ACTION_USER_ADDED:Ljava/lang/String; = "android.intent.action.USER_ADDED"

.field public static final ACTION_USER_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_BACKGROUND"

.field public static final ACTION_USER_FOREGROUND:Ljava/lang/String; = "android.intent.action.USER_FOREGROUND"

.field public static final ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED"

.field public static final ACTION_USER_INITIALIZE:Ljava/lang/String; = "android.intent.action.USER_INITIALIZE"

.field public static final ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"

.field public static final ACTION_USER_STARTED:Ljava/lang/String; = "android.intent.action.USER_STARTED"

.field public static final ACTION_USER_STARTING:Ljava/lang/String; = "android.intent.action.USER_STARTING"

.field public static final ACTION_USER_STOPPED:Ljava/lang/String; = "android.intent.action.USER_STOPPED"

.field public static final ACTION_USER_STOPPING:Ljava/lang/String; = "android.intent.action.USER_STOPPING"

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final ACTION_USER_UNLOCKED:Ljava/lang/String; = "android.intent.action.USER_UNLOCKED"

.field public static final ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_VOICE_ASSIST:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST"

.field public static final ACTION_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.VOICE_COMMAND"

.field public static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_WEB_SEARCH:Ljava/lang/String; = "android.intent.action.WEB_SEARCH"

.field private static final ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_DATA:Ljava/lang/String; = "data"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final CATEGORY_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.ALTERNATIVE"

.field public static final CATEGORY_APP_BROWSER:Ljava/lang/String; = "android.intent.category.APP_BROWSER"

.field public static final CATEGORY_APP_CALCULATOR:Ljava/lang/String; = "android.intent.category.APP_CALCULATOR"

.field public static final CATEGORY_APP_CALENDAR:Ljava/lang/String; = "android.intent.category.APP_CALENDAR"

.field public static final CATEGORY_APP_CONTACTS:Ljava/lang/String; = "android.intent.category.APP_CONTACTS"

.field public static final CATEGORY_APP_EMAIL:Ljava/lang/String; = "android.intent.category.APP_EMAIL"

.field public static final CATEGORY_APP_GALLERY:Ljava/lang/String; = "android.intent.category.APP_GALLERY"

.field public static final CATEGORY_APP_MAPS:Ljava/lang/String; = "android.intent.category.APP_MAPS"

.field public static final CATEGORY_APP_MARKET:Ljava/lang/String; = "android.intent.category.APP_MARKET"

.field public static final CATEGORY_APP_MESSAGING:Ljava/lang/String; = "android.intent.category.APP_MESSAGING"

.field public static final CATEGORY_APP_MUSIC:Ljava/lang/String; = "android.intent.category.APP_MUSIC"

.field public static final CATEGORY_BROWSABLE:Ljava/lang/String; = "android.intent.category.BROWSABLE"

.field public static final CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field public static final CATEGORY_CAR_MODE:Ljava/lang/String; = "android.intent.category.CAR_MODE"

.field public static final CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field public static final CATEGORY_DEVELOPMENT_PREFERENCE:Ljava/lang/String; = "android.intent.category.DEVELOPMENT_PREFERENCE"

.field public static final CATEGORY_EMBED:Ljava/lang/String; = "android.intent.category.EMBED"

.field public static final CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:Ljava/lang/String; = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST"

.field public static final CATEGORY_HE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.HE_DESK_DOCK"

.field public static final CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field public static final CATEGORY_HOME_MAIN:Ljava/lang/String; = "android.intent.category.HOME_MAIN"

.field public static final CATEGORY_INFO:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final CATEGORY_LAUNCHER:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final CATEGORY_LEANBACK_SETTINGS:Ljava/lang/String; = "android.intent.category.LEANBACK_SETTINGS"

.field public static final CATEGORY_LE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.LE_DESK_DOCK"

.field public static final CATEGORY_MONKEY:Ljava/lang/String; = "android.intent.category.MONKEY"

.field public static final CATEGORY_OPENABLE:Ljava/lang/String; = "android.intent.category.OPENABLE"

.field public static final CATEGORY_PREFERENCE:Ljava/lang/String; = "android.intent.category.PREFERENCE"

.field public static final CATEGORY_SAMPLE_CODE:Ljava/lang/String; = "android.intent.category.SAMPLE_CODE"

.field public static final CATEGORY_SELECTED_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.SELECTED_ALTERNATIVE"

.field public static final CATEGORY_SETUP_WIZARD:Ljava/lang/String; = "android.intent.category.SETUP_WIZARD"

.field public static final CATEGORY_TAB:Ljava/lang/String; = "android.intent.category.TAB"

.field public static final CATEGORY_TEST:Ljava/lang/String; = "android.intent.category.TEST"

.field public static final CATEGORY_UNIT_TEST:Ljava/lang/String; = "android.intent.category.UNIT_TEST"

.field public static final CATEGORY_VOICE:Ljava/lang/String; = "android.intent.category.VOICE"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ALARM_COUNT:Ljava/lang/String; = "android.intent.extra.ALARM_COUNT"

.field public static final EXTRA_ALLOW_MULTIPLE:Ljava/lang/String; = "android.intent.extra.ALLOW_MULTIPLE"

.field public static final EXTRA_ALLOW_REPLACE:Ljava/lang/String; = "android.intent.extra.ALLOW_REPLACE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ALTERNATE_INTENTS:Ljava/lang/String; = "android.intent.extra.ALTERNATE_INTENTS"

.field public static final EXTRA_ASSIST_CONTEXT:Ljava/lang/String; = "android.intent.extra.ASSIST_CONTEXT"

.field public static final EXTRA_ASSIST_INPUT_DEVICE_ID:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

.field public static final EXTRA_ASSIST_INPUT_HINT_KEYBOARD:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

.field public static final EXTRA_ASSIST_PACKAGE:Ljava/lang/String; = "android.intent.extra.ASSIST_PACKAGE"

.field public static final EXTRA_ASSIST_UID:Ljava/lang/String; = "android.intent.extra.ASSIST_UID"

.field public static final EXTRA_BCC:Ljava/lang/String; = "android.intent.extra.BCC"

.field public static final EXTRA_BUG_REPORT:Ljava/lang/String; = "android.intent.extra.BUG_REPORT"

.field public static final EXTRA_CC:Ljava/lang/String; = "android.intent.extra.CC"

.field public static final EXTRA_CHANGED_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.changed_component_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CHANGED_COMPONENT_NAME_LIST:Ljava/lang/String; = "android.intent.extra.changed_component_name_list"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_CHOOSER_REFINEMENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

.field public static final EXTRA_CHOOSER_TARGETS:Ljava/lang/String; = "android.intent.extra.CHOOSER_TARGETS"

.field public static final EXTRA_CHOSEN_COMPONENT:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT"

.field public static final EXTRA_CHOSEN_COMPONENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

.field public static final EXTRA_CLIENT_INTENT:Ljava/lang/String; = "android.intent.extra.client_intent"

.field public static final EXTRA_CLIENT_LABEL:Ljava/lang/String; = "android.intent.extra.client_label"

.field public static final EXTRA_DATA_REMOVED:Ljava/lang/String; = "android.intent.extra.DATA_REMOVED"

.field public static final EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static final EXTRA_DOCK_STATE_CAR:I = 0x2

.field public static final EXTRA_DOCK_STATE_DESK:I = 0x1

.field public static final EXTRA_DOCK_STATE_HE_DESK:I = 0x4

.field public static final EXTRA_DOCK_STATE_LE_DESK:I = 0x3

.field public static final EXTRA_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final EXTRA_DONT_KILL_APP:Ljava/lang/String; = "android.intent.extra.DONT_KILL_APP"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "android.intent.extra.EMAIL"

.field public static final EXTRA_EPHEMERAL_FAILURE:Ljava/lang/String; = "android.intent.extra.EPHEMERAL_FAILURE"

.field public static final EXTRA_EPHEMERAL_SUCCESS:Ljava/lang/String; = "android.intent.extra.EPHEMERAL_SUCCESS"

.field public static final EXTRA_EXCLUDE_COMPONENTS:Ljava/lang/String; = "android.intent.extra.EXCLUDE_COMPONENTS"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final EXTRA_INDEX:Ljava/lang/String; = "android.intent.extra.INDEX"

.field public static final EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.intent.extra.LOCAL_ONLY"

.field public static final EXTRA_MEDIA_RESOURCE_TYPE:Ljava/lang/String; = "android.intent.extra.MEDIA_RESOURCE_TYPE"

.field public static final EXTRA_MEDIA_RESOURCE_TYPE_AUDIO_CODEC:I = 0x1

.field public static final EXTRA_MEDIA_RESOURCE_TYPE_VIDEO_CODEC:I = 0x0

.field public static final EXTRA_MIME_TYPES:Ljava/lang/String; = "android.intent.extra.MIME_TYPES"

.field public static final EXTRA_NOT_UNKNOWN_SOURCE:Ljava/lang/String; = "android.intent.extra.NOT_UNKNOWN_SOURCE"

.field public static final EXTRA_ORIGINATING_UID:Ljava/lang/String; = "android.intent.extra.ORIGINATING_UID"

.field public static final EXTRA_ORIGINATING_URI:Ljava/lang/String; = "android.intent.extra.ORIGINATING_URI"

.field public static final EXTRA_PACKAGES:Ljava/lang/String; = "android.intent.extra.PACKAGES"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_NAME"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_NUMBER"

.field public static final EXTRA_PROCESS_TEXT:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT"

.field public static final EXTRA_PROCESS_TEXT_READONLY:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT_READONLY"

.field public static final EXTRA_QUIET_MODE:Ljava/lang/String; = "android.intent.extra.QUIET_MODE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"

.field public static final EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field public static final EXTRA_REMOTE_CALLBACK:Ljava/lang/String; = "android.intent.extra.REMOTE_CALLBACK"

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final EXTRA_REMOVED_FOR_ALL_USERS:Ljava/lang/String; = "android.intent.extra.REMOVED_FOR_ALL_USERS"

.field public static final EXTRA_REPLACEMENT_EXTRAS:Ljava/lang/String; = "android.intent.extra.REPLACEMENT_EXTRAS"

.field public static final EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final EXTRA_RESTRICTIONS_BUNDLE:Ljava/lang/String; = "android.intent.extra.restrictions_bundle"

.field public static final EXTRA_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"

.field public static final EXTRA_RESTRICTIONS_LIST:Ljava/lang/String; = "android.intent.extra.restrictions_list"

.field public static final EXTRA_RESULT_NEEDED:Ljava/lang/String; = "android.intent.extra.RESULT_NEEDED"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "android.intent.extra.RESULT_RECEIVER"

.field public static final EXTRA_RETURN_RESULT:Ljava/lang/String; = "android.intent.extra.RETURN_RESULT"

.field public static final EXTRA_SETTING_NAME:Ljava/lang/String; = "setting_name"

.field public static final EXTRA_SETTING_NEW_VALUE:Ljava/lang/String; = "new_value"

.field public static final EXTRA_SETTING_PREVIOUS_VALUE:Ljava/lang/String; = "previous_value"

.field public static final EXTRA_SHORTCUT_ICON:Ljava/lang/String; = "android.intent.extra.shortcut.ICON"

.field public static final EXTRA_SHORTCUT_ICON_RESOURCE:Ljava/lang/String; = "android.intent.extra.shortcut.ICON_RESOURCE"

.field public static final EXTRA_SHORTCUT_INTENT:Ljava/lang/String; = "android.intent.extra.shortcut.INTENT"

.field public static final EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "android.intent.extra.shortcut.NAME"

.field public static final EXTRA_SHUTDOWN_USERSPACE_ONLY:Ljava/lang/String; = "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

.field public static final EXTRA_SIM_ACTIVATION_RESPONSE:Ljava/lang/String; = "android.intent.extra.SIM_ACTIVATION_RESPONSE"

.field public static final EXTRA_STREAM:Ljava/lang/String; = "android.intent.extra.STREAM"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static final EXTRA_TASK_ID:Ljava/lang/String; = "android.intent.extra.TASK_ID"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final EXTRA_THERMAL_STATE:Ljava/lang/String; = "android.intent.extra.THERMAL_STATE"

.field public static final EXTRA_THERMAL_STATE_EXCEEDED:I = 0x2

.field public static final EXTRA_THERMAL_STATE_NORMAL:I = 0x0

.field public static final EXTRA_THERMAL_STATE_WARNING:I = 0x1

.field public static final EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"

.field public static final EXTRA_USER:Ljava/lang/String; = "android.intent.extra.USER"

.field public static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "android.intent.extra.USER_ID"

.field public static final EXTRA_USER_REQUESTED_SHUTDOWN:Ljava/lang/String; = "android.intent.extra.USER_REQUESTED_SHUTDOWN"

.field public static final EXTRA_WIPE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.intent.extra.WIPE_EXTERNAL_STORAGE"

.field public static final FILL_IN_ACTION:I = 0x1

.field public static final FILL_IN_CATEGORIES:I = 0x4

.field public static final FILL_IN_CLIP_DATA:I = 0x80

.field public static final FILL_IN_COMPONENT:I = 0x8

.field public static final FILL_IN_DATA:I = 0x2

.field public static final FILL_IN_PACKAGE:I = 0x10

.field public static final FILL_IN_SELECTOR:I = 0x40

.field public static final FILL_IN_SOURCE_BOUNDS:I = 0x20

.field public static final FLAG_ACTIVITY_BROUGHT_TO_FRONT:I = 0x400000

.field public static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final FLAG_ACTIVITY_CLEAR_TOP:I = 0x4000000

.field public static final FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:I = 0x80000

.field public static final FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:I = 0x800000

.field public static final FLAG_ACTIVITY_FORWARD_RESULT:I = 0x2000000

.field public static final FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:I = 0x100000

.field public static final FLAG_ACTIVITY_LAUNCH_ADJACENT:I = 0x1000

.field public static final FLAG_ACTIVITY_MULTIPLE_TASK:I = 0x8000000

.field public static final FLAG_ACTIVITY_NEW_DOCUMENT:I = 0x80000

.field public static final FLAG_ACTIVITY_NEW_TASK:I = 0x10000000

.field public static final FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final FLAG_ACTIVITY_NO_HISTORY:I = 0x40000000

.field public static final FLAG_ACTIVITY_NO_USER_ACTION:I = 0x40000

.field public static final FLAG_ACTIVITY_PREVIOUS_IS_TOP:I = 0x1000000

.field public static final FLAG_ACTIVITY_REORDER_TO_FRONT:I = 0x20000

.field public static final FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:I = 0x200000

.field public static final FLAG_ACTIVITY_RETAIN_IN_RECENTS:I = 0x2000

.field public static final FLAG_ACTIVITY_SINGLE_TOP:I = 0x20000000

.field public static final FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field public static final FLAG_DEBUG_LOG_RESOLUTION:I = 0x8

.field public static final FLAG_DEBUG_TRIAGED_MISSING:I = 0x100

.field public static final FLAG_EXCLUDE_STOPPED_PACKAGES:I = 0x10

.field public static final FLAG_FROM_BACKGROUND:I = 0x4

.field public static final FLAG_GRANT_PERSISTABLE_URI_PERMISSION:I = 0x40

.field public static final FLAG_GRANT_PREFIX_URI_PERMISSION:I = 0x80

.field public static final FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final FLAG_RECEIVER_BOOT_UPGRADE:I = 0x2000000

.field public static final FLAG_RECEIVER_EXCLUDE_BACKGROUND:I = 0x800000

.field public static final FLAG_RECEIVER_FOREGROUND:I = 0x10000000

.field public static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000

.field public static final FLAG_RECEIVER_NO_ABORT:I = 0x8000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY:I = 0x40000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I = 0x4000000

.field public static final FLAG_RECEIVER_REPLACE_PENDING:I = 0x20000000

.field public static final IMMUTABLE_FLAGS:I = 0xc3

.field public static final METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final METADATA_SETUP_VERSION:Ljava/lang/String; = "android.SETUP_VERSION"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field public static final URI_ALLOW_UNSAFE:I = 0x4

.field public static final URI_ANDROID_APP_SCHEME:I = 0x2

.field public static final URI_INTENT_SCHEME:I = 0x1


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;

.field private mComponent:Landroid/content/ComponentName;

.field private mContentUserHint:I

.field private mData:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mPackage:Ljava/lang/String;

.field private mSelector:Landroid/content/Intent;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 8659
    new-instance v0, Landroid/content/Intent$1;

    #@2
    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    #@5
    .line 8658
    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 619
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 4761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4754
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4761
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4867
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4754
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4868
    new-instance v0, Landroid/content/ComponentName;

    #@8
    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@b
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@d
    .line 4867
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "o"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4754
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4768
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@8
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@a
    .line 4769
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@c
    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@e
    .line 4770
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@10
    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@12
    .line 4771
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@14
    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@16
    .line 4772
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@18
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@1a
    .line 4773
    iget v0, p1, Landroid/content/Intent;->mFlags:I

    #@1c
    iput v0, p0, Landroid/content/Intent;->mFlags:I

    #@1e
    .line 4774
    iget v0, p1, Landroid/content/Intent;->mContentUserHint:I

    #@20
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@22
    .line 4775
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 4776
    new-instance v0, Landroid/util/ArraySet;

    #@28
    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@2a
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@2d
    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@2f
    .line 4778
    :cond_0
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 4779
    new-instance v0, Landroid/os/Bundle;

    #@35
    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@37
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@3a
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3c
    .line 4781
    :cond_1
    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@3e
    if-eqz v0, :cond_2

    #@40
    .line 4782
    new-instance v0, Landroid/graphics/Rect;

    #@42
    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@44
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@47
    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@49
    .line 4784
    :cond_2
    iget-object v0, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@4b
    if-eqz v0, :cond_3

    #@4d
    .line 4785
    new-instance v0, Landroid/content/Intent;

    #@4f
    iget-object v1, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@51
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@54
    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@56
    .line 4787
    :cond_3
    iget-object v0, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@58
    if-eqz v0, :cond_4

    #@5a
    .line 4788
    new-instance v0, Landroid/content/ClipData;

    #@5c
    iget-object v1, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@5e
    invoke-direct {v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    #@61
    iput-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@63
    .line 4767
    :cond_4
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Z)V
    .locals 2
    .param p1, "o"    # Landroid/content/Intent;
    .param p2, "all"    # Z

    #@0
    .prologue
    .line 4797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4754
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4798
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@8
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@a
    .line 4799
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@c
    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@e
    .line 4800
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@10
    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@12
    .line 4801
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@14
    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@16
    .line 4802
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@18
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@1a
    .line 4803
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 4804
    new-instance v0, Landroid/util/ArraySet;

    #@20
    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@22
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@25
    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@27
    .line 4797
    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 8669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4754
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 8670
    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    #@9
    .line 8669
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4754
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4827
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@9
    .line 4826
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 4846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4754
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4847
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@9
    .line 4848
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@b
    .line 4846
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4894
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4754
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4896
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@9
    .line 4897
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@b
    .line 4898
    new-instance v0, Landroid/content/ComponentName;

    #@d
    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@10
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@12
    .line 4895
    return-void
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p0, "target"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 919
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;
    .locals 8
    .param p0, "target"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "sender"    # Landroid/content/IntentSender;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 947
    new-instance v0, Landroid/content/Intent;

    #@4
    const-string/jumbo v5, "android.intent.action.CHOOSER"

    #@7
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a
    .line 948
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.INTENT"

    #@d
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@10
    .line 949
    if-eqz p1, :cond_0

    #@12
    .line 950
    const-string/jumbo v5, "android.intent.extra.TITLE"

    #@15
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@18
    .line 953
    :cond_0
    if-eqz p2, :cond_1

    #@1a
    .line 954
    const-string/jumbo v5, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    #@1d
    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@20
    .line 958
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    #@23
    move-result v5

    #@24
    and-int/lit16 v3, v5, 0xc3

    #@26
    .line 961
    .local v3, "permFlags":I
    if-eqz v3, :cond_3

    #@28
    .line 962
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@2b
    move-result-object v4

    #@2c
    .line 963
    .local v4, "targetClipData":Landroid/content/ClipData;
    if-nez v4, :cond_2

    #@2e
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@31
    move-result-object v5

    #@32
    if-eqz v5, :cond_2

    #@34
    .line 964
    new-instance v1, Landroid/content/ClipData$Item;

    #@36
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@39
    move-result-object v5

    #@3a
    invoke-direct {v1, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    #@3d
    .line 966
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    if-eqz v5, :cond_4

    #@43
    .line 967
    const/4 v5, 0x1

    #@44
    new-array v2, v5, [Ljava/lang/String;

    #@46
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    aput-object v5, v2, v7

    #@4c
    .line 971
    .local v2, "mimeTypes":[Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/ClipData;

    #@4e
    .end local v4    # "targetClipData":Landroid/content/ClipData;
    invoke-direct {v4, v6, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@51
    .line 973
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "mimeTypes":[Ljava/lang/String;
    .restart local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_2
    if-eqz v4, :cond_3

    #@53
    .line 974
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@56
    .line 975
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@59
    .line 979
    .end local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_3
    return-object v0

    #@5a
    .line 969
    .restart local v1    # "item":Landroid/content/ClipData$Item;
    .restart local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_4
    new-array v2, v7, [Ljava/lang/String;

    #@5c
    .restart local v2    # "mimeTypes":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4988
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getIntentOld(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 5227
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private static getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 22
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 5233
    const/16 v19, 0x23

    #@2
    move-object/from16 v0, p0

    #@4
    move/from16 v1, v19

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    #@9
    move-result v9

    #@a
    .line 5234
    .local v9, "i":I
    if-ltz v9, :cond_17

    #@c
    .line 5235
    const/4 v4, 0x0

    #@d
    .line 5236
    .local v4, "action":Ljava/lang/String;
    move v11, v9

    #@e
    .line 5237
    .local v11, "intentFragmentStart":I
    const/4 v12, 0x0

    #@f
    .line 5239
    .local v12, "isIntentFragment":Z
    add-int/lit8 v9, v9, 0x1

    #@11
    .line 5241
    const-string/jumbo v19, "action("

    #@14
    const/16 v20, 0x0

    #@16
    const/16 v21, 0x7

    #@18
    move-object/from16 v0, p0

    #@1a
    move-object/from16 v1, v19

    #@1c
    move/from16 v2, v20

    #@1e
    move/from16 v3, v21

    #@20
    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@23
    move-result v19

    #@24
    if-eqz v19, :cond_0

    #@26
    .line 5242
    const/4 v12, 0x1

    #@27
    .line 5243
    add-int/lit8 v9, v9, 0x7

    #@29
    .line 5244
    const/16 v19, 0x29

    #@2b
    move-object/from16 v0, p0

    #@2d
    move/from16 v1, v19

    #@2f
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    #@32
    move-result v13

    #@33
    .line 5245
    .local v13, "j":I
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 5246
    .local v4, "action":Ljava/lang/String;
    add-int/lit8 v9, v13, 0x1

    #@3b
    .line 5249
    .end local v4    # "action":Ljava/lang/String;
    .end local v13    # "j":I
    :cond_0
    new-instance v10, Landroid/content/Intent;

    #@3d
    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@40
    .line 5251
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v19, "categories("

    #@43
    const/16 v20, 0x0

    #@45
    const/16 v21, 0xb

    #@47
    move-object/from16 v0, p0

    #@49
    move-object/from16 v1, v19

    #@4b
    move/from16 v2, v20

    #@4d
    move/from16 v3, v21

    #@4f
    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@52
    move-result v19

    #@53
    if-eqz v19, :cond_5

    #@55
    .line 5252
    const/4 v12, 0x1

    #@56
    .line 5253
    add-int/lit8 v9, v9, 0xb

    #@58
    .line 5254
    const/16 v19, 0x29

    #@5a
    move-object/from16 v0, p0

    #@5c
    move/from16 v1, v19

    #@5e
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    #@61
    move-result v13

    #@62
    .line 5255
    .restart local v13    # "j":I
    :goto_0
    if-ge v9, v13, :cond_4

    #@64
    .line 5256
    const/16 v19, 0x21

    #@66
    move-object/from16 v0, p0

    #@68
    move/from16 v1, v19

    #@6a
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    #@6d
    move-result v16

    #@6e
    .line 5257
    .local v16, "sep":I
    if-ltz v16, :cond_1

    #@70
    move/from16 v0, v16

    #@72
    if-le v0, v13, :cond_2

    #@74
    :cond_1
    move/from16 v16, v13

    #@76
    .line 5258
    :cond_2
    move/from16 v0, v16

    #@78
    if-ge v9, v0, :cond_3

    #@7a
    .line 5259
    move-object/from16 v0, p0

    #@7c
    move/from16 v1, v16

    #@7e
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@81
    move-result-object v19

    #@82
    move-object/from16 v0, v19

    #@84
    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@87
    .line 5261
    :cond_3
    add-int/lit8 v9, v16, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 5263
    .end local v16    # "sep":I
    :cond_4
    add-int/lit8 v9, v13, 0x1

    #@8c
    .line 5266
    .end local v13    # "j":I
    :cond_5
    const-string/jumbo v19, "type("

    #@8f
    const/16 v20, 0x0

    #@91
    const/16 v21, 0x5

    #@93
    move-object/from16 v0, p0

    #@95
    move-object/from16 v1, v19

    #@97
    move/from16 v2, v20

    #@99
    move/from16 v3, v21

    #@9b
    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@9e
    move-result v19

    #@9f
    if-eqz v19, :cond_6

    #@a1
    .line 5267
    const/4 v12, 0x1

    #@a2
    .line 5268
    add-int/lit8 v9, v9, 0x5

    #@a4
    .line 5269
    const/16 v19, 0x29

    #@a6
    move-object/from16 v0, p0

    #@a8
    move/from16 v1, v19

    #@aa
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    #@ad
    move-result v13

    #@ae
    .line 5270
    .restart local v13    # "j":I
    move-object/from16 v0, p0

    #@b0
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b3
    move-result-object v19

    #@b4
    move-object/from16 v0, v19

    #@b6
    iput-object v0, v10, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@b8
    .line 5271
    add-int/lit8 v9, v13, 0x1

    #@ba
    .line 5274
    .end local v13    # "j":I
    :cond_6
    const-string/jumbo v19, "launchFlags("

    #@bd
    const/16 v20, 0x0

    #@bf
    const/16 v21, 0xc

    #@c1
    move-object/from16 v0, p0

    #@c3
    move-object/from16 v1, v19

    #@c5
    move/from16 v2, v20

    #@c7
    move/from16 v3, v21

    #@c9
    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@cc
    move-result v19

    #@cd
    if-eqz v19, :cond_8

    #@cf
    .line 5275
    const/4 v12, 0x1

    #@d0
    .line 5276
    add-int/lit8 v9, v9, 0xc

    #@d2
    .line 5277
    const/16 v19, 0x29

    #@d4
    move-object/from16 v0, p0

    #@d6
    move/from16 v1, v19

    #@d8
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    #@db
    move-result v13

    #@dc
    .line 5278
    .restart local v13    # "j":I
    move-object/from16 v0, p0

    #@de
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e1
    move-result-object v19

    #@e2
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@e5
    move-result-object v19

    #@e6
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    #@e9
    move-result v19

    #@ea
    move/from16 v0, v19

    #@ec
    iput v0, v10, Landroid/content/Intent;->mFlags:I

    #@ee
    .line 5279
    and-int/lit8 v19, p1, 0x4

    #@f0
    if-nez v19, :cond_7

    #@f2
    .line 5280
    iget v0, v10, Landroid/content/Intent;->mFlags:I

    #@f4
    move/from16 v19, v0

    #@f6
    move/from16 v0, v19

    #@f8
    and-int/lit16 v0, v0, -0xc4

    #@fa
    move/from16 v19, v0

    #@fc
    move/from16 v0, v19

    #@fe
    iput v0, v10, Landroid/content/Intent;->mFlags:I

    #@100
    .line 5282
    :cond_7
    add-int/lit8 v9, v13, 0x1

    #@102
    .line 5285
    .end local v13    # "j":I
    :cond_8
    const-string/jumbo v19, "component("

    #@105
    const/16 v20, 0x0

    #@107
    const/16 v21, 0xa

    #@109
    move-object/from16 v0, p0

    #@10b
    move-object/from16 v1, v19

    #@10d
    move/from16 v2, v20

    #@10f
    move/from16 v3, v21

    #@111
    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@114
    move-result v19

    #@115
    if-eqz v19, :cond_a

    #@117
    .line 5286
    const/4 v12, 0x1

    #@118
    .line 5287
    add-int/lit8 v9, v9, 0xa

    #@11a
    .line 5288
    const/16 v19, 0x29

    #@11c
    move-object/from16 v0, p0

    #@11e
    move/from16 v1, v19

    #@120
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    #@123
    move-result v13

    #@124
    .line 5289
    .restart local v13    # "j":I
    const/16 v19, 0x21

    #@126
    move-object/from16 v0, p0

    #@128
    move/from16 v1, v19

    #@12a
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    #@12d
    move-result v16

    #@12e
    .line 5290
    .restart local v16    # "sep":I
    if-ltz v16, :cond_9

    #@130
    move/from16 v0, v16

    #@132
    if-ge v0, v13, :cond_9

    #@134
    .line 5291
    move-object/from16 v0, p0

    #@136
    move/from16 v1, v16

    #@138
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13b
    move-result-object v15

    #@13c
    .line 5292
    .local v15, "pkg":Ljava/lang/String;
    add-int/lit8 v19, v16, 0x1

    #@13e
    move-object/from16 v0, p0

    #@140
    move/from16 v1, v19

    #@142
    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@145
    move-result-object v7

    #@146
    .line 5293
    .local v7, "cls":Ljava/lang/String;
    new-instance v19, Landroid/content/ComponentName;

    #@148
    move-object/from16 v0, v19

    #@14a
    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@14d
    move-object/from16 v0, v19

    #@14f
    iput-object v0, v10, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@151
    .line 5295
    .end local v7    # "cls":Ljava/lang/String;
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v13, 0x1

    #@153
    .line 5298
    .end local v13    # "j":I
    .end local v16    # "sep":I
    :cond_a
    const-string/jumbo v19, "extras("

    #@156
    const/16 v20, 0x0

    #@158
    const/16 v21, 0x7

    #@15a
    move-object/from16 v0, p0

    #@15c
    move-object/from16 v1, v19

    #@15e
    move/from16 v2, v20

    #@160
    move/from16 v3, v21

    #@162
    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@165
    move-result v19

    #@166
    if-eqz v19, :cond_13

    #@168
    .line 5299
    const/4 v12, 0x1

    #@169
    .line 5300
    add-int/lit8 v9, v9, 0x7

    #@16b
    .line 5302
    const/16 v19, 0x29

    #@16d
    move-object/from16 v0, p0

    #@16f
    move/from16 v1, v19

    #@171
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    #@174
    move-result v6

    #@175
    .line 5303
    .local v6, "closeParen":I
    const/16 v19, -0x1

    #@177
    move/from16 v0, v19

    #@179
    if-ne v6, v0, :cond_c

    #@17b
    new-instance v19, Ljava/net/URISyntaxException;

    #@17d
    .line 5304
    const-string/jumbo v20, "EXTRA missing trailing \')\'"

    #@180
    .line 5303
    move-object/from16 v0, v19

    #@182
    move-object/from16 v1, p0

    #@184
    move-object/from16 v2, v20

    #@186
    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@189
    throw v19

    #@18a
    .line 5367
    .local v5, "ch":C
    .restart local v13    # "j":I
    .local v14, "key":Ljava/lang/String;
    .local v17, "type":C
    .local v18, "value":Ljava/lang/String;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    #@18c
    .line 5306
    .end local v5    # "ch":C
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_c
    if-ge v9, v6, :cond_13

    #@18e
    .line 5308
    const/16 v19, 0x3d

    #@190
    move-object/from16 v0, p0

    #@192
    move/from16 v1, v19

    #@194
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    #@197
    move-result v13

    #@198
    .line 5309
    .restart local v13    # "j":I
    add-int/lit8 v19, v9, 0x1

    #@19a
    move/from16 v0, v19

    #@19c
    if-le v13, v0, :cond_d

    #@19e
    if-lt v9, v6, :cond_e

    #@1a0
    .line 5310
    :cond_d
    new-instance v19, Ljava/net/URISyntaxException;

    #@1a2
    const-string/jumbo v20, "EXTRA missing \'=\'"

    #@1a5
    move-object/from16 v0, v19

    #@1a7
    move-object/from16 v1, p0

    #@1a9
    move-object/from16 v2, v20

    #@1ab
    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@1ae
    throw v19

    #@1af
    .line 5312
    :cond_e
    move-object/from16 v0, p0

    #@1b1
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@1b4
    move-result v17

    #@1b5
    .line 5313
    .restart local v17    # "type":C
    add-int/lit8 v9, v9, 0x1

    #@1b7
    .line 5314
    move-object/from16 v0, p0

    #@1b9
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1bc
    move-result-object v14

    #@1bd
    .line 5315
    .restart local v14    # "key":Ljava/lang/String;
    add-int/lit8 v9, v13, 0x1

    #@1bf
    .line 5318
    const/16 v19, 0x21

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    move/from16 v1, v19

    #@1c5
    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    #@1c8
    move-result v13

    #@1c9
    .line 5319
    const/16 v19, -0x1

    #@1cb
    move/from16 v0, v19

    #@1cd
    if-eq v13, v0, :cond_f

    #@1cf
    if-lt v13, v6, :cond_10

    #@1d1
    :cond_f
    move v13, v6

    #@1d2
    .line 5320
    :cond_10
    if-lt v9, v13, :cond_11

    #@1d4
    new-instance v19, Ljava/net/URISyntaxException;

    #@1d6
    const-string/jumbo v20, "EXTRA missing \'!\'"

    #@1d9
    move-object/from16 v0, v19

    #@1db
    move-object/from16 v1, p0

    #@1dd
    move-object/from16 v2, v20

    #@1df
    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@1e2
    throw v19

    #@1e3
    .line 5321
    :cond_11
    move-object/from16 v0, p0

    #@1e5
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e8
    move-result-object v18

    #@1e9
    .line 5322
    .restart local v18    # "value":Ljava/lang/String;
    move v9, v13

    #@1ea
    .line 5325
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@1ec
    move-object/from16 v19, v0

    #@1ee
    if-nez v19, :cond_12

    #@1f0
    new-instance v19, Landroid/os/Bundle;

    #@1f2
    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    #@1f5
    move-object/from16 v0, v19

    #@1f7
    iput-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@1f9
    .line 5329
    :cond_12
    sparse-switch v17, :sswitch_data_0

    #@1fc
    .line 5358
    :try_start_0
    new-instance v19, Ljava/net/URISyntaxException;

    #@1fe
    const-string/jumbo v20, "EXTRA has unknown type"

    #@201
    move-object/from16 v0, v19

    #@203
    move-object/from16 v1, p0

    #@205
    move-object/from16 v2, v20

    #@207
    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@20a
    throw v19
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@20b
    .line 5360
    :catch_0
    move-exception v8

    #@20c
    .line 5361
    .local v8, "e":Ljava/lang/NumberFormatException;
    new-instance v19, Ljava/net/URISyntaxException;

    #@20e
    const-string/jumbo v20, "EXTRA value can\'t be parsed"

    #@211
    move-object/from16 v0, v19

    #@213
    move-object/from16 v1, p0

    #@215
    move-object/from16 v2, v20

    #@217
    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@21a
    throw v19

    #@21b
    .line 5331
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    :try_start_1
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@21d
    move-object/from16 v19, v0

    #@21f
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@222
    move-result-object v20

    #@223
    move-object/from16 v0, v19

    #@225
    move-object/from16 v1, v20

    #@227
    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@22a
    .line 5364
    :goto_1
    move-object/from16 v0, p0

    #@22c
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@22f
    move-result v5

    #@230
    .line 5365
    .restart local v5    # "ch":C
    const/16 v19, 0x29

    #@232
    move/from16 v0, v19

    #@234
    if-ne v5, v0, :cond_15

    #@236
    .line 5371
    .end local v5    # "ch":C
    .end local v6    # "closeParen":I
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_13
    if-eqz v12, :cond_16

    #@238
    .line 5372
    const/16 v19, 0x0

    #@23a
    move-object/from16 v0, p0

    #@23c
    move/from16 v1, v19

    #@23e
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@241
    move-result-object v19

    #@242
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@245
    move-result-object v19

    #@246
    move-object/from16 v0, v19

    #@248
    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@24a
    .line 5377
    :goto_2
    iget-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@24c
    move-object/from16 v19, v0

    #@24e
    if-nez v19, :cond_14

    #@250
    .line 5379
    const-string/jumbo v19, "android.intent.action.VIEW"

    #@253
    move-object/from16 v0, v19

    #@255
    iput-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@257
    .line 5386
    .end local v11    # "intentFragmentStart":I
    .end local v12    # "isIntentFragment":Z
    :cond_14
    :goto_3
    return-object v10

    #@258
    .line 5334
    .restart local v6    # "closeParen":I
    .restart local v11    # "intentFragmentStart":I
    .restart local v12    # "isIntentFragment":Z
    .restart local v13    # "j":I
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v17    # "type":C
    .restart local v18    # "value":Ljava/lang/String;
    :sswitch_1
    :try_start_2
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@25a
    move-object/from16 v19, v0

    #@25c
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@25f
    move-result v20

    #@260
    move-object/from16 v0, v19

    #@262
    move/from16 v1, v20

    #@264
    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@267
    goto :goto_1

    #@268
    .line 5337
    :sswitch_2
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@26a
    move-object/from16 v19, v0

    #@26c
    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    #@26f
    move-result v20

    #@270
    move-object/from16 v0, v19

    #@272
    move/from16 v1, v20

    #@274
    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    #@277
    goto :goto_1

    #@278
    .line 5340
    :sswitch_3
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@27a
    move-object/from16 v19, v0

    #@27c
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@27f
    move-result-object v20

    #@280
    const/16 v21, 0x0

    #@282
    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    #@285
    move-result v20

    #@286
    move-object/from16 v0, v19

    #@288
    move/from16 v1, v20

    #@28a
    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    #@28d
    goto :goto_1

    #@28e
    .line 5343
    :sswitch_4
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@290
    move-object/from16 v19, v0

    #@292
    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@295
    move-result-wide v20

    #@296
    move-object/from16 v0, v19

    #@298
    move-wide/from16 v1, v20

    #@29a
    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@29d
    goto :goto_1

    #@29e
    .line 5346
    :sswitch_5
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2a0
    move-object/from16 v19, v0

    #@2a2
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@2a5
    move-result v20

    #@2a6
    move-object/from16 v0, v19

    #@2a8
    move/from16 v1, v20

    #@2aa
    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@2ad
    goto/16 :goto_1

    #@2af
    .line 5349
    :sswitch_6
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2b1
    move-object/from16 v19, v0

    #@2b3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@2b6
    move-result v20

    #@2b7
    move-object/from16 v0, v19

    #@2b9
    move/from16 v1, v20

    #@2bb
    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@2be
    goto/16 :goto_1

    #@2c0
    .line 5352
    :sswitch_7
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2c2
    move-object/from16 v19, v0

    #@2c4
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@2c7
    move-result-wide v20

    #@2c8
    move-object/from16 v0, v19

    #@2ca
    move-wide/from16 v1, v20

    #@2cc
    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@2cf
    goto/16 :goto_1

    #@2d1
    .line 5355
    :sswitch_8
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2d3
    move-object/from16 v19, v0

    #@2d5
    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@2d8
    move-result v20

    #@2d9
    move-object/from16 v0, v19

    #@2db
    move/from16 v1, v20

    #@2dd
    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    #@2e0
    goto/16 :goto_1

    #@2e2
    .line 5366
    .restart local v5    # "ch":C
    :cond_15
    const/16 v19, 0x21

    #@2e4
    move/from16 v0, v19

    #@2e6
    if-eq v5, v0, :cond_b

    #@2e8
    new-instance v19, Ljava/net/URISyntaxException;

    #@2ea
    const-string/jumbo v20, "EXTRA missing \'!\'"

    #@2ed
    move-object/from16 v0, v19

    #@2ef
    move-object/from16 v1, p0

    #@2f1
    move-object/from16 v2, v20

    #@2f3
    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@2f6
    throw v19

    #@2f7
    .line 5374
    .end local v5    # "ch":C
    .end local v6    # "closeParen":I
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_16
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@2fa
    move-result-object v19

    #@2fb
    move-object/from16 v0, v19

    #@2fd
    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@2ff
    goto/16 :goto_2

    #@301
    .line 5383
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "intentFragmentStart":I
    .end local v12    # "isIntentFragment":Z
    :cond_17
    new-instance v10, Landroid/content/Intent;

    #@303
    const-string/jumbo v19, "android.intent.action.VIEW"

    #@306
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@309
    move-result-object v20

    #@30a
    move-object/from16 v0, v19

    #@30c
    move-object/from16 v1, v20

    #@30e
    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@311
    .restart local v10    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    #@313
    .line 5329
    nop

    #@314
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x53 -> :sswitch_0
        0x62 -> :sswitch_2
        0x63 -> :sswitch_3
        0x64 -> :sswitch_4
        0x66 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6c -> :sswitch_7
        0x73 -> :sswitch_8
    .end sparse-switch
.end method

.method public static isAccessUriMode(I)Z
    .locals 2
    .param p0, "modeFlags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4202
    and-int/lit8 v1, p0, 0x3

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private static makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;
    .locals 5
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ClipData$Item;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p1, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p2, "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    #@1
    .line 9116
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/net/Uri;

    #@9
    .line 9117
    :goto_0
    if-eqz p1, :cond_1

    #@b
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/CharSequence;

    #@11
    .line 9118
    :goto_1
    if-eqz p2, :cond_2

    #@13
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    .line 9119
    :goto_2
    new-instance v3, Landroid/content/ClipData$Item;

    #@1b
    invoke-direct {v3, v1, v0, v4, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    #@1e
    return-object v3

    #@1f
    .line 9116
    :cond_0
    const/4 v2, 0x0

    #@20
    .local v2, "uri":Landroid/net/Uri;
    goto :goto_0

    #@21
    .line 9117
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v1, 0x0

    #@22
    .local v1, "text":Ljava/lang/CharSequence;
    goto :goto_1

    #@23
    .line 9118
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_2
    const/4 v0, 0x0

    #@24
    .local v0, "htmlText":Ljava/lang/String;
    goto :goto_2
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4923
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 4924
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b
    .line 4925
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@11
    .line 4926
    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "selectorAction"    # Ljava/lang/String;
    .param p1, "selectorCategory"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4953
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 4954
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    #@b
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@e
    .line 4955
    new-instance v1, Landroid/content/Intent;

    #@10
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@13
    .line 4956
    .local v1, "selector":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@16
    .line 4957
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@19
    .line 4958
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    #@1c
    .line 4959
    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4976
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 4977
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a
    .line 4979
    return-object v0
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 8873
    if-nez p0, :cond_0

    #@3
    .line 8874
    return-object v1

    #@4
    .line 8877
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@d
    move-result-object p0

    #@e
    .line 8879
    const/16 v1, 0x3b

    #@10
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@13
    move-result v0

    #@14
    .line 8880
    .local v0, "semicolonIndex":I
    const/4 v1, -0x1

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 8881
    const/4 v1, 0x0

    #@18
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    .line 8883
    :cond_1
    return-object p0
.end method

.method public static parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;
    .locals 36
    .param p0, "cmd"    # Landroid/os/ShellCommand;
    .param p1, "optionHandler"    # Landroid/content/Intent$CommandOptionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 5397
    new-instance v17, Landroid/content/Intent;

    #@2
    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    #@5
    .line 5398
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v6, v17

    #@7
    .line 5399
    .local v6, "baseIntent":Landroid/content/Intent;
    const/4 v14, 0x0

    #@8
    .line 5401
    .local v14, "hasIntentInfo":Z
    const/4 v11, 0x0

    #@9
    .line 5402
    .local v11, "data":Landroid/net/Uri;
    const/16 v30, 0x0

    #@b
    .local v30, "type":Ljava/lang/String;
    move-object/from16 v18, v17

    #@d
    .line 5405
    .end local v11    # "data":Landroid/net/Uri;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v30    # "type":Ljava/lang/String;
    .local v18, "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    #@10
    move-result-object v27

    #@11
    .local v27, "opt":Ljava/lang/String;
    if-eqz v27, :cond_42

    #@13
    .line 5406
    const-string/jumbo v33, "-a"

    #@16
    move-object/from16 v0, v27

    #@18
    move-object/from16 v1, v33

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v33

    #@1e
    if-eqz v33, :cond_1

    #@20
    .line 5408
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@23
    move-result-object v33

    #@24
    move-object/from16 v0, v18

    #@26
    move-object/from16 v1, v33

    #@28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@2b
    .line 5409
    move-object/from16 v0, v18

    #@2d
    move-object/from16 v1, v17

    #@2f
    if-ne v0, v1, :cond_0

    #@31
    .line 5410
    const/4 v14, 0x1

    #@32
    goto :goto_0

    #@33
    .line 5406
    :cond_1
    const-string/jumbo v33, "-d"

    #@36
    move-object/from16 v0, v27

    #@38
    move-object/from16 v1, v33

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v33

    #@3e
    if-eqz v33, :cond_2

    #@40
    .line 5414
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@43
    move-result-object v33

    #@44
    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@47
    move-result-object v11

    #@48
    .line 5415
    .local v11, "data":Landroid/net/Uri;
    move-object/from16 v0, v18

    #@4a
    move-object/from16 v1, v17

    #@4c
    if-ne v0, v1, :cond_0

    #@4e
    .line 5416
    const/4 v14, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 5406
    .end local v11    # "data":Landroid/net/Uri;
    :cond_2
    const-string/jumbo v33, "-t"

    #@53
    move-object/from16 v0, v27

    #@55
    move-object/from16 v1, v33

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v33

    #@5b
    if-eqz v33, :cond_3

    #@5d
    .line 5420
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@60
    move-result-object v30

    #@61
    .line 5421
    .local v30, "type":Ljava/lang/String;
    move-object/from16 v0, v18

    #@63
    move-object/from16 v1, v17

    #@65
    if-ne v0, v1, :cond_0

    #@67
    .line 5422
    const/4 v14, 0x1

    #@68
    goto :goto_0

    #@69
    .line 5406
    .end local v30    # "type":Ljava/lang/String;
    :cond_3
    const-string/jumbo v33, "-c"

    #@6c
    move-object/from16 v0, v27

    #@6e
    move-object/from16 v1, v33

    #@70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v33

    #@74
    if-eqz v33, :cond_4

    #@76
    .line 5426
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@79
    move-result-object v33

    #@7a
    move-object/from16 v0, v18

    #@7c
    move-object/from16 v1, v33

    #@7e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@81
    .line 5427
    move-object/from16 v0, v18

    #@83
    move-object/from16 v1, v17

    #@85
    if-ne v0, v1, :cond_0

    #@87
    .line 5428
    const/4 v14, 0x1

    #@88
    goto :goto_0

    #@89
    .line 5406
    :cond_4
    const-string/jumbo v33, "-e"

    #@8c
    move-object/from16 v0, v27

    #@8e
    move-object/from16 v1, v33

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v33

    #@94
    if-eqz v33, :cond_6

    #@96
    .line 5433
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@99
    move-result-object v19

    #@9a
    .line 5434
    .local v19, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@9d
    move-result-object v32

    #@9e
    .line 5435
    .local v32, "value":Ljava/lang/String;
    move-object/from16 v0, v18

    #@a0
    move-object/from16 v1, v19

    #@a2
    move-object/from16 v2, v32

    #@a4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@a7
    goto/16 :goto_0

    #@a9
    .line 5406
    .end local v19    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v33, "--es"

    #@ac
    move-object/from16 v0, v27

    #@ae
    move-object/from16 v1, v33

    #@b0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b3
    move-result v33

    #@b4
    if-nez v33, :cond_5

    #@b6
    const-string/jumbo v33, "--esn"

    #@b9
    move-object/from16 v0, v27

    #@bb
    move-object/from16 v1, v33

    #@bd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v33

    #@c1
    if-eqz v33, :cond_7

    #@c3
    .line 5439
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@c6
    move-result-object v19

    #@c7
    .line 5440
    .restart local v19    # "key":Ljava/lang/String;
    const/16 v33, 0x0

    #@c9
    check-cast v33, Ljava/lang/String;

    #@cb
    move-object/from16 v0, v18

    #@cd
    move-object/from16 v1, v19

    #@cf
    move-object/from16 v2, v33

    #@d1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@d4
    goto/16 :goto_0

    #@d6
    .line 5406
    .end local v19    # "key":Ljava/lang/String;
    :cond_7
    const-string/jumbo v33, "--ei"

    #@d9
    move-object/from16 v0, v27

    #@db
    move-object/from16 v1, v33

    #@dd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e0
    move-result v33

    #@e1
    if-eqz v33, :cond_8

    #@e3
    .line 5444
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@e6
    move-result-object v19

    #@e7
    .line 5445
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@ea
    move-result-object v32

    #@eb
    .line 5446
    .restart local v32    # "value":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@ee
    move-result-object v33

    #@ef
    move-object/from16 v0, v18

    #@f1
    move-object/from16 v1, v19

    #@f3
    move-object/from16 v2, v33

    #@f5
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@f8
    goto/16 :goto_0

    #@fa
    .line 5406
    .end local v19    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v33, "--eu"

    #@fd
    move-object/from16 v0, v27

    #@ff
    move-object/from16 v1, v33

    #@101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@104
    move-result v33

    #@105
    if-eqz v33, :cond_9

    #@107
    .line 5450
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@10a
    move-result-object v19

    #@10b
    .line 5451
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@10e
    move-result-object v32

    #@10f
    .line 5452
    .restart local v32    # "value":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@112
    move-result-object v33

    #@113
    move-object/from16 v0, v18

    #@115
    move-object/from16 v1, v19

    #@117
    move-object/from16 v2, v33

    #@119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@11c
    goto/16 :goto_0

    #@11e
    .line 5406
    .end local v19    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_9
    const-string/jumbo v33, "--ecn"

    #@121
    move-object/from16 v0, v27

    #@123
    move-object/from16 v1, v33

    #@125
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@128
    move-result v33

    #@129
    if-eqz v33, :cond_a

    #@12b
    .line 5456
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@12e
    move-result-object v19

    #@12f
    .line 5457
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@132
    move-result-object v32

    #@133
    .line 5458
    .restart local v32    # "value":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@136
    move-result-object v10

    #@137
    .line 5459
    .local v10, "cn":Landroid/content/ComponentName;
    if-nez v10, :cond_33

    #@139
    .line 5460
    new-instance v33, Ljava/lang/IllegalArgumentException;

    #@13b
    new-instance v34, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v35, "Bad component name: "

    #@143
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v34

    #@147
    move-object/from16 v0, v34

    #@149
    move-object/from16 v1, v32

    #@14b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v34

    #@14f
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@152
    move-result-object v34

    #@153
    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@156
    throw v33

    #@157
    .line 5406
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v19    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_a
    const-string/jumbo v33, "--eia"

    #@15a
    move-object/from16 v0, v27

    #@15c
    move-object/from16 v1, v33

    #@15e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@161
    move-result v33

    #@162
    if-eqz v33, :cond_b

    #@164
    .line 5465
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@167
    move-result-object v19

    #@168
    .line 5466
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@16b
    move-result-object v32

    #@16c
    .line 5467
    .restart local v32    # "value":Ljava/lang/String;
    const-string/jumbo v33, ","

    #@16f
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@172
    move-result-object v29

    #@173
    .line 5468
    .local v29, "strings":[Ljava/lang/String;
    move-object/from16 v0, v29

    #@175
    array-length v0, v0

    #@176
    move/from16 v33, v0

    #@178
    move/from16 v0, v33

    #@17a
    new-array v0, v0, [I

    #@17c
    move-object/from16 v25, v0

    #@17e
    .line 5469
    .local v25, "list":[I
    const/16 v16, 0x0

    #@180
    .local v16, "i":I
    :goto_1
    move-object/from16 v0, v29

    #@182
    array-length v0, v0

    #@183
    move/from16 v33, v0

    #@185
    move/from16 v0, v16

    #@187
    move/from16 v1, v33

    #@189
    if-ge v0, v1, :cond_34

    #@18b
    .line 5470
    aget-object v33, v29, v16

    #@18d
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@190
    move-result-object v33

    #@191
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    #@194
    move-result v33

    #@195
    aput v33, v25, v16

    #@197
    .line 5469
    add-int/lit8 v16, v16, 0x1

    #@199
    goto :goto_1

    #@19a
    .line 5406
    .end local v16    # "i":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v25    # "list":[I
    .end local v29    # "strings":[Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v33, "--eial"

    #@19d
    move-object/from16 v0, v27

    #@19f
    move-object/from16 v1, v33

    #@1a1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a4
    move-result v33

    #@1a5
    if-eqz v33, :cond_c

    #@1a7
    .line 5476
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@1aa
    move-result-object v19

    #@1ab
    .line 5477
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@1ae
    move-result-object v32

    #@1af
    .line 5478
    .restart local v32    # "value":Ljava/lang/String;
    const-string/jumbo v33, ","

    #@1b2
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1b5
    move-result-object v29

    #@1b6
    .line 5479
    .restart local v29    # "strings":[Ljava/lang/String;
    new-instance v21, Ljava/util/ArrayList;

    #@1b8
    move-object/from16 v0, v29

    #@1ba
    array-length v0, v0

    #@1bb
    move/from16 v33, v0

    #@1bd
    move-object/from16 v0, v21

    #@1bf
    move/from16 v1, v33

    #@1c1
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@1c4
    .line 5480
    .local v21, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v16, 0x0

    #@1c6
    .restart local v16    # "i":I
    :goto_2
    move-object/from16 v0, v29

    #@1c8
    array-length v0, v0

    #@1c9
    move/from16 v33, v0

    #@1cb
    move/from16 v0, v16

    #@1cd
    move/from16 v1, v33

    #@1cf
    if-ge v0, v1, :cond_35

    #@1d1
    .line 5481
    aget-object v33, v29, v16

    #@1d3
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@1d6
    move-result-object v33

    #@1d7
    move-object/from16 v0, v21

    #@1d9
    move-object/from16 v1, v33

    #@1db
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1de
    .line 5480
    add-int/lit8 v16, v16, 0x1

    #@1e0
    goto :goto_2

    #@1e1
    .line 5406
    .end local v16    # "i":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v21    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v29    # "strings":[Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_c
    const-string/jumbo v33, "--el"

    #@1e4
    move-object/from16 v0, v27

    #@1e6
    move-object/from16 v1, v33

    #@1e8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1eb
    move-result v33

    #@1ec
    if-eqz v33, :cond_d

    #@1ee
    .line 5487
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@1f1
    move-result-object v19

    #@1f2
    .line 5488
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@1f5
    move-result-object v32

    #@1f6
    .line 5489
    .restart local v32    # "value":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@1f9
    move-result-object v33

    #@1fa
    move-object/from16 v0, v18

    #@1fc
    move-object/from16 v1, v19

    #@1fe
    move-object/from16 v2, v33

    #@200
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@203
    goto/16 :goto_0

    #@205
    .line 5406
    .end local v19    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_d
    const-string/jumbo v33, "--ela"

    #@208
    move-object/from16 v0, v27

    #@20a
    move-object/from16 v1, v33

    #@20c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20f
    move-result v33

    #@210
    if-eqz v33, :cond_e

    #@212
    .line 5493
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@215
    move-result-object v19

    #@216
    .line 5494
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@219
    move-result-object v32

    #@21a
    .line 5495
    .restart local v32    # "value":Ljava/lang/String;
    const-string/jumbo v33, ","

    #@21d
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@220
    move-result-object v29

    #@221
    .line 5496
    .restart local v29    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v29

    #@223
    array-length v0, v0

    #@224
    move/from16 v33, v0

    #@226
    move/from16 v0, v33

    #@228
    new-array v0, v0, [J

    #@22a
    move-object/from16 v26, v0

    #@22c
    .line 5497
    .local v26, "list":[J
    const/16 v16, 0x0

    #@22e
    .restart local v16    # "i":I
    :goto_3
    move-object/from16 v0, v29

    #@230
    array-length v0, v0

    #@231
    move/from16 v33, v0

    #@233
    move/from16 v0, v16

    #@235
    move/from16 v1, v33

    #@237
    if-ge v0, v1, :cond_36

    #@239
    .line 5498
    aget-object v33, v29, v16

    #@23b
    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@23e
    move-result-object v33

    #@23f
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    #@242
    move-result-wide v34

    #@243
    aput-wide v34, v26, v16

    #@245
    .line 5497
    add-int/lit8 v16, v16, 0x1

    #@247
    goto :goto_3

    #@248
    .line 5406
    .end local v16    # "i":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v26    # "list":[J
    .end local v29    # "strings":[Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_e
    const-string/jumbo v33, "--elal"

    #@24b
    move-object/from16 v0, v27

    #@24d
    move-object/from16 v1, v33

    #@24f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@252
    move-result v33

    #@253
    if-eqz v33, :cond_f

    #@255
    .line 5505
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@258
    move-result-object v19

    #@259
    .line 5506
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@25c
    move-result-object v32

    #@25d
    .line 5507
    .restart local v32    # "value":Ljava/lang/String;
    const-string/jumbo v33, ","

    #@260
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@263
    move-result-object v29

    #@264
    .line 5508
    .restart local v29    # "strings":[Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    #@266
    move-object/from16 v0, v29

    #@268
    array-length v0, v0

    #@269
    move/from16 v33, v0

    #@26b
    move-object/from16 v0, v22

    #@26d
    move/from16 v1, v33

    #@26f
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@272
    .line 5509
    .local v22, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v16, 0x0

    #@274
    .restart local v16    # "i":I
    :goto_4
    move-object/from16 v0, v29

    #@276
    array-length v0, v0

    #@277
    move/from16 v33, v0

    #@279
    move/from16 v0, v16

    #@27b
    move/from16 v1, v33

    #@27d
    if-ge v0, v1, :cond_37

    #@27f
    .line 5510
    aget-object v33, v29, v16

    #@281
    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    #@284
    move-result-object v33

    #@285
    move-object/from16 v0, v22

    #@287
    move-object/from16 v1, v33

    #@289
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28c
    .line 5509
    add-int/lit8 v16, v16, 0x1

    #@28e
    goto :goto_4

    #@28f
    .line 5406
    .end local v16    # "i":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v29    # "strings":[Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_f
    const-string/jumbo v33, "--ef"

    #@292
    move-object/from16 v0, v27

    #@294
    move-object/from16 v1, v33

    #@296
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@299
    move-result v33

    #@29a
    if-eqz v33, :cond_10

    #@29c
    .line 5517
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@29f
    move-result-object v19

    #@2a0
    .line 5518
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@2a3
    move-result-object v32

    #@2a4
    .line 5519
    .restart local v32    # "value":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    #@2a7
    move-result-object v33

    #@2a8
    move-object/from16 v0, v18

    #@2aa
    move-object/from16 v1, v19

    #@2ac
    move-object/from16 v2, v33

    #@2ae
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@2b1
    .line 5520
    const/4 v14, 0x1

    #@2b2
    goto/16 :goto_0

    #@2b4
    .line 5406
    .end local v19    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_10
    const-string/jumbo v33, "--efa"

    #@2b7
    move-object/from16 v0, v27

    #@2b9
    move-object/from16 v1, v33

    #@2bb
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2be
    move-result v33

    #@2bf
    if-eqz v33, :cond_11

    #@2c1
    .line 5524
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@2c4
    move-result-object v19

    #@2c5
    .line 5525
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@2c8
    move-result-object v32

    #@2c9
    .line 5526
    .restart local v32    # "value":Ljava/lang/String;
    const-string/jumbo v33, ","

    #@2cc
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@2cf
    move-result-object v29

    #@2d0
    .line 5527
    .restart local v29    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v29

    #@2d2
    array-length v0, v0

    #@2d3
    move/from16 v33, v0

    #@2d5
    move/from16 v0, v33

    #@2d7
    new-array v0, v0, [F

    #@2d9
    move-object/from16 v24, v0

    #@2db
    .line 5528
    .local v24, "list":[F
    const/16 v16, 0x0

    #@2dd
    .restart local v16    # "i":I
    :goto_5
    move-object/from16 v0, v29

    #@2df
    array-length v0, v0

    #@2e0
    move/from16 v33, v0

    #@2e2
    move/from16 v0, v16

    #@2e4
    move/from16 v1, v33

    #@2e6
    if-ge v0, v1, :cond_38

    #@2e8
    .line 5529
    aget-object v33, v29, v16

    #@2ea
    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    #@2ed
    move-result-object v33

    #@2ee
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Float;->floatValue()F

    #@2f1
    move-result v33

    #@2f2
    aput v33, v24, v16

    #@2f4
    .line 5528
    add-int/lit8 v16, v16, 0x1

    #@2f6
    goto :goto_5

    #@2f7
    .line 5406
    .end local v16    # "i":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v24    # "list":[F
    .end local v29    # "strings":[Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_11
    const-string/jumbo v33, "--efal"

    #@2fa
    move-object/from16 v0, v27

    #@2fc
    move-object/from16 v1, v33

    #@2fe
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@301
    move-result v33

    #@302
    if-eqz v33, :cond_12

    #@304
    .line 5536
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@307
    move-result-object v19

    #@308
    .line 5537
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@30b
    move-result-object v32

    #@30c
    .line 5538
    .restart local v32    # "value":Ljava/lang/String;
    const-string/jumbo v33, ","

    #@30f
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@312
    move-result-object v29

    #@313
    .line 5539
    .restart local v29    # "strings":[Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    #@315
    move-object/from16 v0, v29

    #@317
    array-length v0, v0

    #@318
    move/from16 v33, v0

    #@31a
    move-object/from16 v0, v20

    #@31c
    move/from16 v1, v33

    #@31e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@321
    .line 5540
    .local v20, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/16 v16, 0x0

    #@323
    .restart local v16    # "i":I
    :goto_6
    move-object/from16 v0, v29

    #@325
    array-length v0, v0

    #@326
    move/from16 v33, v0

    #@328
    move/from16 v0, v16

    #@32a
    move/from16 v1, v33

    #@32c
    if-ge v0, v1, :cond_39

    #@32e
    .line 5541
    aget-object v33, v29, v16

    #@330
    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    #@333
    move-result-object v33

    #@334
    move-object/from16 v0, v20

    #@336
    move-object/from16 v1, v33

    #@338
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33b
    .line 5540
    add-int/lit8 v16, v16, 0x1

    #@33d
    goto :goto_6

    #@33e
    .line 5406
    .end local v16    # "i":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v29    # "strings":[Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_12
    const-string/jumbo v33, "--esa"

    #@341
    move-object/from16 v0, v27

    #@343
    move-object/from16 v1, v33

    #@345
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@348
    move-result v33

    #@349
    if-eqz v33, :cond_13

    #@34b
    .line 5548
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@34e
    move-result-object v19

    #@34f
    .line 5549
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@352
    move-result-object v32

    #@353
    .line 5553
    .restart local v32    # "value":Ljava/lang/String;
    const-string/jumbo v33, "(?<!\\\\),"

    #@356
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@359
    move-result-object v29

    #@35a
    .line 5554
    .restart local v29    # "strings":[Ljava/lang/String;
    move-object/from16 v0, v18

    #@35c
    move-object/from16 v1, v19

    #@35e
    move-object/from16 v2, v29

    #@360
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    #@363
    .line 5555
    const/4 v14, 0x1

    #@364
    goto/16 :goto_0

    #@366
    .line 5406
    .end local v19    # "key":Ljava/lang/String;
    .end local v29    # "strings":[Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_13
    const-string/jumbo v33, "--esal"

    #@369
    move-object/from16 v0, v27

    #@36b
    move-object/from16 v1, v33

    #@36d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@370
    move-result v33

    #@371
    if-eqz v33, :cond_14

    #@373
    .line 5559
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@376
    move-result-object v19

    #@377
    .line 5560
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@37a
    move-result-object v32

    #@37b
    .line 5564
    .restart local v32    # "value":Ljava/lang/String;
    const-string/jumbo v33, "(?<!\\\\),"

    #@37e
    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@381
    move-result-object v29

    #@382
    .line 5565
    .restart local v29    # "strings":[Ljava/lang/String;
    new-instance v23, Ljava/util/ArrayList;

    #@384
    move-object/from16 v0, v29

    #@386
    array-length v0, v0

    #@387
    move/from16 v33, v0

    #@389
    move-object/from16 v0, v23

    #@38b
    move/from16 v1, v33

    #@38d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@390
    .line 5566
    .local v23, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    #@392
    .restart local v16    # "i":I
    :goto_7
    move-object/from16 v0, v29

    #@394
    array-length v0, v0

    #@395
    move/from16 v33, v0

    #@397
    move/from16 v0, v16

    #@399
    move/from16 v1, v33

    #@39b
    if-ge v0, v1, :cond_3a

    #@39d
    .line 5567
    aget-object v33, v29, v16

    #@39f
    move-object/from16 v0, v23

    #@3a1
    move-object/from16 v1, v33

    #@3a3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3a6
    .line 5566
    add-int/lit8 v16, v16, 0x1

    #@3a8
    goto :goto_7

    #@3a9
    .line 5406
    .end local v16    # "i":I
    .end local v19    # "key":Ljava/lang/String;
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "strings":[Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_14
    const-string/jumbo v33, "--ez"

    #@3ac
    move-object/from16 v0, v27

    #@3ae
    move-object/from16 v1, v33

    #@3b0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b3
    move-result v33

    #@3b4
    if-eqz v33, :cond_16

    #@3b6
    .line 5574
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@3b9
    move-result-object v19

    #@3ba
    .line 5575
    .restart local v19    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@3bd
    move-result-object v33

    #@3be
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3c1
    move-result-object v32

    #@3c2
    .line 5579
    .restart local v32    # "value":Ljava/lang/String;
    const-string/jumbo v33, "true"

    #@3c5
    move-object/from16 v0, v33

    #@3c7
    move-object/from16 v1, v32

    #@3c9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3cc
    move-result v33

    #@3cd
    if-nez v33, :cond_15

    #@3cf
    const-string/jumbo v33, "t"

    #@3d2
    move-object/from16 v0, v33

    #@3d4
    move-object/from16 v1, v32

    #@3d6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d9
    move-result v33

    #@3da
    if-eqz v33, :cond_3b

    #@3dc
    .line 5580
    :cond_15
    const/4 v5, 0x1

    #@3dd
    .line 5591
    .local v5, "arg":Z
    :goto_8
    move-object/from16 v0, v18

    #@3df
    move-object/from16 v1, v19

    #@3e1
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@3e4
    goto/16 :goto_0

    #@3e6
    .line 5406
    .end local v5    # "arg":Z
    .end local v19    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    :cond_16
    const-string/jumbo v33, "-n"

    #@3e9
    move-object/from16 v0, v27

    #@3eb
    move-object/from16 v1, v33

    #@3ed
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f0
    move-result v33

    #@3f1
    if-eqz v33, :cond_17

    #@3f3
    .line 5595
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@3f6
    move-result-object v28

    #@3f7
    .line 5596
    .local v28, "str":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@3fa
    move-result-object v10

    #@3fb
    .line 5597
    .restart local v10    # "cn":Landroid/content/ComponentName;
    if-nez v10, :cond_3f

    #@3fd
    .line 5598
    new-instance v33, Ljava/lang/IllegalArgumentException;

    #@3ff
    new-instance v34, Ljava/lang/StringBuilder;

    #@401
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@404
    const-string/jumbo v35, "Bad component name: "

    #@407
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40a
    move-result-object v34

    #@40b
    move-object/from16 v0, v34

    #@40d
    move-object/from16 v1, v28

    #@40f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@412
    move-result-object v34

    #@413
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@416
    move-result-object v34

    #@417
    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41a
    throw v33

    #@41b
    .line 5406
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v28    # "str":Ljava/lang/String;
    :cond_17
    const-string/jumbo v33, "-p"

    #@41e
    move-object/from16 v0, v27

    #@420
    move-object/from16 v1, v33

    #@422
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@425
    move-result v33

    #@426
    if-eqz v33, :cond_18

    #@428
    .line 5606
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@42b
    move-result-object v28

    #@42c
    .line 5607
    .restart local v28    # "str":Ljava/lang/String;
    move-object/from16 v0, v18

    #@42e
    move-object/from16 v1, v28

    #@430
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@433
    .line 5608
    move-object/from16 v0, v18

    #@435
    move-object/from16 v1, v17

    #@437
    if-ne v0, v1, :cond_0

    #@439
    .line 5609
    const/4 v14, 0x1

    #@43a
    goto/16 :goto_0

    #@43c
    .line 5406
    .end local v28    # "str":Ljava/lang/String;
    :cond_18
    const-string/jumbo v33, "-f"

    #@43f
    move-object/from16 v0, v27

    #@441
    move-object/from16 v1, v33

    #@443
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@446
    move-result v33

    #@447
    if-eqz v33, :cond_19

    #@449
    .line 5614
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    #@44c
    move-result-object v28

    #@44d
    .line 5615
    .restart local v28    # "str":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@450
    move-result-object v33

    #@451
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    #@454
    move-result v33

    #@455
    move-object/from16 v0, v18

    #@457
    move/from16 v1, v33

    #@459
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@45c
    goto/16 :goto_0

    #@45e
    .line 5406
    .end local v28    # "str":Ljava/lang/String;
    :cond_19
    const-string/jumbo v33, "--grant-read-uri-permission"

    #@461
    move-object/from16 v0, v27

    #@463
    move-object/from16 v1, v33

    #@465
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@468
    move-result v33

    #@469
    if-eqz v33, :cond_1a

    #@46b
    .line 5618
    const/16 v33, 0x1

    #@46d
    move-object/from16 v0, v18

    #@46f
    move/from16 v1, v33

    #@471
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@474
    goto/16 :goto_0

    #@476
    .line 5406
    :cond_1a
    const-string/jumbo v33, "--grant-write-uri-permission"

    #@479
    move-object/from16 v0, v27

    #@47b
    move-object/from16 v1, v33

    #@47d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@480
    move-result v33

    #@481
    if-eqz v33, :cond_1b

    #@483
    .line 5621
    const/16 v33, 0x2

    #@485
    move-object/from16 v0, v18

    #@487
    move/from16 v1, v33

    #@489
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@48c
    goto/16 :goto_0

    #@48e
    .line 5406
    :cond_1b
    const-string/jumbo v33, "--grant-persistable-uri-permission"

    #@491
    move-object/from16 v0, v27

    #@493
    move-object/from16 v1, v33

    #@495
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@498
    move-result v33

    #@499
    if-eqz v33, :cond_1c

    #@49b
    .line 5624
    const/16 v33, 0x40

    #@49d
    move-object/from16 v0, v18

    #@49f
    move/from16 v1, v33

    #@4a1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@4a4
    goto/16 :goto_0

    #@4a6
    .line 5406
    :cond_1c
    const-string/jumbo v33, "--grant-prefix-uri-permission"

    #@4a9
    move-object/from16 v0, v27

    #@4ab
    move-object/from16 v1, v33

    #@4ad
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b0
    move-result v33

    #@4b1
    if-eqz v33, :cond_1d

    #@4b3
    .line 5627
    const/16 v33, 0x80

    #@4b5
    move-object/from16 v0, v18

    #@4b7
    move/from16 v1, v33

    #@4b9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@4bc
    goto/16 :goto_0

    #@4be
    .line 5406
    :cond_1d
    const-string/jumbo v33, "--exclude-stopped-packages"

    #@4c1
    move-object/from16 v0, v27

    #@4c3
    move-object/from16 v1, v33

    #@4c5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c8
    move-result v33

    #@4c9
    if-eqz v33, :cond_1e

    #@4cb
    .line 5630
    const/16 v33, 0x10

    #@4cd
    move-object/from16 v0, v18

    #@4cf
    move/from16 v1, v33

    #@4d1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@4d4
    goto/16 :goto_0

    #@4d6
    .line 5406
    :cond_1e
    const-string/jumbo v33, "--include-stopped-packages"

    #@4d9
    move-object/from16 v0, v27

    #@4db
    move-object/from16 v1, v33

    #@4dd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e0
    move-result v33

    #@4e1
    if-eqz v33, :cond_1f

    #@4e3
    .line 5633
    const/16 v33, 0x20

    #@4e5
    move-object/from16 v0, v18

    #@4e7
    move/from16 v1, v33

    #@4e9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@4ec
    goto/16 :goto_0

    #@4ee
    .line 5406
    :cond_1f
    const-string/jumbo v33, "--debug-log-resolution"

    #@4f1
    move-object/from16 v0, v27

    #@4f3
    move-object/from16 v1, v33

    #@4f5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f8
    move-result v33

    #@4f9
    if-eqz v33, :cond_20

    #@4fb
    .line 5636
    const/16 v33, 0x8

    #@4fd
    move-object/from16 v0, v18

    #@4ff
    move/from16 v1, v33

    #@501
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@504
    goto/16 :goto_0

    #@506
    .line 5406
    :cond_20
    const-string/jumbo v33, "--activity-brought-to-front"

    #@509
    move-object/from16 v0, v27

    #@50b
    move-object/from16 v1, v33

    #@50d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@510
    move-result v33

    #@511
    if-eqz v33, :cond_21

    #@513
    .line 5639
    const/high16 v33, 0x400000

    #@515
    move-object/from16 v0, v18

    #@517
    move/from16 v1, v33

    #@519
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@51c
    goto/16 :goto_0

    #@51e
    .line 5406
    :cond_21
    const-string/jumbo v33, "--activity-clear-top"

    #@521
    move-object/from16 v0, v27

    #@523
    move-object/from16 v1, v33

    #@525
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@528
    move-result v33

    #@529
    if-eqz v33, :cond_22

    #@52b
    .line 5642
    const/high16 v33, 0x4000000

    #@52d
    move-object/from16 v0, v18

    #@52f
    move/from16 v1, v33

    #@531
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@534
    goto/16 :goto_0

    #@536
    .line 5406
    :cond_22
    const-string/jumbo v33, "--activity-clear-when-task-reset"

    #@539
    move-object/from16 v0, v27

    #@53b
    move-object/from16 v1, v33

    #@53d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@540
    move-result v33

    #@541
    if-eqz v33, :cond_23

    #@543
    .line 5645
    const/high16 v33, 0x80000

    #@545
    move-object/from16 v0, v18

    #@547
    move/from16 v1, v33

    #@549
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@54c
    goto/16 :goto_0

    #@54e
    .line 5406
    :cond_23
    const-string/jumbo v33, "--activity-exclude-from-recents"

    #@551
    move-object/from16 v0, v27

    #@553
    move-object/from16 v1, v33

    #@555
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@558
    move-result v33

    #@559
    if-eqz v33, :cond_24

    #@55b
    .line 5648
    const/high16 v33, 0x800000

    #@55d
    move-object/from16 v0, v18

    #@55f
    move/from16 v1, v33

    #@561
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@564
    goto/16 :goto_0

    #@566
    .line 5406
    :cond_24
    const-string/jumbo v33, "--activity-launched-from-history"

    #@569
    move-object/from16 v0, v27

    #@56b
    move-object/from16 v1, v33

    #@56d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@570
    move-result v33

    #@571
    if-eqz v33, :cond_25

    #@573
    .line 5651
    const/high16 v33, 0x100000

    #@575
    move-object/from16 v0, v18

    #@577
    move/from16 v1, v33

    #@579
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@57c
    goto/16 :goto_0

    #@57e
    .line 5406
    :cond_25
    const-string/jumbo v33, "--activity-multiple-task"

    #@581
    move-object/from16 v0, v27

    #@583
    move-object/from16 v1, v33

    #@585
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@588
    move-result v33

    #@589
    if-eqz v33, :cond_26

    #@58b
    .line 5654
    const/high16 v33, 0x8000000

    #@58d
    move-object/from16 v0, v18

    #@58f
    move/from16 v1, v33

    #@591
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@594
    goto/16 :goto_0

    #@596
    .line 5406
    :cond_26
    const-string/jumbo v33, "--activity-no-animation"

    #@599
    move-object/from16 v0, v27

    #@59b
    move-object/from16 v1, v33

    #@59d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a0
    move-result v33

    #@5a1
    if-eqz v33, :cond_27

    #@5a3
    .line 5657
    const/high16 v33, 0x10000

    #@5a5
    move-object/from16 v0, v18

    #@5a7
    move/from16 v1, v33

    #@5a9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5ac
    goto/16 :goto_0

    #@5ae
    .line 5406
    :cond_27
    const-string/jumbo v33, "--activity-no-history"

    #@5b1
    move-object/from16 v0, v27

    #@5b3
    move-object/from16 v1, v33

    #@5b5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b8
    move-result v33

    #@5b9
    if-eqz v33, :cond_28

    #@5bb
    .line 5660
    const/high16 v33, 0x40000000    # 2.0f

    #@5bd
    move-object/from16 v0, v18

    #@5bf
    move/from16 v1, v33

    #@5c1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5c4
    goto/16 :goto_0

    #@5c6
    .line 5406
    :cond_28
    const-string/jumbo v33, "--activity-no-user-action"

    #@5c9
    move-object/from16 v0, v27

    #@5cb
    move-object/from16 v1, v33

    #@5cd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d0
    move-result v33

    #@5d1
    if-eqz v33, :cond_29

    #@5d3
    .line 5663
    const/high16 v33, 0x40000

    #@5d5
    move-object/from16 v0, v18

    #@5d7
    move/from16 v1, v33

    #@5d9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5dc
    goto/16 :goto_0

    #@5de
    .line 5406
    :cond_29
    const-string/jumbo v33, "--activity-previous-is-top"

    #@5e1
    move-object/from16 v0, v27

    #@5e3
    move-object/from16 v1, v33

    #@5e5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e8
    move-result v33

    #@5e9
    if-eqz v33, :cond_2a

    #@5eb
    .line 5666
    const/high16 v33, 0x1000000

    #@5ed
    move-object/from16 v0, v18

    #@5ef
    move/from16 v1, v33

    #@5f1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@5f4
    goto/16 :goto_0

    #@5f6
    .line 5406
    :cond_2a
    const-string/jumbo v33, "--activity-reorder-to-front"

    #@5f9
    move-object/from16 v0, v27

    #@5fb
    move-object/from16 v1, v33

    #@5fd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@600
    move-result v33

    #@601
    if-eqz v33, :cond_2b

    #@603
    .line 5669
    const/high16 v33, 0x20000

    #@605
    move-object/from16 v0, v18

    #@607
    move/from16 v1, v33

    #@609
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@60c
    goto/16 :goto_0

    #@60e
    .line 5406
    :cond_2b
    const-string/jumbo v33, "--activity-reset-task-if-needed"

    #@611
    move-object/from16 v0, v27

    #@613
    move-object/from16 v1, v33

    #@615
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@618
    move-result v33

    #@619
    if-eqz v33, :cond_2c

    #@61b
    .line 5672
    const/high16 v33, 0x200000

    #@61d
    move-object/from16 v0, v18

    #@61f
    move/from16 v1, v33

    #@621
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@624
    goto/16 :goto_0

    #@626
    .line 5406
    :cond_2c
    const-string/jumbo v33, "--activity-single-top"

    #@629
    move-object/from16 v0, v27

    #@62b
    move-object/from16 v1, v33

    #@62d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@630
    move-result v33

    #@631
    if-eqz v33, :cond_2d

    #@633
    .line 5675
    const/high16 v33, 0x20000000

    #@635
    move-object/from16 v0, v18

    #@637
    move/from16 v1, v33

    #@639
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@63c
    goto/16 :goto_0

    #@63e
    .line 5406
    :cond_2d
    const-string/jumbo v33, "--activity-clear-task"

    #@641
    move-object/from16 v0, v27

    #@643
    move-object/from16 v1, v33

    #@645
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@648
    move-result v33

    #@649
    if-eqz v33, :cond_2e

    #@64b
    .line 5678
    const v33, 0x8000

    #@64e
    move-object/from16 v0, v18

    #@650
    move/from16 v1, v33

    #@652
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@655
    goto/16 :goto_0

    #@657
    .line 5406
    :cond_2e
    const-string/jumbo v33, "--activity-task-on-home"

    #@65a
    move-object/from16 v0, v27

    #@65c
    move-object/from16 v1, v33

    #@65e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@661
    move-result v33

    #@662
    if-eqz v33, :cond_2f

    #@664
    .line 5681
    const/16 v33, 0x4000

    #@666
    move-object/from16 v0, v18

    #@668
    move/from16 v1, v33

    #@66a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@66d
    goto/16 :goto_0

    #@66f
    .line 5406
    :cond_2f
    const-string/jumbo v33, "--receiver-registered-only"

    #@672
    move-object/from16 v0, v27

    #@674
    move-object/from16 v1, v33

    #@676
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@679
    move-result v33

    #@67a
    if-eqz v33, :cond_30

    #@67c
    .line 5684
    const/high16 v33, 0x40000000    # 2.0f

    #@67e
    move-object/from16 v0, v18

    #@680
    move/from16 v1, v33

    #@682
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@685
    goto/16 :goto_0

    #@687
    .line 5406
    :cond_30
    const-string/jumbo v33, "--receiver-replace-pending"

    #@68a
    move-object/from16 v0, v27

    #@68c
    move-object/from16 v1, v33

    #@68e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@691
    move-result v33

    #@692
    if-eqz v33, :cond_31

    #@694
    .line 5687
    const/high16 v33, 0x20000000

    #@696
    move-object/from16 v0, v18

    #@698
    move/from16 v1, v33

    #@69a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@69d
    goto/16 :goto_0

    #@69f
    .line 5406
    :cond_31
    const-string/jumbo v33, "--receiver-foreground"

    #@6a2
    move-object/from16 v0, v27

    #@6a4
    move-object/from16 v1, v33

    #@6a6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6a9
    move-result v33

    #@6aa
    if-eqz v33, :cond_32

    #@6ac
    .line 5690
    const/high16 v33, 0x10000000

    #@6ae
    move-object/from16 v0, v18

    #@6b0
    move/from16 v1, v33

    #@6b2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@6b5
    goto/16 :goto_0

    #@6b7
    .line 5406
    :cond_32
    const-string/jumbo v33, "--selector"

    #@6ba
    move-object/from16 v0, v27

    #@6bc
    move-object/from16 v1, v33

    #@6be
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6c1
    move-result v33

    #@6c2
    if-eqz v33, :cond_40

    #@6c4
    .line 5693
    move-object/from16 v0, v18

    #@6c6
    move-object/from16 v1, v30

    #@6c8
    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@6cb
    .line 5694
    new-instance v18, Landroid/content/Intent;

    #@6cd
    .end local v18    # "intent":Landroid/content/Intent;
    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    #@6d0
    .line 5695
    .restart local v18    # "intent":Landroid/content/Intent;
    goto/16 :goto_0

    #@6d2
    .line 5461
    .restart local v10    # "cn":Landroid/content/ComponentName;
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v32    # "value":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, v18

    #@6d4
    move-object/from16 v1, v19

    #@6d6
    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@6d9
    goto/16 :goto_0

    #@6db
    .line 5472
    .end local v10    # "cn":Landroid/content/ComponentName;
    .restart local v16    # "i":I
    .restart local v25    # "list":[I
    .restart local v29    # "strings":[Ljava/lang/String;
    :cond_34
    move-object/from16 v0, v18

    #@6dd
    move-object/from16 v1, v19

    #@6df
    move-object/from16 v2, v25

    #@6e1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    #@6e4
    goto/16 :goto_0

    #@6e6
    .line 5483
    .end local v25    # "list":[I
    .restart local v21    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_35
    move-object/from16 v0, v18

    #@6e8
    move-object/from16 v1, v19

    #@6ea
    move-object/from16 v2, v21

    #@6ec
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@6ef
    goto/16 :goto_0

    #@6f1
    .line 5500
    .end local v21    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v26    # "list":[J
    :cond_36
    move-object/from16 v0, v18

    #@6f3
    move-object/from16 v1, v19

    #@6f5
    move-object/from16 v2, v26

    #@6f7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    #@6fa
    .line 5501
    const/4 v14, 0x1

    #@6fb
    goto/16 :goto_0

    #@6fd
    .line 5512
    .end local v26    # "list":[J
    .restart local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_37
    move-object/from16 v0, v18

    #@6ff
    move-object/from16 v1, v19

    #@701
    move-object/from16 v2, v22

    #@703
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@706
    .line 5513
    const/4 v14, 0x1

    #@707
    goto/16 :goto_0

    #@709
    .line 5531
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v24    # "list":[F
    :cond_38
    move-object/from16 v0, v18

    #@70b
    move-object/from16 v1, v19

    #@70d
    move-object/from16 v2, v24

    #@70f
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    #@712
    .line 5532
    const/4 v14, 0x1

    #@713
    goto/16 :goto_0

    #@715
    .line 5543
    .end local v24    # "list":[F
    .restart local v20    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_39
    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@718
    .line 5544
    const/4 v14, 0x1

    #@719
    goto/16 :goto_0

    #@71b
    .line 5569
    .end local v20    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3a
    move-object/from16 v0, v18

    #@71d
    move-object/from16 v1, v19

    #@71f
    move-object/from16 v2, v23

    #@721
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@724
    .line 5570
    const/4 v14, 0x1

    #@725
    goto/16 :goto_0

    #@727
    .line 5581
    .end local v16    # "i":I
    .end local v23    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "strings":[Ljava/lang/String;
    :cond_3b
    const-string/jumbo v33, "false"

    #@72a
    move-object/from16 v0, v33

    #@72c
    move-object/from16 v1, v32

    #@72e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@731
    move-result v33

    #@732
    if-nez v33, :cond_3c

    #@734
    const-string/jumbo v33, "f"

    #@737
    move-object/from16 v0, v33

    #@739
    move-object/from16 v1, v32

    #@73b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73e
    move-result v33

    #@73f
    if-eqz v33, :cond_3d

    #@741
    .line 5582
    :cond_3c
    const/4 v5, 0x0

    #@742
    .restart local v5    # "arg":Z
    goto/16 :goto_8

    #@744
    .line 5585
    .end local v5    # "arg":Z
    :cond_3d
    :try_start_0
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@747
    move-result-object v33

    #@748
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@74b
    move-result v33

    #@74c
    if-eqz v33, :cond_3e

    #@74e
    const/4 v5, 0x1

    #@74f
    .restart local v5    # "arg":Z
    goto/16 :goto_8

    #@751
    .end local v5    # "arg":Z
    :cond_3e
    const/4 v5, 0x0

    #@752
    .restart local v5    # "arg":Z
    goto/16 :goto_8

    #@754
    .line 5586
    .end local v5    # "arg":Z
    :catch_0
    move-exception v12

    #@755
    .line 5587
    .local v12, "ex":Ljava/lang/NumberFormatException;
    new-instance v33, Ljava/lang/IllegalArgumentException;

    #@757
    new-instance v34, Ljava/lang/StringBuilder;

    #@759
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@75c
    const-string/jumbo v35, "Invalid boolean value: "

    #@75f
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@762
    move-result-object v34

    #@763
    move-object/from16 v0, v34

    #@765
    move-object/from16 v1, v32

    #@767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76a
    move-result-object v34

    #@76b
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76e
    move-result-object v34

    #@76f
    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@772
    throw v33

    #@773
    .line 5599
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    .end local v19    # "key":Ljava/lang/String;
    .end local v32    # "value":Ljava/lang/String;
    .restart local v10    # "cn":Landroid/content/ComponentName;
    .restart local v28    # "str":Ljava/lang/String;
    :cond_3f
    move-object/from16 v0, v18

    #@775
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@778
    .line 5600
    move-object/from16 v0, v18

    #@77a
    move-object/from16 v1, v17

    #@77c
    if-ne v0, v1, :cond_0

    #@77e
    .line 5601
    const/4 v14, 0x1

    #@77f
    goto/16 :goto_0

    #@781
    .line 5697
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v28    # "str":Ljava/lang/String;
    :cond_40
    if-eqz p1, :cond_41

    #@783
    move-object/from16 v0, p1

    #@785
    move-object/from16 v1, v27

    #@787
    move-object/from16 v2, p0

    #@789
    invoke-interface {v0, v1, v2}, Landroid/content/Intent$CommandOptionHandler;->handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z

    #@78c
    move-result v33

    #@78d
    if-nez v33, :cond_0

    #@78f
    .line 5700
    :cond_41
    new-instance v33, Ljava/lang/IllegalArgumentException;

    #@791
    new-instance v34, Ljava/lang/StringBuilder;

    #@793
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@796
    const-string/jumbo v35, "Unknown option: "

    #@799
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79c
    move-result-object v34

    #@79d
    move-object/from16 v0, v34

    #@79f
    move-object/from16 v1, v27

    #@7a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a4
    move-result-object v34

    #@7a5
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a8
    move-result-object v34

    #@7a9
    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7ac
    throw v33

    #@7ad
    .line 5705
    :cond_42
    move-object/from16 v0, v18

    #@7af
    move-object/from16 v1, v30

    #@7b1
    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@7b4
    .line 5707
    move-object/from16 v0, v18

    #@7b6
    move-object/from16 v1, v17

    #@7b8
    if-eq v0, v1, :cond_44

    #@7ba
    const/4 v15, 0x1

    #@7bb
    .line 5708
    .local v15, "hasSelector":Z
    :goto_9
    if-eqz v15, :cond_4d

    #@7bd
    .line 5710
    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    #@7c0
    .line 5714
    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    #@7c3
    move-result-object v4

    #@7c4
    .line 5715
    .local v4, "arg":Ljava/lang/String;
    const/4 v6, 0x0

    #@7c5
    .line 5716
    .local v6, "baseIntent":Landroid/content/Intent;
    if-nez v4, :cond_45

    #@7c7
    .line 5717
    if-eqz v15, :cond_43

    #@7c9
    .line 5723
    new-instance v6, Landroid/content/Intent;

    #@7cb
    .end local v6    # "baseIntent":Landroid/content/Intent;
    const-string/jumbo v33, "android.intent.action.MAIN"

    #@7ce
    move-object/from16 v0, v33

    #@7d0
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@7d3
    .line 5724
    .local v6, "baseIntent":Landroid/content/Intent;
    const-string/jumbo v33, "android.intent.category.LAUNCHER"

    #@7d6
    move-object/from16 v0, v33

    #@7d8
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@7db
    .line 5743
    .end local v6    # "baseIntent":Landroid/content/Intent;
    :cond_43
    :goto_b
    if-eqz v6, :cond_4a

    #@7dd
    .line 5744
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@7e0
    move-result-object v13

    #@7e1
    .line 5745
    .local v13, "extras":Landroid/os/Bundle;
    const/16 v33, 0x0

    #@7e3
    check-cast v33, Landroid/os/Bundle;

    #@7e5
    move-object/from16 v0, v17

    #@7e7
    move-object/from16 v1, v33

    #@7e9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@7ec
    .line 5746
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    #@7ef
    move-result-object v31

    #@7f0
    .line 5747
    .local v31, "uriExtras":Landroid/os/Bundle;
    const/16 v33, 0x0

    #@7f2
    check-cast v33, Landroid/os/Bundle;

    #@7f4
    move-object/from16 v0, v33

    #@7f6
    invoke-virtual {v6, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@7f9
    .line 5748
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@7fc
    move-result-object v33

    #@7fd
    if-eqz v33, :cond_48

    #@7ff
    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@802
    move-result-object v33

    #@803
    if-eqz v33, :cond_48

    #@805
    .line 5749
    new-instance v9, Ljava/util/HashSet;

    #@807
    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    #@80a
    move-result-object v33

    #@80b
    move-object/from16 v0, v33

    #@80d
    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@810
    .line 5750
    .local v9, "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@813
    move-result-object v8

    #@814
    .local v8, "c$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@817
    move-result v33

    #@818
    if-eqz v33, :cond_48

    #@81a
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@81d
    move-result-object v7

    #@81e
    check-cast v7, Ljava/lang/String;

    #@820
    .line 5751
    .local v7, "c":Ljava/lang/String;
    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    #@823
    goto :goto_c

    #@824
    .line 5707
    .end local v4    # "arg":Ljava/lang/String;
    .end local v7    # "c":Ljava/lang/String;
    .end local v8    # "c$iterator":Ljava/util/Iterator;
    .end local v9    # "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v15    # "hasSelector":Z
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v31    # "uriExtras":Landroid/os/Bundle;
    .restart local v6    # "baseIntent":Landroid/content/Intent;
    .restart local v18    # "intent":Landroid/content/Intent;
    :cond_44
    const/4 v15, 0x0

    #@825
    goto :goto_9

    #@826
    .line 5726
    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v4    # "arg":Ljava/lang/String;
    .local v6, "baseIntent":Landroid/content/Intent;
    .restart local v15    # "hasSelector":Z
    .restart local v17    # "intent":Landroid/content/Intent;
    :cond_45
    const/16 v33, 0x3a

    #@828
    move/from16 v0, v33

    #@82a
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    #@82d
    move-result v33

    #@82e
    if-ltz v33, :cond_46

    #@830
    .line 5729
    const/16 v33, 0x7

    #@832
    move/from16 v0, v33

    #@834
    invoke-static {v4, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    #@837
    move-result-object v6

    #@838
    .local v6, "baseIntent":Landroid/content/Intent;
    goto :goto_b

    #@839
    .line 5731
    .local v6, "baseIntent":Landroid/content/Intent;
    :cond_46
    const/16 v33, 0x2f

    #@83b
    move/from16 v0, v33

    #@83d
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    #@840
    move-result v33

    #@841
    if-ltz v33, :cond_47

    #@843
    .line 5734
    new-instance v6, Landroid/content/Intent;

    #@845
    .end local v6    # "baseIntent":Landroid/content/Intent;
    const-string/jumbo v33, "android.intent.action.MAIN"

    #@848
    move-object/from16 v0, v33

    #@84a
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@84d
    .line 5735
    .local v6, "baseIntent":Landroid/content/Intent;
    const-string/jumbo v33, "android.intent.category.LAUNCHER"

    #@850
    move-object/from16 v0, v33

    #@852
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@855
    .line 5736
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@858
    move-result-object v33

    #@859
    move-object/from16 v0, v33

    #@85b
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@85e
    goto/16 :goto_b

    #@860
    .line 5739
    .local v6, "baseIntent":Landroid/content/Intent;
    :cond_47
    new-instance v6, Landroid/content/Intent;

    #@862
    .end local v6    # "baseIntent":Landroid/content/Intent;
    const-string/jumbo v33, "android.intent.action.MAIN"

    #@865
    move-object/from16 v0, v33

    #@867
    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@86a
    .line 5740
    .local v6, "baseIntent":Landroid/content/Intent;
    const-string/jumbo v33, "android.intent.category.LAUNCHER"

    #@86d
    move-object/from16 v0, v33

    #@86f
    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@872
    .line 5741
    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@875
    goto/16 :goto_b

    #@877
    .line 5754
    .end local v6    # "baseIntent":Landroid/content/Intent;
    .restart local v13    # "extras":Landroid/os/Bundle;
    .restart local v31    # "uriExtras":Landroid/os/Bundle;
    :cond_48
    const/16 v33, 0x48

    #@879
    move-object/from16 v0, v17

    #@87b
    move/from16 v1, v33

    #@87d
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    #@880
    .line 5755
    if-nez v13, :cond_4b

    #@882
    .line 5756
    move-object/from16 v13, v31

    #@884
    .line 5761
    :cond_49
    :goto_d
    move-object/from16 v0, v17

    #@886
    invoke-virtual {v0, v13}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    #@889
    .line 5762
    const/4 v14, 0x1

    #@88a
    .line 5765
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v31    # "uriExtras":Landroid/os/Bundle;
    :cond_4a
    if-nez v14, :cond_4c

    #@88c
    new-instance v33, Ljava/lang/IllegalArgumentException;

    #@88e
    const-string/jumbo v34, "No intent supplied"

    #@891
    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@894
    throw v33

    #@895
    .line 5757
    .restart local v13    # "extras":Landroid/os/Bundle;
    .restart local v31    # "uriExtras":Landroid/os/Bundle;
    :cond_4b
    if-eqz v31, :cond_49

    #@897
    .line 5758
    move-object/from16 v0, v31

    #@899
    invoke-virtual {v0, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@89c
    .line 5759
    move-object/from16 v13, v31

    #@89e
    goto :goto_d

    #@89f
    .line 5766
    .end local v13    # "extras":Landroid/os/Bundle;
    .end local v31    # "uriExtras":Landroid/os/Bundle;
    :cond_4c
    return-object v17

    #@8a0
    .end local v4    # "arg":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v6    # "baseIntent":Landroid/content/Intent;
    .restart local v18    # "intent":Landroid/content/Intent;
    :cond_4d
    move-object/from16 v17, v18

    #@8a2
    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    goto/16 :goto_a
.end method

.method public static parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    .locals 12
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 8727
    new-instance v3, Landroid/content/Intent;

    #@2
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@5
    .line 8730
    .local v3, "intent":Landroid/content/Intent;
    sget-object v10, Lcom/android/internal/R$styleable;->Intent:[I

    #@7
    .line 8729
    invoke-virtual {p0, p2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@a
    move-result-object v8

    #@b
    .line 8732
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x2

    #@c
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v10

    #@10
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    .line 8734
    const/4 v10, 0x3

    #@14
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 8735
    .local v2, "data":Ljava/lang/String;
    const/4 v10, 0x1

    #@19
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 8736
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@1f
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@22
    move-result-object v10

    #@23
    :goto_0
    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@26
    .line 8738
    const/4 v10, 0x0

    #@27
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2a
    move-result-object v7

    #@2b
    .line 8739
    .local v7, "packageName":Ljava/lang/String;
    const/4 v10, 0x4

    #@2c
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 8740
    .local v1, "className":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@32
    if-eqz v1, :cond_0

    #@34
    .line 8741
    new-instance v10, Landroid/content/ComponentName;

    #@36
    invoke-direct {v10, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@3c
    .line 8744
    :cond_0
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@3f
    .line 8746
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@42
    move-result v6

    #@43
    .line 8748
    .local v6, "outerDepth":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@46
    move-result v9

    #@47
    .local v9, "type":I
    const/4 v10, 0x1

    #@48
    if-eq v9, v10, :cond_8

    #@4a
    .line 8749
    const/4 v10, 0x3

    #@4b
    if-ne v9, v10, :cond_2

    #@4d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@50
    move-result v10

    #@51
    if-le v10, v6, :cond_8

    #@53
    .line 8750
    :cond_2
    const/4 v10, 0x3

    #@54
    if-eq v9, v10, :cond_1

    #@56
    const/4 v10, 0x4

    #@57
    if-eq v9, v10, :cond_1

    #@59
    .line 8754
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 8755
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v10, "categories"

    #@60
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v10

    #@64
    if-eqz v10, :cond_5

    #@66
    .line 8757
    sget-object v10, Lcom/android/internal/R$styleable;->IntentCategory:[I

    #@68
    .line 8756
    invoke-virtual {p0, p2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6b
    move-result-object v8

    #@6c
    .line 8758
    const/4 v10, 0x0

    #@6d
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    .line 8759
    .local v0, "cat":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@74
    .line 8761
    if-eqz v0, :cond_3

    #@76
    .line 8762
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@79
    .line 8764
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7c
    goto :goto_1

    #@7d
    .line 8736
    .end local v0    # "cat":Ljava/lang/String;
    .end local v1    # "className":Ljava/lang/String;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "outerDepth":I
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "type":I
    :cond_4
    const/4 v10, 0x0

    #@7e
    goto :goto_0

    #@7f
    .line 8766
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v5    # "nodeName":Ljava/lang/String;
    .restart local v6    # "outerDepth":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_5
    const-string/jumbo v10, "extra"

    #@82
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v10

    #@86
    if-eqz v10, :cond_7

    #@88
    .line 8767
    iget-object v10, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8a
    if-nez v10, :cond_6

    #@8c
    .line 8768
    new-instance v10, Landroid/os/Bundle;

    #@8e
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@91
    iput-object v10, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@93
    .line 8770
    :cond_6
    const-string/jumbo v10, "extra"

    #@96
    iget-object v11, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@98
    invoke-virtual {p0, v10, p2, v11}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@9b
    .line 8771
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@9e
    goto :goto_1

    #@9f
    .line 8774
    :cond_7
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@a2
    goto :goto_1

    #@a3
    .line 8778
    .end local v5    # "nodeName":Ljava/lang/String;
    :cond_8
    return-object v3
.end method

.method public static parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 27
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 5013
    const/4 v14, 0x0

    #@1
    .line 5015
    .local v14, "i":I
    :try_start_0
    const-string/jumbo v24, "android-app:"

    #@4
    move-object/from16 v0, p0

    #@6
    move-object/from16 v1, v24

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v4

    #@c
    .line 5018
    .local v4, "androidApp":Z
    and-int/lit8 v24, p1, 0x3

    #@e
    if-eqz v24, :cond_0

    #@10
    .line 5019
    const-string/jumbo v24, "intent:"

    #@13
    move-object/from16 v0, p0

    #@15
    move-object/from16 v1, v24

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a
    move-result v24

    #@1b
    if-nez v24, :cond_0

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 5030
    :cond_0
    const-string/jumbo v24, "#"

    #@22
    move-object/from16 v0, p0

    #@24
    move-object/from16 v1, v24

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@29
    move-result v14

    #@2a
    .line 5032
    const/16 v24, -0x1

    #@2c
    move/from16 v0, v24

    #@2e
    if-ne v14, v0, :cond_2

    #@30
    .line 5033
    if-nez v4, :cond_4

    #@32
    .line 5034
    new-instance v24, Landroid/content/Intent;

    #@34
    const-string/jumbo v25, "android.intent.action.VIEW"

    #@37
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3a
    move-result-object v26

    #@3b
    invoke-direct/range {v24 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@3e
    return-object v24

    #@3f
    .line 5020
    :cond_1
    new-instance v16, Landroid/content/Intent;

    #@41
    const-string/jumbo v24, "android.intent.action.VIEW"

    #@44
    move-object/from16 v0, v16

    #@46
    move-object/from16 v1, v24

    #@48
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@4b
    .line 5022
    .local v16, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@4e
    move-result-object v24

    #@4f
    move-object/from16 v0, v16

    #@51
    move-object/from16 v1, v24

    #@53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@56
    .line 5026
    return-object v16

    #@57
    .line 5023
    :catch_0
    move-exception v9

    #@58
    .line 5024
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v24, Ljava/net/URISyntaxException;

    #@5a
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@5d
    move-result-object v25

    #@5e
    move-object/from16 v0, v24

    #@60
    move-object/from16 v1, p0

    #@62
    move-object/from16 v2, v25

    #@64
    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    throw v24
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    #@68
    .line 5221
    .end local v4    # "androidApp":Z
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v16    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v10

    #@69
    .line 5222
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v24, Ljava/net/URISyntaxException;

    #@6b
    const-string/jumbo v25, "illegal Intent URI format"

    #@6e
    move-object/from16 v0, v24

    #@70
    move-object/from16 v1, p0

    #@72
    move-object/from16 v2, v25

    #@74
    invoke-direct {v0, v1, v2, v14}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@77
    throw v24

    #@78
    .line 5038
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "androidApp":Z
    :cond_2
    :try_start_3
    const-string/jumbo v24, "#Intent;"

    #@7b
    move-object/from16 v0, p0

    #@7d
    move-object/from16 v1, v24

    #@7f
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@82
    move-result v24

    #@83
    if-nez v24, :cond_4

    #@85
    .line 5039
    if-nez v4, :cond_3

    #@87
    .line 5040
    invoke-static/range {p0 .. p1}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    #@8a
    move-result-object v24

    #@8b
    return-object v24

    #@8c
    .line 5042
    :cond_3
    const/4 v14, -0x1

    #@8d
    .line 5047
    :cond_4
    new-instance v16, Landroid/content/Intent;

    #@8f
    const-string/jumbo v24, "android.intent.action.VIEW"

    #@92
    move-object/from16 v0, v16

    #@94
    move-object/from16 v1, v24

    #@96
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@99
    .line 5048
    .restart local v16    # "intent":Landroid/content/Intent;
    move-object/from16 v7, v16

    #@9b
    .line 5049
    .local v7, "baseIntent":Landroid/content/Intent;
    const/4 v13, 0x0

    #@9c
    .line 5050
    .local v13, "explicitAction":Z
    const/4 v15, 0x0

    #@9d
    .line 5053
    .local v15, "inSelector":Z
    const/16 v21, 0x0

    #@9f
    .line 5055
    .local v21, "scheme":Ljava/lang/String;
    if-ltz v14, :cond_9

    #@a1
    .line 5056
    const/16 v24, 0x0

    #@a3
    move-object/from16 v0, p0

    #@a5
    move/from16 v1, v24

    #@a7
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@aa
    move-result-object v8

    #@ab
    .line 5057
    .local v8, "data":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x8

    #@ad
    move-object/from16 v17, v16

    #@af
    .line 5063
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v21    # "scheme":Ljava/lang/String;
    .local v17, "intent":Landroid/content/Intent;
    :goto_0
    if-ltz v14, :cond_5

    #@b1
    const-string/jumbo v24, "end"

    #@b4
    move-object/from16 v0, p0

    #@b6
    move-object/from16 v1, v24

    #@b8
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@bb
    move-result v24

    #@bc
    if-eqz v24, :cond_a

    #@be
    .line 5148
    :cond_5
    if-eqz v15, :cond_2b

    #@c0
    .line 5150
    move-object/from16 v0, v16

    #@c2
    iget-object v0, v0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@c4
    move-object/from16 v24, v0

    #@c6
    if-nez v24, :cond_6

    #@c8
    .line 5151
    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    #@cb
    .line 5156
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_1
    if-eqz v8, :cond_8

    #@cd
    .line 5157
    const-string/jumbo v24, "intent:"

    #@d0
    move-object/from16 v0, v24

    #@d2
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d5
    move-result v24

    #@d6
    if-eqz v24, :cond_22

    #@d8
    .line 5158
    const/16 v24, 0x7

    #@da
    move/from16 v0, v24

    #@dc
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@df
    move-result-object v8

    #@e0
    .line 5159
    if-eqz v21, :cond_7

    #@e2
    .line 5160
    new-instance v24, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    move-object/from16 v0, v24

    #@e9
    move-object/from16 v1, v21

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v24

    #@ef
    const/16 v25, 0x3a

    #@f1
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v24

    #@f5
    move-object/from16 v0, v24

    #@f7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v24

    #@fb
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v8

    #@ff
    .line 5210
    :cond_7
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    #@102
    move-result v24

    #@103
    if-lez v24, :cond_8

    #@105
    .line 5212
    :try_start_4
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@108
    move-result-object v24

    #@109
    move-object/from16 v0, v24

    #@10b
    move-object/from16 v1, v16

    #@10d
    iput-object v0, v1, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    #@10f
    .line 5219
    :cond_8
    return-object v16

    #@110
    .line 5059
    .end local v8    # "data":Ljava/lang/String;
    .restart local v21    # "scheme":Ljava/lang/String;
    :cond_9
    move-object/from16 v8, p0

    #@112
    .restart local v8    # "data":Ljava/lang/String;
    move-object/from16 v17, v16

    #@114
    .end local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    goto :goto_0

    #@115
    .line 5064
    .end local v21    # "scheme":Ljava/lang/String;
    :cond_a
    const/16 v24, 0x3d

    #@117
    :try_start_5
    move-object/from16 v0, p0

    #@119
    move/from16 v1, v24

    #@11b
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    #@11e
    move-result v12

    #@11f
    .line 5065
    .local v12, "eq":I
    if-gez v12, :cond_b

    #@121
    add-int/lit8 v12, v14, -0x1

    #@123
    .line 5066
    :cond_b
    const/16 v24, 0x3b

    #@125
    move-object/from16 v0, p0

    #@127
    move/from16 v1, v24

    #@129
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    #@12c
    move-result v22

    #@12d
    .line 5067
    .local v22, "semi":I
    move/from16 v0, v22

    #@12f
    if-ge v12, v0, :cond_d

    #@131
    add-int/lit8 v24, v12, 0x1

    #@133
    move-object/from16 v0, p0

    #@135
    move/from16 v1, v24

    #@137
    move/from16 v2, v22

    #@139
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13c
    move-result-object v24

    #@13d
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@140
    move-result-object v23

    #@141
    .line 5070
    .local v23, "value":Ljava/lang/String;
    :goto_3
    const-string/jumbo v24, "action="

    #@144
    move-object/from16 v0, p0

    #@146
    move-object/from16 v1, v24

    #@148
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@14b
    move-result v24

    #@14c
    if-eqz v24, :cond_e

    #@14e
    .line 5071
    move-object/from16 v0, v17

    #@150
    move-object/from16 v1, v23

    #@152
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@155
    .line 5072
    if-nez v15, :cond_c

    #@157
    .line 5073
    const/4 v13, 0x1

    #@158
    .line 5145
    :cond_c
    :goto_4
    add-int/lit8 v14, v22, 0x1

    #@15a
    goto/16 :goto_0

    #@15c
    .line 5067
    .end local v23    # "value":Ljava/lang/String;
    :cond_d
    const-string/jumbo v23, ""

    #@15f
    .restart local v23    # "value":Ljava/lang/String;
    goto :goto_3

    #@160
    .line 5078
    :cond_e
    const-string/jumbo v24, "category="

    #@163
    move-object/from16 v0, p0

    #@165
    move-object/from16 v1, v24

    #@167
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@16a
    move-result v24

    #@16b
    if-eqz v24, :cond_f

    #@16d
    .line 5079
    move-object/from16 v0, v17

    #@16f
    move-object/from16 v1, v23

    #@171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@174
    goto :goto_4

    #@175
    .line 5083
    :cond_f
    const-string/jumbo v24, "type="

    #@178
    move-object/from16 v0, p0

    #@17a
    move-object/from16 v1, v24

    #@17c
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@17f
    move-result v24

    #@180
    if-eqz v24, :cond_10

    #@182
    .line 5084
    move-object/from16 v0, v23

    #@184
    move-object/from16 v1, v17

    #@186
    iput-object v0, v1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@188
    goto :goto_4

    #@189
    .line 5088
    :cond_10
    const-string/jumbo v24, "launchFlags="

    #@18c
    move-object/from16 v0, p0

    #@18e
    move-object/from16 v1, v24

    #@190
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@193
    move-result v24

    #@194
    if-eqz v24, :cond_11

    #@196
    .line 5089
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@199
    move-result-object v24

    #@19a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    #@19d
    move-result v24

    #@19e
    move/from16 v0, v24

    #@1a0
    move-object/from16 v1, v17

    #@1a2
    iput v0, v1, Landroid/content/Intent;->mFlags:I

    #@1a4
    .line 5090
    and-int/lit8 v24, p1, 0x4

    #@1a6
    if-nez v24, :cond_c

    #@1a8
    .line 5091
    move-object/from16 v0, v17

    #@1aa
    iget v0, v0, Landroid/content/Intent;->mFlags:I

    #@1ac
    move/from16 v24, v0

    #@1ae
    move/from16 v0, v24

    #@1b0
    and-int/lit16 v0, v0, -0xc4

    #@1b2
    move/from16 v24, v0

    #@1b4
    move/from16 v0, v24

    #@1b6
    move-object/from16 v1, v17

    #@1b8
    iput v0, v1, Landroid/content/Intent;->mFlags:I

    #@1ba
    goto :goto_4

    #@1bb
    .line 5096
    :cond_11
    const-string/jumbo v24, "package="

    #@1be
    move-object/from16 v0, p0

    #@1c0
    move-object/from16 v1, v24

    #@1c2
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@1c5
    move-result v24

    #@1c6
    if-eqz v24, :cond_12

    #@1c8
    .line 5097
    move-object/from16 v0, v23

    #@1ca
    move-object/from16 v1, v17

    #@1cc
    iput-object v0, v1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@1ce
    goto :goto_4

    #@1cf
    .line 5101
    :cond_12
    const-string/jumbo v24, "component="

    #@1d2
    move-object/from16 v0, p0

    #@1d4
    move-object/from16 v1, v24

    #@1d6
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@1d9
    move-result v24

    #@1da
    if-eqz v24, :cond_13

    #@1dc
    .line 5102
    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@1df
    move-result-object v24

    #@1e0
    move-object/from16 v0, v24

    #@1e2
    move-object/from16 v1, v17

    #@1e4
    iput-object v0, v1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@1e6
    goto/16 :goto_4

    #@1e8
    .line 5106
    :cond_13
    const-string/jumbo v24, "scheme="

    #@1eb
    move-object/from16 v0, p0

    #@1ed
    move-object/from16 v1, v24

    #@1ef
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@1f2
    move-result v24

    #@1f3
    if-eqz v24, :cond_15

    #@1f5
    .line 5107
    if-eqz v15, :cond_14

    #@1f7
    .line 5108
    new-instance v24, Ljava/lang/StringBuilder;

    #@1f9
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@1fc
    move-object/from16 v0, v24

    #@1fe
    move-object/from16 v1, v23

    #@200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v24

    #@204
    const-string/jumbo v25, ":"

    #@207
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v24

    #@20b
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20e
    move-result-object v24

    #@20f
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@212
    move-result-object v24

    #@213
    move-object/from16 v0, v24

    #@215
    move-object/from16 v1, v17

    #@217
    iput-object v0, v1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@219
    goto/16 :goto_4

    #@21b
    .line 5110
    :cond_14
    move-object/from16 v21, v23

    #@21d
    .local v21, "scheme":Ljava/lang/String;
    goto/16 :goto_4

    #@21f
    .line 5115
    .end local v21    # "scheme":Ljava/lang/String;
    :cond_15
    const-string/jumbo v24, "sourceBounds="

    #@222
    move-object/from16 v0, p0

    #@224
    move-object/from16 v1, v24

    #@226
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@229
    move-result v24

    #@22a
    if-eqz v24, :cond_16

    #@22c
    .line 5116
    invoke-static/range {v23 .. v23}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    #@22f
    move-result-object v24

    #@230
    move-object/from16 v0, v24

    #@232
    move-object/from16 v1, v17

    #@234
    iput-object v0, v1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@236
    goto/16 :goto_4

    #@238
    .line 5120
    :cond_16
    add-int/lit8 v24, v14, 0x3

    #@23a
    move/from16 v0, v22

    #@23c
    move/from16 v1, v24

    #@23e
    if-ne v0, v1, :cond_17

    #@240
    const-string/jumbo v24, "SEL"

    #@243
    move-object/from16 v0, p0

    #@245
    move-object/from16 v1, v24

    #@247
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@24a
    move-result v24

    #@24b
    if-eqz v24, :cond_17

    #@24d
    .line 5121
    new-instance v17, Landroid/content/Intent;

    #@24f
    .end local v17    # "intent":Landroid/content/Intent;
    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    #@252
    .line 5122
    .restart local v17    # "intent":Landroid/content/Intent;
    const/4 v15, 0x1

    #@253
    goto/16 :goto_4

    #@255
    .line 5127
    :cond_17
    add-int/lit8 v24, v14, 0x2

    #@257
    move-object/from16 v0, p0

    #@259
    move/from16 v1, v24

    #@25b
    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25e
    move-result-object v24

    #@25f
    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@262
    move-result-object v18

    #@263
    .line 5129
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, v17

    #@265
    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@267
    move-object/from16 v24, v0

    #@269
    if-nez v24, :cond_18

    #@26b
    new-instance v24, Landroid/os/Bundle;

    #@26d
    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    #@270
    move-object/from16 v0, v24

    #@272
    move-object/from16 v1, v17

    #@274
    iput-object v0, v1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@276
    .line 5130
    :cond_18
    move-object/from16 v0, v17

    #@278
    iget-object v6, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@27a
    .line 5132
    .local v6, "b":Landroid/os/Bundle;
    const-string/jumbo v24, "S."

    #@27d
    move-object/from16 v0, p0

    #@27f
    move-object/from16 v1, v24

    #@281
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@284
    move-result v24

    #@285
    if-eqz v24, :cond_19

    #@287
    move-object/from16 v0, v18

    #@289
    move-object/from16 v1, v23

    #@28b
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@28e
    goto/16 :goto_4

    #@290
    .line 5133
    :cond_19
    const-string/jumbo v24, "B."

    #@293
    move-object/from16 v0, p0

    #@295
    move-object/from16 v1, v24

    #@297
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@29a
    move-result v24

    #@29b
    if-eqz v24, :cond_1a

    #@29d
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@2a0
    move-result v24

    #@2a1
    move-object/from16 v0, v18

    #@2a3
    move/from16 v1, v24

    #@2a5
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2a8
    goto/16 :goto_4

    #@2aa
    .line 5134
    :cond_1a
    const-string/jumbo v24, "b."

    #@2ad
    move-object/from16 v0, p0

    #@2af
    move-object/from16 v1, v24

    #@2b1
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@2b4
    move-result v24

    #@2b5
    if-eqz v24, :cond_1b

    #@2b7
    invoke-static/range {v23 .. v23}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    #@2ba
    move-result v24

    #@2bb
    move-object/from16 v0, v18

    #@2bd
    move/from16 v1, v24

    #@2bf
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    #@2c2
    goto/16 :goto_4

    #@2c4
    .line 5135
    :cond_1b
    const-string/jumbo v24, "c."

    #@2c7
    move-object/from16 v0, p0

    #@2c9
    move-object/from16 v1, v24

    #@2cb
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@2ce
    move-result v24

    #@2cf
    if-eqz v24, :cond_1c

    #@2d1
    const/16 v24, 0x0

    #@2d3
    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    #@2d6
    move-result v24

    #@2d7
    move-object/from16 v0, v18

    #@2d9
    move/from16 v1, v24

    #@2db
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    #@2de
    goto/16 :goto_4

    #@2e0
    .line 5136
    :cond_1c
    const-string/jumbo v24, "d."

    #@2e3
    move-object/from16 v0, p0

    #@2e5
    move-object/from16 v1, v24

    #@2e7
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@2ea
    move-result v24

    #@2eb
    if-eqz v24, :cond_1d

    #@2ed
    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@2f0
    move-result-wide v24

    #@2f1
    move-object/from16 v0, v18

    #@2f3
    move-wide/from16 v1, v24

    #@2f5
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@2f8
    goto/16 :goto_4

    #@2fa
    .line 5137
    :cond_1d
    const-string/jumbo v24, "f."

    #@2fd
    move-object/from16 v0, p0

    #@2ff
    move-object/from16 v1, v24

    #@301
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@304
    move-result v24

    #@305
    if-eqz v24, :cond_1e

    #@307
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@30a
    move-result v24

    #@30b
    move-object/from16 v0, v18

    #@30d
    move/from16 v1, v24

    #@30f
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@312
    goto/16 :goto_4

    #@314
    .line 5138
    :cond_1e
    const-string/jumbo v24, "i."

    #@317
    move-object/from16 v0, p0

    #@319
    move-object/from16 v1, v24

    #@31b
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@31e
    move-result v24

    #@31f
    if-eqz v24, :cond_1f

    #@321
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@324
    move-result v24

    #@325
    move-object/from16 v0, v18

    #@327
    move/from16 v1, v24

    #@329
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@32c
    goto/16 :goto_4

    #@32e
    .line 5139
    :cond_1f
    const-string/jumbo v24, "l."

    #@331
    move-object/from16 v0, p0

    #@333
    move-object/from16 v1, v24

    #@335
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@338
    move-result v24

    #@339
    if-eqz v24, :cond_20

    #@33b
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@33e
    move-result-wide v24

    #@33f
    move-object/from16 v0, v18

    #@341
    move-wide/from16 v1, v24

    #@343
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@346
    goto/16 :goto_4

    #@348
    .line 5140
    :cond_20
    const-string/jumbo v24, "s."

    #@34b
    move-object/from16 v0, p0

    #@34d
    move-object/from16 v1, v24

    #@34f
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@352
    move-result v24

    #@353
    if-eqz v24, :cond_21

    #@355
    invoke-static/range {v23 .. v23}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@358
    move-result v24

    #@359
    move-object/from16 v0, v18

    #@35b
    move/from16 v1, v24

    #@35d
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    #@360
    goto/16 :goto_4

    #@362
    .line 5141
    :cond_21
    new-instance v24, Ljava/net/URISyntaxException;

    #@364
    const-string/jumbo v25, "unknown EXTRA type"

    #@367
    move-object/from16 v0, v24

    #@369
    move-object/from16 v1, p0

    #@36b
    move-object/from16 v2, v25

    #@36d
    invoke-direct {v0, v1, v2, v14}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@370
    throw v24

    #@371
    .line 5162
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v12    # "eq":I
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "key":Ljava/lang/String;
    .end local v22    # "semi":I
    .end local v23    # "value":Ljava/lang/String;
    .restart local v16    # "intent":Landroid/content/Intent;
    :cond_22
    const-string/jumbo v24, "android-app:"

    #@374
    move-object/from16 v0, v24

    #@376
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@379
    move-result v24

    #@37a
    if-eqz v24, :cond_7

    #@37c
    .line 5163
    const/16 v24, 0xc

    #@37e
    move/from16 v0, v24

    #@380
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    #@383
    move-result v24

    #@384
    const/16 v25, 0x2f

    #@386
    move/from16 v0, v24

    #@388
    move/from16 v1, v25

    #@38a
    if-ne v0, v1, :cond_2a

    #@38c
    const/16 v24, 0xd

    #@38e
    move/from16 v0, v24

    #@390
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    #@393
    move-result v24

    #@394
    const/16 v25, 0x2f

    #@396
    move/from16 v0, v24

    #@398
    move/from16 v1, v25

    #@39a
    if-ne v0, v1, :cond_2a

    #@39c
    .line 5165
    const/16 v24, 0x2f

    #@39e
    const/16 v25, 0xe

    #@3a0
    move/from16 v0, v24

    #@3a2
    move/from16 v1, v25

    #@3a4
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    #@3a7
    move-result v11

    #@3a8
    .line 5166
    .local v11, "end":I
    if-gez v11, :cond_24

    #@3aa
    .line 5168
    const/16 v24, 0xe

    #@3ac
    move/from16 v0, v24

    #@3ae
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3b1
    move-result-object v24

    #@3b2
    move-object/from16 v0, v24

    #@3b4
    move-object/from16 v1, v16

    #@3b6
    iput-object v0, v1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@3b8
    .line 5169
    if-nez v13, :cond_23

    #@3ba
    .line 5170
    const-string/jumbo v24, "android.intent.action.MAIN"

    #@3bd
    move-object/from16 v0, v16

    #@3bf
    move-object/from16 v1, v24

    #@3c1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@3c4
    .line 5172
    :cond_23
    const-string/jumbo v8, ""

    #@3c7
    goto/16 :goto_2

    #@3c9
    .line 5175
    :cond_24
    const/4 v5, 0x0

    #@3ca
    .line 5176
    .local v5, "authority":Ljava/lang/String;
    const/16 v24, 0xe

    #@3cc
    move/from16 v0, v24

    #@3ce
    invoke-virtual {v8, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3d1
    move-result-object v24

    #@3d2
    move-object/from16 v0, v24

    #@3d4
    move-object/from16 v1, v16

    #@3d6
    iput-object v0, v1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@3d8
    .line 5178
    add-int/lit8 v24, v11, 0x1

    #@3da
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@3dd
    move-result v25

    #@3de
    move/from16 v0, v24

    #@3e0
    move/from16 v1, v25

    #@3e2
    if-ge v0, v1, :cond_25

    #@3e4
    .line 5179
    const/16 v24, 0x2f

    #@3e6
    add-int/lit8 v25, v11, 0x1

    #@3e8
    move/from16 v0, v24

    #@3ea
    move/from16 v1, v25

    #@3ec
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    #@3ef
    move-result v19

    #@3f0
    .local v19, "newEnd":I
    if-ltz v19, :cond_27

    #@3f2
    .line 5181
    add-int/lit8 v24, v11, 0x1

    #@3f4
    move/from16 v0, v24

    #@3f6
    move/from16 v1, v19

    #@3f8
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3fb
    move-result-object v21

    #@3fc
    .line 5182
    .restart local v21    # "scheme":Ljava/lang/String;
    move/from16 v11, v19

    #@3fe
    .line 5183
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@401
    move-result v24

    #@402
    move/from16 v0, v19

    #@404
    move/from16 v1, v24

    #@406
    if-ge v0, v1, :cond_25

    #@408
    const/16 v24, 0x2f

    #@40a
    add-int/lit8 v25, v19, 0x1

    #@40c
    move/from16 v0, v24

    #@40e
    move/from16 v1, v25

    #@410
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    #@413
    move-result v20

    #@414
    .end local v19    # "newEnd":I
    .local v20, "newEnd":I
    if-ltz v20, :cond_25

    #@416
    .line 5185
    add-int/lit8 v24, v19, 0x1

    #@418
    move/from16 v0, v24

    #@41a
    move/from16 v1, v20

    #@41c
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@41f
    move-result-object v5

    #@420
    .line 5186
    .local v5, "authority":Ljava/lang/String;
    move/from16 v11, v20

    #@422
    .line 5193
    .end local v5    # "authority":Ljava/lang/String;
    .end local v20    # "newEnd":I
    .end local v21    # "scheme":Ljava/lang/String;
    :cond_25
    :goto_5
    if-nez v21, :cond_28

    #@424
    .line 5195
    if-nez v13, :cond_26

    #@426
    .line 5196
    const-string/jumbo v24, "android.intent.action.MAIN"

    #@429
    move-object/from16 v0, v16

    #@42b
    move-object/from16 v1, v24

    #@42d
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@430
    .line 5198
    :cond_26
    const-string/jumbo v8, ""

    #@433
    goto/16 :goto_2

    #@435
    .line 5190
    .local v5, "authority":Ljava/lang/String;
    .restart local v19    # "newEnd":I
    :cond_27
    add-int/lit8 v24, v11, 0x1

    #@437
    move/from16 v0, v24

    #@439
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@43c
    move-result-object v21

    #@43d
    .restart local v21    # "scheme":Ljava/lang/String;
    goto :goto_5

    #@43e
    .line 5199
    .end local v5    # "authority":Ljava/lang/String;
    .end local v19    # "newEnd":I
    .end local v21    # "scheme":Ljava/lang/String;
    :cond_28
    if-nez v5, :cond_29

    #@440
    .line 5200
    new-instance v24, Ljava/lang/StringBuilder;

    #@442
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@445
    move-object/from16 v0, v24

    #@447
    move-object/from16 v1, v21

    #@449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44c
    move-result-object v24

    #@44d
    const-string/jumbo v25, ":"

    #@450
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@453
    move-result-object v24

    #@454
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@457
    move-result-object v8

    #@458
    goto/16 :goto_2

    #@45a
    .line 5202
    :cond_29
    new-instance v24, Ljava/lang/StringBuilder;

    #@45c
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    #@45f
    move-object/from16 v0, v24

    #@461
    move-object/from16 v1, v21

    #@463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@466
    move-result-object v24

    #@467
    const-string/jumbo v25, "://"

    #@46a
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46d
    move-result-object v24

    #@46e
    move-object/from16 v0, v24

    #@470
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@473
    move-result-object v24

    #@474
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@477
    move-result-object v25

    #@478
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47b
    move-result-object v24

    #@47c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47f
    move-result-object v8

    #@480
    goto/16 :goto_2

    #@482
    .line 5206
    .end local v11    # "end":I
    :cond_2a
    const-string/jumbo v8, ""

    #@485
    goto/16 :goto_2

    #@487
    .line 5213
    :catch_2
    move-exception v9

    #@488
    .line 5214
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v24, Ljava/net/URISyntaxException;

    #@48a
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@48d
    move-result-object v25

    #@48e
    move-object/from16 v0, v24

    #@490
    move-object/from16 v1, p0

    #@492
    move-object/from16 v2, v25

    #@494
    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@497
    throw v24
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    #@498
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v16    # "intent":Landroid/content/Intent;
    .restart local v17    # "intent":Landroid/content/Intent;
    :cond_2b
    move-object/from16 v16, v17

    #@49a
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v16    # "intent":Landroid/content/Intent;
    goto/16 :goto_1
.end method

.method public static printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5771
    const/16 v3, 0x2e

    #@3
    new-array v1, v3, [Ljava/lang/String;

    #@5
    .line 5772
    const-string/jumbo v3, "<INTENT> specifications include these flags and arguments:"

    #@8
    aput-object v3, v1, v2

    #@a
    .line 5773
    const-string/jumbo v3, "    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]"

    #@d
    const/4 v4, 0x1

    #@e
    aput-object v3, v1, v4

    #@10
    .line 5774
    const-string/jumbo v3, "    [-c <CATEGORY> [-c <CATEGORY>] ...]"

    #@13
    const/4 v4, 0x2

    #@14
    aput-object v3, v1, v4

    #@16
    .line 5775
    const-string/jumbo v3, "    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]"

    #@19
    const/4 v4, 0x3

    #@1a
    aput-object v3, v1, v4

    #@1c
    .line 5776
    const-string/jumbo v3, "    [--esn <EXTRA_KEY> ...]"

    #@1f
    const/4 v4, 0x4

    #@20
    aput-object v3, v1, v4

    #@22
    .line 5777
    const-string/jumbo v3, "    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]"

    #@25
    const/4 v4, 0x5

    #@26
    aput-object v3, v1, v4

    #@28
    .line 5778
    const-string/jumbo v3, "    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]"

    #@2b
    const/4 v4, 0x6

    #@2c
    aput-object v3, v1, v4

    #@2e
    .line 5779
    const-string/jumbo v3, "    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]"

    #@31
    const/4 v4, 0x7

    #@32
    aput-object v3, v1, v4

    #@34
    .line 5780
    const-string/jumbo v3, "    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]"

    #@37
    const/16 v4, 0x8

    #@39
    aput-object v3, v1, v4

    #@3b
    .line 5781
    const-string/jumbo v3, "    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]"

    #@3e
    const/16 v4, 0x9

    #@40
    aput-object v3, v1, v4

    #@42
    .line 5782
    const-string/jumbo v3, "    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]"

    #@45
    const/16 v4, 0xa

    #@47
    aput-object v3, v1, v4

    #@49
    .line 5783
    const-string/jumbo v3, "    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    #@4c
    const/16 v4, 0xb

    #@4e
    aput-object v3, v1, v4

    #@50
    .line 5784
    const-string/jumbo v3, "        (mutiple extras passed as Integer[])"

    #@53
    const/16 v4, 0xc

    #@55
    aput-object v3, v1, v4

    #@57
    .line 5785
    const-string/jumbo v3, "    [--eial <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    #@5a
    const/16 v4, 0xd

    #@5c
    aput-object v3, v1, v4

    #@5e
    .line 5786
    const-string/jumbo v3, "        (mutiple extras passed as List<Integer>)"

    #@61
    const/16 v4, 0xe

    #@63
    aput-object v3, v1, v4

    #@65
    .line 5787
    const-string/jumbo v3, "    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    #@68
    const/16 v4, 0xf

    #@6a
    aput-object v3, v1, v4

    #@6c
    .line 5788
    const-string/jumbo v3, "        (mutiple extras passed as Long[])"

    #@6f
    const/16 v4, 0x10

    #@71
    aput-object v3, v1, v4

    #@73
    .line 5789
    const-string/jumbo v3, "    [--elal <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    #@76
    const/16 v4, 0x11

    #@78
    aput-object v3, v1, v4

    #@7a
    .line 5790
    const-string/jumbo v3, "        (mutiple extras passed as List<Long>)"

    #@7d
    const/16 v4, 0x12

    #@7f
    aput-object v3, v1, v4

    #@81
    .line 5791
    const-string/jumbo v3, "    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    #@84
    const/16 v4, 0x13

    #@86
    aput-object v3, v1, v4

    #@88
    .line 5792
    const-string/jumbo v3, "        (mutiple extras passed as Float[])"

    #@8b
    const/16 v4, 0x14

    #@8d
    aput-object v3, v1, v4

    #@8f
    .line 5793
    const-string/jumbo v3, "    [--efal <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    #@92
    const/16 v4, 0x15

    #@94
    aput-object v3, v1, v4

    #@96
    .line 5794
    const-string/jumbo v3, "        (mutiple extras passed as List<Float>)"

    #@99
    const/16 v4, 0x16

    #@9b
    aput-object v3, v1, v4

    #@9d
    .line 5795
    const-string/jumbo v3, "    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    #@a0
    const/16 v4, 0x17

    #@a2
    aput-object v3, v1, v4

    #@a4
    .line 5796
    const-string/jumbo v3, "        (mutiple extras passed as String[]; to embed a comma into a string,"

    #@a7
    const/16 v4, 0x18

    #@a9
    aput-object v3, v1, v4

    #@ab
    .line 5797
    const-string/jumbo v3, "         escape it using \"\\,\")"

    #@ae
    const/16 v4, 0x19

    #@b0
    aput-object v3, v1, v4

    #@b2
    .line 5798
    const-string/jumbo v3, "    [--esal <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    #@b5
    const/16 v4, 0x1a

    #@b7
    aput-object v3, v1, v4

    #@b9
    .line 5799
    const-string/jumbo v3, "        (mutiple extras passed as List<String>; to embed a comma into a string,"

    #@bc
    const/16 v4, 0x1b

    #@be
    aput-object v3, v1, v4

    #@c0
    .line 5800
    const-string/jumbo v3, "         escape it using \"\\,\")"

    #@c3
    const/16 v4, 0x1c

    #@c5
    aput-object v3, v1, v4

    #@c7
    .line 5801
    const-string/jumbo v3, "    [--f <FLAG>]"

    #@ca
    const/16 v4, 0x1d

    #@cc
    aput-object v3, v1, v4

    #@ce
    .line 5802
    const-string/jumbo v3, "    [--grant-read-uri-permission] [--grant-write-uri-permission]"

    #@d1
    const/16 v4, 0x1e

    #@d3
    aput-object v3, v1, v4

    #@d5
    .line 5803
    const-string/jumbo v3, "    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]"

    #@d8
    const/16 v4, 0x1f

    #@da
    aput-object v3, v1, v4

    #@dc
    .line 5804
    const-string/jumbo v3, "    [--debug-log-resolution] [--exclude-stopped-packages]"

    #@df
    const/16 v4, 0x20

    #@e1
    aput-object v3, v1, v4

    #@e3
    .line 5805
    const-string/jumbo v3, "    [--include-stopped-packages]"

    #@e6
    const/16 v4, 0x21

    #@e8
    aput-object v3, v1, v4

    #@ea
    .line 5806
    const-string/jumbo v3, "    [--activity-brought-to-front] [--activity-clear-top]"

    #@ed
    const/16 v4, 0x22

    #@ef
    aput-object v3, v1, v4

    #@f1
    .line 5807
    const-string/jumbo v3, "    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]"

    #@f4
    const/16 v4, 0x23

    #@f6
    aput-object v3, v1, v4

    #@f8
    .line 5808
    const-string/jumbo v3, "    [--activity-launched-from-history] [--activity-multiple-task]"

    #@fb
    const/16 v4, 0x24

    #@fd
    aput-object v3, v1, v4

    #@ff
    .line 5809
    const-string/jumbo v3, "    [--activity-no-animation] [--activity-no-history]"

    #@102
    const/16 v4, 0x25

    #@104
    aput-object v3, v1, v4

    #@106
    .line 5810
    const-string/jumbo v3, "    [--activity-no-user-action] [--activity-previous-is-top]"

    #@109
    const/16 v4, 0x26

    #@10b
    aput-object v3, v1, v4

    #@10d
    .line 5811
    const-string/jumbo v3, "    [--activity-reorder-to-front] [--activity-reset-task-if-needed]"

    #@110
    const/16 v4, 0x27

    #@112
    aput-object v3, v1, v4

    #@114
    .line 5812
    const-string/jumbo v3, "    [--activity-single-top] [--activity-clear-task]"

    #@117
    const/16 v4, 0x28

    #@119
    aput-object v3, v1, v4

    #@11b
    .line 5813
    const-string/jumbo v3, "    [--activity-task-on-home]"

    #@11e
    const/16 v4, 0x29

    #@120
    aput-object v3, v1, v4

    #@122
    .line 5814
    const-string/jumbo v3, "    [--receiver-registered-only] [--receiver-replace-pending]"

    #@125
    const/16 v4, 0x2a

    #@127
    aput-object v3, v1, v4

    #@129
    .line 5815
    const-string/jumbo v3, "    [--receiver-foreground]"

    #@12c
    const/16 v4, 0x2b

    #@12e
    aput-object v3, v1, v4

    #@130
    .line 5816
    const-string/jumbo v3, "    [--selector]"

    #@133
    const/16 v4, 0x2c

    #@135
    aput-object v3, v1, v4

    #@137
    .line 5817
    const-string/jumbo v3, "    [<URI> | <PACKAGE> | <COMPONENT>]"

    #@13a
    const/16 v4, 0x2d

    #@13c
    aput-object v3, v1, v4

    #@13e
    .line 5819
    .local v1, "lines":[Ljava/lang/String;
    array-length v3, v1

    #@13f
    :goto_0
    if-ge v2, v3, :cond_0

    #@141
    aget-object v0, v1, v2

    #@143
    .line 5820
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@146
    .line 5821
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@149
    .line 5819
    add-int/lit8 v2, v2, 0x1

    #@14b
    goto :goto_0

    #@14c
    .line 5770
    .end local v0    # "line":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .locals 11
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 8809
    new-instance v5, Landroid/content/Intent;

    #@2
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    #@5
    .line 8810
    .local v5, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@8
    move-result v7

    #@9
    .line 8812
    .local v7, "outerDepth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@c
    move-result v0

    #@d
    .line 8813
    .local v0, "attrCount":I
    add-int/lit8 v2, v0, -0x1

    #@f
    .local v2, "attrNdx":I
    :goto_0
    if-ltz v2, :cond_6

    #@11
    .line 8814
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 8815
    .local v1, "attrName":Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 8816
    .local v3, "attrValue":Ljava/lang/String;
    const-string/jumbo v8, "action"

    #@1c
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v8

    #@20
    if-eqz v8, :cond_0

    #@22
    .line 8817
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 8813
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@27
    goto :goto_0

    #@28
    .line 8818
    :cond_0
    const-string/jumbo v8, "data"

    #@2b
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_1

    #@31
    .line 8819
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@38
    goto :goto_1

    #@39
    .line 8820
    :cond_1
    const-string/jumbo v8, "type"

    #@3c
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_2

    #@42
    .line 8821
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@45
    goto :goto_1

    #@46
    .line 8822
    :cond_2
    const-string/jumbo v8, "component"

    #@49
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v8

    #@4d
    if-eqz v8, :cond_3

    #@4f
    .line 8823
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@56
    goto :goto_1

    #@57
    .line 8824
    :cond_3
    const-string/jumbo v8, "flags"

    #@5a
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v8

    #@5e
    if-eqz v8, :cond_4

    #@60
    .line 8825
    const/16 v8, 0x10

    #@62
    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@65
    move-result v8

    #@66
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@69
    goto :goto_1

    #@6a
    .line 8827
    :cond_4
    const-string/jumbo v8, "Intent"

    #@6d
    new-instance v9, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v10, "restoreFromXml: unknown attribute="

    #@75
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v9

    #@79
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v9

    #@81
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    goto :goto_1

    #@85
    .line 8843
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    .local v4, "event":I
    .local v6, "name":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "Intent"

    #@88
    new-instance v9, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v10, "restoreFromXml: unknown name="

    #@90
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v9

    #@94
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v9

    #@98
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v9

    #@9c
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9f
    .line 8844
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@a2
    .line 8833
    .end local v4    # "event":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a5
    move-result v4

    #@a6
    .restart local v4    # "event":I
    const/4 v8, 0x1

    #@a7
    if-eq v4, v8, :cond_8

    #@a9
    .line 8834
    const/4 v8, 0x3

    #@aa
    if-ne v4, v8, :cond_7

    #@ac
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@af
    move-result v8

    #@b0
    if-ge v8, v7, :cond_8

    #@b2
    .line 8835
    :cond_7
    const/4 v8, 0x2

    #@b3
    if-ne v4, v8, :cond_6

    #@b5
    .line 8836
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@b8
    move-result-object v6

    #@b9
    .line 8837
    .restart local v6    # "name":Ljava/lang/String;
    const-string/jumbo v8, "categories"

    #@bc
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bf
    move-result v8

    #@c0
    if-eqz v8, :cond_5

    #@c2
    .line 8838
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@c5
    move-result v0

    #@c6
    .line 8839
    add-int/lit8 v2, v0, -0x1

    #@c8
    :goto_2
    if-ltz v2, :cond_6

    #@ca
    .line 8840
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@cd
    move-result-object v8

    #@ce
    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@d1
    .line 8839
    add-int/lit8 v2, v2, -0x1

    #@d3
    goto :goto_2

    #@d4
    .line 8849
    .end local v6    # "name":Ljava/lang/String;
    :cond_8
    return-object v5
.end method

.method private toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/StringBuilder;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "defAction"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;
    .param p5, "flags"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 8535
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    const/16 v0, 0x80

    #@5
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .local v1, "frag":Ljava/lang/StringBuilder;
    move-object v0, p0

    #@9
    move-object v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move v5, p5

    #@d
    .line 8537
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@10
    .line 8538
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 8539
    const-string/jumbo v0, "SEL;"

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 8543
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@1c
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@1e
    iget-object v2, v2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@20
    if-eqz v2, :cond_2

    #@22
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@24
    iget-object v2, v2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@26
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    :goto_0
    move-object v3, v6

    #@2b
    move-object v4, v6

    #@2c
    move v5, p5

    #@2d
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@30
    .line 8547
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@33
    move-result v0

    #@34
    if-lez v0, :cond_1

    #@36
    .line 8548
    const-string/jumbo v0, "#Intent;"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 8549
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3f
    .line 8550
    const-string/jumbo v0, "end"

    #@42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 8534
    :cond_1
    return-void

    #@46
    :cond_2
    move-object v2, v6

    #@47
    .line 8543
    goto :goto_0
.end method

.method private toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "uri"    # Ljava/lang/StringBuilder;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "defAction"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;
    .param p5, "flags"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/16 v9, 0x3b

    #@3
    .line 8556
    if-eqz p2, :cond_0

    #@5
    .line 8557
    const-string/jumbo v5, "scheme="

    #@8
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 8559
    :cond_0
    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@15
    if-eqz v5, :cond_1

    #@17
    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@19
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_2

    #@1f
    .line 8562
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@21
    if-eqz v5, :cond_3

    #@23
    .line 8563
    const/4 v1, 0x0

    #@24
    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@26
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    #@29
    move-result v5

    #@2a
    if-ge v1, v5, :cond_3

    #@2c
    .line 8564
    const-string/jumbo v5, "category="

    #@2f
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@35
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@38
    move-result-object v5

    #@39
    check-cast v5, Ljava/lang/String;

    #@3b
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 8563
    add-int/lit8 v1, v1, 0x1

    #@48
    goto :goto_1

    #@49
    .line 8560
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v5, "action="

    #@4c
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    iget-object v7, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@52
    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d
    goto :goto_0

    #@5e
    .line 8567
    :cond_3
    iget-object v5, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@60
    if-eqz v5, :cond_4

    #@62
    .line 8568
    const-string/jumbo v5, "type="

    #@65
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    iget-object v7, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@6b
    const-string/jumbo v8, "/"

    #@6e
    invoke-static {v7, v8}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@79
    .line 8570
    :cond_4
    iget v5, p0, Landroid/content/Intent;->mFlags:I

    #@7b
    if-eqz v5, :cond_5

    #@7d
    .line 8571
    const-string/jumbo v5, "launchFlags=0x"

    #@80
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v5

    #@84
    iget v7, p0, Landroid/content/Intent;->mFlags:I

    #@86
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@89
    move-result-object v7

    #@8a
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@91
    .line 8573
    :cond_5
    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@93
    if-eqz v5, :cond_6

    #@95
    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@97
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9a
    move-result v5

    #@9b
    if-eqz v5, :cond_a

    #@9d
    .line 8576
    :cond_6
    :goto_2
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@9f
    if-eqz v5, :cond_7

    #@a1
    .line 8577
    const-string/jumbo v5, "component="

    #@a4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v5

    #@a8
    .line 8578
    iget-object v7, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@aa
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@ad
    move-result-object v7

    #@ae
    const-string/jumbo v8, "/"

    #@b1
    .line 8577
    invoke-static {v7, v8}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v5

    #@b9
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bc
    .line 8580
    :cond_7
    iget-object v5, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@be
    if-eqz v5, :cond_8

    #@c0
    .line 8581
    const-string/jumbo v5, "sourceBounds="

    #@c3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v5

    #@c7
    .line 8582
    iget-object v7, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@c9
    invoke-virtual {v7}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    #@cc
    move-result-object v7

    #@cd
    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@d0
    move-result-object v7

    #@d1
    .line 8581
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v5

    #@d5
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d8
    .line 8585
    :cond_8
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@da
    if-eqz v5, :cond_14

    #@dc
    .line 8586
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@de
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@e1
    move-result-object v5

    #@e2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e5
    move-result-object v3

    #@e6
    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e9
    move-result v5

    #@ea
    if-eqz v5, :cond_14

    #@ec
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ef
    move-result-object v2

    #@f0
    check-cast v2, Ljava/lang/String;

    #@f2
    .line 8587
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@f4
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@f7
    move-result-object v4

    #@f8
    .line 8589
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    #@fa
    if-eqz v5, :cond_b

    #@fc
    const/16 v0, 0x53

    #@fe
    .line 8600
    .local v0, "entryType":C
    :goto_4
    if-eqz v0, :cond_9

    #@100
    .line 8601
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@103
    .line 8602
    const/16 v5, 0x2e

    #@105
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@108
    .line 8603
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@10b
    move-result-object v5

    #@10c
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    .line 8604
    const/16 v5, 0x3d

    #@111
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@114
    .line 8605
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@117
    move-result-object v5

    #@118
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@11b
    move-result-object v5

    #@11c
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    .line 8606
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@122
    goto :goto_3

    #@123
    .line 8574
    .end local v0    # "entryType":C
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_a
    const-string/jumbo v5, "package="

    #@126
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v5

    #@12a
    iget-object v7, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@12c
    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@12f
    move-result-object v7

    #@130
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v5

    #@134
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@137
    goto/16 :goto_2

    #@139
    .line 8590
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "key$iterator":Ljava/util/Iterator;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v5, v4, Ljava/lang/Boolean;

    #@13b
    if-eqz v5, :cond_c

    #@13d
    const/16 v0, 0x42

    #@13f
    goto :goto_4

    #@140
    .line 8591
    :cond_c
    instance-of v5, v4, Ljava/lang/Byte;

    #@142
    if-eqz v5, :cond_d

    #@144
    const/16 v0, 0x62

    #@146
    goto :goto_4

    #@147
    .line 8592
    :cond_d
    instance-of v5, v4, Ljava/lang/Character;

    #@149
    if-eqz v5, :cond_e

    #@14b
    const/16 v0, 0x63

    #@14d
    goto :goto_4

    #@14e
    .line 8593
    :cond_e
    instance-of v5, v4, Ljava/lang/Double;

    #@150
    if-eqz v5, :cond_f

    #@152
    const/16 v0, 0x64

    #@154
    goto :goto_4

    #@155
    .line 8594
    :cond_f
    instance-of v5, v4, Ljava/lang/Float;

    #@157
    if-eqz v5, :cond_10

    #@159
    const/16 v0, 0x66

    #@15b
    goto :goto_4

    #@15c
    .line 8595
    :cond_10
    instance-of v5, v4, Ljava/lang/Integer;

    #@15e
    if-eqz v5, :cond_11

    #@160
    const/16 v0, 0x69

    #@162
    goto :goto_4

    #@163
    .line 8596
    :cond_11
    instance-of v5, v4, Ljava/lang/Long;

    #@165
    if-eqz v5, :cond_12

    #@167
    const/16 v0, 0x6c

    #@169
    goto :goto_4

    #@16a
    .line 8597
    :cond_12
    instance-of v5, v4, Ljava/lang/Short;

    #@16c
    if-eqz v5, :cond_13

    #@16e
    const/16 v0, 0x73

    #@170
    goto :goto_4

    #@171
    :cond_13
    move v0, v6

    #@172
    .line 8598
    goto :goto_4

    #@173
    .line 8555
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_14
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6942
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6943
    new-instance v0, Landroid/util/ArraySet;

    #@6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@b
    .line 6945
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@d
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@14
    .line 6946
    return-object p0
.end method

.method public addFlags(I)Landroid/content/Intent;
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 7862
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/content/Intent;->mFlags:I

    #@5
    .line 7863
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 4794
    new-instance v0, Landroid/content/Intent;

    #@2
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@5
    return-object v0
.end method

.method public cloneFilter()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .line 4813
    new-instance v0, Landroid/content/Intent;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;Z)V

    #@6
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 8613
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public fillIn(Landroid/content/Intent;I)I
    .locals 8
    .param p1, "other"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v7, -0x2

    #@1
    const/4 v6, 0x0

    #@2
    .line 8105
    const/4 v0, 0x0

    #@3
    .line 8106
    .local v0, "changes":I
    const/4 v2, 0x0

    #@4
    .line 8107
    .local v2, "mayHaveCopiedUris":Z
    iget-object v4, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 8108
    iget-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@a
    if-eqz v4, :cond_0

    #@c
    and-int/lit8 v4, p2, 0x1

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 8109
    :cond_0
    iget-object v4, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@12
    iput-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@14
    .line 8110
    const/4 v0, 0x1

    #@15
    .line 8112
    :cond_1
    iget-object v4, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@17
    if-nez v4, :cond_2

    #@19
    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@1b
    if-eqz v4, :cond_3

    #@1d
    .line 8113
    :cond_2
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@1f
    if-nez v4, :cond_11

    #@21
    iget-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@23
    if-nez v4, :cond_11

    #@25
    .line 8115
    :goto_0
    iget-object v4, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@27
    iput-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@29
    .line 8116
    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@2b
    iput-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@2d
    .line 8117
    or-int/lit8 v0, v0, 0x2

    #@2f
    .line 8118
    const/4 v2, 0x1

    #@30
    .line 8120
    :cond_3
    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@32
    if-eqz v4, :cond_6

    #@34
    .line 8121
    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@36
    if-eqz v4, :cond_4

    #@38
    and-int/lit8 v4, p2, 0x4

    #@3a
    if-eqz v4, :cond_6

    #@3c
    .line 8122
    :cond_4
    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3e
    if-eqz v4, :cond_5

    #@40
    .line 8123
    new-instance v4, Landroid/util/ArraySet;

    #@42
    iget-object v5, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@44
    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@47
    iput-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@49
    .line 8125
    :cond_5
    or-int/lit8 v0, v0, 0x4

    #@4b
    .line 8127
    :cond_6
    iget-object v4, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@4d
    if-eqz v4, :cond_8

    #@4f
    .line 8128
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@51
    if-eqz v4, :cond_7

    #@53
    and-int/lit8 v4, p2, 0x10

    #@55
    if-eqz v4, :cond_8

    #@57
    .line 8130
    :cond_7
    iget-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@59
    if-nez v4, :cond_8

    #@5b
    .line 8131
    iget-object v4, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@5d
    iput-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@5f
    .line 8132
    or-int/lit8 v0, v0, 0x10

    #@61
    .line 8137
    :cond_8
    iget-object v4, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@63
    if-eqz v4, :cond_9

    #@65
    and-int/lit8 v4, p2, 0x40

    #@67
    if-eqz v4, :cond_9

    #@69
    .line 8138
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@6b
    if-nez v4, :cond_9

    #@6d
    .line 8139
    new-instance v4, Landroid/content/Intent;

    #@6f
    iget-object v5, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@71
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@74
    iput-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@76
    .line 8140
    iput-object v6, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@78
    .line 8141
    or-int/lit8 v0, v0, 0x40

    #@7a
    .line 8144
    :cond_9
    iget-object v4, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@7c
    if-eqz v4, :cond_b

    #@7e
    .line 8145
    iget-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@80
    if-eqz v4, :cond_a

    #@82
    and-int/lit16 v4, p2, 0x80

    #@84
    if-eqz v4, :cond_b

    #@86
    .line 8146
    :cond_a
    iget-object v4, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@88
    iput-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@8a
    .line 8147
    or-int/lit16 v0, v0, 0x80

    #@8c
    .line 8148
    const/4 v2, 0x1

    #@8d
    .line 8153
    :cond_b
    iget-object v4, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@8f
    if-eqz v4, :cond_c

    #@91
    and-int/lit8 v4, p2, 0x8

    #@93
    if-eqz v4, :cond_c

    #@95
    .line 8154
    iget-object v4, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@97
    iput-object v4, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@99
    .line 8155
    or-int/lit8 v0, v0, 0x8

    #@9b
    .line 8157
    :cond_c
    iget v4, p0, Landroid/content/Intent;->mFlags:I

    #@9d
    iget v5, p1, Landroid/content/Intent;->mFlags:I

    #@9f
    or-int/2addr v4, v5

    #@a0
    iput v4, p0, Landroid/content/Intent;->mFlags:I

    #@a2
    .line 8158
    iget-object v4, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@a4
    if-eqz v4, :cond_e

    #@a6
    .line 8159
    iget-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@a8
    if-eqz v4, :cond_d

    #@aa
    and-int/lit8 v4, p2, 0x20

    #@ac
    if-eqz v4, :cond_e

    #@ae
    .line 8160
    :cond_d
    new-instance v4, Landroid/graphics/Rect;

    #@b0
    iget-object v5, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@b2
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@b5
    iput-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@b7
    .line 8161
    or-int/lit8 v0, v0, 0x20

    #@b9
    .line 8163
    :cond_e
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@bb
    if-nez v4, :cond_12

    #@bd
    .line 8164
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@bf
    if-eqz v4, :cond_f

    #@c1
    .line 8165
    new-instance v4, Landroid/os/Bundle;

    #@c3
    iget-object v5, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@c5
    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@c8
    iput-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@ca
    .line 8166
    const/4 v2, 0x1

    #@cb
    .line 8183
    :cond_f
    :goto_1
    if-eqz v2, :cond_10

    #@cd
    iget v4, p0, Landroid/content/Intent;->mContentUserHint:I

    #@cf
    if-ne v4, v7, :cond_10

    #@d1
    .line 8184
    iget v4, p1, Landroid/content/Intent;->mContentUserHint:I

    #@d3
    if-eq v4, v7, :cond_10

    #@d5
    .line 8185
    iget v4, p1, Landroid/content/Intent;->mContentUserHint:I

    #@d7
    iput v4, p0, Landroid/content/Intent;->mContentUserHint:I

    #@d9
    .line 8187
    :cond_10
    return v0

    #@da
    .line 8114
    :cond_11
    and-int/lit8 v4, p2, 0x2

    #@dc
    if-eqz v4, :cond_3

    #@de
    goto/16 :goto_0

    #@e0
    .line 8168
    :cond_12
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@e2
    if-eqz v4, :cond_f

    #@e4
    .line 8170
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    #@e6
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@e8
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@eb
    .line 8171
    .local v3, "newb":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@ed
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@f0
    .line 8172
    iput-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@f2
    .line 8173
    const/4 v2, 0x1

    #@f3
    goto :goto_1

    #@f4
    .line 8174
    .end local v3    # "newb":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    #@f5
    .line 8180
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "Intent"

    #@f8
    const-string/jumbo v5, "Failure filling in extras"

    #@fb
    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@fe
    goto :goto_1
.end method

.method public filterEquals(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "other"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 8243
    if-nez p1, :cond_0

    #@3
    .line 8244
    return v2

    #@4
    .line 8246
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@6
    iget-object v1, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@8
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    return v2

    #@f
    .line 8247
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@11
    iget-object v1, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@13
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v0

    #@17
    if-nez v0, :cond_2

    #@19
    return v2

    #@1a
    .line 8248
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@1c
    iget-object v1, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@1e
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v0

    #@22
    if-nez v0, :cond_3

    #@24
    return v2

    #@25
    .line 8249
    :cond_3
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@27
    iget-object v1, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@29
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2c
    move-result v0

    #@2d
    if-nez v0, :cond_4

    #@2f
    return v2

    #@30
    .line 8250
    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@32
    iget-object v1, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@34
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-nez v0, :cond_5

    #@3a
    return v2

    #@3b
    .line 8251
    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3d
    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3f
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@42
    move-result v0

    #@43
    if-nez v0, :cond_6

    #@45
    return v2

    #@46
    .line 8253
    :cond_6
    const/4 v0, 0x1

    #@47
    return v0
.end method

.method public filterHashCode()I
    .locals 2

    #@0
    .prologue
    .line 8265
    const/4 v0, 0x0

    #@1
    .line 8266
    .local v0, "code":I
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 8267
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v0, v1, 0x0

    #@d
    .line 8269
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 8270
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@13
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    .line 8272
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 8273
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@1e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@21
    move-result v1

    #@22
    add-int/2addr v0, v1

    #@23
    .line 8275
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 8276
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    .line 8278
    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 8279
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@34
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    #@37
    move-result v1

    #@38
    add-int/2addr v0, v1

    #@39
    .line 8281
    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3b
    if-eqz v1, :cond_5

    #@3d
    .line 8282
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3f
    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    #@42
    move-result v1

    #@43
    add-int/2addr v0, v1

    #@44
    .line 8284
    :cond_5
    return v0
.end method

.method public fixUris(I)V
    .locals 9
    .param p1, "contentUserHint"    # I

    #@0
    .prologue
    .line 8965
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3
    move-result-object v1

    #@4
    .line 8966
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_0

    #@6
    .line 8967
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@9
    move-result-object v7

    #@a
    iput-object v7, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@c
    .line 8969
    :cond_0
    iget-object v7, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@e
    if-eqz v7, :cond_1

    #@10
    .line 8970
    iget-object v7, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@12
    invoke-virtual {v7, p1}, Landroid/content/ClipData;->fixUris(I)V

    #@15
    .line 8972
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 8973
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.action.SEND"

    #@1c
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_3

    #@22
    .line 8974
    const-string/jumbo v7, "android.intent.extra.STREAM"

    #@25
    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Landroid/net/Uri;

    #@2b
    .line 8975
    .local v5, "stream":Landroid/net/Uri;
    if-eqz v5, :cond_2

    #@2d
    .line 8976
    const-string/jumbo v7, "android.intent.extra.STREAM"

    #@30
    invoke-static {v5, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@37
    .line 8964
    .end local v5    # "stream":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    #@38
    .line 8978
    :cond_3
    const-string/jumbo v7, "android.intent.action.SEND_MULTIPLE"

    #@3b
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v7

    #@3f
    if-eqz v7, :cond_5

    #@41
    .line 8979
    const-string/jumbo v7, "android.intent.extra.STREAM"

    #@44
    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@47
    move-result-object v6

    #@48
    .line 8980
    .local v6, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v6, :cond_2

    #@4a
    .line 8981
    new-instance v3, Ljava/util/ArrayList;

    #@4c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@4f
    .line 8982
    .local v3, "newStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    #@50
    .local v2, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@53
    move-result v7

    #@54
    if-ge v2, v7, :cond_4

    #@56
    .line 8983
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@59
    move-result-object v7

    #@5a
    check-cast v7, Landroid/net/Uri;

    #@5c
    invoke-static {v7, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@63
    .line 8982
    add-int/lit8 v2, v2, 0x1

    #@65
    goto :goto_1

    #@66
    .line 8985
    :cond_4
    const-string/jumbo v7, "android.intent.extra.STREAM"

    #@69
    invoke-virtual {p0, v7, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@6c
    goto :goto_0

    #@6d
    .line 8987
    .end local v2    # "i":I
    .end local v3    # "newStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v6    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_5
    const-string/jumbo v7, "android.media.action.IMAGE_CAPTURE"

    #@70
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v7

    #@74
    if-nez v7, :cond_6

    #@76
    .line 8988
    const-string/jumbo v7, "android.media.action.IMAGE_CAPTURE_SECURE"

    #@79
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v7

    #@7d
    .line 8987
    if-nez v7, :cond_6

    #@7f
    .line 8989
    const-string/jumbo v7, "android.media.action.VIDEO_CAPTURE"

    #@82
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v7

    #@86
    .line 8987
    if-eqz v7, :cond_2

    #@88
    .line 8990
    :cond_6
    const-string/jumbo v7, "output"

    #@8b
    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8e
    move-result-object v4

    #@8f
    check-cast v4, Landroid/net/Uri;

    #@91
    .line 8991
    .local v4, "output":Landroid/net/Uri;
    if-eqz v4, :cond_2

    #@93
    .line 8992
    const-string/jumbo v7, "output"

    #@96
    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@9d
    goto :goto_0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5836
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getBooleanArrayExtra(Ljava/lang/String;)[Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6337
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    .line 6077
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    #@5
    .line 6078
    .restart local p2    # "defaultValue":Z
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    #@a
    move-result p2

    #@b
    goto :goto_0
.end method

.method public getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6477
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getByteArrayExtra(Ljava/lang/String;)[B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6351
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getByteExtra(Ljava/lang/String;B)B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    #@0
    .prologue
    .line 6094
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":B
    :goto_0
    return p2

    #@5
    .line 6095
    .restart local p2    # "defaultValue":B
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    #@e
    move-result p2

    #@f
    goto :goto_0
.end method

.method public getCategories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5976
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getCharArrayExtra(Ljava/lang/String;)[C
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6379
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getCharExtra(Ljava/lang/String;C)C
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    #@0
    .prologue
    .line 6128
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":C
    :goto_0
    return p2

    #@5
    .line 6129
    .restart local p2    # "defaultValue":C
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    #@a
    move-result p2

    #@b
    goto :goto_0
.end method

.method public getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6463
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6323
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6225
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    #@0
    .prologue
    .line 5996
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@2
    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 6593
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getContentUserHint()I
    .locals 1

    #@0
    .prologue
    .line 6001
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@2
    return v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 5851
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getDataString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5859
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@7
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getDoubleArrayExtra(Ljava/lang/String;)[D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6435
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getDoubleExtra(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    #@0
    .prologue
    .line 6196
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    #@5
    .line 6197
    .restart local p2    # "defaultValue":D
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    #@a
    move-result-wide p2

    #@b
    goto :goto_0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 6061
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 6515
    move-object v0, p2

    #@1
    .line 6516
    .local v0, "result":Ljava/lang/Object;
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 6517
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    .line 6518
    .local v1, "result2":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@d
    .line 6519
    move-object v0, v1

    #@e
    .line 6523
    .end local v1    # "result2":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6533
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 6534
    new-instance v0, Landroid/os/Bundle;

    #@7
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@9
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@c
    .line 6533
    :cond_0
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 6558
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    #@2
    return v0
.end method

.method public getFloatArrayExtra(Ljava/lang/String;)[F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6421
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getFloatExtra(Ljava/lang/String;F)F
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    #@0
    .prologue
    .line 6179
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    #@5
    .line 6180
    .restart local p2    # "defaultValue":F
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    #@a
    move-result p2

    #@b
    goto :goto_0
.end method

.method public getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6495
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getIntArrayExtra(Ljava/lang/String;)[I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6393
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 6145
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    #@5
    .line 6146
    .restart local p2    # "defaultValue":I
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@a
    move-result p2

    #@b
    goto :goto_0
.end method

.method public getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6295
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getLongArrayExtra(Ljava/lang/String;)[J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6407
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getLongExtra(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    #@0
    .prologue
    .line 6162
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    #@5
    .line 6163
    .restart local p2    # "defaultValue":J
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    #@a
    move-result-wide p2

    #@b
    goto :goto_0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 6578
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6253
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6267
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6239
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 5875
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@7
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public getSelector()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 5986
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@2
    return-object v0
.end method

.method public getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6281
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getShortArrayExtra(Ljava/lang/String;)[S
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6365
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getShortExtra(Ljava/lang/String;S)S
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    #@0
    .prologue
    .line 6111
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":S
    :goto_0
    return p2

    #@5
    .line 6112
    .restart local p2    # "defaultValue":S
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    #@a
    move-result p2

    #@b
    goto :goto_0
.end method

.method public getSourceBounds()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 6602
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@2
    return-object v0
.end method

.method public getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6449
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6309
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6211
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5889
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5963
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6023
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public hasFileDescriptors()Z
    .locals 1

    #@0
    .prologue
    .line 6031
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public isDocument()Z
    .locals 2

    #@0
    .prologue
    const/high16 v1, 0x80000

    #@2
    .line 9124
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    #@4
    and-int/2addr v0, v1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isExcludingStopped()Z
    .locals 2

    #@0
    .prologue
    .line 6563
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x30

    #@4
    .line 6564
    const/16 v1, 0x10

    #@6
    .line 6563
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public migrateExtraStreamToClipData()Z
    .locals 21

    #@0
    .prologue
    .line 9007
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@4
    move-object/from16 v18, v0

    #@6
    if-eqz v18, :cond_0

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@c
    move-object/from16 v18, v0

    #@e
    invoke-virtual/range {v18 .. v18}, Landroid/os/Bundle;->isParcelled()Z

    #@11
    move-result v18

    #@12
    if-eqz v18, :cond_0

    #@14
    const/16 v18, 0x0

    #@16
    return v18

    #@17
    .line 9010
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@1a
    move-result-object v18

    #@1b
    if-eqz v18, :cond_1

    #@1d
    const/16 v18, 0x0

    #@1f
    return v18

    #@20
    .line 9012
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    .line 9013
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v18, "android.intent.action.CHOOSER"

    #@27
    move-object/from16 v0, v18

    #@29
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v18

    #@2d
    if-eqz v18, :cond_5

    #@2f
    .line 9019
    const/4 v11, 0x0

    #@30
    .line 9021
    .local v11, "migrated":Z
    :try_start_0
    const-string/jumbo v18, "android.intent.extra.INTENT"

    #@33
    move-object/from16 v0, p0

    #@35
    move-object/from16 v1, v18

    #@37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@3a
    move-result-object v9

    #@3b
    check-cast v9, Landroid/content/Intent;

    #@3d
    .line 9022
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_2

    #@3f
    .line 9023
    invoke-virtual {v9}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    #@42
    move-result v11

    #@43
    .line 9028
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "migrated":Z
    :cond_2
    :goto_0
    :try_start_1
    const-string/jumbo v18, "android.intent.extra.INITIAL_INTENTS"

    #@46
    move-object/from16 v0, p0

    #@48
    move-object/from16 v1, v18

    #@4a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@4d
    move-result-object v10

    #@4e
    .line 9029
    .local v10, "intents":[Landroid/os/Parcelable;
    if-eqz v10, :cond_4

    #@50
    .line 9030
    const/4 v8, 0x0

    #@51
    .local v8, "i":I
    :goto_1
    array-length v0, v10

    #@52
    move/from16 v18, v0

    #@54
    move/from16 v0, v18

    #@56
    if-ge v8, v0, :cond_4

    #@58
    .line 9031
    aget-object v9, v10, v8

    #@5a
    check-cast v9, Landroid/content/Intent;

    #@5c
    .line 9032
    .restart local v9    # "intent":Landroid/content/Intent;
    if-eqz v9, :cond_3

    #@5e
    .line 9033
    invoke-virtual {v9}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    #@61
    move-result v18

    #@62
    or-int v11, v11, v18

    #@64
    .line 9030
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@66
    goto :goto_1

    #@67
    .line 9037
    .end local v8    # "i":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "intents":[Landroid/os/Parcelable;
    :catch_0
    move-exception v5

    #@68
    .line 9039
    :cond_4
    return v11

    #@69
    .line 9041
    :cond_5
    const-string/jumbo v18, "android.intent.action.SEND"

    #@6c
    move-object/from16 v0, v18

    #@6e
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@71
    move-result v18

    #@72
    if-eqz v18, :cond_9

    #@74
    .line 9043
    :try_start_2
    const-string/jumbo v18, "android.intent.extra.STREAM"

    #@77
    move-object/from16 v0, p0

    #@79
    move-object/from16 v1, v18

    #@7b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@7e
    move-result-object v14

    #@7f
    check-cast v14, Landroid/net/Uri;

    #@81
    .line 9044
    .local v14, "stream":Landroid/net/Uri;
    const-string/jumbo v18, "android.intent.extra.TEXT"

    #@84
    move-object/from16 v0, p0

    #@86
    move-object/from16 v1, v18

    #@88
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@8b
    move-result-object v16

    #@8c
    .line 9045
    .local v16, "text":Ljava/lang/CharSequence;
    const-string/jumbo v18, "android.intent.extra.HTML_TEXT"

    #@8f
    move-object/from16 v0, p0

    #@91
    move-object/from16 v1, v18

    #@93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@96
    move-result-object v6

    #@97
    .line 9046
    .local v6, "htmlText":Ljava/lang/String;
    if-nez v14, :cond_6

    #@99
    if-eqz v16, :cond_7

    #@9b
    .line 9047
    :cond_6
    new-instance v4, Landroid/content/ClipData;

    #@9d
    .line 9048
    const/16 v18, 0x1

    #@9f
    move/from16 v0, v18

    #@a1
    new-array v0, v0, [Ljava/lang/String;

    #@a3
    move-object/from16 v18, v0

    #@a5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@a8
    move-result-object v19

    #@a9
    const/16 v20, 0x0

    #@ab
    aput-object v19, v18, v20

    #@ad
    .line 9049
    new-instance v19, Landroid/content/ClipData$Item;

    #@af
    const/16 v20, 0x0

    #@b1
    move-object/from16 v0, v19

    #@b3
    move-object/from16 v1, v16

    #@b5
    move-object/from16 v2, v20

    #@b7
    invoke-direct {v0, v1, v6, v2, v14}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    #@ba
    .line 9048
    const/16 v20, 0x0

    #@bc
    .line 9047
    move-object/from16 v0, v20

    #@be
    move-object/from16 v1, v18

    #@c0
    move-object/from16 v2, v19

    #@c2
    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@c5
    .line 9050
    .local v4, "clipData":Landroid/content/ClipData;
    move-object/from16 v0, p0

    #@c7
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@ca
    .line 9051
    const/16 v18, 0x1

    #@cc
    move-object/from16 v0, p0

    #@ce
    move/from16 v1, v18

    #@d0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_3

    #@d3
    .line 9052
    const/16 v18, 0x1

    #@d5
    return v18

    #@d6
    .line 9046
    .end local v4    # "clipData":Landroid/content/ClipData;
    :cond_7
    if-nez v6, :cond_6

    #@d8
    .line 9111
    .end local v6    # "htmlText":Ljava/lang/String;
    .end local v14    # "stream":Landroid/net/Uri;
    .end local v16    # "text":Ljava/lang/CharSequence;
    :cond_8
    :goto_2
    const/16 v18, 0x0

    #@da
    return v18

    #@db
    .line 9057
    :cond_9
    const-string/jumbo v18, "android.intent.action.SEND_MULTIPLE"

    #@de
    move-object/from16 v0, v18

    #@e0
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e3
    move-result v18

    #@e4
    if-eqz v18, :cond_10

    #@e6
    .line 9059
    :try_start_3
    const-string/jumbo v18, "android.intent.extra.STREAM"

    #@e9
    move-object/from16 v0, p0

    #@eb
    move-object/from16 v1, v18

    #@ed
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@f0
    move-result-object v15

    #@f1
    .line 9060
    .local v15, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string/jumbo v18, "android.intent.extra.TEXT"

    #@f4
    move-object/from16 v0, p0

    #@f6
    move-object/from16 v1, v18

    #@f8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@fb
    move-result-object v17

    #@fc
    .line 9061
    .local v17, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string/jumbo v18, "android.intent.extra.HTML_TEXT"

    #@ff
    move-object/from16 v0, p0

    #@101
    move-object/from16 v1, v18

    #@103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@106
    move-result-object v7

    #@107
    .line 9062
    .local v7, "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, -0x1

    #@108
    .line 9063
    .local v12, "num":I
    if-eqz v15, :cond_a

    #@10a
    .line 9064
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@10d
    move-result v12

    #@10e
    .line 9066
    :cond_a
    if-eqz v17, :cond_c

    #@110
    .line 9067
    if-ltz v12, :cond_b

    #@112
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@115
    move-result v18

    #@116
    move/from16 v0, v18

    #@118
    if-eq v12, v0, :cond_b

    #@11a
    .line 9069
    const/16 v18, 0x0

    #@11c
    return v18

    #@11d
    .line 9071
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@120
    move-result v12

    #@121
    .line 9073
    :cond_c
    if-eqz v7, :cond_e

    #@123
    .line 9074
    if-ltz v12, :cond_d

    #@125
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@128
    move-result v18

    #@129
    move/from16 v0, v18

    #@12b
    if-eq v12, v0, :cond_d

    #@12d
    .line 9076
    const/16 v18, 0x0

    #@12f
    return v18

    #@130
    .line 9078
    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@133
    move-result v12

    #@134
    .line 9080
    :cond_e
    if-lez v12, :cond_8

    #@136
    .line 9081
    new-instance v4, Landroid/content/ClipData;

    #@138
    .line 9082
    const/16 v18, 0x1

    #@13a
    move/from16 v0, v18

    #@13c
    new-array v0, v0, [Ljava/lang/String;

    #@13e
    move-object/from16 v18, v0

    #@140
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@143
    move-result-object v19

    #@144
    const/16 v20, 0x0

    #@146
    aput-object v19, v18, v20

    #@148
    .line 9083
    const/16 v19, 0x0

    #@14a
    move-object/from16 v0, v17

    #@14c
    move/from16 v1, v19

    #@14e
    invoke-static {v15, v0, v7, v1}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    #@151
    move-result-object v19

    #@152
    .line 9082
    const/16 v20, 0x0

    #@154
    .line 9081
    move-object/from16 v0, v20

    #@156
    move-object/from16 v1, v18

    #@158
    move-object/from16 v2, v19

    #@15a
    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@15d
    .line 9085
    .restart local v4    # "clipData":Landroid/content/ClipData;
    const/4 v8, 0x1

    #@15e
    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v12, :cond_f

    #@160
    .line 9086
    move-object/from16 v0, v17

    #@162
    invoke-static {v15, v0, v7, v8}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    #@165
    move-result-object v18

    #@166
    move-object/from16 v0, v18

    #@168
    invoke-virtual {v4, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    #@16b
    .line 9085
    add-int/lit8 v8, v8, 0x1

    #@16d
    goto :goto_3

    #@16e
    .line 9089
    :cond_f
    move-object/from16 v0, p0

    #@170
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@173
    .line 9090
    const/16 v18, 0x1

    #@175
    move-object/from16 v0, p0

    #@177
    move/from16 v1, v18

    #@179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    #@17c
    .line 9091
    const/16 v18, 0x1

    #@17e
    return v18

    #@17f
    .line 9095
    .end local v4    # "clipData":Landroid/content/ClipData;
    .end local v7    # "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v12    # "num":I
    .end local v15    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v17    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_10
    const-string/jumbo v18, "android.media.action.IMAGE_CAPTURE"

    #@182
    move-object/from16 v0, v18

    #@184
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@187
    move-result v18

    #@188
    if-nez v18, :cond_11

    #@18a
    .line 9096
    const-string/jumbo v18, "android.media.action.IMAGE_CAPTURE_SECURE"

    #@18d
    move-object/from16 v0, v18

    #@18f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@192
    move-result v18

    #@193
    .line 9095
    if-nez v18, :cond_11

    #@195
    .line 9097
    const-string/jumbo v18, "android.media.action.VIDEO_CAPTURE"

    #@198
    move-object/from16 v0, v18

    #@19a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19d
    move-result v18

    #@19e
    .line 9095
    if-eqz v18, :cond_8

    #@1a0
    .line 9100
    :cond_11
    :try_start_4
    const-string/jumbo v18, "output"

    #@1a3
    move-object/from16 v0, p0

    #@1a5
    move-object/from16 v1, v18

    #@1a7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1aa
    move-result-object v13

    #@1ab
    check-cast v13, Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1

    #@1ad
    .line 9104
    .local v13, "output":Landroid/net/Uri;
    if-eqz v13, :cond_8

    #@1af
    .line 9105
    const-string/jumbo v18, ""

    #@1b2
    move-object/from16 v0, v18

    #@1b4
    invoke-static {v0, v13}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    #@1b7
    move-result-object v18

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    move-object/from16 v1, v18

    #@1bc
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@1bf
    .line 9106
    const/16 v18, 0x3

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    move/from16 v1, v18

    #@1c5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1c8
    .line 9107
    const/16 v18, 0x1

    #@1ca
    return v18

    #@1cb
    .line 9101
    .end local v13    # "output":Landroid/net/Uri;
    :catch_1
    move-exception v5

    #@1cc
    .line 9102
    .local v5, "e":Ljava/lang/ClassCastException;
    const/16 v18, 0x0

    #@1ce
    return v18

    #@1cf
    .line 9093
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v5

    #@1d0
    .restart local v5    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_2

    #@1d2
    .line 9054
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v5

    #@1d3
    .restart local v5    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_2

    #@1d5
    .line 9025
    .end local v5    # "e":Ljava/lang/ClassCastException;
    .restart local v11    # "migrated":Z
    :catch_4
    move-exception v5

    #@1d6
    .restart local v5    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0
.end method

.method public prepareToEnterProcess()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    .line 8944
    const/4 v0, 0x1

    #@2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setDefusable(Z)V

    #@5
    .line 8946
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 8947
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@b
    invoke-virtual {v0}, Landroid/content/Intent;->prepareToEnterProcess()V

    #@e
    .line 8949
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 8950
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@14
    invoke-virtual {v0}, Landroid/content/ClipData;->prepareToEnterProcess()V

    #@17
    .line 8953
    :cond_1
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@19
    if-eq v0, v2, :cond_2

    #@1b
    .line 8954
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1e
    move-result v0

    #@1f
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    #@22
    move-result v0

    #@23
    const/16 v1, 0x3e8

    #@25
    if-eq v0, v1, :cond_2

    #@27
    .line 8955
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@29
    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    #@2c
    .line 8956
    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    #@2e
    .line 8941
    :cond_2
    return-void
.end method

.method public prepareToLeaveProcess(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 8892
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 8893
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    const/4 v0, 0x0

    #@16
    .line 8894
    .local v0, "leavingPackage":Z
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    #@19
    .line 8891
    return-void
.end method

.method public prepareToLeaveProcess(Z)V
    .locals 2
    .param p1, "leavingPackage"    # Z

    #@0
    .prologue
    .line 8903
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    #@4
    .line 8905
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 8906
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@a
    invoke-virtual {v0, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    #@d
    .line 8908
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 8909
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@13
    invoke-virtual {v0, p1}, Landroid/content/ClipData;->prepareToLeaveProcess(Z)V

    #@16
    .line 8912
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@18
    if-eqz v0, :cond_2

    #@1a
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@1c
    if-eqz v0, :cond_2

    #@1e
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    if-eqz p1, :cond_2

    #@26
    .line 8914
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@28
    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 8902
    :cond_2
    :goto_0
    return-void

    #@32
    .line 8914
    :cond_3
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_2

    #@3b
    const-string/jumbo v1, "android.intent.action.MEDIA_CHECKING"

    #@3e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v1

    #@42
    if-nez v1, :cond_2

    #@44
    const-string/jumbo v1, "android.intent.action.MEDIA_NOFS"

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-nez v1, :cond_2

    #@4d
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v1

    #@54
    if-nez v1, :cond_2

    #@56
    const-string/jumbo v1, "android.intent.action.MEDIA_SHARED"

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_2

    #@5f
    const-string/jumbo v1, "android.intent.action.MEDIA_UNSHARED"

    #@62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v1

    #@66
    if-nez v1, :cond_2

    #@68
    const-string/jumbo v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    #@6b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v1

    #@6f
    if-nez v1, :cond_2

    #@71
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    #@74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@77
    move-result v1

    #@78
    if-nez v1, :cond_2

    #@7a
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    #@7d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v1

    #@81
    if-nez v1, :cond_2

    #@83
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    #@86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v1

    #@8a
    if-nez v1, :cond_2

    #@8c
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    #@8f
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v1

    #@93
    if-nez v1, :cond_2

    #@95
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v1

    #@9c
    if-nez v1, :cond_2

    #@9e
    const-string/jumbo v1, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    #@a1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v1

    #@a5
    if-nez v1, :cond_2

    #@a7
    const-string/jumbo v1, "android.intent.action.PACKAGE_VERIFIED"

    #@aa
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v0

    #@ae
    if-nez v0, :cond_2

    #@b0
    .line 8933
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@b2
    const-string/jumbo v1, "Intent.getData()"

    #@b5
    invoke-virtual {v0, v1}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    #@b8
    goto/16 :goto_0
.end method

.method public prepareToLeaveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 7048
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@2
    const/4 v1, -0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 7049
    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    #@7
    .line 7045
    :cond_0
    return-void
.end method

.method public putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    .prologue
    .line 7414
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7415
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7417
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@10
    .line 7418
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    #@0
    .prologue
    .line 7092
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7093
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7095
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    #@10
    .line 7096
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    #@0
    .prologue
    .line 7115
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7116
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7118
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    #@10
    .line 7119
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    #@0
    .prologue
    .line 7230
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7231
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7233
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@10
    .line 7234
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 7207
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7208
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7210
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@10
    .line 7211
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 7161
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7162
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7164
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 7165
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 7184
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7185
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7187
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@10
    .line 7188
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 7690
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7691
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7693
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@10
    .line 7694
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 7717
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7718
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7720
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    #@10
    .line 7721
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 7299
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7300
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7302
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@10
    .line 7303
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    #@0
    .prologue
    .line 7437
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7438
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7440
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    #@10
    .line 7441
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 7276
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7277
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7279
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@10
    .line 7280
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7253
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7254
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7256
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 7257
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    #@0
    .prologue
    .line 7138
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7139
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7141
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    #@10
    .line 7142
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 7069
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7070
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7072
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@10
    .line 7073
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 7483
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7484
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7486
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@10
    .line 7487
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [C

    #@0
    .prologue
    .line 7529
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7530
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7532
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    #@10
    .line 7533
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D

    #@0
    .prologue
    .line 7621
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7622
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7624
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    #@10
    .line 7625
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F

    #@0
    .prologue
    .line 7598
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7599
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7601
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    #@10
    .line 7602
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [I

    #@0
    .prologue
    .line 7552
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7553
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7555
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@10
    .line 7556
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    #@0
    .prologue
    .line 7575
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7576
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7578
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    #@10
    .line 7579
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    #@0
    .prologue
    .line 7322
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7323
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7325
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@10
    .line 7326
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 7667
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7668
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7670
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    #@10
    .line 7671
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 7644
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7645
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7647
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@10
    .line 7648
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [S

    #@0
    .prologue
    .line 7506
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7507
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7509
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    #@10
    .line 7510
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    #@0
    .prologue
    .line 7460
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7461
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7463
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    #@10
    .line 7464
    return-object p0
.end method

.method public putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "src"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 7732
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 7733
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 7734
    new-instance v0, Landroid/os/Bundle;

    #@a
    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@c
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@f
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@11
    .line 7739
    :cond_0
    :goto_0
    return-object p0

    #@12
    .line 7736
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@14
    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@16
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@19
    goto :goto_0
.end method

.method public putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 7753
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7754
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7756
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@10
    .line 7757
    return-object p0
.end method

.method public putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    .prologue
    .line 7368
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7369
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7371
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@10
    .line 7372
    return-object p0
.end method

.method public putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    .prologue
    .line 7345
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7346
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7348
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@10
    .line 7349
    return-object p0
.end method

.method public putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    .prologue
    .line 7391
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 7392
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 7394
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@10
    .line 7395
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 8674
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@7
    .line 8675
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    #@9
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroid/net/Uri;

    #@f
    iput-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@11
    .line 8676
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    iput-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@17
    .line 8677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v2

    #@1b
    iput v2, p0, Landroid/content/Intent;->mFlags:I

    #@1d
    .line 8678
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    iput-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@23
    .line 8679
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@29
    .line 8681
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 8682
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    #@31
    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Landroid/graphics/Rect;

    #@37
    iput-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@39
    .line 8685
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v0

    #@3d
    .line 8686
    .local v0, "N":I
    if-lez v0, :cond_1

    #@3f
    .line 8687
    new-instance v2, Landroid/util/ArraySet;

    #@41
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@44
    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@46
    .line 8689
    const/4 v1, 0x0

    #@47
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@49
    .line 8690
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@4b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@56
    .line 8689
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_0

    #@59
    .line 8693
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    #@5a
    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@5c
    .line 8696
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_3

    #@62
    .line 8697
    new-instance v2, Landroid/content/Intent;

    #@64
    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    #@67
    iput-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@69
    .line 8700
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_4

    #@6f
    .line 8701
    new-instance v2, Landroid/content/ClipData;

    #@71
    invoke-direct {v2, p1}, Landroid/content/ClipData;-><init>(Landroid/os/Parcel;)V

    #@74
    iput-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@76
    .line 8703
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v2

    #@7a
    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    #@7c
    .line 8704
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@7f
    move-result-object v2

    #@80
    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@82
    .line 8673
    return-void
.end method

.method public removeCategory(Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6957
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 6958
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@a
    .line 6959
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@c
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 6960
    iput-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@14
    .line 6956
    :cond_0
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 7790
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 7791
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@a
    .line 7792
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@c
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 7793
    iput-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@14
    .line 7789
    :cond_0
    return-void
.end method

.method public removeUnsafeExtras()V
    .locals 1

    #@0
    .prologue
    .line 6543
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6544
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0}, Landroid/os/Bundle;->filterValues()V

    #@9
    .line 6542
    :cond_0
    return-void
.end method

.method public replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "src"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 7768
    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-eqz v1, :cond_0

    #@5
    new-instance v0, Landroid/os/Bundle;

    #@7
    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@9
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@c
    :cond_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@e
    .line 7769
    return-object p0
.end method

.method public replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 7780
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@8
    :cond_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@a
    .line 7781
    return-object p0
.end method

.method public resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6653
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 6654
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    return-object v1

    #@8
    .line 6658
    :cond_0
    const/high16 v1, 0x10000

    #@a
    .line 6657
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@d
    move-result-object v0

    #@e
    .line 6659
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    #@10
    .line 6660
    new-instance v1, Landroid/content/ComponentName;

    #@12
    .line 6661
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@14
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@18
    .line 6662
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1a
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1c
    .line 6660
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    return-object v1

    #@20
    .line 6665
    :cond_1
    return-object v2
.end method

.method public resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 6685
    const/4 v0, 0x0

    #@1
    .line 6686
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 6688
    :try_start_0
    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    invoke-virtual {p1, v3, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 6700
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-object v0

    #@c
    .line 6694
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    const/high16 v3, 0x10000

    #@e
    or-int/2addr v3, p2

    #@f
    .line 6693
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@12
    move-result-object v2

    #@13
    .line 6695
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    #@15
    .line 6696
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@17
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    #@18
    .line 6689
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    #@19
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 6711
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 6712
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    return-object v5

    #@8
    .line 6715
    :cond_0
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@b
    move-result-object v3

    #@c
    .line 6716
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1

    #@e
    .line 6717
    return-object v6

    #@f
    .line 6719
    :cond_1
    const/4 v0, 0x0

    #@10
    .line 6720
    .local v0, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    #@11
    .end local v0    # "comp":Landroid/content/ComponentName;
    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@14
    move-result v5

    #@15
    if-ge v2, v5, :cond_4

    #@17
    .line 6721
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@1d
    .line 6722
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@1f
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@21
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    #@23
    and-int/lit8 v5, v5, 0x1

    #@25
    if-nez v5, :cond_2

    #@27
    .line 6720
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 6725
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    #@2c
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2e
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@30
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@32
    .line 6726
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@34
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@36
    .line 6725
    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 6727
    .local v1, "foundComp":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    #@3b
    .line 6728
    new-instance v5, Ljava/lang/IllegalStateException;

    #@3d
    new-instance v6, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v7, "Multiple system services handle "

    #@45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v6

    #@49
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v6

    #@4d
    .line 6729
    const-string/jumbo v7, ": "

    #@50
    .line 6728
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    .line 6729
    const-string/jumbo v7, ", "

    #@5b
    .line 6728
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v6

    #@63
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v6

    #@67
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v5

    #@6b
    .line 6731
    :cond_3
    move-object v0, v1

    #@6c
    .local v0, "comp":Landroid/content/ComponentName;
    goto :goto_1

    #@6d
    .line 6733
    .end local v0    # "comp":Landroid/content/ComponentName;
    .end local v1    # "foundComp":Landroid/content/ComponentName;
    .end local v4    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return-object v0
.end method

.method public resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5922
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 5923
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 5925
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 5926
    const-string/jumbo v0, "content"

    #@f
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@11
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 5927
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@1d
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 5930
    :cond_1
    return-object v2
.end method

.method public resolveType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 5904
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 5946
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5947
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 5949
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 8783
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 8784
    const-string/jumbo v1, "action"

    #@8
    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@a
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 8786
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 8787
    const-string/jumbo v1, "data"

    #@14
    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@16
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@1d
    .line 8789
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 8790
    const-string/jumbo v1, "type"

    #@24
    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@26
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 8792
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 8793
    const-string/jumbo v1, "component"

    #@30
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@32
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@35
    move-result-object v2

    #@36
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@39
    .line 8795
    :cond_3
    const-string/jumbo v1, "flags"

    #@3c
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    #@3f
    move-result v2

    #@40
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@47
    .line 8797
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@49
    if-eqz v1, :cond_5

    #@4b
    .line 8798
    const-string/jumbo v1, "categories"

    #@4e
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 8799
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@53
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@56
    move-result v1

    #@57
    add-int/lit8 v0, v1, -0x1

    #@59
    .local v0, "categoryNdx":I
    :goto_0
    if-ltz v0, :cond_4

    #@5b
    .line 8800
    const-string/jumbo v2, "category"

    #@5e
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@60
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@63
    move-result-object v1

    #@64
    check-cast v1, Ljava/lang/String;

    #@66
    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@69
    .line 8799
    add-int/lit8 v0, v0, -0x1

    #@6b
    goto :goto_0

    #@6c
    .line 8802
    :cond_4
    const-string/jumbo v1, "categories"

    #@6f
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@72
    .line 8782
    .end local v0    # "categoryNdx":I
    :cond_5
    return-void
.end method

.method public setAction(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6748
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_0
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@9
    .line 6749
    return-object p0
.end method

.method public setAllowFds(Z)V
    .locals 1
    .param p1, "allowFds"    # Z

    #@0
    .prologue
    .line 6036
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6037
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    #@9
    .line 6035
    :cond_0
    return-void
.end method

.method public setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    #@0
    .prologue
    .line 7974
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@5
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    .line 7975
    return-object p0
.end method

.method public setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7935
    new-instance v0, Landroid/content/ComponentName;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    .line 7936
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7955
    new-instance v0, Landroid/content/ComponentName;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    .line 7956
    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;

    #@0
    .prologue
    .line 7036
    iput-object p1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@2
    .line 7035
    return-void
.end method

.method public setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 7915
    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@2
    .line 7916
    return-object p0
.end method

.method public setData(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 6774
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@2
    .line 6775
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@5
    .line 6776
    return-object p0
.end method

.method public setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 6802
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6891
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@2
    .line 6892
    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@4
    .line 6893
    return-object p0
.end method

.method public setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6922
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    invoke-static {p2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public setDefusable(Z)V
    .locals 1
    .param p1, "defusable"    # Z

    #@0
    .prologue
    .line 6043
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6044
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    #@9
    .line 6042
    :cond_0
    return-void
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 6012
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6013
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@9
    .line 6011
    :cond_0
    return-void
.end method

.method public setFlags(I)Landroid/content/Intent;
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 7846
    iput p1, p0, Landroid/content/Intent;->mFlags:I

    #@2
    .line 7847
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7883
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 7884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 7885
    const-string/jumbo v1, "Can\'t set package name when selector is already set"

    #@b
    .line 7884
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 7887
    :cond_0
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@11
    .line 7888
    return-object p0
.end method

.method public setSelector(Landroid/content/Intent;)V
    .locals 2
    .param p1, "selector"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 6997
    if-ne p1, p0, :cond_0

    #@2
    .line 6998
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 6999
    const-string/jumbo v1, "Intent being set as a selector of itself"

    #@7
    .line 6998
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 7001
    :cond_0
    if-eqz p1, :cond_1

    #@d
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 7002
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    .line 7003
    const-string/jumbo v1, "Can\'t set selector when package name is already set"

    #@16
    .line 7002
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 7005
    :cond_1
    iput-object p1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@1c
    .line 6996
    return-void
.end method

.method public setSourceBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 7984
    if-eqz p1, :cond_0

    #@3
    .line 7985
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@8
    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@a
    .line 7983
    :goto_0
    return-void

    #@b
    .line 7987
    :cond_0
    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@d
    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6831
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@3
    .line 6832
    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@5
    .line 6833
    return-object p0
.end method

.method public setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6862
    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toInsecureString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 8300
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    const/16 v0, 0x80

    #@6
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 8302
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "Intent { "

    #@c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-object v0, p0

    #@10
    move v4, v3

    #@11
    move v5, v2

    #@12
    .line 8303
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@15
    .line 8304
    const-string/jumbo v0, " }"

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 8306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public toInsecureStringWithClip()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 8311
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    const/16 v0, 0x80

    #@5
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 8313
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "Intent { "

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 8314
    const/4 v2, 0x0

    #@f
    move-object v0, p0

    #@10
    move v4, v3

    #@11
    move v5, v3

    #@12
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@15
    .line 8315
    const-string/jumbo v0, " }"

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 8317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public toShortString(ZZZZ)Ljava/lang/String;
    .locals 6
    .param p1, "secure"    # Z
    .param p2, "comp"    # Z
    .param p3, "extras"    # Z
    .param p4, "clip"    # Z

    #@0
    .prologue
    .line 8322
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v0, 0x80

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .local v1, "b":Ljava/lang/StringBuilder;
    move-object v0, p0

    #@8
    move v2, p1

    #@9
    move v3, p2

    #@a
    move v4, p3

    #@b
    move v5, p4

    #@c
    .line 8323
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@f
    .line 8324
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;ZZZZ)V
    .locals 8
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "secure"    # Z
    .param p3, "comp"    # Z
    .param p4, "extras"    # Z
    .param p5, "clip"    # Z

    #@0
    .prologue
    const/16 v2, 0x20

    #@2
    .line 8330
    const/4 v6, 0x1

    #@3
    .line 8331
    .local v6, "first":Z
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 8332
    const-string/jumbo v0, "act="

    #@a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 8333
    const/4 v6, 0x0

    #@14
    .line 8335
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@16
    if-eqz v0, :cond_4

    #@18
    .line 8336
    if-nez v6, :cond_1

    #@1a
    .line 8337
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 8339
    :cond_1
    const/4 v6, 0x0

    #@1e
    .line 8340
    const-string/jumbo v0, "cat=["

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 8341
    const/4 v7, 0x0

    #@25
    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@27
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@2a
    move-result v0

    #@2b
    if-ge v7, v0, :cond_3

    #@2d
    .line 8342
    if-lez v7, :cond_2

    #@2f
    const/16 v0, 0x2c

    #@31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 8343
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@36
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/lang/String;

    #@3c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 8341
    add-int/lit8 v7, v7, 0x1

    #@41
    goto :goto_0

    #@42
    .line 8345
    :cond_3
    const-string/jumbo v0, "]"

    #@45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 8347
    .end local v7    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@4a
    if-eqz v0, :cond_6

    #@4c
    .line 8348
    if-nez v6, :cond_5

    #@4e
    .line 8349
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 8351
    :cond_5
    const/4 v6, 0x0

    #@52
    .line 8352
    const-string/jumbo v0, "dat="

    #@55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 8353
    if-eqz p2, :cond_18

    #@5a
    .line 8354
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@5c
    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 8359
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@65
    if-eqz v0, :cond_8

    #@67
    .line 8360
    if-nez v6, :cond_7

    #@69
    .line 8361
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    .line 8363
    :cond_7
    const/4 v6, 0x0

    #@6d
    .line 8364
    const-string/jumbo v0, "typ="

    #@70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    .line 8366
    :cond_8
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    #@7b
    if-eqz v0, :cond_a

    #@7d
    .line 8367
    if-nez v6, :cond_9

    #@7f
    .line 8368
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@82
    .line 8370
    :cond_9
    const/4 v6, 0x0

    #@83
    .line 8371
    const-string/jumbo v0, "flg=0x"

    #@86
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v0

    #@8a
    iget v1, p0, Landroid/content/Intent;->mFlags:I

    #@8c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@8f
    move-result-object v1

    #@90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    .line 8373
    :cond_a
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@95
    if-eqz v0, :cond_c

    #@97
    .line 8374
    if-nez v6, :cond_b

    #@99
    .line 8375
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9c
    .line 8377
    :cond_b
    const/4 v6, 0x0

    #@9d
    .line 8378
    const-string/jumbo v0, "pkg="

    #@a0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@a6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    .line 8380
    :cond_c
    if-eqz p3, :cond_e

    #@ab
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@ad
    if-eqz v0, :cond_e

    #@af
    .line 8381
    if-nez v6, :cond_d

    #@b1
    .line 8382
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b4
    .line 8384
    :cond_d
    const/4 v6, 0x0

    #@b5
    .line 8385
    const-string/jumbo v0, "cmp="

    #@b8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v0

    #@bc
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@be
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@c1
    move-result-object v1

    #@c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    .line 8387
    :cond_e
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@c7
    if-eqz v0, :cond_10

    #@c9
    .line 8388
    if-nez v6, :cond_f

    #@cb
    .line 8389
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ce
    .line 8391
    :cond_f
    const/4 v6, 0x0

    #@cf
    .line 8392
    const-string/jumbo v0, "bnds="

    #@d2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    iget-object v1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@d8
    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    #@db
    move-result-object v1

    #@dc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    .line 8394
    :cond_10
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@e1
    if-eqz v0, :cond_12

    #@e3
    .line 8395
    if-nez v6, :cond_11

    #@e5
    .line 8396
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e8
    .line 8398
    :cond_11
    const-string/jumbo v0, "clip={"

    #@eb
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    .line 8399
    if-eqz p5, :cond_19

    #@f0
    .line 8400
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@f2
    invoke-virtual {v0, p1}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    #@f5
    .line 8409
    :goto_2
    const/4 v6, 0x0

    #@f6
    .line 8410
    const/16 v0, 0x7d

    #@f8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fb
    .line 8412
    :cond_12
    if-eqz p4, :cond_14

    #@fd
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@ff
    if-eqz v0, :cond_14

    #@101
    .line 8413
    if-nez v6, :cond_13

    #@103
    .line 8414
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@106
    .line 8416
    :cond_13
    const/4 v6, 0x0

    #@107
    .line 8417
    const-string/jumbo v0, "(has extras)"

    #@10a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    .line 8419
    :cond_14
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@10f
    const/4 v1, -0x2

    #@110
    if-eq v0, v1, :cond_16

    #@112
    .line 8420
    if-nez v6, :cond_15

    #@114
    .line 8421
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@117
    .line 8423
    :cond_15
    const/4 v6, 0x0

    #@118
    .line 8424
    const-string/jumbo v0, "u="

    #@11b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v0

    #@11f
    iget v1, p0, Landroid/content/Intent;->mContentUserHint:I

    #@121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@124
    .line 8426
    :cond_16
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@126
    if-eqz v0, :cond_17

    #@128
    .line 8427
    const-string/jumbo v0, " sel="

    #@12b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    .line 8428
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@130
    move-object v1, p1

    #@131
    move v2, p2

    #@132
    move v3, p3

    #@133
    move v4, p4

    #@134
    move v5, p5

    #@135
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@138
    .line 8429
    const-string/jumbo v0, "}"

    #@13b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    .line 8329
    :cond_17
    return-void

    #@13f
    .line 8356
    :cond_18
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@144
    goto/16 :goto_1

    #@146
    .line 8402
    :cond_19
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@148
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@14b
    move-result-object v0

    #@14c
    if-eqz v0, :cond_1b

    #@14e
    .line 8403
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@150
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    #@153
    move-result-object v0

    #@154
    invoke-virtual {v0, p1}, Landroid/content/ClipDescription;->toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z

    #@157
    move-result v0

    #@158
    if-eqz v0, :cond_1a

    #@15a
    const/4 v6, 0x0

    #@15b
    .line 8407
    :goto_3
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@15d
    invoke-virtual {v0, p1, v6}, Landroid/content/ClipData;->toShortStringShortItems(Ljava/lang/StringBuilder;Z)V

    #@160
    goto :goto_2

    #@161
    .line 8403
    :cond_1a
    const/4 v6, 0x1

    #@162
    goto :goto_3

    #@163
    .line 8405
    :cond_1b
    const/4 v6, 0x1

    #@164
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 8289
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    const/16 v0, 0x80

    #@5
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 8291
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "Intent { "

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 8292
    const/4 v5, 0x0

    #@f
    move-object v0, p0

    #@10
    move v3, v2

    #@11
    move v4, v2

    #@12
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@15
    .line 8293
    const-string/jumbo v0, " }"

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 8295
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 8439
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toUri(I)Ljava/lang/String;
    .locals 14
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 8459
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v0, 0x80

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 8460
    .local v1, "uri":Ljava/lang/StringBuilder;
    and-int/lit8 v0, p1, 0x2

    #@9
    if-eqz v0, :cond_5

    #@b
    .line 8461
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 8462
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 8463
    new-instance v3, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v4, "Intent must include an explicit package name to build an android-app: "

    #@19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 8462
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 8466
    :cond_0
    const-string/jumbo v0, "android-app://"

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 8467
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 8468
    const/4 v2, 0x0

    #@35
    .line 8469
    .local v2, "scheme":Ljava/lang/String;
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@37
    if-eqz v0, :cond_3

    #@39
    .line 8470
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@3b
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 8471
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_3

    #@41
    .line 8472
    const/16 v0, 0x2f

    #@43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 8473
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 8474
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@4b
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    .line 8475
    .local v7, "authority":Ljava/lang/String;
    if-eqz v7, :cond_3

    #@51
    .line 8476
    const/16 v0, 0x2f

    #@53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 8477
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 8478
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@5b
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    #@5e
    move-result-object v12

    #@5f
    .line 8479
    .local v12, "path":Ljava/lang/String;
    if-eqz v12, :cond_1

    #@61
    .line 8480
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    .line 8482
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@66
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    #@69
    move-result-object v13

    #@6a
    .line 8483
    .local v13, "queryParams":Ljava/lang/String;
    if-eqz v13, :cond_2

    #@6c
    .line 8484
    const/16 v0, 0x3f

    #@6e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    .line 8485
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 8487
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@76
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    #@79
    move-result-object v10

    #@7a
    .line 8488
    .local v10, "fragment":Ljava/lang/String;
    if-eqz v10, :cond_3

    #@7c
    .line 8489
    const/16 v0, 0x23

    #@7e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@81
    .line 8490
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    .line 8495
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v7    # "authority":Ljava/lang/String;
    .end local v10    # "fragment":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "queryParams":Ljava/lang/String;
    :cond_3
    if-nez v2, :cond_4

    #@86
    const-string/jumbo v3, "android.intent.action.MAIN"

    #@89
    .line 8496
    :goto_0
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@8b
    .line 8495
    const/4 v2, 0x0

    #@8c
    move-object v0, p0

    #@8d
    move v5, p1

    #@8e
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@91
    .line 8497
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    return-object v0

    #@96
    .line 8495
    :cond_4
    const-string/jumbo v3, "android.intent.action.VIEW"

    #@99
    goto :goto_0

    #@9a
    .line 8499
    :cond_5
    const/4 v2, 0x0

    #@9b
    .line 8500
    .local v2, "scheme":Ljava/lang/String;
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@9d
    if-eqz v0, :cond_b

    #@9f
    .line 8501
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@a1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@a4
    move-result-object v9

    #@a5
    .line 8502
    .local v9, "data":Ljava/lang/String;
    and-int/lit8 v0, p1, 0x1

    #@a7
    if-eqz v0, :cond_9

    #@a9
    .line 8503
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@ac
    move-result v6

    #@ad
    .line 8504
    .local v6, "N":I
    const/4 v11, 0x0

    #@ae
    .local v11, "i":I
    :goto_1
    if-ge v11, v6, :cond_9

    #@b0
    .line 8505
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    #@b3
    move-result v8

    #@b4
    .line 8506
    .local v8, "c":C
    const/16 v0, 0x61

    #@b6
    if-lt v8, v0, :cond_7

    #@b8
    const/16 v0, 0x7a

    #@ba
    if-gt v8, v0, :cond_7

    #@bc
    .line 8504
    :cond_6
    add-int/lit8 v11, v11, 0x1

    #@be
    goto :goto_1

    #@bf
    .line 8506
    :cond_7
    const/16 v0, 0x41

    #@c1
    if-lt v8, v0, :cond_8

    #@c3
    const/16 v0, 0x5a

    #@c5
    if-le v8, v0, :cond_6

    #@c7
    .line 8507
    :cond_8
    const/16 v0, 0x2e

    #@c9
    if-eq v8, v0, :cond_6

    #@cb
    const/16 v0, 0x2d

    #@cd
    if-eq v8, v0, :cond_6

    #@cf
    .line 8510
    const/16 v0, 0x3a

    #@d1
    if-ne v8, v0, :cond_9

    #@d3
    if-lez v11, :cond_9

    #@d5
    .line 8512
    const/4 v0, 0x0

    #@d6
    invoke-virtual {v9, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d9
    move-result-object v2

    #@da
    .line 8513
    .local v2, "scheme":Ljava/lang/String;
    const-string/jumbo v0, "intent:"

    #@dd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    .line 8514
    add-int/lit8 v0, v11, 0x1

    #@e2
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e5
    move-result-object v9

    #@e6
    .line 8522
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v6    # "N":I
    .end local v8    # "c":C
    .end local v11    # "i":I
    :cond_9
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    .line 8528
    .end local v9    # "data":Ljava/lang/String;
    :cond_a
    :goto_2
    const-string/jumbo v3, "android.intent.action.VIEW"

    #@ec
    const/4 v4, 0x0

    #@ed
    move-object v0, p0

    #@ee
    move v5, p1

    #@ef
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@f2
    .line 8530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v0

    #@f6
    return-object v0

    #@f7
    .line 8524
    .local v2, "scheme":Ljava/lang/String;
    :cond_b
    and-int/lit8 v0, p1, 0x1

    #@f9
    if-eqz v0, :cond_a

    #@fb
    .line 8525
    const-string/jumbo v0, "intent:"

    #@fe
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 8617
    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 8618
    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@9
    invoke-static {p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    #@c
    .line 8619
    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 8620
    iget v2, p0, Landroid/content/Intent;->mFlags:I

    #@13
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 8621
    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 8622
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@1d
    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@20
    .line 8624
    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 8625
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 8626
    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 8631
    :goto_0
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 8632
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@32
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@35
    move-result v0

    #@36
    .line 8633
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 8634
    const/4 v1, 0x0

    #@3a
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@3c
    .line 8635
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3e
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    check-cast v2, Ljava/lang/String;

    #@44
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@47
    .line 8634
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 8628
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    goto :goto_0

    #@4e
    .line 8638
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 8641
    :cond_2
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@53
    if-eqz v2, :cond_3

    #@55
    .line 8642
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 8643
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@5a
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@5d
    .line 8648
    :goto_2
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@5f
    if-eqz v2, :cond_4

    #@61
    .line 8649
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 8650
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@66
    invoke-virtual {v2, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    #@69
    .line 8654
    :goto_3
    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 8655
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@70
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@73
    .line 8616
    return-void

    #@74
    .line 8645
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    goto :goto_2

    #@78
    .line 8652
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    goto :goto_3
.end method
