.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$ShortcutIconResource;,
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$1;
    }
.end annotation


# static fields
.field public static final ACTION_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String; = "android.intent.action.ADVANCED_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

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

.field public static final ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final ACTION_DREAMING_STARTED:Ljava/lang/String; = "android.intent.action.DREAMING_STARTED"

.field public static final ACTION_DREAMING_STOPPED:Ljava/lang/String; = "android.intent.action.DREAMING_STOPPED"

.field public static final ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final ACTION_GET_PERMISSIONS_COUNT:Ljava/lang/String; = "android.intent.action.GET_PERMISSIONS_COUNT"

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

.field public static final ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_PACKAGE"

.field public static final ACTION_INTENT_FILTER_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

.field public static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

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

.field public static final ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_REQUEST_SHUTDOWN"

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

.field public static final ACTION_SHOW_BRIGHTNESS_DIALOG:Ljava/lang/String; = "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final ACTION_SIM_ACTIVATION_REQUEST:Ljava/lang/String; = "android.intent.action.SIM_ACTIVATION_REQUEST"

.field public static final ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

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

.field public static final EXTRA_GET_PERMISSIONS_COUNT_RESULT:Ljava/lang/String; = "android.intent.extra.GET_PERMISSIONS_COUNT_RESULT"

.field public static final EXTRA_GET_PERMISSIONS_GROUP_LIST_RESULT:Ljava/lang/String; = "android.intent.extra.GET_PERMISSIONS_GROUP_LIST_RESULT"

.field public static final EXTRA_GET_PERMISSIONS_RESPONSE_INTENT:Ljava/lang/String; = "android.intent.extra.GET_PERMISSIONS_RESONSE_INTENT"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.intent.extra.LOCAL_ONLY"

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

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"

.field public static final EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final EXTRA_REMOVED_FOR_ALL_USERS:Ljava/lang/String; = "android.intent.extra.REMOVED_FOR_ALL_USERS"

.field public static final EXTRA_REPLACEMENT_EXTRAS:Ljava/lang/String; = "android.intent.extra.REPLACEMENT_EXTRAS"

.field public static final EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final EXTRA_RESTRICTIONS_BUNDLE:Ljava/lang/String; = "android.intent.extra.restrictions_bundle"

.field public static final EXTRA_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"

.field public static final EXTRA_RESTRICTIONS_LIST:Ljava/lang/String; = "android.intent.extra.restrictions_list"

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

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"

.field public static final EXTRA_USER:Ljava/lang/String; = "android.intent.extra.USER"

.field public static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

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

.field public static final FLAG_EXCLUDE_STOPPED_PACKAGES:I = 0x10

.field public static final FLAG_FROM_BACKGROUND:I = 0x4

.field public static final FLAG_GRANT_PERSISTABLE_URI_PERMISSION:I = 0x40

.field public static final FLAG_GRANT_PREFIX_URI_PERMISSION:I = 0x80

.field public static final FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final FLAG_RECEIVER_BOOT_UPGRADE:I = 0x2000000

.field public static final FLAG_RECEIVER_FOREGROUND:I = 0x10000000

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
    .line 7792
    new-instance v0, Landroid/content/Intent$1;

    #@2
    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    #@5
    .line 7791
    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 617
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 4342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4335
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4342
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
    .line 4448
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4335
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4449
    new-instance v0, Landroid/content/ComponentName;

    #@8
    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@b
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@d
    .line 4448
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "o"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 4348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4335
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4349
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@8
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@a
    .line 4350
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@c
    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@e
    .line 4351
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@10
    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@12
    .line 4352
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@14
    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@16
    .line 4353
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@18
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@1a
    .line 4354
    iget v0, p1, Landroid/content/Intent;->mFlags:I

    #@1c
    iput v0, p0, Landroid/content/Intent;->mFlags:I

    #@1e
    .line 4355
    iget v0, p1, Landroid/content/Intent;->mContentUserHint:I

    #@20
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@22
    .line 4356
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 4357
    new-instance v0, Landroid/util/ArraySet;

    #@28
    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@2a
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@2d
    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@2f
    .line 4359
    :cond_0
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@31
    if-eqz v0, :cond_1

    #@33
    .line 4360
    new-instance v0, Landroid/os/Bundle;

    #@35
    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@37
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@3a
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3c
    .line 4362
    :cond_1
    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@3e
    if-eqz v0, :cond_2

    #@40
    .line 4363
    new-instance v0, Landroid/graphics/Rect;

    #@42
    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@44
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@47
    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@49
    .line 4365
    :cond_2
    iget-object v0, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@4b
    if-eqz v0, :cond_3

    #@4d
    .line 4366
    new-instance v0, Landroid/content/Intent;

    #@4f
    iget-object v1, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@51
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@54
    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@56
    .line 4368
    :cond_3
    iget-object v0, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@58
    if-eqz v0, :cond_4

    #@5a
    .line 4369
    new-instance v0, Landroid/content/ClipData;

    #@5c
    iget-object v1, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@5e
    invoke-direct {v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    #@61
    iput-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@63
    .line 4348
    :cond_4
    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;Z)V
    .locals 2
    .param p1, "o"    # Landroid/content/Intent;
    .param p2, "all"    # Z

    #@0
    .prologue
    .line 4378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4335
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4379
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@8
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@a
    .line 4380
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@c
    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@e
    .line 4381
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@10
    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@12
    .line 4382
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@14
    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@16
    .line 4383
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@18
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@1a
    .line 4384
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@1c
    if-eqz v0, :cond_0

    #@1e
    .line 4385
    new-instance v0, Landroid/util/ArraySet;

    #@20
    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@22
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@25
    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@27
    .line 4378
    :cond_0
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 7802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4335
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 7803
    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    #@9
    .line 7802
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4335
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4408
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@9
    .line 4407
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 4427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4335
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4428
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@9
    .line 4429
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@b
    .line 4427
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
    .line 4475
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4335
    const/4 v0, -0x2

    #@4
    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6
    .line 4477
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@9
    .line 4478
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@b
    .line 4479
    new-instance v0, Landroid/content/ComponentName;

    #@d
    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@10
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@12
    .line 4476
    return-void
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p0, "target"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 882
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
    .line 910
    new-instance v0, Landroid/content/Intent;

    #@4
    const-string/jumbo v5, "android.intent.action.CHOOSER"

    #@7
    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a
    .line 911
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.extra.INTENT"

    #@d
    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@10
    .line 912
    if-eqz p1, :cond_0

    #@12
    .line 913
    const-string/jumbo v5, "android.intent.extra.TITLE"

    #@15
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    #@18
    .line 916
    :cond_0
    if-eqz p2, :cond_1

    #@1a
    .line 917
    const-string/jumbo v5, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    #@1d
    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@20
    .line 921
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    #@23
    move-result v5

    #@24
    and-int/lit16 v3, v5, 0xc3

    #@26
    .line 924
    .local v3, "permFlags":I
    if-eqz v3, :cond_3

    #@28
    .line 925
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@2b
    move-result-object v4

    #@2c
    .line 926
    .local v4, "targetClipData":Landroid/content/ClipData;
    if-nez v4, :cond_2

    #@2e
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@31
    move-result-object v5

    #@32
    if-eqz v5, :cond_2

    #@34
    .line 927
    new-instance v1, Landroid/content/ClipData$Item;

    #@36
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@39
    move-result-object v5

    #@3a
    invoke-direct {v1, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    #@3d
    .line 929
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    if-eqz v5, :cond_4

    #@43
    .line 930
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
    .line 934
    .local v2, "mimeTypes":[Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/content/ClipData;

    #@4e
    .end local v4    # "targetClipData":Landroid/content/ClipData;
    invoke-direct {v4, v6, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@51
    .line 936
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "mimeTypes":[Ljava/lang/String;
    .restart local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_2
    if-eqz v4, :cond_3

    #@53
    .line 937
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@56
    .line 938
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@59
    .line 942
    .end local v4    # "targetClipData":Landroid/content/ClipData;
    :cond_3
    return-object v0

    #@5a
    .line 932
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
    .line 4569
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
    .line 4808
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
    .line 4814
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
    .line 4815
    .local v9, "i":I
    if-ltz v9, :cond_17

    #@c
    .line 4816
    const/4 v4, 0x0

    #@d
    .line 4817
    .local v4, "action":Ljava/lang/String;
    move v11, v9

    #@e
    .line 4818
    .local v11, "intentFragmentStart":I
    const/4 v12, 0x0

    #@f
    .line 4820
    .local v12, "isIntentFragment":Z
    add-int/lit8 v9, v9, 0x1

    #@11
    .line 4822
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
    .line 4823
    const/4 v12, 0x1

    #@27
    .line 4824
    add-int/lit8 v9, v9, 0x7

    #@29
    .line 4825
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
    .line 4826
    .local v13, "j":I
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    .line 4827
    .local v4, "action":Ljava/lang/String;
    add-int/lit8 v9, v13, 0x1

    #@3b
    .line 4830
    .end local v4    # "action":Ljava/lang/String;
    .end local v13    # "j":I
    :cond_0
    new-instance v10, Landroid/content/Intent;

    #@3d
    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@40
    .line 4832
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
    .line 4833
    const/4 v12, 0x1

    #@56
    .line 4834
    add-int/lit8 v9, v9, 0xb

    #@58
    .line 4835
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
    .line 4836
    .restart local v13    # "j":I
    :goto_0
    if-ge v9, v13, :cond_4

    #@64
    .line 4837
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
    .line 4838
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
    .line 4839
    :cond_2
    move/from16 v0, v16

    #@78
    if-ge v9, v0, :cond_3

    #@7a
    .line 4840
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
    .line 4842
    :cond_3
    add-int/lit8 v9, v16, 0x1

    #@89
    goto :goto_0

    #@8a
    .line 4844
    .end local v16    # "sep":I
    :cond_4
    add-int/lit8 v9, v13, 0x1

    #@8c
    .line 4847
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
    .line 4848
    const/4 v12, 0x1

    #@a2
    .line 4849
    add-int/lit8 v9, v9, 0x5

    #@a4
    .line 4850
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
    .line 4851
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
    .line 4852
    add-int/lit8 v9, v13, 0x1

    #@ba
    .line 4855
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
    .line 4856
    const/4 v12, 0x1

    #@d0
    .line 4857
    add-int/lit8 v9, v9, 0xc

    #@d2
    .line 4858
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
    .line 4859
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
    .line 4860
    and-int/lit8 v19, p1, 0x4

    #@f0
    if-nez v19, :cond_7

    #@f2
    .line 4861
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
    .line 4863
    :cond_7
    add-int/lit8 v9, v13, 0x1

    #@102
    .line 4866
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
    .line 4867
    const/4 v12, 0x1

    #@118
    .line 4868
    add-int/lit8 v9, v9, 0xa

    #@11a
    .line 4869
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
    .line 4870
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
    .line 4871
    .restart local v16    # "sep":I
    if-ltz v16, :cond_9

    #@130
    move/from16 v0, v16

    #@132
    if-ge v0, v13, :cond_9

    #@134
    .line 4872
    move-object/from16 v0, p0

    #@136
    move/from16 v1, v16

    #@138
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13b
    move-result-object v15

    #@13c
    .line 4873
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
    .line 4874
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
    .line 4876
    .end local v7    # "cls":Ljava/lang/String;
    .end local v15    # "pkg":Ljava/lang/String;
    :cond_9
    add-int/lit8 v9, v13, 0x1

    #@153
    .line 4879
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
    .line 4880
    const/4 v12, 0x1

    #@169
    .line 4881
    add-int/lit8 v9, v9, 0x7

    #@16b
    .line 4883
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
    .line 4884
    .local v6, "closeParen":I
    const/16 v19, -0x1

    #@177
    move/from16 v0, v19

    #@179
    if-ne v6, v0, :cond_c

    #@17b
    new-instance v19, Ljava/net/URISyntaxException;

    #@17d
    .line 4885
    const-string/jumbo v20, "EXTRA missing trailing \')\'"

    #@180
    .line 4884
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
    .line 4948
    .local v5, "ch":C
    .restart local v13    # "j":I
    .local v14, "key":Ljava/lang/String;
    .local v17, "type":C
    .local v18, "value":Ljava/lang/String;
    :cond_b
    add-int/lit8 v9, v9, 0x1

    #@18c
    .line 4887
    .end local v5    # "ch":C
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_c
    if-ge v9, v6, :cond_13

    #@18e
    .line 4889
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
    .line 4890
    .restart local v13    # "j":I
    add-int/lit8 v19, v9, 0x1

    #@19a
    move/from16 v0, v19

    #@19c
    if-le v13, v0, :cond_d

    #@19e
    if-lt v9, v6, :cond_e

    #@1a0
    .line 4891
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
    .line 4893
    :cond_e
    move-object/from16 v0, p0

    #@1b1
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@1b4
    move-result v17

    #@1b5
    .line 4894
    .restart local v17    # "type":C
    add-int/lit8 v9, v9, 0x1

    #@1b7
    .line 4895
    move-object/from16 v0, p0

    #@1b9
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1bc
    move-result-object v14

    #@1bd
    .line 4896
    .restart local v14    # "key":Ljava/lang/String;
    add-int/lit8 v9, v13, 0x1

    #@1bf
    .line 4899
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
    .line 4900
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
    .line 4901
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
    .line 4902
    :cond_11
    move-object/from16 v0, p0

    #@1e5
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1e8
    move-result-object v18

    #@1e9
    .line 4903
    .restart local v18    # "value":Ljava/lang/String;
    move v9, v13

    #@1ea
    .line 4906
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
    .line 4910
    :cond_12
    sparse-switch v17, :sswitch_data_0

    #@1fc
    .line 4939
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
    .line 4941
    :catch_0
    move-exception v8

    #@20c
    .line 4942
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
    .line 4912
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
    .line 4945
    :goto_1
    move-object/from16 v0, p0

    #@22c
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    #@22f
    move-result v5

    #@230
    .line 4946
    .restart local v5    # "ch":C
    const/16 v19, 0x29

    #@232
    move/from16 v0, v19

    #@234
    if-ne v5, v0, :cond_15

    #@236
    .line 4952
    .end local v5    # "ch":C
    .end local v6    # "closeParen":I
    .end local v13    # "j":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "type":C
    .end local v18    # "value":Ljava/lang/String;
    :cond_13
    if-eqz v12, :cond_16

    #@238
    .line 4953
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
    .line 4958
    :goto_2
    iget-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@24c
    move-object/from16 v19, v0

    #@24e
    if-nez v19, :cond_14

    #@250
    .line 4960
    const-string/jumbo v19, "android.intent.action.VIEW"

    #@253
    move-object/from16 v0, v19

    #@255
    iput-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@257
    .line 4967
    .end local v11    # "intentFragmentStart":I
    .end local v12    # "isIntentFragment":Z
    :cond_14
    :goto_3
    return-object v10

    #@258
    .line 4915
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
    .line 4918
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
    .line 4921
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
    .line 4924
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
    .line 4927
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
    .line 4930
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
    .line 4933
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
    .line 4936
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
    .line 4947
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
    .line 4955
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
    .line 4964
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
    .line 4910
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
    .line 3822
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
    .line 8212
    if-eqz p0, :cond_0

    #@3
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid/net/Uri;

    #@9
    .line 8213
    :goto_0
    if-eqz p1, :cond_1

    #@b
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Ljava/lang/CharSequence;

    #@11
    .line 8214
    :goto_1
    if-eqz p2, :cond_2

    #@13
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/lang/String;

    #@19
    .line 8215
    :goto_2
    new-instance v3, Landroid/content/ClipData$Item;

    #@1b
    invoke-direct {v3, v1, v0, v4, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    #@1e
    return-object v3

    #@1f
    .line 8212
    :cond_0
    const/4 v2, 0x0

    #@20
    .local v2, "uri":Landroid/net/Uri;
    goto :goto_0

    #@21
    .line 8213
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v1, 0x0

    #@22
    .local v1, "text":Ljava/lang/CharSequence;
    goto :goto_1

    #@23
    .line 8214
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
    .line 4504
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.intent.action.MAIN"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 4505
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@b
    .line 4506
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    #@e
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@11
    .line 4507
    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "selectorAction"    # Ljava/lang/String;
    .param p1, "selectorCategory"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4534
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.MAIN"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 4535
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    #@b
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@e
    .line 4536
    new-instance v1, Landroid/content/Intent;

    #@10
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@13
    .line 4537
    .local v1, "selector":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@16
    .line 4538
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@19
    .line 4539
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    #@1c
    .line 4540
    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 4557
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@3
    move-result-object v0

    #@4
    .line 4558
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    #@7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@a
    .line 4560
    return-object v0
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 8006
    if-nez p0, :cond_0

    #@3
    .line 8007
    return-object v1

    #@4
    .line 8010
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
    .line 8012
    const/16 v1, 0x3b

    #@10
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@13
    move-result v0

    #@14
    .line 8013
    .local v0, "semicolonIndex":I
    const/4 v1, -0x1

    #@15
    if-eq v0, v1, :cond_1

    #@17
    .line 8014
    const/4 v1, 0x0

    #@18
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object p0

    #@1c
    .line 8016
    :cond_1
    return-object p0
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
    .line 7860
    new-instance v3, Landroid/content/Intent;

    #@2
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    #@5
    .line 7863
    .local v3, "intent":Landroid/content/Intent;
    sget-object v10, Lcom/android/internal/R$styleable;->Intent:[I

    #@7
    .line 7862
    invoke-virtual {p0, p2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@a
    move-result-object v8

    #@b
    .line 7865
    .local v8, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x2

    #@c
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@f
    move-result-object v10

    #@10
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    .line 7867
    const/4 v10, 0x3

    #@14
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 7868
    .local v2, "data":Ljava/lang/String;
    const/4 v10, 0x1

    #@19
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 7869
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
    .line 7871
    const/4 v10, 0x0

    #@27
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2a
    move-result-object v7

    #@2b
    .line 7872
    .local v7, "packageName":Ljava/lang/String;
    const/4 v10, 0x4

    #@2c
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    .line 7873
    .local v1, "className":Ljava/lang/String;
    if-eqz v7, :cond_0

    #@32
    if-eqz v1, :cond_0

    #@34
    .line 7874
    new-instance v10, Landroid/content/ComponentName;

    #@36
    invoke-direct {v10, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@3c
    .line 7877
    :cond_0
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@3f
    .line 7879
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@42
    move-result v6

    #@43
    .line 7881
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
    .line 7882
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
    .line 7883
    :cond_2
    const/4 v10, 0x3

    #@54
    if-eq v9, v10, :cond_1

    #@56
    const/4 v10, 0x4

    #@57
    if-eq v9, v10, :cond_1

    #@59
    .line 7887
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 7888
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v10, "categories"

    #@60
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v10

    #@64
    if-eqz v10, :cond_5

    #@66
    .line 7890
    sget-object v10, Lcom/android/internal/R$styleable;->IntentCategory:[I

    #@68
    .line 7889
    invoke-virtual {p0, p2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6b
    move-result-object v8

    #@6c
    .line 7891
    const/4 v10, 0x0

    #@6d
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@70
    move-result-object v0

    #@71
    .line 7892
    .local v0, "cat":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    #@74
    .line 7894
    if-eqz v0, :cond_3

    #@76
    .line 7895
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@79
    .line 7897
    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@7c
    goto :goto_1

    #@7d
    .line 7869
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
    .line 7899
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
    .line 7900
    iget-object v10, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@8a
    if-nez v10, :cond_6

    #@8c
    .line 7901
    new-instance v10, Landroid/os/Bundle;

    #@8e
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    #@91
    iput-object v10, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@93
    .line 7903
    :cond_6
    const-string/jumbo v10, "extra"

    #@96
    iget-object v11, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@98
    invoke-virtual {p0, v10, p2, v11}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@9b
    .line 7904
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@9e
    goto :goto_1

    #@9f
    .line 7907
    :cond_7
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@a2
    goto :goto_1

    #@a3
    .line 7911
    .end local v5    # "nodeName":Ljava/lang/String;
    :cond_8
    return-object v3
.end method

.method public static parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 25
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 4594
    const/4 v14, 0x0

    #@1
    .line 4596
    .local v14, "i":I
    :try_start_0
    const-string/jumbo v22, "android-app:"

    #@4
    move-object/from16 v0, p0

    #@6
    move-object/from16 v1, v22

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@b
    move-result v4

    #@c
    .line 4599
    .local v4, "androidApp":Z
    and-int/lit8 v22, p1, 0x3

    #@e
    if-eqz v22, :cond_0

    #@10
    .line 4600
    const-string/jumbo v22, "intent:"

    #@13
    move-object/from16 v0, p0

    #@15
    move-object/from16 v1, v22

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1a
    move-result v22

    #@1b
    if-nez v22, :cond_0

    #@1d
    if-eqz v4, :cond_1

    #@1f
    .line 4611
    :cond_0
    const-string/jumbo v22, "#"

    #@22
    move-object/from16 v0, p0

    #@24
    move-object/from16 v1, v22

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    #@29
    move-result v14

    #@2a
    .line 4613
    const/16 v22, -0x1

    #@2c
    move/from16 v0, v22

    #@2e
    if-ne v14, v0, :cond_2

    #@30
    .line 4614
    if-nez v4, :cond_4

    #@32
    .line 4615
    new-instance v22, Landroid/content/Intent;

    #@34
    const-string/jumbo v23, "android.intent.action.VIEW"

    #@37
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@3a
    move-result-object v24

    #@3b
    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    #@3e
    return-object v22

    #@3f
    .line 4601
    :cond_1
    new-instance v16, Landroid/content/Intent;

    #@41
    const-string/jumbo v22, "android.intent.action.VIEW"

    #@44
    move-object/from16 v0, v16

    #@46
    move-object/from16 v1, v22

    #@48
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    #@4b
    .line 4603
    .local v16, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@4e
    move-result-object v22

    #@4f
    move-object/from16 v0, v16

    #@51
    move-object/from16 v1, v22

    #@53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    #@56
    .line 4607
    return-object v16

    #@57
    .line 4604
    :catch_0
    move-exception v9

    #@58
    .line 4605
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    new-instance v22, Ljava/net/URISyntaxException;

    #@5a
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@5d
    move-result-object v23

    #@5e
    move-object/from16 v0, v22

    #@60
    move-object/from16 v1, p0

    #@62
    move-object/from16 v2, v23

    #@64
    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    throw v22
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    #@68
    .line 4802
    .end local v4    # "androidApp":Z
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .end local v16    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v10

    #@69
    .line 4803
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Ljava/net/URISyntaxException;

    #@6b
    const-string/jumbo v23, "illegal Intent URI format"

    #@6e
    move-object/from16 v0, v22

    #@70
    move-object/from16 v1, p0

    #@72
    move-object/from16 v2, v23

    #@74
    invoke-direct {v0, v1, v2, v14}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@77
    throw v22

    #@78
    .line 4619
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "androidApp":Z
    :cond_2
    :try_start_3
    const-string/jumbo v22, "#Intent;"

    #@7b
    move-object/from16 v0, p0

    #@7d
    move-object/from16 v1, v22

    #@7f
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@82
    move-result v22

    #@83
    if-nez v22, :cond_4

    #@85
    .line 4620
    if-nez v4, :cond_3

    #@87
    .line 4621
    invoke-static/range {p0 .. p1}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    #@8a
    move-result-object v22

    #@8b
    return-object v22

    #@8c
    .line 4623
    :cond_3
    const/4 v14, -0x1

    #@8d
    .line 4628
    :cond_4
    new-instance v16, Landroid/content/Intent;

    #@8f
    const-string/jumbo v22, "android.intent.action.VIEW"

    #@92
    move-object/from16 v0, v16

    #@94
    move-object/from16 v1, v22

    #@96
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@99
    .line 4629
    .restart local v16    # "intent":Landroid/content/Intent;
    move-object/from16 v7, v16

    #@9b
    .line 4630
    .local v7, "baseIntent":Landroid/content/Intent;
    const/4 v13, 0x0

    #@9c
    .line 4631
    .local v13, "explicitAction":Z
    const/4 v15, 0x0

    #@9d
    .line 4634
    .local v15, "inSelector":Z
    const/16 v19, 0x0

    #@9f
    .line 4636
    .local v19, "scheme":Ljava/lang/String;
    if-ltz v14, :cond_a

    #@a1
    .line 4637
    const/16 v22, 0x0

    #@a3
    move-object/from16 v0, p0

    #@a5
    move/from16 v1, v22

    #@a7
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@aa
    move-result-object v8

    #@ab
    .line 4638
    .local v8, "data":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x8

    #@ad
    .line 4644
    .end local v19    # "scheme":Ljava/lang/String;
    :goto_0
    if-ltz v14, :cond_5

    #@af
    const-string/jumbo v22, "end"

    #@b2
    move-object/from16 v0, p0

    #@b4
    move-object/from16 v1, v22

    #@b6
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@b9
    move-result v22

    #@ba
    if-eqz v22, :cond_b

    #@bc
    .line 4729
    :cond_5
    if-eqz v15, :cond_7

    #@be
    .line 4731
    iget-object v0, v7, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@c0
    move-object/from16 v22, v0

    #@c2
    if-nez v22, :cond_6

    #@c4
    .line 4732
    move-object/from16 v0, v16

    #@c6
    invoke-virtual {v7, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    #@c9
    .line 4734
    :cond_6
    move-object/from16 v16, v7

    #@cb
    .line 4737
    :cond_7
    if-eqz v8, :cond_9

    #@cd
    .line 4738
    const-string/jumbo v22, "intent:"

    #@d0
    move-object/from16 v0, v22

    #@d2
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d5
    move-result v22

    #@d6
    if-eqz v22, :cond_23

    #@d8
    .line 4739
    const/16 v22, 0x7

    #@da
    move/from16 v0, v22

    #@dc
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@df
    move-result-object v8

    #@e0
    .line 4740
    if-eqz v19, :cond_8

    #@e2
    .line 4741
    new-instance v22, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    move-object/from16 v0, v22

    #@e9
    move-object/from16 v1, v19

    #@eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v22

    #@ef
    const/16 v23, 0x3a

    #@f1
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v22

    #@f5
    move-object/from16 v0, v22

    #@f7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v22

    #@fb
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fe
    move-result-object v8

    #@ff
    .line 4791
    :cond_8
    :goto_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    #@102
    move-result v22

    #@103
    if-lez v22, :cond_9

    #@105
    .line 4793
    :try_start_4
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@108
    move-result-object v22

    #@109
    move-object/from16 v0, v22

    #@10b
    move-object/from16 v1, v16

    #@10d
    iput-object v0, v1, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    #@10f
    .line 4800
    :cond_9
    return-object v16

    #@110
    .line 4640
    .end local v8    # "data":Ljava/lang/String;
    .restart local v19    # "scheme":Ljava/lang/String;
    :cond_a
    move-object/from16 v8, p0

    #@112
    .restart local v8    # "data":Ljava/lang/String;
    goto :goto_0

    #@113
    .line 4645
    .end local v19    # "scheme":Ljava/lang/String;
    :cond_b
    const/16 v22, 0x3d

    #@115
    :try_start_5
    move-object/from16 v0, p0

    #@117
    move/from16 v1, v22

    #@119
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    #@11c
    move-result v12

    #@11d
    .line 4646
    .local v12, "eq":I
    if-gez v12, :cond_c

    #@11f
    add-int/lit8 v12, v14, -0x1

    #@121
    .line 4647
    :cond_c
    const/16 v22, 0x3b

    #@123
    move-object/from16 v0, p0

    #@125
    move/from16 v1, v22

    #@127
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    #@12a
    move-result v20

    #@12b
    .line 4648
    .local v20, "semi":I
    move/from16 v0, v20

    #@12d
    if-ge v12, v0, :cond_e

    #@12f
    add-int/lit8 v22, v12, 0x1

    #@131
    move-object/from16 v0, p0

    #@133
    move/from16 v1, v22

    #@135
    move/from16 v2, v20

    #@137
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@13a
    move-result-object v22

    #@13b
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@13e
    move-result-object v21

    #@13f
    .line 4651
    .local v21, "value":Ljava/lang/String;
    :goto_2
    const-string/jumbo v22, "action="

    #@142
    move-object/from16 v0, p0

    #@144
    move-object/from16 v1, v22

    #@146
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@149
    move-result v22

    #@14a
    if-eqz v22, :cond_f

    #@14c
    .line 4652
    move-object/from16 v0, v16

    #@14e
    move-object/from16 v1, v21

    #@150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@153
    .line 4653
    if-nez v15, :cond_d

    #@155
    .line 4654
    const/4 v13, 0x1

    #@156
    .line 4726
    :cond_d
    :goto_3
    add-int/lit8 v14, v20, 0x1

    #@158
    goto/16 :goto_0

    #@15a
    .line 4648
    .end local v21    # "value":Ljava/lang/String;
    :cond_e
    const-string/jumbo v21, ""

    #@15d
    .restart local v21    # "value":Ljava/lang/String;
    goto :goto_2

    #@15e
    .line 4659
    :cond_f
    const-string/jumbo v22, "category="

    #@161
    move-object/from16 v0, p0

    #@163
    move-object/from16 v1, v22

    #@165
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@168
    move-result v22

    #@169
    if-eqz v22, :cond_10

    #@16b
    .line 4660
    move-object/from16 v0, v16

    #@16d
    move-object/from16 v1, v21

    #@16f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@172
    goto :goto_3

    #@173
    .line 4664
    :cond_10
    const-string/jumbo v22, "type="

    #@176
    move-object/from16 v0, p0

    #@178
    move-object/from16 v1, v22

    #@17a
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@17d
    move-result v22

    #@17e
    if-eqz v22, :cond_11

    #@180
    .line 4665
    move-object/from16 v0, v21

    #@182
    move-object/from16 v1, v16

    #@184
    iput-object v0, v1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@186
    goto :goto_3

    #@187
    .line 4669
    :cond_11
    const-string/jumbo v22, "launchFlags="

    #@18a
    move-object/from16 v0, p0

    #@18c
    move-object/from16 v1, v22

    #@18e
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@191
    move-result v22

    #@192
    if-eqz v22, :cond_12

    #@194
    .line 4670
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@197
    move-result-object v22

    #@198
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    #@19b
    move-result v22

    #@19c
    move/from16 v0, v22

    #@19e
    move-object/from16 v1, v16

    #@1a0
    iput v0, v1, Landroid/content/Intent;->mFlags:I

    #@1a2
    .line 4671
    and-int/lit8 v22, p1, 0x4

    #@1a4
    if-nez v22, :cond_d

    #@1a6
    .line 4672
    move-object/from16 v0, v16

    #@1a8
    iget v0, v0, Landroid/content/Intent;->mFlags:I

    #@1aa
    move/from16 v22, v0

    #@1ac
    move/from16 v0, v22

    #@1ae
    and-int/lit16 v0, v0, -0xc4

    #@1b0
    move/from16 v22, v0

    #@1b2
    move/from16 v0, v22

    #@1b4
    move-object/from16 v1, v16

    #@1b6
    iput v0, v1, Landroid/content/Intent;->mFlags:I

    #@1b8
    goto :goto_3

    #@1b9
    .line 4677
    :cond_12
    const-string/jumbo v22, "package="

    #@1bc
    move-object/from16 v0, p0

    #@1be
    move-object/from16 v1, v22

    #@1c0
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@1c3
    move-result v22

    #@1c4
    if-eqz v22, :cond_13

    #@1c6
    .line 4678
    move-object/from16 v0, v21

    #@1c8
    move-object/from16 v1, v16

    #@1ca
    iput-object v0, v1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@1cc
    goto :goto_3

    #@1cd
    .line 4682
    :cond_13
    const-string/jumbo v22, "component="

    #@1d0
    move-object/from16 v0, p0

    #@1d2
    move-object/from16 v1, v22

    #@1d4
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@1d7
    move-result v22

    #@1d8
    if-eqz v22, :cond_14

    #@1da
    .line 4683
    invoke-static/range {v21 .. v21}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@1dd
    move-result-object v22

    #@1de
    move-object/from16 v0, v22

    #@1e0
    move-object/from16 v1, v16

    #@1e2
    iput-object v0, v1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@1e4
    goto/16 :goto_3

    #@1e6
    .line 4687
    :cond_14
    const-string/jumbo v22, "scheme="

    #@1e9
    move-object/from16 v0, p0

    #@1eb
    move-object/from16 v1, v22

    #@1ed
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@1f0
    move-result v22

    #@1f1
    if-eqz v22, :cond_16

    #@1f3
    .line 4688
    if-eqz v15, :cond_15

    #@1f5
    .line 4689
    new-instance v22, Ljava/lang/StringBuilder;

    #@1f7
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1fa
    move-object/from16 v0, v22

    #@1fc
    move-object/from16 v1, v21

    #@1fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@201
    move-result-object v22

    #@202
    const-string/jumbo v23, ":"

    #@205
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@208
    move-result-object v22

    #@209
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20c
    move-result-object v22

    #@20d
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@210
    move-result-object v22

    #@211
    move-object/from16 v0, v22

    #@213
    move-object/from16 v1, v16

    #@215
    iput-object v0, v1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@217
    goto/16 :goto_3

    #@219
    .line 4691
    :cond_15
    move-object/from16 v19, v21

    #@21b
    .local v19, "scheme":Ljava/lang/String;
    goto/16 :goto_3

    #@21d
    .line 4696
    .end local v19    # "scheme":Ljava/lang/String;
    :cond_16
    const-string/jumbo v22, "sourceBounds="

    #@220
    move-object/from16 v0, p0

    #@222
    move-object/from16 v1, v22

    #@224
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@227
    move-result v22

    #@228
    if-eqz v22, :cond_17

    #@22a
    .line 4697
    invoke-static/range {v21 .. v21}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    #@22d
    move-result-object v22

    #@22e
    move-object/from16 v0, v22

    #@230
    move-object/from16 v1, v16

    #@232
    iput-object v0, v1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@234
    goto/16 :goto_3

    #@236
    .line 4701
    :cond_17
    add-int/lit8 v22, v14, 0x3

    #@238
    move/from16 v0, v20

    #@23a
    move/from16 v1, v22

    #@23c
    if-ne v0, v1, :cond_18

    #@23e
    const-string/jumbo v22, "SEL"

    #@241
    move-object/from16 v0, p0

    #@243
    move-object/from16 v1, v22

    #@245
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@248
    move-result v22

    #@249
    if-eqz v22, :cond_18

    #@24b
    .line 4702
    new-instance v16, Landroid/content/Intent;

    #@24d
    .end local v16    # "intent":Landroid/content/Intent;
    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    #@250
    .line 4703
    .restart local v16    # "intent":Landroid/content/Intent;
    const/4 v15, 0x1

    #@251
    goto/16 :goto_3

    #@253
    .line 4708
    :cond_18
    add-int/lit8 v22, v14, 0x2

    #@255
    move-object/from16 v0, p0

    #@257
    move/from16 v1, v22

    #@259
    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25c
    move-result-object v22

    #@25d
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    #@260
    move-result-object v17

    #@261
    .line 4710
    .local v17, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    #@263
    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@265
    move-object/from16 v22, v0

    #@267
    if-nez v22, :cond_19

    #@269
    new-instance v22, Landroid/os/Bundle;

    #@26b
    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    #@26e
    move-object/from16 v0, v22

    #@270
    move-object/from16 v1, v16

    #@272
    iput-object v0, v1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@274
    .line 4711
    :cond_19
    move-object/from16 v0, v16

    #@276
    iget-object v6, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@278
    .line 4713
    .local v6, "b":Landroid/os/Bundle;
    const-string/jumbo v22, "S."

    #@27b
    move-object/from16 v0, p0

    #@27d
    move-object/from16 v1, v22

    #@27f
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@282
    move-result v22

    #@283
    if-eqz v22, :cond_1a

    #@285
    move-object/from16 v0, v17

    #@287
    move-object/from16 v1, v21

    #@289
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@28c
    goto/16 :goto_3

    #@28e
    .line 4714
    :cond_1a
    const-string/jumbo v22, "B."

    #@291
    move-object/from16 v0, p0

    #@293
    move-object/from16 v1, v22

    #@295
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@298
    move-result v22

    #@299
    if-eqz v22, :cond_1b

    #@29b
    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@29e
    move-result v22

    #@29f
    move-object/from16 v0, v17

    #@2a1
    move/from16 v1, v22

    #@2a3
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@2a6
    goto/16 :goto_3

    #@2a8
    .line 4715
    :cond_1b
    const-string/jumbo v22, "b."

    #@2ab
    move-object/from16 v0, p0

    #@2ad
    move-object/from16 v1, v22

    #@2af
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@2b2
    move-result v22

    #@2b3
    if-eqz v22, :cond_1c

    #@2b5
    invoke-static/range {v21 .. v21}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    #@2b8
    move-result v22

    #@2b9
    move-object/from16 v0, v17

    #@2bb
    move/from16 v1, v22

    #@2bd
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    #@2c0
    goto/16 :goto_3

    #@2c2
    .line 4716
    :cond_1c
    const-string/jumbo v22, "c."

    #@2c5
    move-object/from16 v0, p0

    #@2c7
    move-object/from16 v1, v22

    #@2c9
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@2cc
    move-result v22

    #@2cd
    if-eqz v22, :cond_1d

    #@2cf
    const/16 v22, 0x0

    #@2d1
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    #@2d4
    move-result v22

    #@2d5
    move-object/from16 v0, v17

    #@2d7
    move/from16 v1, v22

    #@2d9
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    #@2dc
    goto/16 :goto_3

    #@2de
    .line 4717
    :cond_1d
    const-string/jumbo v22, "d."

    #@2e1
    move-object/from16 v0, p0

    #@2e3
    move-object/from16 v1, v22

    #@2e5
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@2e8
    move-result v22

    #@2e9
    if-eqz v22, :cond_1e

    #@2eb
    invoke-static/range {v21 .. v21}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@2ee
    move-result-wide v22

    #@2ef
    move-object/from16 v0, v17

    #@2f1
    move-wide/from16 v1, v22

    #@2f3
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@2f6
    goto/16 :goto_3

    #@2f8
    .line 4718
    :cond_1e
    const-string/jumbo v22, "f."

    #@2fb
    move-object/from16 v0, p0

    #@2fd
    move-object/from16 v1, v22

    #@2ff
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@302
    move-result v22

    #@303
    if-eqz v22, :cond_1f

    #@305
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@308
    move-result v22

    #@309
    move-object/from16 v0, v17

    #@30b
    move/from16 v1, v22

    #@30d
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@310
    goto/16 :goto_3

    #@312
    .line 4719
    :cond_1f
    const-string/jumbo v22, "i."

    #@315
    move-object/from16 v0, p0

    #@317
    move-object/from16 v1, v22

    #@319
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@31c
    move-result v22

    #@31d
    if-eqz v22, :cond_20

    #@31f
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@322
    move-result v22

    #@323
    move-object/from16 v0, v17

    #@325
    move/from16 v1, v22

    #@327
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@32a
    goto/16 :goto_3

    #@32c
    .line 4720
    :cond_20
    const-string/jumbo v22, "l."

    #@32f
    move-object/from16 v0, p0

    #@331
    move-object/from16 v1, v22

    #@333
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@336
    move-result v22

    #@337
    if-eqz v22, :cond_21

    #@339
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@33c
    move-result-wide v22

    #@33d
    move-object/from16 v0, v17

    #@33f
    move-wide/from16 v1, v22

    #@341
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@344
    goto/16 :goto_3

    #@346
    .line 4721
    :cond_21
    const-string/jumbo v22, "s."

    #@349
    move-object/from16 v0, p0

    #@34b
    move-object/from16 v1, v22

    #@34d
    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@350
    move-result v22

    #@351
    if-eqz v22, :cond_22

    #@353
    invoke-static/range {v21 .. v21}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@356
    move-result v22

    #@357
    move-object/from16 v0, v17

    #@359
    move/from16 v1, v22

    #@35b
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    #@35e
    goto/16 :goto_3

    #@360
    .line 4722
    :cond_22
    new-instance v22, Ljava/net/URISyntaxException;

    #@362
    const-string/jumbo v23, "unknown EXTRA type"

    #@365
    move-object/from16 v0, v22

    #@367
    move-object/from16 v1, p0

    #@369
    move-object/from16 v2, v23

    #@36b
    invoke-direct {v0, v1, v2, v14}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@36e
    throw v22

    #@36f
    .line 4743
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v12    # "eq":I
    .end local v17    # "key":Ljava/lang/String;
    .end local v20    # "semi":I
    .end local v21    # "value":Ljava/lang/String;
    :cond_23
    const-string/jumbo v22, "android-app:"

    #@372
    move-object/from16 v0, v22

    #@374
    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@377
    move-result v22

    #@378
    if-eqz v22, :cond_8

    #@37a
    .line 4744
    const/16 v22, 0xc

    #@37c
    move/from16 v0, v22

    #@37e
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    #@381
    move-result v22

    #@382
    const/16 v23, 0x2f

    #@384
    move/from16 v0, v22

    #@386
    move/from16 v1, v23

    #@388
    if-ne v0, v1, :cond_2b

    #@38a
    const/16 v22, 0xd

    #@38c
    move/from16 v0, v22

    #@38e
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    #@391
    move-result v22

    #@392
    const/16 v23, 0x2f

    #@394
    move/from16 v0, v22

    #@396
    move/from16 v1, v23

    #@398
    if-ne v0, v1, :cond_2b

    #@39a
    .line 4746
    const/16 v22, 0x2f

    #@39c
    const/16 v23, 0xe

    #@39e
    move/from16 v0, v22

    #@3a0
    move/from16 v1, v23

    #@3a2
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    #@3a5
    move-result v11

    #@3a6
    .line 4747
    .local v11, "end":I
    if-gez v11, :cond_25

    #@3a8
    .line 4749
    const/16 v22, 0xe

    #@3aa
    move/from16 v0, v22

    #@3ac
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3af
    move-result-object v22

    #@3b0
    move-object/from16 v0, v22

    #@3b2
    move-object/from16 v1, v16

    #@3b4
    iput-object v0, v1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@3b6
    .line 4750
    if-nez v13, :cond_24

    #@3b8
    .line 4751
    const-string/jumbo v22, "android.intent.action.MAIN"

    #@3bb
    move-object/from16 v0, v16

    #@3bd
    move-object/from16 v1, v22

    #@3bf
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@3c2
    .line 4753
    :cond_24
    const-string/jumbo v8, ""

    #@3c5
    goto/16 :goto_1

    #@3c7
    .line 4756
    :cond_25
    const/4 v5, 0x0

    #@3c8
    .line 4757
    .local v5, "authority":Ljava/lang/String;
    const/16 v22, 0xe

    #@3ca
    move/from16 v0, v22

    #@3cc
    invoke-virtual {v8, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3cf
    move-result-object v22

    #@3d0
    move-object/from16 v0, v22

    #@3d2
    move-object/from16 v1, v16

    #@3d4
    iput-object v0, v1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@3d6
    .line 4759
    add-int/lit8 v22, v11, 0x1

    #@3d8
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@3db
    move-result v23

    #@3dc
    move/from16 v0, v22

    #@3de
    move/from16 v1, v23

    #@3e0
    if-ge v0, v1, :cond_26

    #@3e2
    .line 4760
    const/16 v22, 0x2f

    #@3e4
    add-int/lit8 v23, v11, 0x1

    #@3e6
    move/from16 v0, v22

    #@3e8
    move/from16 v1, v23

    #@3ea
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    #@3ed
    move-result v18

    #@3ee
    .local v18, "newEnd":I
    if-ltz v18, :cond_28

    #@3f0
    .line 4762
    add-int/lit8 v22, v11, 0x1

    #@3f2
    move/from16 v0, v22

    #@3f4
    move/from16 v1, v18

    #@3f6
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3f9
    move-result-object v19

    #@3fa
    .line 4763
    .restart local v19    # "scheme":Ljava/lang/String;
    move/from16 v11, v18

    #@3fc
    .line 4764
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@3ff
    move-result v22

    #@400
    move/from16 v0, v22

    #@402
    if-ge v11, v0, :cond_26

    #@404
    const/16 v22, 0x2f

    #@406
    add-int/lit8 v23, v11, 0x1

    #@408
    move/from16 v0, v22

    #@40a
    move/from16 v1, v23

    #@40c
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    #@40f
    move-result v18

    #@410
    if-ltz v18, :cond_26

    #@412
    .line 4766
    add-int/lit8 v22, v11, 0x1

    #@414
    move/from16 v0, v22

    #@416
    move/from16 v1, v18

    #@418
    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@41b
    move-result-object v5

    #@41c
    .line 4767
    .local v5, "authority":Ljava/lang/String;
    move/from16 v11, v18

    #@41e
    .line 4774
    .end local v5    # "authority":Ljava/lang/String;
    .end local v18    # "newEnd":I
    .end local v19    # "scheme":Ljava/lang/String;
    :cond_26
    :goto_4
    if-nez v19, :cond_29

    #@420
    .line 4776
    if-nez v13, :cond_27

    #@422
    .line 4777
    const-string/jumbo v22, "android.intent.action.MAIN"

    #@425
    move-object/from16 v0, v16

    #@427
    move-object/from16 v1, v22

    #@429
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@42c
    .line 4779
    :cond_27
    const-string/jumbo v8, ""

    #@42f
    goto/16 :goto_1

    #@431
    .line 4771
    .local v5, "authority":Ljava/lang/String;
    .restart local v18    # "newEnd":I
    :cond_28
    add-int/lit8 v22, v11, 0x1

    #@433
    move/from16 v0, v22

    #@435
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@438
    move-result-object v19

    #@439
    .restart local v19    # "scheme":Ljava/lang/String;
    goto :goto_4

    #@43a
    .line 4780
    .end local v5    # "authority":Ljava/lang/String;
    .end local v18    # "newEnd":I
    .end local v19    # "scheme":Ljava/lang/String;
    :cond_29
    if-nez v5, :cond_2a

    #@43c
    .line 4781
    new-instance v22, Ljava/lang/StringBuilder;

    #@43e
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@441
    move-object/from16 v0, v22

    #@443
    move-object/from16 v1, v19

    #@445
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@448
    move-result-object v22

    #@449
    const-string/jumbo v23, ":"

    #@44c
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44f
    move-result-object v22

    #@450
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@453
    move-result-object v8

    #@454
    goto/16 :goto_1

    #@456
    .line 4783
    :cond_2a
    new-instance v22, Ljava/lang/StringBuilder;

    #@458
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@45b
    move-object/from16 v0, v22

    #@45d
    move-object/from16 v1, v19

    #@45f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@462
    move-result-object v22

    #@463
    const-string/jumbo v23, "://"

    #@466
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@469
    move-result-object v22

    #@46a
    move-object/from16 v0, v22

    #@46c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46f
    move-result-object v22

    #@470
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@473
    move-result-object v23

    #@474
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@477
    move-result-object v22

    #@478
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47b
    move-result-object v8

    #@47c
    goto/16 :goto_1

    #@47e
    .line 4787
    .end local v11    # "end":I
    :cond_2b
    const-string/jumbo v8, ""

    #@481
    goto/16 :goto_1

    #@483
    .line 4794
    :catch_2
    move-exception v9

    #@484
    .line 4795
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v22, Ljava/net/URISyntaxException;

    #@486
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@489
    move-result-object v23

    #@48a
    move-object/from16 v0, v22

    #@48c
    move-object/from16 v1, p0

    #@48e
    move-object/from16 v2, v23

    #@490
    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@493
    throw v22
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
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
    .line 7942
    new-instance v5, Landroid/content/Intent;

    #@2
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    #@5
    .line 7943
    .local v5, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@8
    move-result v7

    #@9
    .line 7945
    .local v7, "outerDepth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@c
    move-result v0

    #@d
    .line 7946
    .local v0, "attrCount":I
    add-int/lit8 v2, v0, -0x1

    #@f
    .local v2, "attrNdx":I
    :goto_0
    if-ltz v2, :cond_6

    #@11
    .line 7947
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    .line 7948
    .local v1, "attrName":Ljava/lang/String;
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 7949
    .local v3, "attrValue":Ljava/lang/String;
    const-string/jumbo v8, "action"

    #@1c
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v8

    #@20
    if-eqz v8, :cond_0

    #@22
    .line 7950
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@25
    .line 7946
    :goto_1
    add-int/lit8 v2, v2, -0x1

    #@27
    goto :goto_0

    #@28
    .line 7951
    :cond_0
    const-string/jumbo v8, "data"

    #@2b
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_1

    #@31
    .line 7952
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@34
    move-result-object v8

    #@35
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@38
    goto :goto_1

    #@39
    .line 7953
    :cond_1
    const-string/jumbo v8, "type"

    #@3c
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v8

    #@40
    if-eqz v8, :cond_2

    #@42
    .line 7954
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    #@45
    goto :goto_1

    #@46
    .line 7955
    :cond_2
    const-string/jumbo v8, "component"

    #@49
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v8

    #@4d
    if-eqz v8, :cond_3

    #@4f
    .line 7956
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@56
    goto :goto_1

    #@57
    .line 7957
    :cond_3
    const-string/jumbo v8, "flags"

    #@5a
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result v8

    #@5e
    if-eqz v8, :cond_4

    #@60
    .line 7958
    const/16 v8, 0x10

    #@62
    invoke-static {v3, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    #@65
    move-result-object v8

    #@66
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    #@69
    move-result v8

    #@6a
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@6d
    goto :goto_1

    #@6e
    .line 7960
    :cond_4
    const-string/jumbo v8, "Intent"

    #@71
    new-instance v9, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v10, "restoreFromXml: unknown attribute="

    #@79
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v9

    #@85
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    goto :goto_1

    #@89
    .line 7976
    .end local v1    # "attrName":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    .local v4, "event":I
    .local v6, "name":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "Intent"

    #@8c
    new-instance v9, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v10, "restoreFromXml: unknown name="

    #@94
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v9

    #@98
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v9

    #@9c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v9

    #@a0
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 7977
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@a6
    .line 7966
    .end local v4    # "event":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@a9
    move-result v4

    #@aa
    .restart local v4    # "event":I
    const/4 v8, 0x1

    #@ab
    if-eq v4, v8, :cond_8

    #@ad
    .line 7967
    const/4 v8, 0x3

    #@ae
    if-ne v4, v8, :cond_7

    #@b0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@b3
    move-result v8

    #@b4
    if-ge v8, v7, :cond_8

    #@b6
    .line 7968
    :cond_7
    const/4 v8, 0x2

    #@b7
    if-ne v4, v8, :cond_6

    #@b9
    .line 7969
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@bc
    move-result-object v6

    #@bd
    .line 7970
    .restart local v6    # "name":Ljava/lang/String;
    const-string/jumbo v8, "categories"

    #@c0
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c3
    move-result v8

    #@c4
    if-eqz v8, :cond_5

    #@c6
    .line 7971
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@c9
    move-result v0

    #@ca
    .line 7972
    add-int/lit8 v2, v0, -0x1

    #@cc
    :goto_2
    if-ltz v2, :cond_6

    #@ce
    .line 7973
    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@d1
    move-result-object v8

    #@d2
    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@d5
    .line 7972
    add-int/lit8 v2, v2, -0x1

    #@d7
    goto :goto_2

    #@d8
    .line 7982
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
    .line 7668
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
    .line 7670
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@10
    .line 7671
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 7672
    const-string/jumbo v0, "SEL;"

    #@17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    .line 7676
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
    .line 7680
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@33
    move-result v0

    #@34
    if-lez v0, :cond_1

    #@36
    .line 7681
    const-string/jumbo v0, "#Intent;"

    #@39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 7682
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3f
    .line 7683
    const-string/jumbo v0, "end"

    #@42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 7667
    :cond_1
    return-void

    #@46
    :cond_2
    move-object v2, v6

    #@47
    .line 7676
    goto :goto_0
.end method

.method private toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "uri"    # Ljava/lang/StringBuilder;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "defAction"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;
    .param p5, "flags"    # I

    #@0
    .prologue
    const/16 v8, 0x3b

    #@2
    .line 7689
    if-eqz p2, :cond_0

    #@4
    .line 7690
    const-string/jumbo v5, "scheme="

    #@7
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v5

    #@b
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    .line 7692
    :cond_0
    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@14
    if-eqz v5, :cond_1

    #@16
    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@18
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_2

    #@1e
    .line 7695
    :cond_1
    :goto_0
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@20
    if-eqz v5, :cond_3

    #@22
    .line 7696
    const/4 v1, 0x0

    #@23
    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@25
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    #@28
    move-result v5

    #@29
    if-ge v1, v5, :cond_3

    #@2b
    .line 7697
    const-string/jumbo v5, "category="

    #@2e
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v6

    #@32
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@34
    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@37
    move-result-object v5

    #@38
    check-cast v5, Ljava/lang/String;

    #@3a
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@45
    .line 7696
    add-int/lit8 v1, v1, 0x1

    #@47
    goto :goto_1

    #@48
    .line 7693
    .end local v1    # "i":I
    :cond_2
    const-string/jumbo v5, "action="

    #@4b
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    iget-object v6, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@51
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5c
    goto :goto_0

    #@5d
    .line 7700
    :cond_3
    iget-object v5, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@5f
    if-eqz v5, :cond_4

    #@61
    .line 7701
    const-string/jumbo v5, "type="

    #@64
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    iget-object v6, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@6a
    const-string/jumbo v7, "/"

    #@6d
    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@78
    .line 7703
    :cond_4
    iget v5, p0, Landroid/content/Intent;->mFlags:I

    #@7a
    if-eqz v5, :cond_5

    #@7c
    .line 7704
    const-string/jumbo v5, "launchFlags=0x"

    #@7f
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v5

    #@83
    iget v6, p0, Landroid/content/Intent;->mFlags:I

    #@85
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@88
    move-result-object v6

    #@89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@90
    .line 7706
    :cond_5
    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@92
    if-eqz v5, :cond_6

    #@94
    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@96
    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@99
    move-result v5

    #@9a
    if-eqz v5, :cond_a

    #@9c
    .line 7709
    :cond_6
    :goto_2
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@9e
    if-eqz v5, :cond_7

    #@a0
    .line 7710
    const-string/jumbo v5, "component="

    #@a3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v5

    #@a7
    .line 7711
    iget-object v6, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@a9
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@ac
    move-result-object v6

    #@ad
    const-string/jumbo v7, "/"

    #@b0
    .line 7710
    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b3
    move-result-object v6

    #@b4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v5

    #@b8
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bb
    .line 7713
    :cond_7
    iget-object v5, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@bd
    if-eqz v5, :cond_8

    #@bf
    .line 7714
    const-string/jumbo v5, "sourceBounds="

    #@c2
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v5

    #@c6
    .line 7715
    iget-object v6, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@c8
    invoke-virtual {v6}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    #@cb
    move-result-object v6

    #@cc
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@cf
    move-result-object v6

    #@d0
    .line 7714
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v5

    #@d4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d7
    .line 7718
    :cond_8
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d9
    if-eqz v5, :cond_14

    #@db
    .line 7719
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@dd
    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    #@e0
    move-result-object v5

    #@e1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e4
    move-result-object v3

    #@e5
    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@e8
    move-result v5

    #@e9
    if-eqz v5, :cond_14

    #@eb
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ee
    move-result-object v2

    #@ef
    check-cast v2, Ljava/lang/String;

    #@f1
    .line 7720
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@f3
    invoke-virtual {v5, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@f6
    move-result-object v4

    #@f7
    .line 7722
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    #@f9
    if-eqz v5, :cond_b

    #@fb
    const/16 v0, 0x53

    #@fd
    .line 7733
    .local v0, "entryType":C
    :goto_4
    if-eqz v0, :cond_9

    #@ff
    .line 7734
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@102
    .line 7735
    const/16 v5, 0x2e

    #@104
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@107
    .line 7736
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@10a
    move-result-object v5

    #@10b
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    .line 7737
    const/16 v5, 0x3d

    #@110
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@113
    .line 7738
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@116
    move-result-object v5

    #@117
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@11a
    move-result-object v5

    #@11b
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    .line 7739
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@121
    goto :goto_3

    #@122
    .line 7707
    .end local v0    # "entryType":C
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_a
    const-string/jumbo v5, "package="

    #@125
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v5

    #@129
    iget-object v6, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@12b
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    #@12e
    move-result-object v6

    #@12f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@132
    move-result-object v5

    #@133
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@136
    goto/16 :goto_2

    #@138
    .line 7723
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "key$iterator":Ljava/util/Iterator;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_b
    instance-of v5, v4, Ljava/lang/Boolean;

    #@13a
    if-eqz v5, :cond_c

    #@13c
    const/16 v0, 0x42

    #@13e
    .restart local v0    # "entryType":C
    goto :goto_4

    #@13f
    .line 7724
    .end local v0    # "entryType":C
    :cond_c
    instance-of v5, v4, Ljava/lang/Byte;

    #@141
    if-eqz v5, :cond_d

    #@143
    const/16 v0, 0x62

    #@145
    .restart local v0    # "entryType":C
    goto :goto_4

    #@146
    .line 7725
    .end local v0    # "entryType":C
    :cond_d
    instance-of v5, v4, Ljava/lang/Character;

    #@148
    if-eqz v5, :cond_e

    #@14a
    const/16 v0, 0x63

    #@14c
    .restart local v0    # "entryType":C
    goto :goto_4

    #@14d
    .line 7726
    .end local v0    # "entryType":C
    :cond_e
    instance-of v5, v4, Ljava/lang/Double;

    #@14f
    if-eqz v5, :cond_f

    #@151
    const/16 v0, 0x64

    #@153
    .restart local v0    # "entryType":C
    goto :goto_4

    #@154
    .line 7727
    .end local v0    # "entryType":C
    :cond_f
    instance-of v5, v4, Ljava/lang/Float;

    #@156
    if-eqz v5, :cond_10

    #@158
    const/16 v0, 0x66

    #@15a
    .restart local v0    # "entryType":C
    goto :goto_4

    #@15b
    .line 7728
    .end local v0    # "entryType":C
    :cond_10
    instance-of v5, v4, Ljava/lang/Integer;

    #@15d
    if-eqz v5, :cond_11

    #@15f
    const/16 v0, 0x69

    #@161
    .restart local v0    # "entryType":C
    goto :goto_4

    #@162
    .line 7729
    .end local v0    # "entryType":C
    :cond_11
    instance-of v5, v4, Ljava/lang/Long;

    #@164
    if-eqz v5, :cond_12

    #@166
    const/16 v0, 0x6c

    #@168
    .restart local v0    # "entryType":C
    goto :goto_4

    #@169
    .line 7730
    .end local v0    # "entryType":C
    :cond_12
    instance-of v5, v4, Ljava/lang/Short;

    #@16b
    if-eqz v5, :cond_13

    #@16d
    const/16 v0, 0x73

    #@16f
    .restart local v0    # "entryType":C
    goto :goto_4

    #@170
    .line 7731
    .end local v0    # "entryType":C
    :cond_13
    const/4 v0, 0x0

    #@171
    .restart local v0    # "entryType":C
    goto :goto_4

    #@172
    .line 7688
    .end local v0    # "entryType":C
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
    .line 6080
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6081
    new-instance v0, Landroid/util/ArraySet;

    #@6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@b
    .line 6083
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@d
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@14
    .line 6084
    return-object p0
.end method

.method public addFlags(I)Landroid/content/Intent;
    .locals 1
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 7000
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/content/Intent;->mFlags:I

    #@5
    .line 7001
    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 4375
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
    .line 4394
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
    .line 7746
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
    .line 7243
    const/4 v0, 0x0

    #@3
    .line 7244
    .local v0, "changes":I
    const/4 v2, 0x0

    #@4
    .line 7245
    .local v2, "mayHaveCopiedUris":Z
    iget-object v4, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@6
    if-eqz v4, :cond_1

    #@8
    .line 7246
    iget-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@a
    if-eqz v4, :cond_0

    #@c
    and-int/lit8 v4, p2, 0x1

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 7247
    :cond_0
    iget-object v4, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@12
    iput-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@14
    .line 7248
    const/4 v0, 0x1

    #@15
    .line 7250
    :cond_1
    iget-object v4, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@17
    if-nez v4, :cond_2

    #@19
    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@1b
    if-eqz v4, :cond_3

    #@1d
    .line 7251
    :cond_2
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@1f
    if-nez v4, :cond_11

    #@21
    iget-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@23
    if-nez v4, :cond_11

    #@25
    .line 7253
    :goto_0
    iget-object v4, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@27
    iput-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@29
    .line 7254
    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@2b
    iput-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@2d
    .line 7255
    or-int/lit8 v0, v0, 0x2

    #@2f
    .line 7256
    const/4 v2, 0x1

    #@30
    .line 7258
    :cond_3
    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@32
    if-eqz v4, :cond_6

    #@34
    .line 7259
    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@36
    if-eqz v4, :cond_4

    #@38
    and-int/lit8 v4, p2, 0x4

    #@3a
    if-eqz v4, :cond_6

    #@3c
    .line 7260
    :cond_4
    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3e
    if-eqz v4, :cond_5

    #@40
    .line 7261
    new-instance v4, Landroid/util/ArraySet;

    #@42
    iget-object v5, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@44
    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@47
    iput-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@49
    .line 7263
    :cond_5
    or-int/lit8 v0, v0, 0x4

    #@4b
    .line 7265
    :cond_6
    iget-object v4, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@4d
    if-eqz v4, :cond_8

    #@4f
    .line 7266
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@51
    if-eqz v4, :cond_7

    #@53
    and-int/lit8 v4, p2, 0x10

    #@55
    if-eqz v4, :cond_8

    #@57
    .line 7268
    :cond_7
    iget-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@59
    if-nez v4, :cond_8

    #@5b
    .line 7269
    iget-object v4, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@5d
    iput-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@5f
    .line 7270
    or-int/lit8 v0, v0, 0x10

    #@61
    .line 7275
    :cond_8
    iget-object v4, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@63
    if-eqz v4, :cond_9

    #@65
    and-int/lit8 v4, p2, 0x40

    #@67
    if-eqz v4, :cond_9

    #@69
    .line 7276
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@6b
    if-nez v4, :cond_9

    #@6d
    .line 7277
    new-instance v4, Landroid/content/Intent;

    #@6f
    iget-object v5, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@71
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@74
    iput-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@76
    .line 7278
    iput-object v6, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@78
    .line 7279
    or-int/lit8 v0, v0, 0x40

    #@7a
    .line 7282
    :cond_9
    iget-object v4, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@7c
    if-eqz v4, :cond_b

    #@7e
    .line 7283
    iget-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@80
    if-eqz v4, :cond_a

    #@82
    and-int/lit16 v4, p2, 0x80

    #@84
    if-eqz v4, :cond_b

    #@86
    .line 7284
    :cond_a
    iget-object v4, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@88
    iput-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@8a
    .line 7285
    or-int/lit16 v0, v0, 0x80

    #@8c
    .line 7286
    const/4 v2, 0x1

    #@8d
    .line 7291
    :cond_b
    iget-object v4, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@8f
    if-eqz v4, :cond_c

    #@91
    and-int/lit8 v4, p2, 0x8

    #@93
    if-eqz v4, :cond_c

    #@95
    .line 7292
    iget-object v4, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@97
    iput-object v4, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@99
    .line 7293
    or-int/lit8 v0, v0, 0x8

    #@9b
    .line 7295
    :cond_c
    iget v4, p0, Landroid/content/Intent;->mFlags:I

    #@9d
    iget v5, p1, Landroid/content/Intent;->mFlags:I

    #@9f
    or-int/2addr v4, v5

    #@a0
    iput v4, p0, Landroid/content/Intent;->mFlags:I

    #@a2
    .line 7296
    iget-object v4, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@a4
    if-eqz v4, :cond_e

    #@a6
    .line 7297
    iget-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@a8
    if-eqz v4, :cond_d

    #@aa
    and-int/lit8 v4, p2, 0x20

    #@ac
    if-eqz v4, :cond_e

    #@ae
    .line 7298
    :cond_d
    new-instance v4, Landroid/graphics/Rect;

    #@b0
    iget-object v5, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@b2
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@b5
    iput-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@b7
    .line 7299
    or-int/lit8 v0, v0, 0x20

    #@b9
    .line 7301
    :cond_e
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@bb
    if-nez v4, :cond_12

    #@bd
    .line 7302
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@bf
    if-eqz v4, :cond_f

    #@c1
    .line 7303
    new-instance v4, Landroid/os/Bundle;

    #@c3
    iget-object v5, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@c5
    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@c8
    iput-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@ca
    .line 7304
    const/4 v2, 0x1

    #@cb
    .line 7321
    :cond_f
    :goto_1
    if-eqz v2, :cond_10

    #@cd
    iget v4, p0, Landroid/content/Intent;->mContentUserHint:I

    #@cf
    if-ne v4, v7, :cond_10

    #@d1
    .line 7322
    iget v4, p1, Landroid/content/Intent;->mContentUserHint:I

    #@d3
    if-eq v4, v7, :cond_10

    #@d5
    .line 7323
    iget v4, p1, Landroid/content/Intent;->mContentUserHint:I

    #@d7
    iput v4, p0, Landroid/content/Intent;->mContentUserHint:I

    #@d9
    .line 7325
    :cond_10
    return v0

    #@da
    .line 7252
    :cond_11
    and-int/lit8 v4, p2, 0x2

    #@dc
    if-eqz v4, :cond_3

    #@de
    goto/16 :goto_0

    #@e0
    .line 7306
    :cond_12
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@e2
    if-eqz v4, :cond_f

    #@e4
    .line 7308
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    #@e6
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@e8
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@eb
    .line 7309
    .local v3, "newb":Landroid/os/Bundle;
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@ed
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@f0
    .line 7310
    iput-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@f2
    .line 7311
    const/4 v2, 0x1

    #@f3
    goto :goto_1

    #@f4
    .line 7312
    .end local v3    # "newb":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    #@f5
    .line 7318
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
    .line 7381
    if-nez p1, :cond_0

    #@3
    .line 7382
    return v2

    #@4
    .line 7384
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
    .line 7385
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
    .line 7386
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
    .line 7387
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
    .line 7388
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
    .line 7389
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
    .line 7391
    :cond_6
    const/4 v0, 0x1

    #@47
    return v0
.end method

.method public filterHashCode()I
    .locals 2

    #@0
    .prologue
    .line 7403
    const/4 v0, 0x0

    #@1
    .line 7404
    .local v0, "code":I
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 7405
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@a
    move-result v1

    #@b
    add-int/lit8 v0, v1, 0x0

    #@d
    .line 7407
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 7408
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@13
    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    #@16
    move-result v1

    #@17
    add-int/2addr v0, v1

    #@18
    .line 7410
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 7411
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@1e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@21
    move-result v1

    #@22
    add-int/2addr v0, v1

    #@23
    .line 7413
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 7414
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@2c
    move-result v1

    #@2d
    add-int/2addr v0, v1

    #@2e
    .line 7416
    :cond_3
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 7417
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@34
    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    #@37
    move-result v1

    #@38
    add-int/2addr v0, v1

    #@39
    .line 7419
    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3b
    if-eqz v1, :cond_5

    #@3d
    .line 7420
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3f
    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    #@42
    move-result v1

    #@43
    add-int/2addr v0, v1

    #@44
    .line 7422
    :cond_5
    return v0
.end method

.method public fixUris(I)V
    .locals 9
    .param p1, "contentUserHint"    # I

    #@0
    .prologue
    .line 8061
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@3
    move-result-object v1

    #@4
    .line 8062
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_0

    #@6
    .line 8063
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@9
    move-result-object v7

    #@a
    iput-object v7, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@c
    .line 8065
    :cond_0
    iget-object v7, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@e
    if-eqz v7, :cond_1

    #@10
    .line 8066
    iget-object v7, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@12
    invoke-virtual {v7, p1}, Landroid/content/ClipData;->fixUris(I)V

    #@15
    .line 8068
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 8069
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.intent.action.SEND"

    #@1c
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v7

    #@20
    if-eqz v7, :cond_3

    #@22
    .line 8070
    const-string/jumbo v7, "android.intent.extra.STREAM"

    #@25
    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Landroid/net/Uri;

    #@2b
    .line 8071
    .local v5, "stream":Landroid/net/Uri;
    if-eqz v5, :cond_2

    #@2d
    .line 8072
    const-string/jumbo v7, "android.intent.extra.STREAM"

    #@30
    invoke-static {v5, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    #@33
    move-result-object v8

    #@34
    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@37
    .line 8060
    .end local v5    # "stream":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    #@38
    .line 8074
    :cond_3
    const-string/jumbo v7, "android.intent.action.SEND_MULTIPLE"

    #@3b
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v7

    #@3f
    if-eqz v7, :cond_5

    #@41
    .line 8075
    const-string/jumbo v7, "android.intent.extra.STREAM"

    #@44
    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    #@47
    move-result-object v6

    #@48
    .line 8076
    .local v6, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v6, :cond_2

    #@4a
    .line 8077
    new-instance v3, Ljava/util/ArrayList;

    #@4c
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@4f
    .line 8078
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
    .line 8079
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
    .line 8078
    add-int/lit8 v2, v2, 0x1

    #@65
    goto :goto_1

    #@66
    .line 8081
    :cond_4
    const-string/jumbo v7, "android.intent.extra.STREAM"

    #@69
    invoke-virtual {p0, v7, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    #@6c
    goto :goto_0

    #@6d
    .line 8083
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
    .line 8084
    const-string/jumbo v7, "android.media.action.IMAGE_CAPTURE_SECURE"

    #@79
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7c
    move-result v7

    #@7d
    .line 8083
    if-nez v7, :cond_6

    #@7f
    .line 8085
    const-string/jumbo v7, "android.media.action.VIDEO_CAPTURE"

    #@82
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v7

    #@86
    .line 8083
    if-eqz v7, :cond_2

    #@88
    .line 8086
    :cond_6
    const-string/jumbo v7, "output"

    #@8b
    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8e
    move-result-object v4

    #@8f
    check-cast v4, Landroid/net/Uri;

    #@91
    .line 8087
    .local v4, "output":Landroid/net/Uri;
    if-eqz v4, :cond_2

    #@93
    .line 8088
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
    .line 4981
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
    .line 5475
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
    .line 5215
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    #@5
    .line 5216
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
    .line 5615
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
    .line 5489
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
    .line 5232
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":B
    :goto_0
    return p2

    #@5
    .line 5233
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
    .line 5121
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
    .line 5517
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
    .line 5266
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":C
    :goto_0
    return p2

    #@5
    .line 5267
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
    .line 5601
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
    .line 5461
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
    .line 5363
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
    .line 5141
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@2
    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 5731
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public getContentUserHint()I
    .locals 1

    #@0
    .prologue
    .line 5146
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@2
    return v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 4996
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
    .line 5004
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
    .line 5573
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
    .line 5334
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    #@5
    .line 5335
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
    .line 5199
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
    .line 5653
    move-object v0, p2

    #@1
    .line 5654
    .local v0, "result":Ljava/lang/Object;
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 5655
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    .line 5656
    .local v1, "result2":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@d
    .line 5657
    move-object v0, v1

    #@e
    .line 5661
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
    .line 5671
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 5672
    new-instance v0, Landroid/os/Bundle;

    #@7
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@9
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@c
    .line 5671
    :cond_0
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 5696
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
    .line 5559
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
    .line 5317
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":F
    :goto_0
    return p2

    #@5
    .line 5318
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
    .line 5633
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
    .line 5531
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
    .line 5283
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    #@5
    .line 5284
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
    .line 5433
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
    .line 5545
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
    .line 5300
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    #@5
    .line 5301
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
    .line 5716
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
    .line 5391
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
    .line 5405
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
    .line 5377
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
    .line 5020
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
    .line 5131
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
    .line 5419
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
    .line 5503
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
    .line 5249
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .end local p2    # "defaultValue":S
    :goto_0
    return p2

    #@5
    .line 5250
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
    .line 5740
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
    .line 5587
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
    .line 5447
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
    .line 5349
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
    .line 5034
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5108
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
    .line 5168
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
    .line 5176
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
    .line 8220
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
    .line 5701
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    #@2
    and-int/lit8 v0, v0, 0x30

    #@4
    .line 5702
    const/16 v1, 0x10

    #@6
    .line 5701
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
    .line 8103
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
    .line 8106
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
    .line 8108
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    .line 8109
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
    .line 8115
    const/4 v11, 0x0

    #@30
    .line 8117
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
    .line 8118
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_2

    #@3f
    .line 8119
    invoke-virtual {v9}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_4

    #@42
    move-result v11

    #@43
    .line 8124
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
    .line 8125
    .local v10, "intents":[Landroid/os/Parcelable;
    if-eqz v10, :cond_4

    #@50
    .line 8126
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
    .line 8127
    aget-object v9, v10, v8

    #@5a
    check-cast v9, Landroid/content/Intent;

    #@5c
    .line 8128
    .restart local v9    # "intent":Landroid/content/Intent;
    if-eqz v9, :cond_3

    #@5e
    .line 8129
    invoke-virtual {v9}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    #@61
    move-result v18

    #@62
    or-int v11, v11, v18

    #@64
    .line 8126
    :cond_3
    add-int/lit8 v8, v8, 0x1

    #@66
    goto :goto_1

    #@67
    .line 8133
    .end local v8    # "i":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "intents":[Landroid/os/Parcelable;
    :catch_0
    move-exception v5

    #@68
    .line 8135
    :cond_4
    return v11

    #@69
    .line 8137
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
    .line 8139
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
    .line 8140
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
    .line 8141
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
    .line 8142
    .local v6, "htmlText":Ljava/lang/String;
    if-nez v14, :cond_6

    #@99
    if-eqz v16, :cond_7

    #@9b
    .line 8143
    :cond_6
    new-instance v4, Landroid/content/ClipData;

    #@9d
    .line 8144
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
    .line 8145
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
    .line 8144
    const/16 v20, 0x0

    #@bc
    .line 8143
    move-object/from16 v0, v20

    #@be
    move-object/from16 v1, v18

    #@c0
    move-object/from16 v2, v19

    #@c2
    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@c5
    .line 8146
    .local v4, "clipData":Landroid/content/ClipData;
    move-object/from16 v0, p0

    #@c7
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@ca
    .line 8147
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
    .line 8148
    const/16 v18, 0x1

    #@d5
    return v18

    #@d6
    .line 8142
    .end local v4    # "clipData":Landroid/content/ClipData;
    :cond_7
    if-nez v6, :cond_6

    #@d8
    .line 8207
    .end local v6    # "htmlText":Ljava/lang/String;
    .end local v14    # "stream":Landroid/net/Uri;
    .end local v16    # "text":Ljava/lang/CharSequence;
    :cond_8
    :goto_2
    const/16 v18, 0x0

    #@da
    return v18

    #@db
    .line 8153
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
    .line 8155
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
    .line 8156
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
    .line 8157
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
    .line 8158
    .local v7, "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, -0x1

    #@108
    .line 8159
    .local v12, "num":I
    if-eqz v15, :cond_a

    #@10a
    .line 8160
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@10d
    move-result v12

    #@10e
    .line 8162
    :cond_a
    if-eqz v17, :cond_c

    #@110
    .line 8163
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
    .line 8165
    const/16 v18, 0x0

    #@11c
    return v18

    #@11d
    .line 8167
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    #@120
    move-result v12

    #@121
    .line 8169
    :cond_c
    if-eqz v7, :cond_e

    #@123
    .line 8170
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
    .line 8172
    const/16 v18, 0x0

    #@12f
    return v18

    #@130
    .line 8174
    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@133
    move-result v12

    #@134
    .line 8176
    :cond_e
    if-lez v12, :cond_8

    #@136
    .line 8177
    new-instance v4, Landroid/content/ClipData;

    #@138
    .line 8178
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
    .line 8179
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
    .line 8178
    const/16 v20, 0x0

    #@154
    .line 8177
    move-object/from16 v0, v20

    #@156
    move-object/from16 v1, v18

    #@158
    move-object/from16 v2, v19

    #@15a
    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    #@15d
    .line 8181
    .restart local v4    # "clipData":Landroid/content/ClipData;
    const/4 v8, 0x1

    #@15e
    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v12, :cond_f

    #@160
    .line 8182
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
    .line 8181
    add-int/lit8 v8, v8, 0x1

    #@16d
    goto :goto_3

    #@16e
    .line 8185
    :cond_f
    move-object/from16 v0, p0

    #@170
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    #@173
    .line 8186
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
    .line 8187
    const/16 v18, 0x1

    #@17e
    return v18

    #@17f
    .line 8191
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
    .line 8192
    const-string/jumbo v18, "android.media.action.IMAGE_CAPTURE_SECURE"

    #@18d
    move-object/from16 v0, v18

    #@18f
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@192
    move-result v18

    #@193
    .line 8191
    if-nez v18, :cond_11

    #@195
    .line 8193
    const-string/jumbo v18, "android.media.action.VIDEO_CAPTURE"

    #@198
    move-object/from16 v0, v18

    #@19a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19d
    move-result v18

    #@19e
    .line 8191
    if-eqz v18, :cond_8

    #@1a0
    .line 8196
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
    .line 8200
    .local v13, "output":Landroid/net/Uri;
    if-eqz v13, :cond_8

    #@1af
    .line 8201
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
    .line 8202
    const/16 v18, 0x3

    #@1c1
    move-object/from16 v0, p0

    #@1c3
    move/from16 v1, v18

    #@1c5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1c8
    .line 8203
    const/16 v18, 0x1

    #@1ca
    return v18

    #@1cb
    .line 8197
    .end local v13    # "output":Landroid/net/Uri;
    :catch_1
    move-exception v5

    #@1cc
    .line 8198
    .local v5, "e":Ljava/lang/ClassCastException;
    const/16 v18, 0x0

    #@1ce
    return v18

    #@1cf
    .line 8189
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v5

    #@1d0
    .restart local v5    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_2

    #@1d2
    .line 8150
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_3
    move-exception v5

    #@1d3
    .restart local v5    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_2

    #@1d5
    .line 8121
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
    .line 8049
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@3
    if-eq v0, v2, :cond_0

    #@5
    .line 8050
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@8
    move-result v0

    #@9
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    #@c
    move-result v0

    #@d
    const/16 v1, 0x3e8

    #@f
    if-eq v0, v1, :cond_0

    #@11
    .line 8051
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@13
    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    #@16
    .line 8052
    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    #@18
    .line 8048
    :cond_0
    return-void
.end method

.method public prepareToLeaveProcess()V
    .locals 2

    #@0
    .prologue
    .line 8025
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    #@4
    .line 8027
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 8028
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@a
    invoke-virtual {v0}, Landroid/content/Intent;->prepareToLeaveProcess()V

    #@d
    .line 8030
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 8031
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@13
    invoke-virtual {v0}, Landroid/content/ClipData;->prepareToLeaveProcess()V

    #@16
    .line 8034
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@18
    if-eqz v0, :cond_3

    #@1a
    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_3

    #@20
    .line 8037
    const-string/jumbo v0, "android.intent.action.VIEW"

    #@23
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_2

    #@2b
    .line 8038
    const-string/jumbo v0, "android.intent.action.EDIT"

    #@2e
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    .line 8037
    if-nez v0, :cond_2

    #@36
    .line 8039
    const-string/jumbo v0, "android.intent.action.ATTACH_DATA"

    #@39
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    .line 8037
    if-eqz v0, :cond_3

    #@41
    .line 8040
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@43
    const-string/jumbo v1, "Intent.getData()"

    #@46
    invoke-virtual {v0, v1}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    #@49
    .line 8024
    :cond_3
    return-void
.end method

.method public prepareToLeaveUser(I)V
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 6186
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@2
    const/4 v1, -0x2

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 6187
    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    #@7
    .line 6183
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
    .line 6552
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6553
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6555
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@10
    .line 6556
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    #@0
    .prologue
    .line 6230
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6231
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6233
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    #@10
    .line 6234
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    #@0
    .prologue
    .line 6253
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6254
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6256
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    #@10
    .line 6257
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    #@0
    .prologue
    .line 6368
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6369
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6371
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    #@10
    .line 6372
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 6345
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6346
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6348
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@10
    .line 6349
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 6299
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6300
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6302
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@10
    .line 6303
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 6322
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6323
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6325
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@10
    .line 6326
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 6828
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6829
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6831
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@10
    .line 6832
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
    .line 6855
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6856
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6858
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    #@10
    .line 6859
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 6437
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6438
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6440
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@10
    .line 6441
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    #@0
    .prologue
    .line 6575
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6576
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6578
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    #@10
    .line 6579
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 6414
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6415
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6417
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@10
    .line 6418
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6391
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6392
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6394
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    .line 6395
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    #@0
    .prologue
    .line 6276
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6277
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6279
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    #@10
    .line 6280
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 6207
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6208
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6210
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@10
    .line 6211
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 6621
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6622
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6624
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    #@10
    .line 6625
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [C

    #@0
    .prologue
    .line 6667
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6668
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6670
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    #@10
    .line 6671
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D

    #@0
    .prologue
    .line 6759
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6760
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6762
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    #@10
    .line 6763
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F

    #@0
    .prologue
    .line 6736
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6737
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6739
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    #@10
    .line 6740
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [I

    #@0
    .prologue
    .line 6690
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6691
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6693
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    #@10
    .line 6694
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    #@0
    .prologue
    .line 6713
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6714
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6716
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    #@10
    .line 6717
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    #@0
    .prologue
    .line 6460
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6461
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6463
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@10
    .line 6464
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 6805
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6806
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6808
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    #@10
    .line 6809
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 6782
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6783
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6785
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@10
    .line 6786
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [S

    #@0
    .prologue
    .line 6644
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6645
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6647
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    #@10
    .line 6648
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    #@0
    .prologue
    .line 6598
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6599
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6601
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    #@10
    .line 6602
    return-object p0
.end method

.method public putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "src"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 6870
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 6871
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 6872
    new-instance v0, Landroid/os/Bundle;

    #@a
    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@c
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@f
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@11
    .line 6877
    :cond_0
    :goto_0
    return-object p0

    #@12
    .line 6874
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
    .line 6891
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6892
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6894
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@10
    .line 6895
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
    .line 6506
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6507
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6509
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@10
    .line 6510
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
    .line 6483
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6484
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6486
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@10
    .line 6487
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
    .line 6529
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 6530
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@b
    .line 6532
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@d
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@10
    .line 6533
    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 7807
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@7
    .line 7808
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
    .line 7809
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    iput-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@17
    .line 7810
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v2

    #@1b
    iput v2, p0, Landroid/content/Intent;->mFlags:I

    #@1d
    .line 7811
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    iput-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@23
    .line 7812
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@29
    .line 7814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    .line 7815
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
    .line 7818
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3c
    move-result v0

    #@3d
    .line 7819
    .local v0, "N":I
    if-lez v0, :cond_1

    #@3f
    .line 7820
    new-instance v2, Landroid/util/ArraySet;

    #@41
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@44
    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@46
    .line 7822
    const/4 v1, 0x0

    #@47
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    #@49
    .line 7823
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
    .line 7822
    add-int/lit8 v1, v1, 0x1

    #@58
    goto :goto_0

    #@59
    .line 7826
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    #@5a
    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@5c
    .line 7829
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v2

    #@60
    if-eqz v2, :cond_3

    #@62
    .line 7830
    new-instance v2, Landroid/content/Intent;

    #@64
    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    #@67
    iput-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@69
    .line 7833
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6c
    move-result v2

    #@6d
    if-eqz v2, :cond_4

    #@6f
    .line 7834
    new-instance v2, Landroid/content/ClipData;

    #@71
    invoke-direct {v2, p1}, Landroid/content/ClipData;-><init>(Landroid/os/Parcel;)V

    #@74
    iput-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@76
    .line 7836
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@79
    move-result v2

    #@7a
    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    #@7c
    .line 7837
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    #@7f
    move-result-object v2

    #@80
    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@82
    .line 7806
    return-void
.end method

.method public removeCategory(Ljava/lang/String;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 6095
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 6096
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@a
    .line 6097
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@c
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 6098
    iput-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@14
    .line 6094
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
    .line 6928
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 6929
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@7
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@a
    .line 6930
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@c
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    #@f
    move-result v0

    #@10
    if-nez v0, :cond_0

    #@12
    .line 6931
    iput-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@14
    .line 6927
    :cond_0
    return-void
.end method

.method public removeUnsafeExtras()V
    .locals 1

    #@0
    .prologue
    .line 5681
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5682
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0}, Landroid/os/Bundle;->filterValues()V

    #@9
    .line 5680
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
    .line 6906
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
    .line 6907
    return-object p0
.end method

.method public replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 6918
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Landroid/os/Bundle;

    #@5
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@8
    :cond_0
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@a
    .line 6919
    return-object p0
.end method

.method public resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5791
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 5792
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    return-object v1

    #@8
    .line 5796
    :cond_0
    const/high16 v1, 0x10000

    #@a
    .line 5795
    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@d
    move-result-object v0

    #@e
    .line 5797
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    #@10
    .line 5798
    new-instance v1, Landroid/content/ComponentName;

    #@12
    .line 5799
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@14
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@18
    .line 5800
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1a
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@1c
    .line 5798
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@1f
    return-object v1

    #@20
    .line 5803
    :cond_1
    return-object v2
.end method

.method public resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 5823
    const/4 v0, 0x0

    #@1
    .line 5824
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@3
    if-eqz v3, :cond_1

    #@5
    .line 5826
    :try_start_0
    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    invoke-virtual {p1, v3, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v0

    #@b
    .line 5838
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-object v0

    #@c
    .line 5832
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    const/high16 v3, 0x10000

    #@e
    or-int/2addr v3, p2

    #@f
    .line 5831
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@12
    move-result-object v2

    #@13
    .line 5833
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    #@15
    .line 5834
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@17
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    #@18
    .line 5827
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
    .line 5849
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@3
    if-eqz v5, :cond_0

    #@5
    .line 5850
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    return-object v5

    #@8
    .line 5853
    :cond_0
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@b
    move-result-object v3

    #@c
    .line 5854
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v3, :cond_1

    #@e
    .line 5855
    return-object v6

    #@f
    .line 5857
    :cond_1
    const/4 v0, 0x0

    #@10
    .line 5858
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
    .line 5859
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Landroid/content/pm/ResolveInfo;

    #@1d
    .line 5860
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
    .line 5858
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 5863
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    #@2c
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@2e
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@30
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@32
    .line 5864
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@34
    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@36
    .line 5863
    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 5865
    .local v1, "foundComp":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    #@3b
    .line 5866
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
    .line 5867
    const-string/jumbo v7, ": "

    #@50
    .line 5866
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v6

    #@54
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    .line 5867
    const-string/jumbo v7, ", "

    #@5b
    .line 5866
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
    .line 5869
    :cond_3
    move-object v0, v1

    #@6c
    .local v0, "comp":Landroid/content/ComponentName;
    goto :goto_1

    #@6d
    .line 5871
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
    .line 5067
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 5068
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@7
    return-object v0

    #@8
    .line 5070
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 5071
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
    .line 5072
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@1d
    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 5075
    :cond_1
    return-object v2
.end method

.method public resolveType(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 5049
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
    .line 5091
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5092
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 5094
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
    .line 7916
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 7917
    const-string/jumbo v1, "action"

    #@8
    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@a
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 7919
    :cond_0
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 7920
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
    .line 7922
    :cond_1
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@1f
    if-eqz v1, :cond_2

    #@21
    .line 7923
    const-string/jumbo v1, "type"

    #@24
    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@26
    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@29
    .line 7925
    :cond_2
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 7926
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
    .line 7928
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
    .line 7930
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@49
    if-eqz v1, :cond_5

    #@4b
    .line 7931
    const-string/jumbo v1, "categories"

    #@4e
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@51
    .line 7932
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
    .line 7933
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
    .line 7932
    add-int/lit8 v0, v0, -0x1

    #@6b
    goto :goto_0

    #@6c
    .line 7935
    :cond_4
    const-string/jumbo v1, "categories"

    #@6f
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@72
    .line 7915
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
    .line 5886
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    :cond_0
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@9
    .line 5887
    return-object p0
.end method

.method public setAllowFds(Z)V
    .locals 1
    .param p1, "allowFds"    # Z

    #@0
    .prologue
    .line 5181
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5182
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    #@9
    .line 5180
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
    .line 7112
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    #@5
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    .line 7113
    return-object p0
.end method

.method public setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7073
    new-instance v0, Landroid/content/ComponentName;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@5
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    .line 7074
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7093
    new-instance v0, Landroid/content/ComponentName;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@7
    .line 7094
    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .locals 0
    .param p1, "clip"    # Landroid/content/ClipData;

    #@0
    .prologue
    .line 6174
    iput-object p1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@2
    .line 6173
    return-void
.end method

.method public setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 7053
    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@2
    .line 7054
    return-object p0
.end method

.method public setData(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 5912
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@2
    .line 5913
    const/4 v0, 0x0

    #@3
    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@5
    .line 5914
    return-object p0
.end method

.method public setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "data"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 5940
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
    .line 6029
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@2
    .line 6030
    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@4
    .line 6031
    return-object p0
.end method

.method public setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6060
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

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 5157
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 5158
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@6
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@9
    .line 5156
    :cond_0
    return-void
.end method

.method public setFlags(I)Landroid/content/Intent;
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 6984
    iput p1, p0, Landroid/content/Intent;->mFlags:I

    #@2
    .line 6985
    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 7021
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 7022
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    .line 7023
    const-string/jumbo v1, "Can\'t set package name when selector is already set"

    #@b
    .line 7022
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 7025
    :cond_0
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@11
    .line 7026
    return-object p0
.end method

.method public setSelector(Landroid/content/Intent;)V
    .locals 2
    .param p1, "selector"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 6135
    if-ne p1, p0, :cond_0

    #@2
    .line 6136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 6137
    const-string/jumbo v1, "Intent being set as a selector of itself"

    #@7
    .line 6136
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 6139
    :cond_0
    if-eqz p1, :cond_1

    #@d
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 6140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    .line 6141
    const-string/jumbo v1, "Can\'t set selector when package name is already set"

    #@16
    .line 6140
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 6143
    :cond_1
    iput-object p1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@1c
    .line 6134
    return-void
.end method

.method public setSourceBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 7122
    if-eqz p1, :cond_0

    #@3
    .line 7123
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@8
    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@a
    .line 7121
    :goto_0
    return-void

    #@b
    .line 7125
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
    .line 5969
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@3
    .line 5970
    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@5
    .line 5971
    return-object p0
.end method

.method public setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 6000
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
    .line 7438
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    const/16 v0, 0x80

    #@6
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    .line 7440
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
    .line 7441
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@15
    .line 7442
    const-string/jumbo v0, " }"

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 7444
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
    .line 7449
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    const/16 v0, 0x80

    #@5
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 7451
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "Intent { "

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 7452
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
    .line 7453
    const-string/jumbo v0, " }"

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 7455
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
    .line 7460
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
    .line 7461
    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    #@f
    .line 7462
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
    .line 7468
    const/4 v6, 0x1

    #@3
    .line 7469
    .local v6, "first":Z
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 7470
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
    .line 7471
    const/4 v6, 0x0

    #@14
    .line 7473
    :cond_0
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@16
    if-eqz v0, :cond_4

    #@18
    .line 7474
    if-nez v6, :cond_1

    #@1a
    .line 7475
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 7477
    :cond_1
    const/4 v6, 0x0

    #@1e
    .line 7478
    const-string/jumbo v0, "cat=["

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 7479
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
    .line 7480
    if-lez v7, :cond_2

    #@2f
    const/16 v0, 0x2c

    #@31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 7481
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
    .line 7479
    add-int/lit8 v7, v7, 0x1

    #@41
    goto :goto_0

    #@42
    .line 7483
    :cond_3
    const-string/jumbo v0, "]"

    #@45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    .line 7485
    .end local v7    # "i":I
    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@4a
    if-eqz v0, :cond_6

    #@4c
    .line 7486
    if-nez v6, :cond_5

    #@4e
    .line 7487
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@51
    .line 7489
    :cond_5
    const/4 v6, 0x0

    #@52
    .line 7490
    const-string/jumbo v0, "dat="

    #@55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 7491
    if-eqz p2, :cond_18

    #@5a
    .line 7492
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@5c
    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    .line 7497
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@65
    if-eqz v0, :cond_8

    #@67
    .line 7498
    if-nez v6, :cond_7

    #@69
    .line 7499
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    .line 7501
    :cond_7
    const/4 v6, 0x0

    #@6d
    .line 7502
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
    .line 7504
    :cond_8
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    #@7b
    if-eqz v0, :cond_a

    #@7d
    .line 7505
    if-nez v6, :cond_9

    #@7f
    .line 7506
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@82
    .line 7508
    :cond_9
    const/4 v6, 0x0

    #@83
    .line 7509
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
    .line 7511
    :cond_a
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@95
    if-eqz v0, :cond_c

    #@97
    .line 7512
    if-nez v6, :cond_b

    #@99
    .line 7513
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9c
    .line 7515
    :cond_b
    const/4 v6, 0x0

    #@9d
    .line 7516
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
    .line 7518
    :cond_c
    if-eqz p3, :cond_e

    #@ab
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@ad
    if-eqz v0, :cond_e

    #@af
    .line 7519
    if-nez v6, :cond_d

    #@b1
    .line 7520
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b4
    .line 7522
    :cond_d
    const/4 v6, 0x0

    #@b5
    .line 7523
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
    .line 7525
    :cond_e
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@c7
    if-eqz v0, :cond_10

    #@c9
    .line 7526
    if-nez v6, :cond_f

    #@cb
    .line 7527
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ce
    .line 7529
    :cond_f
    const/4 v6, 0x0

    #@cf
    .line 7530
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
    .line 7532
    :cond_10
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@e1
    if-eqz v0, :cond_12

    #@e3
    .line 7533
    if-nez v6, :cond_11

    #@e5
    .line 7534
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e8
    .line 7536
    :cond_11
    const/4 v6, 0x0

    #@e9
    .line 7537
    if-eqz p5, :cond_19

    #@eb
    .line 7538
    const-string/jumbo v0, "clip={"

    #@ee
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    .line 7539
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@f3
    invoke-virtual {v0, p1}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    #@f6
    .line 7540
    const/16 v0, 0x7d

    #@f8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fb
    .line 7545
    :cond_12
    :goto_2
    if-eqz p4, :cond_14

    #@fd
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@ff
    if-eqz v0, :cond_14

    #@101
    .line 7546
    if-nez v6, :cond_13

    #@103
    .line 7547
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@106
    .line 7549
    :cond_13
    const/4 v6, 0x0

    #@107
    .line 7550
    const-string/jumbo v0, "(has extras)"

    #@10a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    .line 7552
    :cond_14
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    #@10f
    const/4 v1, -0x2

    #@110
    if-eq v0, v1, :cond_16

    #@112
    .line 7553
    if-nez v6, :cond_15

    #@114
    .line 7554
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@117
    .line 7556
    :cond_15
    const/4 v6, 0x0

    #@118
    .line 7557
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
    .line 7559
    :cond_16
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@126
    if-eqz v0, :cond_17

    #@128
    .line 7560
    const-string/jumbo v0, " sel="

    #@12b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    .line 7561
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
    .line 7562
    const-string/jumbo v0, "}"

    #@13b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    .line 7467
    :cond_17
    return-void

    #@13f
    .line 7494
    :cond_18
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@141
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@144
    goto/16 :goto_1

    #@146
    .line 7542
    :cond_19
    const-string/jumbo v0, "(has clip)"

    #@149
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 7427
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    const/16 v0, 0x80

    #@5
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 7429
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v0, "Intent { "

    #@b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 7430
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
    .line 7431
    const-string/jumbo v0, " }"

    #@18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 7433
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
    .line 7572
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
    .line 7592
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v0, 0x80

    #@4
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 7593
    .local v1, "uri":Ljava/lang/StringBuilder;
    and-int/lit8 v0, p1, 0x2

    #@9
    if-eqz v0, :cond_5

    #@b
    .line 7594
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 7595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    .line 7596
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
    .line 7595
    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 7599
    :cond_0
    const-string/jumbo v0, "android-app://"

    #@2c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 7600
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 7601
    const/4 v2, 0x0

    #@35
    .line 7602
    .local v2, "scheme":Ljava/lang/String;
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@37
    if-eqz v0, :cond_3

    #@39
    .line 7603
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@3b
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 7604
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_3

    #@41
    .line 7605
    const/16 v0, 0x2f

    #@43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    .line 7606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    .line 7607
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@4b
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    #@4e
    move-result-object v7

    #@4f
    .line 7608
    .local v7, "authority":Ljava/lang/String;
    if-eqz v7, :cond_3

    #@51
    .line 7609
    const/16 v0, 0x2f

    #@53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    .line 7610
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 7611
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@5b
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    #@5e
    move-result-object v12

    #@5f
    .line 7612
    .local v12, "path":Ljava/lang/String;
    if-eqz v12, :cond_1

    #@61
    .line 7613
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    .line 7615
    :cond_1
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@66
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    #@69
    move-result-object v13

    #@6a
    .line 7616
    .local v13, "queryParams":Ljava/lang/String;
    if-eqz v13, :cond_2

    #@6c
    .line 7617
    const/16 v0, 0x3f

    #@6e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@71
    .line 7618
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    .line 7620
    :cond_2
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@76
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    #@79
    move-result-object v10

    #@7a
    .line 7621
    .local v10, "fragment":Ljava/lang/String;
    if-eqz v10, :cond_3

    #@7c
    .line 7622
    const/16 v0, 0x23

    #@7e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@81
    .line 7623
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    .line 7628
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
    .line 7629
    :goto_0
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@8b
    .line 7628
    const/4 v2, 0x0

    #@8c
    move-object v0, p0

    #@8d
    move v5, p1

    #@8e
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@91
    .line 7630
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v0

    #@95
    return-object v0

    #@96
    .line 7628
    :cond_4
    const-string/jumbo v3, "android.intent.action.VIEW"

    #@99
    goto :goto_0

    #@9a
    .line 7632
    :cond_5
    const/4 v2, 0x0

    #@9b
    .line 7633
    .local v2, "scheme":Ljava/lang/String;
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@9d
    if-eqz v0, :cond_b

    #@9f
    .line 7634
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@a1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@a4
    move-result-object v9

    #@a5
    .line 7635
    .local v9, "data":Ljava/lang/String;
    and-int/lit8 v0, p1, 0x1

    #@a7
    if-eqz v0, :cond_9

    #@a9
    .line 7636
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    #@ac
    move-result v6

    #@ad
    .line 7637
    .local v6, "N":I
    const/4 v11, 0x0

    #@ae
    .local v11, "i":I
    :goto_1
    if-ge v11, v6, :cond_9

    #@b0
    .line 7638
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    #@b3
    move-result v8

    #@b4
    .line 7639
    .local v8, "c":C
    const/16 v0, 0x61

    #@b6
    if-lt v8, v0, :cond_7

    #@b8
    const/16 v0, 0x7a

    #@ba
    if-gt v8, v0, :cond_7

    #@bc
    .line 7637
    :cond_6
    add-int/lit8 v11, v11, 0x1

    #@be
    goto :goto_1

    #@bf
    .line 7639
    :cond_7
    const/16 v0, 0x41

    #@c1
    if-lt v8, v0, :cond_8

    #@c3
    const/16 v0, 0x5a

    #@c5
    if-le v8, v0, :cond_6

    #@c7
    .line 7640
    :cond_8
    const/16 v0, 0x2e

    #@c9
    if-eq v8, v0, :cond_6

    #@cb
    const/16 v0, 0x2d

    #@cd
    if-eq v8, v0, :cond_6

    #@cf
    .line 7643
    const/16 v0, 0x3a

    #@d1
    if-ne v8, v0, :cond_9

    #@d3
    if-lez v11, :cond_9

    #@d5
    .line 7645
    const/4 v0, 0x0

    #@d6
    invoke-virtual {v9, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d9
    move-result-object v2

    #@da
    .line 7646
    .local v2, "scheme":Ljava/lang/String;
    const-string/jumbo v0, "intent:"

    #@dd
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    .line 7647
    add-int/lit8 v0, v11, 0x1

    #@e2
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@e5
    move-result-object v9

    #@e6
    .line 7655
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v6    # "N":I
    .end local v8    # "c":C
    .end local v11    # "i":I
    :cond_9
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    .line 7661
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
    .line 7663
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v0

    #@f6
    return-object v0

    #@f7
    .line 7657
    .local v2, "scheme":Ljava/lang/String;
    :cond_b
    and-int/lit8 v0, p1, 0x1

    #@f9
    if-eqz v0, :cond_a

    #@fb
    .line 7658
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
    .line 7750
    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 7751
    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    #@9
    invoke-static {p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    #@c
    .line 7752
    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 7753
    iget v2, p0, Landroid/content/Intent;->mFlags:I

    #@13
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 7754
    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 7755
    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    #@1d
    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    #@20
    .line 7757
    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@22
    if-eqz v2, :cond_0

    #@24
    .line 7758
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 7759
    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    #@29
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    #@2c
    .line 7764
    :goto_0
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@2e
    if-eqz v2, :cond_1

    #@30
    .line 7765
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    #@32
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@35
    move-result v0

    #@36
    .line 7766
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@39
    .line 7767
    const/4 v1, 0x0

    #@3a
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    #@3c
    .line 7768
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
    .line 7767
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 7761
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@4d
    goto :goto_0

    #@4e
    .line 7771
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@51
    .line 7774
    :cond_2
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@53
    if-eqz v2, :cond_3

    #@55
    .line 7775
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    .line 7776
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    #@5a
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@5d
    .line 7781
    :goto_2
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@5f
    if-eqz v2, :cond_4

    #@61
    .line 7782
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@64
    .line 7783
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    #@66
    invoke-virtual {v2, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    #@69
    .line 7787
    :goto_3
    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    #@6b
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@6e
    .line 7788
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    #@70
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    #@73
    .line 7749
    return-void

    #@74
    .line 7778
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@77
    goto :goto_2

    #@78
    .line 7785
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7b
    goto :goto_3
.end method
