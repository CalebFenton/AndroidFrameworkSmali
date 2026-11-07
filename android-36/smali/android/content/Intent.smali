.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$CreatorTokenInfo;,
        Landroid/content/Intent$CommandOptionHandler;,
        Landroid/content/Intent$NestedIntentKey;,
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$FillInFlags;,
        Landroid/content/Intent$CopyMode;,
        Landroid/content/Intent$UriFlags;,
        Landroid/content/Intent$ExtendedFlags;,
        Landroid/content/Intent$MutableFlags;,
        Landroid/content/Intent$Flags;,
        Landroid/content/Intent$AccessUriMode;,
        Landroid/content/Intent$GrantUriMode;,
        Landroid/content/Intent$ChooserContentType;,
        Landroid/content/Intent$CaptureContentForNoteStatusCodes;,
        Landroid/content/Intent$ShortcutIconResource;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ACTIVITY_RECOGNIZER:Ljava/lang/String; = "android.intent.action.ACTIVITY_RECOGNIZER"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String; = "android.intent.action.ADVANCED_SETTINGS"

.field public static final whitelist ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final greylist-max-r ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final whitelist ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final whitelist ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

.field public static final whitelist ACTION_APPLICATION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_LOCALE_CHANGED"

.field public static final whitelist ACTION_APPLICATION_PREFERENCES:Ljava/lang/String; = "android.intent.action.APPLICATION_PREFERENCES"

.field public static final whitelist ACTION_APPLICATION_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

.field public static final whitelist ACTION_APP_ERROR:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field public static final whitelist ACTION_ASSIST:Ljava/lang/String; = "android.intent.action.ASSIST"

.field public static final whitelist ACTION_ATTACH_DATA:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final whitelist ACTION_AUTO_REVOKE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.AUTO_REVOKE_PERMISSIONS"

.field public static final whitelist ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field public static final whitelist ACTION_BATTERY_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_LEVEL_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field public static final whitelist ACTION_BATTERY_OKAY:Ljava/lang/String; = "android.intent.action.BATTERY_OKAY"

.field public static final whitelist ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final whitelist ACTION_BUG_REPORT:Ljava/lang/String; = "android.intent.action.BUG_REPORT"

.field public static final whitelist ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final whitelist ACTION_CALL_BUTTON:Ljava/lang/String; = "android.intent.action.CALL_BUTTON"

.field public static final whitelist ACTION_CALL_EMERGENCY:Ljava/lang/String; = "android.intent.action.CALL_EMERGENCY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_CAMERA_BUTTON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON"

.field public static final blacklist ACTION_CANCEL_ENABLE_ROLLBACK:Ljava/lang/String; = "android.intent.action.CANCEL_ENABLE_ROLLBACK"

.field public static final whitelist ACTION_CARRIER_SETUP:Ljava/lang/String; = "android.intent.action.CARRIER_SETUP"

.field public static final whitelist ACTION_CHOOSER:Ljava/lang/String; = "android.intent.action.CHOOSER"

.field public static final whitelist ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final whitelist ACTION_CREATE_DOCUMENT:Ljava/lang/String; = "android.intent.action.CREATE_DOCUMENT"

.field public static final whitelist ACTION_CREATE_NOTE:Ljava/lang/String; = "android.intent.action.CREATE_NOTE"

.field public static final whitelist ACTION_CREATE_REMINDER:Ljava/lang/String; = "android.intent.action.CREATE_REMINDER"

.field public static final whitelist ACTION_CREATE_SHORTCUT:Ljava/lang/String; = "android.intent.action.CREATE_SHORTCUT"

.field public static final whitelist ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field public static final whitelist ACTION_DEFAULT:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final whitelist ACTION_DEFINE:Ljava/lang/String; = "android.intent.action.DEFINE"

.field public static final whitelist ACTION_DELETE:Ljava/lang/String; = "android.intent.action.DELETE"

.field public static final whitelist ACTION_DEVICE_CUSTOMIZATION_READY:Ljava/lang/String; = "android.intent.action.DEVICE_CUSTOMIZATION_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist ACTION_DEVICE_INITIALIZATION_WIZARD:Ljava/lang/String; = "android.intent.action.DEVICE_INITIALIZATION_WIZARD"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DEVICE_LOCKED_CHANGED:Ljava/lang/String; = "android.intent.action.DEVICE_LOCKED_CHANGED"

.field public static final greylist-max-o ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_DIAL:Ljava/lang/String; = "android.intent.action.DIAL"

.field public static final whitelist ACTION_DIAL_EMERGENCY:Ljava/lang/String; = "android.intent.action.DIAL_EMERGENCY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_DISMISS_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

.field public static final blacklist ACTION_DISTRACTING_PACKAGES_CHANGED:Ljava/lang/String; = "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

.field public static final greylist-max-o ACTION_DOCK_ACTIVE:Ljava/lang/String; = "android.intent.action.DOCK_ACTIVE"

.field public static final whitelist ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final greylist-max-o ACTION_DOCK_IDLE:Ljava/lang/String; = "android.intent.action.DOCK_IDLE"

.field public static final whitelist ACTION_DOMAINS_NEED_VERIFICATION:Ljava/lang/String; = "android.intent.action.DOMAINS_NEED_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_DREAMING_STARTED:Ljava/lang/String; = "android.intent.action.DREAMING_STARTED"

.field public static final whitelist ACTION_DREAMING_STOPPED:Ljava/lang/String; = "android.intent.action.DREAMING_STOPPED"

.field public static final greylist-max-o ACTION_DYNAMIC_SENSOR_CHANGED:Ljava/lang/String; = "android.intent.action.DYNAMIC_SENSOR_CHANGED"

.field public static final whitelist ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final whitelist ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final whitelist ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final whitelist ACTION_FACTORY_RESET:Ljava/lang/String; = "android.intent.action.FACTORY_RESET"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final whitelist ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final whitelist ACTION_GET_RESTRICTION_ENTRIES:Ljava/lang/String; = "android.intent.action.GET_RESTRICTION_ENTRIES"

.field public static final whitelist ACTION_GLOBAL_BUTTON:Ljava/lang/String; = "android.intent.action.GLOBAL_BUTTON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_GTALK_SERVICE_CONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_CONNECTED"

.field public static final whitelist ACTION_GTALK_SERVICE_DISCONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_DISCONNECTED"

.field public static final whitelist ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final greylist-max-o ACTION_IDLE_MAINTENANCE_END:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

.field public static final greylist-max-o ACTION_IDLE_MAINTENANCE_START:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

.field public static final whitelist ACTION_INCIDENT_REPORT_READY:Ljava/lang/String; = "android.intent.action.INCIDENT_REPORT_READY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INPUT_METHOD_CHANGED:Ljava/lang/String; = "android.intent.action.INPUT_METHOD_CHANGED"

.field public static final whitelist ACTION_INSERT:Ljava/lang/String; = "android.intent.action.INSERT"

.field public static final whitelist ACTION_INSERT_OR_EDIT:Ljava/lang/String; = "android.intent.action.INSERT_OR_EDIT"

.field public static final whitelist ACTION_INSTALL_FAILURE:Ljava/lang/String; = "android.intent.action.INSTALL_FAILURE"

.field public static final whitelist ACTION_INSTALL_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_PACKAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_INSTANT_APP_RESOLVER_SETTINGS:Ljava/lang/String; = "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_INTENT_FILTER_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_LAUNCH_CAPTURE_CONTENT_ACTIVITY_FOR_NOTE:Ljava/lang/String; = "android.intent.action.LAUNCH_CAPTURE_CONTENT_ACTIVITY_FOR_NOTE"

.field public static final whitelist ACTION_LOAD_DATA:Ljava/lang/String; = "android.intent.action.LOAD_DATA"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final whitelist ACTION_LOCKED_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.LOCKED_BOOT_COMPLETED"

.field public static final whitelist ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final whitelist ACTION_MAIN_USER_LOCKSCREEN_KNOWLEDGE_FACTOR_CHANGED:Ljava/lang/String; = "android.intent.action.MAIN_USER_LOCKSCREEN_KNOWLEDGE_FACTOR_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final whitelist ACTION_MANAGED_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_AVAILABLE"

.field public static final whitelist ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final whitelist ACTION_MANAGED_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

.field public static final whitelist ACTION_MANAGED_PROFILE_UNLOCKED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNLOCKED"

.field public static final whitelist ACTION_MANAGE_APP_PERMISSION:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_DEFAULT_APP:Ljava/lang/String; = "android.intent.action.MANAGE_DEFAULT_APP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_NETWORK_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_NETWORK_USAGE"

.field public static final whitelist ACTION_MANAGE_PACKAGE_STORAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PACKAGE_STORAGE"

.field public static final whitelist ACTION_MANAGE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_PERMISSION_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSION_APPS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_SPECIAL_APP_ACCESSES:Ljava/lang/String; = "android.intent.action.MANAGE_SPECIAL_APP_ACCESSES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MANAGE_UNUSED_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_UNUSED_APPS"

.field public static final greylist ACTION_MASTER_CLEAR:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_MEDIA_BAD_REMOVAL:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field public static final whitelist ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field public static final whitelist ACTION_MEDIA_CHECKING:Ljava/lang/String; = "android.intent.action.MEDIA_CHECKING"

.field public static final whitelist ACTION_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field public static final whitelist ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field public static final whitelist ACTION_MEDIA_NOFS:Ljava/lang/String; = "android.intent.action.MEDIA_NOFS"

.field public static final whitelist ACTION_MEDIA_REMOVED:Ljava/lang/String; = "android.intent.action.MEDIA_REMOVED"

.field public static final greylist-max-o ACTION_MEDIA_RESOURCE_GRANTED:Ljava/lang/String; = "android.intent.action.MEDIA_RESOURCE_GRANTED"

.field public static final whitelist ACTION_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field public static final whitelist ACTION_MEDIA_SCANNER_SCAN_FILE:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_STARTED"

.field public static final whitelist ACTION_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_SHARED"

.field public static final whitelist ACTION_MEDIA_UNMOUNTABLE:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTABLE"

.field public static final whitelist ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field public static final greylist-max-o ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field public static final whitelist ACTION_MY_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_REPLACED"

.field public static final whitelist ACTION_MY_PACKAGE_SUSPENDED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_SUSPENDED"

.field public static final whitelist ACTION_MY_PACKAGE_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_UNSUSPENDED"

.field public static final whitelist ACTION_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_OPEN_DOCUMENT:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT"

.field public static final whitelist ACTION_OPEN_DOCUMENT_TREE:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT_TREE"

.field public static final greylist-max-o ACTION_OVERLAY_CHANGED:Ljava/lang/String; = "android.intent.action.OVERLAY_CHANGED"

.field public static final whitelist ACTION_PACKAGES_SUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENDED"

.field public static final blacklist ACTION_PACKAGES_SUSPENSION_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

.field public static final whitelist ACTION_PACKAGES_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_UNSUSPENDED"

.field public static final whitelist ACTION_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final whitelist ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field public static final whitelist ACTION_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "android.intent.action.PACKAGE_DATA_CLEARED"

.field public static final blacklist ACTION_PACKAGE_ENABLE_ROLLBACK:Ljava/lang/String; = "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

.field public static final whitelist ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "android.intent.action.PACKAGE_FIRST_LAUNCH"

.field public static final whitelist ACTION_PACKAGE_FULLY_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final whitelist ACTION_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_PACKAGE_NEEDS_INTEGRITY_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PACKAGE_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

.field public static final whitelist ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final blacklist ACTION_PACKAGE_REMOVED_INTERNAL:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED_INTERNAL"

.field public static final whitelist ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final whitelist ACTION_PACKAGE_RESTARTED:Ljava/lang/String; = "android.intent.action.PACKAGE_RESTARTED"

.field public static final whitelist ACTION_PACKAGE_UNSTOPPED:Ljava/lang/String; = "android.intent.action.PACKAGE_UNSTOPPED"

.field public static final whitelist ACTION_PACKAGE_UNSUSPENDED_MANUALLY:Ljava/lang/String; = "android.intent.action.PACKAGE_UNSUSPENDED_MANUALLY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PACKAGE_VERIFIED:Ljava/lang/String; = "android.intent.action.PACKAGE_VERIFIED"

.field public static final whitelist ACTION_PASTE:Ljava/lang/String; = "android.intent.action.PASTE"

.field public static final whitelist ACTION_PENDING_INCIDENT_REPORTS_CHANGED:Ljava/lang/String; = "android.intent.action.PENDING_INCIDENT_REPORTS_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final whitelist ACTION_PICK_ACTIVITY:Ljava/lang/String; = "android.intent.action.PICK_ACTIVITY"

.field public static final whitelist ACTION_POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field public static final whitelist ACTION_POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field public static final whitelist ACTION_POWER_USAGE_SUMMARY:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field public static final greylist-max-o ACTION_PREFERRED_ACTIVITY_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

.field public static final whitelist ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_PROCESS_TEXT:Ljava/lang/String; = "android.intent.action.PROCESS_TEXT"

.field public static final whitelist ACTION_PROFILE_ACCESSIBLE:Ljava/lang/String; = "android.intent.action.PROFILE_ACCESSIBLE"

.field public static final whitelist ACTION_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.PROFILE_ADDED"

.field public static final whitelist ACTION_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.PROFILE_AVAILABLE"

.field public static final whitelist ACTION_PROFILE_INACCESSIBLE:Ljava/lang/String; = "android.intent.action.PROFILE_INACCESSIBLE"

.field public static final whitelist ACTION_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.PROFILE_REMOVED"

.field public static final whitelist ACTION_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.PROFILE_UNAVAILABLE"

.field public static final whitelist ACTION_PROVIDER_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final whitelist ACTION_QUERY_PACKAGE_RESTART:Ljava/lang/String; = "android.intent.action.QUERY_PACKAGE_RESTART"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_QUICK_CLOCK:Ljava/lang/String; = "android.intent.action.QUICK_CLOCK"

.field public static final whitelist ACTION_QUICK_VIEW:Ljava/lang/String; = "android.intent.action.QUICK_VIEW"

.field public static final whitelist ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final greylist-max-o ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final greylist-max-o ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "com.android.internal.intent.action.REQUEST_SHUTDOWN"

.field public static final whitelist ACTION_RESOLVE_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "android.intent.action.REVIEW_ACCESSIBILITY_SERVICES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_APP_DATA_SHARING_UPDATES:Ljava/lang/String; = "android.intent.action.REVIEW_APP_DATA_SHARING_UPDATES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_ONGOING_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.REVIEW_ONGOING_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_PERMISSIONS:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSIONS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_PERMISSION_HISTORY:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSION_HISTORY"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_REVIEW_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSION_USAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_ROLLBACK_COMMITTED:Ljava/lang/String; = "android.intent.action.ROLLBACK_COMMITTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_RUN:Ljava/lang/String; = "android.intent.action.RUN"

.field public static final whitelist ACTION_SAFETY_CENTER:Ljava/lang/String; = "android.intent.action.SAFETY_CENTER"

.field public static final whitelist ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final whitelist ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final whitelist ACTION_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final whitelist ACTION_SEARCH_LONG_PRESS:Ljava/lang/String; = "android.intent.action.SEARCH_LONG_PRESS"

.field public static final whitelist ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final whitelist ACTION_SENDTO:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final whitelist ACTION_SEND_MULTIPLE:Ljava/lang/String; = "android.intent.action.SEND_MULTIPLE"

.field public static final greylist ACTION_SERVICE_STATE:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_SETTING_RESTORED:Ljava/lang/String; = "android.os.action.SETTING_RESTORED"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist ACTION_SET_WALLPAPER:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER"

.field public static final whitelist ACTION_SHOW_APP_INFO:Ljava/lang/String; = "android.intent.action.SHOW_APP_INFO"

.field public static final greylist-max-o ACTION_SHOW_BRIGHTNESS_DIALOG:Ljava/lang/String; = "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

.field public static final blacklist ACTION_SHOW_FOREGROUND_SERVICE_MANAGER:Ljava/lang/String; = "android.intent.action.SHOW_FOREGROUND_SERVICE_MANAGER"

.field public static final greylist-max-o ACTION_SHOW_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

.field public static final whitelist ACTION_SHOW_SUSPENDED_APP_DETAILS:Ljava/lang/String; = "android.intent.action.SHOW_SUSPENDED_APP_DETAILS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SHOW_WORK_APPS:Ljava/lang/String; = "android.intent.action.SHOW_WORK_APPS"

.field public static final whitelist ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final whitelist ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_SPLIT_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.SPLIT_CONFIGURATION_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final whitelist ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

.field public static final greylist-max-o ACTION_THERMAL_EVENT:Ljava/lang/String; = "android.intent.action.THERMAL_EVENT"

.field public static final whitelist ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field public static final whitelist ACTION_TIME_CHANGED:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final whitelist ACTION_TIME_TICK:Ljava/lang/String; = "android.intent.action.TIME_TICK"

.field public static final whitelist ACTION_TRANSLATE:Ljava/lang/String; = "android.intent.action.TRANSLATE"

.field public static final whitelist ACTION_UID_REMOVED:Ljava/lang/String; = "android.intent.action.UID_REMOVED"

.field public static final whitelist ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UMS_DISCONNECTED:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UNARCHIVE_PACKAGE:Ljava/lang/String; = "android.intent.action.UNARCHIVE_PACKAGE"

.field public static final whitelist ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.UNINSTALL_PACKAGE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_UPGRADE_SETUP:Ljava/lang/String; = "android.intent.action.UPGRADE_SETUP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USER_ADDED:Ljava/lang/String; = "android.intent.action.USER_ADDED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USER_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_BACKGROUND"

.field public static final whitelist ACTION_USER_FOREGROUND:Ljava/lang/String; = "android.intent.action.USER_FOREGROUND"

.field public static final greylist-max-o ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED"

.field public static final blacklist ACTION_USER_INFO_CHANGED_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED_BACKGROUND"

.field public static final whitelist ACTION_USER_INITIALIZE:Ljava/lang/String; = "android.intent.action.USER_INITIALIZE"

.field public static final whitelist ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final whitelist ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o ACTION_USER_STARTED:Ljava/lang/String; = "android.intent.action.USER_STARTED"

.field public static final greylist-max-o ACTION_USER_STARTING:Ljava/lang/String; = "android.intent.action.USER_STARTING"

.field public static final greylist-max-o ACTION_USER_STOPPED:Ljava/lang/String; = "android.intent.action.USER_STOPPED"

.field public static final greylist-max-o ACTION_USER_STOPPING:Ljava/lang/String; = "android.intent.action.USER_STOPPING"

.field public static final whitelist ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_USER_UNLOCKED:Ljava/lang/String; = "android.intent.action.USER_UNLOCKED"

.field public static final whitelist ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final whitelist ACTION_VIEW_APP_FEATURES:Ljava/lang/String; = "android.intent.action.VIEW_APP_FEATURES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VIEW_LOCUS:Ljava/lang/String; = "android.intent.action.VIEW_LOCUS"

.field public static final whitelist ACTION_VIEW_PERMISSION_USAGE:Ljava/lang/String; = "android.intent.action.VIEW_PERMISSION_USAGE"

.field public static final whitelist ACTION_VIEW_PERMISSION_USAGE_FOR_PERIOD:Ljava/lang/String; = "android.intent.action.VIEW_PERMISSION_USAGE_FOR_PERIOD"

.field public static final whitelist ACTION_VIEW_SAFETY_CENTER_QS:Ljava/lang/String; = "android.intent.action.VIEW_SAFETY_CENTER_QS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VOICE_ASSIST:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.VOICE_COMMAND"

.field public static final whitelist ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_WEB_SEARCH:Ljava/lang/String; = "android.intent.action.WEB_SEARCH"

.field private static final greylist-max-o ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final greylist-max-o ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final greylist-max-o ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final greylist-max-o ATTR_DATA:Ljava/lang/String; = "data"

.field private static final greylist-max-o ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final blacklist ATTR_IDENTIFIER:Ljava/lang/String; = "ident"

.field private static final blacklist ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final greylist-max-o ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_BLOCKED_BY_ADMIN:I = 0x4

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_FAILED:I = 0x1

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_SUCCESS:I = 0x0

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_USER_CANCELED:I = 0x2

.field public static final whitelist CAPTURE_CONTENT_FOR_NOTE_WINDOW_MODE_UNSUPPORTED:I = 0x3

.field public static final whitelist CATEGORY_ACCESSIBILITY_SHORTCUT_TARGET:Ljava/lang/String; = "android.intent.category.ACCESSIBILITY_SHORTCUT_TARGET"

.field public static final whitelist CATEGORY_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.ALTERNATIVE"

.field public static final whitelist CATEGORY_APP_BROWSER:Ljava/lang/String; = "android.intent.category.APP_BROWSER"

.field public static final whitelist CATEGORY_APP_CALCULATOR:Ljava/lang/String; = "android.intent.category.APP_CALCULATOR"

.field public static final whitelist CATEGORY_APP_CALENDAR:Ljava/lang/String; = "android.intent.category.APP_CALENDAR"

.field public static final whitelist CATEGORY_APP_CONTACTS:Ljava/lang/String; = "android.intent.category.APP_CONTACTS"

.field public static final whitelist CATEGORY_APP_EMAIL:Ljava/lang/String; = "android.intent.category.APP_EMAIL"

.field public static final whitelist CATEGORY_APP_FILES:Ljava/lang/String; = "android.intent.category.APP_FILES"

.field public static final whitelist CATEGORY_APP_FITNESS:Ljava/lang/String; = "android.intent.category.APP_FITNESS"

.field public static final whitelist CATEGORY_APP_GALLERY:Ljava/lang/String; = "android.intent.category.APP_GALLERY"

.field public static final whitelist CATEGORY_APP_MAPS:Ljava/lang/String; = "android.intent.category.APP_MAPS"

.field public static final whitelist CATEGORY_APP_MARKET:Ljava/lang/String; = "android.intent.category.APP_MARKET"

.field public static final whitelist CATEGORY_APP_MESSAGING:Ljava/lang/String; = "android.intent.category.APP_MESSAGING"

.field public static final whitelist CATEGORY_APP_MUSIC:Ljava/lang/String; = "android.intent.category.APP_MUSIC"

.field public static final whitelist CATEGORY_APP_WEATHER:Ljava/lang/String; = "android.intent.category.APP_WEATHER"

.field public static final whitelist CATEGORY_BROWSABLE:Ljava/lang/String; = "android.intent.category.BROWSABLE"

.field public static final whitelist CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field public static final greylist-max-o CATEGORY_CAR_LAUNCHER:Ljava/lang/String; = "android.intent.category.CAR_LAUNCHER"

.field public static final whitelist CATEGORY_CAR_MODE:Ljava/lang/String; = "android.intent.category.CAR_MODE"

.field public static final blacklist CATEGORY_COMMUNAL_MODE:Ljava/lang/String; = "android.intent.category.COMMUNAL_MODE"

.field public static final whitelist CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final whitelist CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field public static final whitelist CATEGORY_DEVELOPMENT_PREFERENCE:Ljava/lang/String; = "android.intent.category.DEVELOPMENT_PREFERENCE"

.field public static final whitelist CATEGORY_EMBED:Ljava/lang/String; = "android.intent.category.EMBED"

.field public static final whitelist CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:Ljava/lang/String; = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST"

.field public static final whitelist CATEGORY_HE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.HE_DESK_DOCK"

.field public static final whitelist CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field public static final greylist-max-o CATEGORY_HOME_MAIN:Ljava/lang/String; = "android.intent.category.HOME_MAIN"

.field public static final whitelist CATEGORY_INFO:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final whitelist CATEGORY_LAUNCHER:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final greylist-max-o CATEGORY_LAUNCHER_APP:Ljava/lang/String; = "android.intent.category.LAUNCHER_APP"

.field public static final whitelist CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final whitelist CATEGORY_LEANBACK_SETTINGS:Ljava/lang/String; = "android.intent.category.LEANBACK_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CATEGORY_LE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.LE_DESK_DOCK"

.field public static final whitelist CATEGORY_MONKEY:Ljava/lang/String; = "android.intent.category.MONKEY"

.field public static final whitelist CATEGORY_OPENABLE:Ljava/lang/String; = "android.intent.category.OPENABLE"

.field public static final whitelist CATEGORY_PREFERENCE:Ljava/lang/String; = "android.intent.category.PREFERENCE"

.field public static final whitelist CATEGORY_SAMPLE_CODE:Ljava/lang/String; = "android.intent.category.SAMPLE_CODE"

.field public static final whitelist CATEGORY_SECONDARY_HOME:Ljava/lang/String; = "android.intent.category.SECONDARY_HOME"

.field public static final whitelist CATEGORY_SELECTED_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.SELECTED_ALTERNATIVE"

.field public static final greylist-max-o CATEGORY_SETUP_WIZARD:Ljava/lang/String; = "android.intent.category.SETUP_WIZARD"

.field public static final whitelist CATEGORY_TAB:Ljava/lang/String; = "android.intent.category.TAB"

.field public static final whitelist CATEGORY_TEST:Ljava/lang/String; = "android.intent.category.TEST"

.field public static final whitelist CATEGORY_TYPED_OPENABLE:Ljava/lang/String; = "android.intent.category.TYPED_OPENABLE"

.field public static final whitelist CATEGORY_UNIT_TEST:Ljava/lang/String; = "android.intent.category.UNIT_TEST"

.field public static final whitelist CATEGORY_VOICE:Ljava/lang/String; = "android.intent.category.VOICE"

.field public static final whitelist CATEGORY_VR_HOME:Ljava/lang/String; = "android.intent.category.VR_HOME"

.field public static final whitelist CHOOSER_CONTENT_TYPE_ALBUM:I = 0x1

.field private static final greylist-max-o COPY_MODE_ALL:I = 0x0

.field private static final greylist-max-o COPY_MODE_FILTER:I = 0x1

.field private static final greylist-max-o COPY_MODE_HISTORY:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ENABLE_TOKEN_VERIFY_ACTION:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTENDED_FLAG_FILTER_MISMATCH:I = 0x1

.field public static final blacklist EXTENDED_FLAG_MISSING_CREATOR_OR_INVALID_TOKEN:I = 0x2

.field public static final blacklist EXTENDED_FLAG_NESTED_INTENT_KEYS_COLLECTED:I = 0x4

.field public static final whitelist EXTRA_ALARM_COUNT:Ljava/lang/String; = "android.intent.extra.ALARM_COUNT"

.field public static final whitelist EXTRA_ALLOW_MULTIPLE:Ljava/lang/String; = "android.intent.extra.ALLOW_MULTIPLE"

.field public static final whitelist EXTRA_ALLOW_REPLACE:Ljava/lang/String; = "android.intent.extra.ALLOW_REPLACE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_ALTERNATE_INTENTS:Ljava/lang/String; = "android.intent.extra.ALTERNATE_INTENTS"

.field public static final whitelist EXTRA_ARCHIVAL:Ljava/lang/String; = "android.intent.extra.ARCHIVAL"

.field public static final whitelist EXTRA_ASSIST_CONTEXT:Ljava/lang/String; = "android.intent.extra.ASSIST_CONTEXT"

.field public static final whitelist EXTRA_ASSIST_INPUT_DEVICE_ID:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

.field public static final whitelist EXTRA_ASSIST_INPUT_HINT_KEYBOARD:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

.field public static final whitelist EXTRA_ASSIST_PACKAGE:Ljava/lang/String; = "android.intent.extra.ASSIST_PACKAGE"

.field public static final whitelist EXTRA_ASSIST_UID:Ljava/lang/String; = "android.intent.extra.ASSIST_UID"

.field public static final whitelist EXTRA_ATTRIBUTION_TAGS:Ljava/lang/String; = "android.intent.extra.ATTRIBUTION_TAGS"

.field public static final whitelist EXTRA_AUTO_LAUNCH_SINGLE_CHOICE:Ljava/lang/String; = "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

.field public static final whitelist EXTRA_BCC:Ljava/lang/String; = "android.intent.extra.BCC"

.field public static final blacklist EXTRA_BRIGHTNESS_DIALOG_IS_FULL_WIDTH:Ljava/lang/String; = "android.intent.extra.BRIGHTNESS_DIALOG_IS_FULL_WIDTH"

.field public static final whitelist EXTRA_BUG_REPORT:Ljava/lang/String; = "android.intent.extra.BUG_REPORT"

.field public static final whitelist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.intent.extra.CALLING_PACKAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE:Ljava/lang/String; = "android.intent.extra.CAPTURE_CONTENT_FOR_NOTE_STATUS_CODE"

.field public static final whitelist EXTRA_CC:Ljava/lang/String; = "android.intent.extra.CC"

.field public static final greylist EXTRA_CDMA_DEFAULT_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaDefaultRoamingIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_CDMA_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaRoamingIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CHANGED_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.changed_component_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CHANGED_COMPONENT_NAME_LIST:Ljava/lang/String; = "android.intent.extra.changed_component_name_list"

.field public static final whitelist EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final whitelist EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final whitelist EXTRA_CHOOSER_ADDITIONAL_CONTENT_URI:Ljava/lang/String; = "android.intent.extra.CHOOSER_ADDITIONAL_CONTENT_URI"

.field public static final whitelist EXTRA_CHOOSER_CONTENT_TYPE_HINT:Ljava/lang/String; = "android.intent.extra.CHOOSER_CONTENT_TYPE_HINT"

.field public static final whitelist EXTRA_CHOOSER_CUSTOM_ACTIONS:Ljava/lang/String; = "android.intent.extra.CHOOSER_CUSTOM_ACTIONS"

.field public static final whitelist EXTRA_CHOOSER_FOCUSED_ITEM_POSITION:Ljava/lang/String; = "android.intent.extra.CHOOSER_FOCUSED_ITEM_POSITION"

.field public static final whitelist EXTRA_CHOOSER_MODIFY_SHARE_ACTION:Ljava/lang/String; = "android.intent.extra.CHOOSER_MODIFY_SHARE_ACTION"

.field public static final whitelist EXTRA_CHOOSER_REFINEMENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

.field public static final whitelist EXTRA_CHOOSER_RESULT:Ljava/lang/String; = "android.intent.extra.CHOOSER_RESULT"

.field public static final whitelist EXTRA_CHOOSER_RESULT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOOSER_RESULT_INTENT_SENDER"

.field public static final whitelist EXTRA_CHOOSER_TARGETS:Ljava/lang/String; = "android.intent.extra.CHOOSER_TARGETS"

.field public static final whitelist EXTRA_CHOSEN_COMPONENT:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT"

.field public static final whitelist EXTRA_CHOSEN_COMPONENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

.field public static final greylist-max-o EXTRA_CLIENT_INTENT:Ljava/lang/String; = "android.intent.extra.client_intent"

.field public static final greylist-max-o EXTRA_CLIENT_LABEL:Ljava/lang/String; = "android.intent.extra.client_label"

.field public static final whitelist EXTRA_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.COMPONENT_NAME"

.field public static final whitelist EXTRA_CONTENT_ANNOTATIONS:Ljava/lang/String; = "android.intent.extra.CONTENT_ANNOTATIONS"

.field public static final whitelist EXTRA_CONTENT_QUERY:Ljava/lang/String; = "android.intent.extra.CONTENT_QUERY"

.field public static final greylist EXTRA_CSS_INDICATOR:Ljava/lang/String; = "cssIndicator"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "data-operator-alpha-long"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "data-operator-alpha-short"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_OPERATOR_NUMERIC:Ljava/lang/String; = "data-operator-numeric"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_RADIO_TECH:Ljava/lang/String; = "dataRadioTechnology"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_DATA_REG_STATE:Ljava/lang/String; = "dataRegState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_DATA_REMOVED:Ljava/lang/String; = "android.intent.extra.DATA_REMOVED"

.field public static final greylist EXTRA_DATA_ROAMING_TYPE:Ljava/lang/String; = "dataRoamingType"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_DISTRACTION_RESTRICTIONS:Ljava/lang/String; = "android.intent.extra.distraction_restrictions"

.field public static final whitelist EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static final whitelist EXTRA_DOCK_STATE_CAR:I = 0x2

.field public static final whitelist EXTRA_DOCK_STATE_DESK:I = 0x1

.field public static final whitelist EXTRA_DOCK_STATE_HE_DESK:I = 0x4

.field public static final whitelist EXTRA_DOCK_STATE_LE_DESK:I = 0x3

.field public static final whitelist EXTRA_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final whitelist EXTRA_DONT_KILL_APP:Ljava/lang/String; = "android.intent.extra.DONT_KILL_APP"

.field public static final whitelist EXTRA_DURATION_MILLIS:Ljava/lang/String; = "android.intent.extra.DURATION_MILLIS"

.field public static final whitelist EXTRA_EMAIL:Ljava/lang/String; = "android.intent.extra.EMAIL"

.field public static final greylist EXTRA_EMERGENCY_ONLY:Ljava/lang/String; = "emergencyOnly"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_END_TIME:Ljava/lang/String; = "android.intent.extra.END_TIME"

.field public static final whitelist EXTRA_EXCLUDE_COMPONENTS:Ljava/lang/String; = "android.intent.extra.EXCLUDE_COMPONENTS"

.field public static final whitelist EXTRA_FORCE_FACTORY_RESET:Ljava/lang/String; = "android.intent.extra.FORCE_FACTORY_RESET"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_FORCE_MASTER_CLEAR:Ljava/lang/String; = "android.intent.extra.FORCE_MASTER_CLEAR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_FROM_STORAGE:Ljava/lang/String; = "android.intent.extra.FROM_STORAGE"

.field public static final whitelist EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final whitelist EXTRA_INDEX:Ljava/lang/String; = "android.intent.extra.INDEX"

.field public static final whitelist EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final whitelist EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final whitelist EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_ACTION:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_ACTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_BUNDLES:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_BUNDLES"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_EXTRAS:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_EXTRAS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_FAILURE:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_FAILURE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_HOSTNAME:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_HOSTNAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_SUCCESS:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_SUCCESS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INSTANT_APP_TOKEN:Ljava/lang/String; = "android.intent.extra.INSTANT_APP_TOKEN"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final greylist EXTRA_IS_DATA_ROAMING_FROM_REGISTRATION:Ljava/lang/String; = "isDataRoamingFromRegistration"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_IS_RESTORE:Ljava/lang/String; = "android.intent.extra.IS_RESTORE"

.field public static final greylist EXTRA_IS_USING_CARRIER_AGGREGATION:Ljava/lang/String; = "isUsingCarrierAggregation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final whitelist EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final whitelist EXTRA_LOCALE_LIST:Ljava/lang/String; = "android.intent.extra.LOCALE_LIST"

.field public static final whitelist EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.intent.extra.LOCAL_ONLY"

.field public static final whitelist EXTRA_LOCUS_ID:Ljava/lang/String; = "android.intent.extra.LOCUS_ID"

.field public static final whitelist EXTRA_LONG_VERSION_CODE:Ljava/lang/String; = "android.intent.extra.LONG_VERSION_CODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist EXTRA_LTE_EARFCN_RSRP_BOOST:Ljava/lang/String; = "LteEarfcnRsrpBoost"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_MANUAL:Ljava/lang/String; = "manual"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_MEDIA_RESOURCE_TYPE:Ljava/lang/String; = "android.intent.extra.MEDIA_RESOURCE_TYPE"

.field public static final greylist-max-o EXTRA_MEDIA_RESOURCE_TYPE_AUDIO_CODEC:I = 0x1

.field public static final greylist-max-o EXTRA_MEDIA_RESOURCE_TYPE_VIDEO_CODEC:I = 0x0

.field public static final whitelist EXTRA_METADATA_TEXT:Ljava/lang/String; = "android.intent.extra.METADATA_TEXT"

.field public static final whitelist EXTRA_MIME_TYPES:Ljava/lang/String; = "android.intent.extra.MIME_TYPES"

.field public static final greylist EXTRA_NETWORK_ID:Ljava/lang/String; = "networkId"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_NOT_UNKNOWN_SOURCE:Ljava/lang/String; = "android.intent.extra.NOT_UNKNOWN_SOURCE"

.field public static final greylist EXTRA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "operator-alpha-long"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "operator-alpha-short"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_OPERATOR_NUMERIC:Ljava/lang/String; = "operator-numeric"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_ORIGINATING_UID:Ljava/lang/String; = "android.intent.extra.ORIGINATING_UID"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ORIGINATING_URI:Ljava/lang/String; = "android.intent.extra.ORIGINATING_URI"

.field public static final whitelist EXTRA_PACKAGES:Ljava/lang/String; = "android.intent.extra.PACKAGES"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_PERMISSION_GROUP_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_GROUP_NAME"

.field public static final whitelist EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_PHONE_NUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_NUMBER"

.field public static final whitelist EXTRA_PROCESS_TEXT:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT"

.field public static final whitelist EXTRA_PROCESS_TEXT_READONLY:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT_READONLY"

.field public static final blacklist EXTRA_QUARANTINED:Ljava/lang/String; = "android.intent.extra.quarantined"

.field public static final greylist EXTRA_QUICK_VIEW_ADVANCED:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_ADVANCED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_QUICK_VIEW_FEATURES:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_FEATURES"

.field public static final whitelist EXTRA_QUIET_MODE:Ljava/lang/String; = "android.intent.extra.QUIET_MODE"

.field public static final whitelist EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_REBROADCAST_ON_UNLOCK:Ljava/lang/String; = "rebroadcastOnUnlock"

.field public static final whitelist EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final whitelist EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field public static final whitelist EXTRA_REMOTE_CALLBACK:Ljava/lang/String; = "android.intent.extra.REMOTE_CALLBACK"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final greylist-max-o EXTRA_REMOVED_FOR_ALL_USERS:Ljava/lang/String; = "android.intent.extra.REMOVED_FOR_ALL_USERS"

.field public static final whitelist EXTRA_REPLACEMENT_EXTRAS:Ljava/lang/String; = "android.intent.extra.REPLACEMENT_EXTRAS"

.field public static final whitelist EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final whitelist EXTRA_RESTRICTIONS_BUNDLE:Ljava/lang/String; = "android.intent.extra.restrictions_bundle"

.field public static final whitelist EXTRA_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"

.field public static final whitelist EXTRA_RESTRICTIONS_LIST:Ljava/lang/String; = "android.intent.extra.restrictions_list"

.field public static final whitelist EXTRA_RESULT_NEEDED:Ljava/lang/String; = "android.intent.extra.RESULT_NEEDED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "android.intent.extra.RESULT_RECEIVER"

.field public static final whitelist EXTRA_RETURN_RESULT:Ljava/lang/String; = "android.intent.extra.RETURN_RESULT"

.field public static final whitelist EXTRA_ROLE_NAME:Ljava/lang/String; = "android.intent.extra.ROLE_NAME"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_NAME:Ljava/lang/String; = "setting_name"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_NEW_VALUE:Ljava/lang/String; = "new_value"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_PREVIOUS_VALUE:Ljava/lang/String; = "previous_value"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_SETTING_RESTORED_FROM_SDK_INT:Ljava/lang/String; = "restored_from_sdk_int"
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_ICON:Ljava/lang/String; = "android.intent.extra.shortcut.ICON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_ICON_RESOURCE:Ljava/lang/String; = "android.intent.extra.shortcut.ICON_RESOURCE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_ID:Ljava/lang/String; = "android.intent.extra.shortcut.ID"

.field public static final whitelist EXTRA_SHORTCUT_INTENT:Ljava/lang/String; = "android.intent.extra.shortcut.INTENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "android.intent.extra.shortcut.NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_SHOWING_ATTRIBUTION:Ljava/lang/String; = "android.intent.extra.SHOWING_ATTRIBUTION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_SHOW_WIPE_PROGRESS:Ljava/lang/String; = "android.intent.extra.SHOW_WIPE_PROGRESS"

.field public static final whitelist EXTRA_SHUTDOWN_USERSPACE_ONLY:Ljava/lang/String; = "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

.field public static final greylist-max-o EXTRA_SIM_ACTIVATION_RESPONSE:Ljava/lang/String; = "android.intent.extra.SIM_ACTIVATION_RESPONSE"

.field public static final blacklist EXTRA_SIM_LOCKED_REASON:Ljava/lang/String; = "reason"

.field public static final blacklist EXTRA_SIM_STATE:Ljava/lang/String; = "ss"

.field public static final whitelist EXTRA_SPLIT_NAME:Ljava/lang/String; = "android.intent.extra.SPLIT_NAME"

.field public static final whitelist EXTRA_START_TIME:Ljava/lang/String; = "android.intent.extra.START_TIME"

.field public static final whitelist EXTRA_STREAM:Ljava/lang/String; = "android.intent.extra.STREAM"

.field public static final whitelist EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static final whitelist EXTRA_SUSPENDED_PACKAGE_EXTRAS:Ljava/lang/String; = "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

.field public static final greylist EXTRA_SYSTEM_ID:Ljava/lang/String; = "systemId"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_SYSTEM_UPDATE_UNINSTALL:Ljava/lang/String; = "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

.field public static final greylist-max-o EXTRA_TASK_ID:Ljava/lang/String; = "android.intent.extra.TASK_ID"

.field public static final whitelist EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final whitelist EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final greylist-max-o EXTRA_THERMAL_STATE:Ljava/lang/String; = "android.intent.extra.THERMAL_STATE"

.field public static final greylist-max-o EXTRA_THERMAL_STATE_EXCEEDED:I = 0x2

.field public static final greylist-max-o EXTRA_THERMAL_STATE_NORMAL:I = 0x0

.field public static final greylist-max-o EXTRA_THERMAL_STATE_WARNING:I = 0x1

.field public static final whitelist EXTRA_TIME:Ljava/lang/String; = "android.intent.extra.TIME"

.field public static final whitelist EXTRA_TIMEZONE:Ljava/lang/String; = "time-zone"

.field public static final greylist-max-o EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final greylist-max-o EXTRA_TIME_PREF_VALUE_USE_12_HOUR:I = 0x0

.field public static final greylist-max-o EXTRA_TIME_PREF_VALUE_USE_24_HOUR:I = 0x1

.field public static final greylist-max-o EXTRA_TIME_PREF_VALUE_USE_LOCALE_DEFAULT:I = 0x2

.field public static final whitelist EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final whitelist EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final whitelist EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_UNKNOWN_INSTANT_APP:Ljava/lang/String; = "android.intent.extra.UNKNOWN_INSTANT_APP"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_USER:Ljava/lang/String; = "android.intent.extra.USER"

.field public static final whitelist EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_USER_ID:Ljava/lang/String; = "android.intent.extra.USER_ID"

.field public static final whitelist EXTRA_USER_INITIATED:Ljava/lang/String; = "android.intent.extra.USER_INITIATED"

.field public static final greylist-max-o EXTRA_USER_REQUESTED_SHUTDOWN:Ljava/lang/String; = "android.intent.extra.USER_REQUESTED_SHUTDOWN"

.field public static final whitelist EXTRA_USE_STYLUS_MODE:Ljava/lang/String; = "android.intent.extra.USE_STYLUS_MODE"

.field public static final whitelist EXTRA_VERIFICATION_BUNDLE:Ljava/lang/String; = "android.intent.extra.VERIFICATION_BUNDLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_VERSION_CODE:Ljava/lang/String; = "android.intent.extra.VERSION_CODE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_VISIBILITY_ALLOW_LIST:Ljava/lang/String; = "android.intent.extra.VISIBILITY_ALLOW_LIST"

.field public static final greylist EXTRA_VOICE_RADIO_TECH:Ljava/lang/String; = "radioTechnology"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_VOICE_REG_STATE:Ljava/lang/String; = "voiceRegState"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist EXTRA_VOICE_ROAMING_TYPE:Ljava/lang/String; = "voiceRoamingType"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_WIPE_ESIMS:Ljava/lang/String; = "com.android.internal.intent.extra.WIPE_ESIMS"

.field public static final greylist-max-o EXTRA_WIPE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.intent.extra.WIPE_EXTERNAL_STORAGE"

.field public static final whitelist FILL_IN_ACTION:I = 0x1

.field public static final whitelist FILL_IN_CATEGORIES:I = 0x4

.field public static final whitelist FILL_IN_CLIP_DATA:I = 0x80

.field public static final whitelist FILL_IN_COMPONENT:I = 0x8

.field public static final whitelist FILL_IN_DATA:I = 0x2

.field public static final whitelist FILL_IN_IDENTIFIER:I = 0x100

.field public static final whitelist FILL_IN_PACKAGE:I = 0x10

.field public static final whitelist FILL_IN_SELECTOR:I = 0x40

.field public static final whitelist FILL_IN_SOURCE_BOUNDS:I = 0x20

.field public static final whitelist FLAG_ACTIVITY_BROUGHT_TO_FRONT:I = 0x400000

.field public static final whitelist FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final whitelist FLAG_ACTIVITY_CLEAR_TOP:I = 0x4000000

.field public static final whitelist FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:I = 0x800000

.field public static final whitelist FLAG_ACTIVITY_FORWARD_RESULT:I = 0x2000000

.field public static final whitelist FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:I = 0x100000

.field public static final whitelist FLAG_ACTIVITY_LAUNCH_ADJACENT:I = 0x1000

.field public static final whitelist FLAG_ACTIVITY_MATCH_EXTERNAL:I = 0x800

.field public static final whitelist FLAG_ACTIVITY_MULTIPLE_TASK:I = 0x8000000

.field public static final whitelist FLAG_ACTIVITY_NEW_DOCUMENT:I = 0x80000

.field public static final whitelist FLAG_ACTIVITY_NEW_TASK:I = 0x10000000

.field public static final whitelist FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final whitelist FLAG_ACTIVITY_NO_HISTORY:I = 0x40000000

.field public static final whitelist FLAG_ACTIVITY_NO_USER_ACTION:I = 0x40000

.field public static final whitelist FLAG_ACTIVITY_PREVIOUS_IS_TOP:I = 0x1000000

.field public static final whitelist FLAG_ACTIVITY_REORDER_TO_FRONT:I = 0x20000

.field public static final whitelist FLAG_ACTIVITY_REQUIRE_DEFAULT:I = 0x200

.field public static final whitelist FLAG_ACTIVITY_REQUIRE_NON_BROWSER:I = 0x400

.field public static final whitelist FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:I = 0x200000

.field public static final whitelist FLAG_ACTIVITY_RETAIN_IN_RECENTS:I = 0x2000

.field public static final whitelist FLAG_ACTIVITY_SINGLE_TOP:I = 0x20000000

.field public static final whitelist FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field public static final whitelist FLAG_DEBUG_LOG_RESOLUTION:I = 0x8

.field public static final greylist-max-o FLAG_DEBUG_TRIAGED_MISSING:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_DIRECT_BOOT_AUTO:I = 0x100

.field public static final whitelist FLAG_EXCLUDE_STOPPED_PACKAGES:I = 0x10

.field public static final whitelist FLAG_FROM_BACKGROUND:I = 0x4

.field public static final whitelist FLAG_GRANT_PERSISTABLE_URI_PERMISSION:I = 0x40

.field public static final whitelist FLAG_GRANT_PREFIX_URI_PERMISSION:I = 0x80

.field public static final whitelist FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final whitelist FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final greylist-max-o FLAG_IGNORE_EPHEMERAL:I = -0x80000000

.field public static final whitelist FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final greylist-max-o FLAG_RECEIVER_BOOT_UPGRADE:I = 0x2000000

.field public static final greylist-max-o FLAG_RECEIVER_EXCLUDE_BACKGROUND:I = 0x800000

.field public static final whitelist FLAG_RECEIVER_FOREGROUND:I = 0x10000000

.field public static final greylist-max-o FLAG_RECEIVER_FROM_SHELL:I = 0x400000

.field public static final whitelist FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_RECEIVER_NO_ABORT:I = 0x8000000

.field public static final blacklist FLAG_RECEIVER_OFFLOAD:I = -0x80000000

.field public static final blacklist FLAG_RECEIVER_OFFLOAD_FOREGROUND:I = 0x800

.field public static final whitelist FLAG_RECEIVER_REGISTERED_ONLY:I = 0x40000000

.field public static final whitelist FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I = 0x4000000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_RECEIVER_REPLACE_PENDING:I = 0x20000000

.field public static final whitelist FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS:I = 0x200000

.field public static final greylist-max-o IMMUTABLE_FLAGS:I = 0xc3

.field private static final blacklist LOCAL_FLAG_FROM_COPY:I = 0x1

.field private static final blacklist LOCAL_FLAG_FROM_PARCEL:I = 0x2

.field private static final blacklist LOCAL_FLAG_FROM_PROTECTED_COMPONENT:I = 0x4

.field public static final blacklist LOCAL_FLAG_FROM_SYSTEM:I = 0x20

.field private static final blacklist LOCAL_FLAG_FROM_URI:I = 0x10

.field private static final blacklist LOCAL_FLAG_TRUSTED_CREATOR_TOKEN_PRESENT:I = 0x40

.field private static final blacklist LOCAL_FLAG_UNFILTERED_EXTRAS:I = 0x8

.field private static final blacklist MARK_TRUSTED_TOKEN_PRESENT_ACTION:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final whitelist METADATA_SETUP_VERSION:Ljava/lang/String; = "android.SETUP_VERSION"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist SIM_ABSENT_ON_PERM_DISABLED:Ljava/lang/String; = "PERM_DISABLED"

.field public static final blacklist SIM_LOCKED_NETWORK:Ljava/lang/String; = "NETWORK"

.field public static final blacklist SIM_LOCKED_ON_PIN:Ljava/lang/String; = "PIN"

.field public static final blacklist SIM_LOCKED_ON_PUK:Ljava/lang/String; = "PUK"

.field public static final blacklist SIM_STATE_ABSENT:Ljava/lang/String; = "ABSENT"

.field public static final blacklist SIM_STATE_CARD_IO_ERROR:Ljava/lang/String; = "CARD_IO_ERROR"

.field public static final blacklist SIM_STATE_CARD_RESTRICTED:Ljava/lang/String; = "CARD_RESTRICTED"

.field public static final blacklist SIM_STATE_IMSI:Ljava/lang/String; = "IMSI"

.field public static final blacklist SIM_STATE_LOADED:Ljava/lang/String; = "LOADED"

.field public static final blacklist SIM_STATE_LOCKED:Ljava/lang/String; = "LOCKED"

.field public static final blacklist SIM_STATE_NOT_READY:Ljava/lang/String; = "NOT_READY"

.field public static final blacklist SIM_STATE_PRESENT:Ljava/lang/String; = "PRESENT"

.field public static final blacklist SIM_STATE_READY:Ljava/lang/String; = "READY"

.field public static final blacklist SIM_STATE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static final blacklist TAG:Ljava/lang/String; = "Intent"

.field private static final greylist-max-o TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final greylist-max-o TAG_EXTRA:Ljava/lang/String; = "extra"

.field public static final whitelist URI_ALLOW_UNSAFE:I = 0x4

.field public static final whitelist URI_ANDROID_APP_SCHEME:I = 0x2

.field public static final whitelist URI_INTENT_SCHEME:I = 0x1


# instance fields
.field private greylist-max-o mAction:Ljava/lang/String;

.field private greylist-max-o mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mClipData:Landroid/content/ClipData;

.field private greylist-max-o mComponent:Landroid/content/ComponentName;

.field private greylist-max-o mContentUserHint:I

.field private blacklist mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

.field private greylist-max-o mData:Landroid/net/Uri;

.field private blacklist mExtendedFlags:I

.field private greylist mExtras:Landroid/os/Bundle;

.field private greylist-max-o mFlags:I

.field private blacklist mIdentifier:Ljava/lang/String;

.field private greylist-max-o mLaunchToken:Ljava/lang/String;

.field private blacklist mLocalFlags:I

.field private blacklist mOriginalIntent:Landroid/content/Intent;

.field private greylist-max-o mPackage:Ljava/lang/String;

.field private greylist-max-o mSelector:Landroid/content/Intent;

.field private greylist-max-o mSourceBounds:Landroid/graphics/Rect;

.field private greylist-max-o mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 7873
    const-class v0, Landroid/content/Intent;

    sput-object v0, Landroid/os/Bundle;->intentClass:Ljava/lang/Class;

    .line 12522
    new-instance v0, Landroid/content/Intent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/content/Intent$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/content/Intent;->MARK_TRUSTED_TOKEN_PRESENT_ACTION:Ljava/util/function/Consumer;

    .line 12526
    new-instance v0, Landroid/content/Intent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/content/Intent$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/content/Intent;->ENABLE_TOKEN_VERIFY_ACTION:Ljava/util/function/Consumer;

    .line 12727
    new-instance v0, Landroid/content/Intent$1;

    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 7917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7894
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7918
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .param p1, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 8058
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7894
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8059
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 8060
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .registers 3
    .param p1, "o"    # Landroid/content/Intent;

    .line 7924
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    .line 7925
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Intent;I)V
    .registers 5
    .param p1, "o"    # Landroid/content/Intent;
    .param p2, "copyMode"    # I

    .line 7927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7894
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7928
    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 7929
    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 7930
    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 7931
    iget-object v0, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    .line 7932
    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 7933
    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 7934
    iget-object v0, p1, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    .line 7935
    iget-object v0, p1, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 7937
    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_33

    .line 7938
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 7943
    :cond_33
    iget v0, p1, Landroid/content/Intent;->mLocalFlags:I

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 7944
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    const/4 v1, 0x1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 7946
    if-eq p2, v1, :cond_97

    .line 7947
    iget v0, p1, Landroid/content/Intent;->mFlags:I

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 7948
    iget v0, p1, Landroid/content/Intent;->mExtendedFlags:I

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 7949
    iget v0, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 7950
    iget-object v0, p1, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    .line 7951
    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5c

    .line 7952
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 7954
    :cond_5c
    iget-object v0, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_69

    .line 7955
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 7958
    :cond_69
    const/4 v0, 0x2

    if-eq p2, v0, :cond_87

    .line 7959
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_79

    .line 7960
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7962
    :cond_79
    iget-object v0, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_97

    .line 7963
    new-instance v0, Landroid/content/ClipData;

    iget-object v1, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-direct {v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iput-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    goto :goto_97

    .line 7966
    :cond_87
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_97

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v0

    if-nez v0, :cond_97

    .line 7967
    sget-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 7974
    :cond_97
    :goto_97
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 12738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7894
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 12741
    const/4 v0, 0x2

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 12742
    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 12743
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .line 8017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7894
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8018
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8019
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 8037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7894
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8038
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8039
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 8040
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 8086
    .local p4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7894
    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 8087
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8088
    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 8089
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 8090
    return-void
.end method

.method private blacklist collectNestedIntentKeysRecur(Ljava/util/Set;Z)V
    .registers 12
    .param p2, "forceUnparcel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/Intent;",
            ">;Z)V"
        }
    .end annotation

    .line 12432
    .local p1, "visited":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz v0, :cond_73

    if-nez p2, :cond_10

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isParcelled()Z

    move-result v0

    if-nez v0, :cond_73

    :cond_10
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_73

    .line 12433
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    .line 12434
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 12442
    .local v3, "key":Ljava/lang/String;
    if-nez p2, :cond_41

    :try_start_33
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->isValueParceled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    goto :goto_41

    .line 12445
    :cond_3c
    const/4 v4, 0x0

    .line 12446
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/content/Intent;->removeExtendedFlags(I)V

    goto :goto_47

    .line 12443
    .end local v4    # "value":Ljava/lang/Object;
    :cond_41
    :goto_41
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_47
    .catch Landroid/os/BadParcelableException; {:try_start_33 .. :try_end_47} :catch_48

    .line 12453
    .restart local v4    # "value":Ljava/lang/Object;
    :goto_47
    goto :goto_4b

    .line 12448
    .end local v4    # "value":Ljava/lang/Object;
    :catch_48
    move-exception v4

    .line 12452
    .local v4, "e":Landroid/os/BadParcelableException;
    const/4 v5, 0x0

    move-object v4, v5

    .line 12454
    .local v4, "value":Ljava/lang/Object;
    :goto_4b
    instance-of v5, v4, Landroid/content/Intent;

    if-eqz v5, :cond_5d

    move-object v5, v4

    check-cast v5, Landroid/content/Intent;

    .line 12455
    .local v5, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/Intent$NestedIntentKey;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v6, v8, v3, v7, v1}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V

    invoke-direct {p0, v5, p1, v6, p2}, Landroid/content/Intent;->handleNestedIntent(Landroid/content/Intent;Ljava/util/Set;Landroid/content/Intent$NestedIntentKey;Z)V

    goto :goto_72

    .line 12458
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_5d
    instance-of v5, v4, [Landroid/os/Parcelable;

    if-eqz v5, :cond_68

    move-object v5, v4

    check-cast v5, [Landroid/os/Parcelable;

    .line 12459
    .local v5, "parcelables":[Landroid/os/Parcelable;
    invoke-direct {p0, v5, v3, p1, p2}, Landroid/content/Intent;->handleParcelableArray([Landroid/os/Parcelable;Ljava/lang/String;Ljava/util/Set;Z)V

    goto :goto_72

    .line 12460
    .end local v5    # "parcelables":[Landroid/os/Parcelable;
    :cond_68
    instance-of v5, v4, Ljava/util/ArrayList;

    if-eqz v5, :cond_72

    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    .line 12461
    .local v5, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    invoke-direct {p0, v5, v3, p1, p2}, Landroid/content/Intent;->handleParcelableList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;Z)V

    .line 12463
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    :cond_72
    :goto_72
    goto :goto_25

    .line 12469
    :cond_73
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isDefinitelyEmpty()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 12470
    :cond_7f
    invoke-virtual {p0, v2}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    .line 12473
    :cond_82
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_ac

    .line 12474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_87
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_ac

    .line 12475
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    iget-object v2, v2, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    .line 12476
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_a9

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 12477
    new-instance v3, Landroid/content/Intent$NestedIntentKey;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1, v0, v1}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V

    invoke-direct {p0, v2, p1, v3, p2}, Landroid/content/Intent;->handleNestedIntent(Landroid/content/Intent;Ljava/util/Set;Landroid/content/Intent$NestedIntentKey;Z)V

    .line 12474
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a9
    add-int/lit8 v0, v0, 0x1

    goto :goto_87

    .line 12483
    .end local v0    # "i":I
    :cond_ac
    return-void
.end method

.method public static whitelist createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 3
    .param p0, "target"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1063
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;
    .registers 10
    .param p0, "target"    # Landroid/content/Intent;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "sender"    # Landroid/content/IntentSender;

    .line 1092
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1094
    if-eqz p1, :cond_13

    .line 1095
    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1098
    :cond_13
    if-eqz p2, :cond_1a

    .line 1099
    const-string v1, "android.intent.extra.CHOOSER_RESULT_INTENT_SENDER"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1103
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0xc3

    .line 1106
    .local v1, "permFlags":I
    if-eqz v1, :cond_58

    .line 1107
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    .line 1108
    .local v2, "targetClipData":Landroid/content/ClipData;
    if-nez v2, :cond_50

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 1109
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 1111
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 1112
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .local v4, "mimeTypes":[Ljava/lang/String;
    goto :goto_49

    .line 1114
    .end local v4    # "mimeTypes":[Ljava/lang/String;
    :cond_46
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 1116
    .restart local v4    # "mimeTypes":[Ljava/lang/String;
    :goto_49
    new-instance v5, Landroid/content/ClipData;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4, v3}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object v2, v5

    .line 1118
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "mimeTypes":[Ljava/lang/String;
    :cond_50
    if-eqz v2, :cond_58

    .line 1119
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1124
    .end local v2    # "targetClipData":Landroid/content/ClipData;
    :cond_58
    return-object v0
.end method

.method private static blacklist decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4
    .param p0, "value"    # Ljava/lang/String;

    .line 8607
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 8608
    :catch_5
    move-exception v0

    .line 8610
    .local v0, "e":Ljava/lang/NumberFormatException;
    if-eqz p0, :cond_22

    :try_start_8
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 8613
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_1f} :catch_20

    return-object v1

    .line 8615
    :catch_20
    move-exception v1

    goto :goto_23

    .line 8617
    :cond_22
    nop

    .line 8618
    :goto_23
    throw v0
.end method

.method public static greylist-max-o dockStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "dock"    # I

    .line 13450
    packed-switch p0, :pswitch_data_18

    .line 13462
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13452
    :pswitch_8
    const-string v0, "EXTRA_DOCK_STATE_HE_DESK"

    return-object v0

    .line 13454
    :pswitch_b
    const-string v0, "EXTRA_DOCK_STATE_LE_DESK"

    return-object v0

    .line 13456
    :pswitch_e
    const-string v0, "EXTRA_DOCK_STATE_CAR"

    return-object v0

    .line 13458
    :pswitch_11
    const-string v0, "EXTRA_DOCK_STATE_DESK"

    return-object v0

    .line 13460
    :pswitch_14
    const-string v0, "EXTRA_DOCK_STATE_UNDOCKED"

    return-object v0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private blacklist dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "secure"    # Z
    .param p3, "comp"    # Z
    .param p4, "extras"    # Z
    .param p5, "clip"    # Z

    .line 12057
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 12058
    const-wide v0, 0x10900000001L

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12060
    :cond_e
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_2d

    .line 12061
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12062
    .local v1, "category":Ljava/lang/String;
    const-wide v2, 0x20900000002L

    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12063
    .end local v1    # "category":Ljava/lang/String;
    goto :goto_18

    .line 12065
    :cond_2d
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_46

    .line 12066
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz p2, :cond_3a

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_3a
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12068
    :cond_46
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 12069
    const-wide v0, 0x10900000004L

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12071
    :cond_54
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_62

    .line 12072
    const-wide v0, 0x1090000000dL

    iget-object v2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12074
    :cond_62
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    const-string v1, "0x"

    if-eqz v0, :cond_87

    .line 12075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v2, 0x10900000005L

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12077
    :cond_87
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    if-eqz v0, :cond_aa

    .line 12078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x1090000000eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12080
    :cond_aa
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_b8

    .line 12081
    const-wide v0, 0x10900000006L

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12083
    :cond_b8
    if-eqz p3, :cond_c8

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_c8

    .line 12084
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    const-wide v1, 0x10b00000007L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 12086
    :cond_c8
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_da

    .line 12087
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000008L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12089
    :cond_da
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_fc

    .line 12090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12091
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p5, :cond_ec

    if-eqz p2, :cond_ea

    goto :goto_ec

    :cond_ea
    const/4 v2, 0x0

    goto :goto_ed

    :cond_ec
    :goto_ec
    const/4 v2, 0x1

    :goto_ed
    invoke-virtual {v1, v0, v2}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 12092
    const-wide v1, 0x10900000009L

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12094
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_fc
    if-eqz p4, :cond_110

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_110

    .line 12095
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x1090000000aL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12097
    :cond_110
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    if-eqz v0, :cond_11e

    .line 12098
    const-wide v0, 0x1050000000bL

    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 12100
    :cond_11e
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_130

    .line 12101
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x1090000000cL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 12103
    :cond_130
    return-void
.end method

.method private blacklist extractIntentFromKey(Landroid/content/Intent$NestedIntentKey;)Landroid/content/Intent;
    .registers 6
    .param p1, "key"    # Landroid/content/Intent$NestedIntentKey;

    .line 12578
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v0

    const-class v1, Landroid/content/Intent;

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_88

    goto/16 :goto_86

    .line 12597
    :sswitch_c
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_11

    return-object v2

    .line 12598
    :cond_11
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v0

    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 12599
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 12600
    .local v0, "item":Landroid/content/ClipData$Item;
    if-eqz v0, :cond_86

    .line 12601
    iget-object v1, v0, Landroid/content/ClipData$Item;->mIntent:Landroid/content/Intent;

    return-object v1

    .line 12589
    .end local v0    # "item":Landroid/content/ClipData$Item;
    :sswitch_2c
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_31

    return-object v2

    .line 12590
    :cond_31
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 12592
    .local v0, "extraIntentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    if-eqz v0, :cond_86

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_86

    .line 12593
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    return-object v1

    .line 12582
    .end local v0    # "extraIntentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    :sswitch_52
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_57

    return-object v2

    .line 12583
    :cond_57
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 12584
    .local v0, "extraIntents":[Landroid/content/Intent;
    if-eqz v0, :cond_86

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    array-length v3, v0

    if-ge v1, v3, :cond_86

    .line 12585
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    aget-object v1, v0, v1

    return-object v1

    .line 12580
    .end local v0    # "extraIntents":[Landroid/content/Intent;
    :sswitch_73
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_78

    goto :goto_85

    :cond_78
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Intent;

    :goto_85
    return-object v2

    .line 12606
    :cond_86
    :goto_86
    return-object v2

    nop

    :sswitch_data_88
    .sparse-switch
        0x1 -> :sswitch_73
        0x2 -> :sswitch_52
        0x4 -> :sswitch_2c
        0x8 -> :sswitch_c
    .end sparse-switch
.end method

.method private blacklist fillInCreatorTokenInfo(Landroid/content/Intent$CreatorTokenInfo;I)V
    .registers 10
    .param p1, "otherCreatorTokenInfo"    # Landroid/content/Intent$CreatorTokenInfo;
    .param p2, "changes"    # I

    .line 11732
    if-eqz p1, :cond_87

    invoke-static {p1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 11733
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_14

    .line 11734
    new-instance v0, Landroid/content/Intent$CreatorTokenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/Intent$CreatorTokenInfo;-><init>(Landroid/content/Intent-IA;)V

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 11736
    :cond_14
    invoke-static {p1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    .line 11738
    .local v0, "otherNestedIntentKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/Intent$NestedIntentKey;>;"
    iget-object v1, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 11739
    iget-object v1, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v1, v2}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;Landroid/util/ArraySet;)V

    goto :goto_87

    .line 11742
    :cond_2b
    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x8

    if-nez v1, :cond_50

    .line 11744
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 11745
    .local v1, "otherKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/Intent$NestedIntentKey;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 11746
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    if-ge v4, v3, :cond_4f

    .line 11747
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent$NestedIntentKey;

    .line 11748
    .local v5, "key":Landroid/content/Intent$NestedIntentKey;
    invoke-static {v5}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v6

    if-eq v6, v2, :cond_4c

    .line 11749
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 11746
    .end local v5    # "key":Landroid/content/Intent$NestedIntentKey;
    :cond_4c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 11752
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_4f
    goto :goto_7e

    .line 11755
    .end local v1    # "otherKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/Intent$NestedIntentKey;>;"
    :cond_50
    iget-object v1, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 11756
    .local v1, "N":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_5c
    if-ltz v3, :cond_7c

    .line 11757
    iget-object v4, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v4}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent$NestedIntentKey;

    .line 11758
    .local v4, "key":Landroid/content/Intent$NestedIntentKey;
    invoke-static {v4}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v5

    if-ne v5, v2, :cond_79

    .line 11759
    iget-object v5, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v5}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 11756
    .end local v4    # "key":Landroid/content/Intent$NestedIntentKey;
    :cond_79
    add-int/lit8 v3, v3, -0x1

    goto :goto_5c

    .line 11762
    .end local v3    # "i":I
    :cond_7c
    move-object v2, v0

    move-object v1, v2

    .line 11764
    .local v1, "otherKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/Intent$NestedIntentKey;>;"
    :goto_7e
    iget-object v2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v2}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 11767
    .end local v0    # "otherNestedIntentKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/Intent$NestedIntentKey;>;"
    .end local v1    # "otherKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/Intent$NestedIntentKey;>;"
    :cond_87
    :goto_87
    return-void
.end method

.method private blacklist forEachNestedCreatorToken(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/function/Consumer<",
            "-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 12556
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Landroid/content/Intent;>;"
    .local p2, "postAction":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Landroid/content/Intent;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_9

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_9

    return-void

    .line 12558
    :cond_9
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-eqz v0, :cond_4c

    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 12559
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 12560
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    if-ge v1, v0, :cond_4c

    .line 12561
    iget-object v2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v2}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$NestedIntentKey;

    .line 12562
    .local v2, "key":Landroid/content/Intent$NestedIntentKey;
    invoke-direct {p0, v2}, Landroid/content/Intent;->extractIntentFromKey(Landroid/content/Intent$NestedIntentKey;)Landroid/content/Intent;

    move-result-object v3

    .line 12564
    .local v3, "extraIntent":Landroid/content/Intent;
    if-eqz v3, :cond_40

    .line 12565
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12566
    invoke-virtual {v3, p1}, Landroid/content/Intent;->forEachNestedCreatorToken(Ljava/util/function/Consumer;)V

    .line 12567
    if-eqz p2, :cond_49

    .line 12568
    invoke-interface {p2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_49

    .line 12571
    :cond_40
    const-string v4, "Intent"

    invoke-direct {p0, v2}, Landroid/content/Intent;->getLogMessageForKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12560
    .end local v2    # "key":Landroid/content/Intent$NestedIntentKey;
    .end local v3    # "extraIntent":Landroid/content/Intent;
    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 12575
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_4c
    return-void
.end method

.method public static whitelist getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8179
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getIntentOld(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 8441
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 8442
    .local v0, "intent":Landroid/content/Intent;
    iget v1, v0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/Intent;->mLocalFlags:I

    .line 8443
    return-object v0
.end method

.method private static greylist-max-o getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 20
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 8449
    move-object/from16 v1, p0

    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 8450
    .local v0, "i":I
    const-string v2, "android.intent.action.VIEW"

    if-ltz v0, :cond_1f6

    .line 8451
    const/4 v3, 0x0

    .line 8452
    .local v3, "action":Ljava/lang/String;
    move v4, v0

    .line 8453
    .local v4, "intentFragmentStart":I
    const/4 v5, 0x0

    .line 8455
    .local v5, "isIntentFragment":Z
    add-int/lit8 v0, v0, 0x1

    .line 8457
    const-string v6, "action("

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-virtual {v1, v0, v6, v7, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    const/16 v9, 0x29

    if-eqz v6, :cond_2a

    .line 8458
    const/4 v5, 0x1

    .line 8459
    add-int/lit8 v0, v0, 0x7

    .line 8460
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 8461
    .local v6, "j":I
    invoke-virtual {v1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 8462
    add-int/lit8 v0, v6, 0x1

    .line 8465
    .end local v6    # "j":I
    :cond_2a
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8467
    .local v6, "intent":Landroid/content/Intent;
    const-string v10, "categories("

    const/16 v11, 0xb

    invoke-virtual {v1, v0, v10, v7, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    const/16 v11, 0x21

    if-eqz v10, :cond_5b

    .line 8468
    const/4 v5, 0x1

    .line 8469
    add-int/lit8 v0, v0, 0xb

    .line 8470
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 8471
    .local v10, "j":I
    :goto_42
    if-ge v0, v10, :cond_59

    .line 8472
    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 8473
    .local v12, "sep":I
    if-ltz v12, :cond_4c

    if-le v12, v10, :cond_4d

    :cond_4c
    move v12, v10

    .line 8474
    :cond_4d
    if-ge v0, v12, :cond_56

    .line 8475
    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8477
    :cond_56
    add-int/lit8 v0, v12, 0x1

    .line 8478
    .end local v12    # "sep":I
    goto :goto_42

    .line 8479
    :cond_59
    add-int/lit8 v0, v10, 0x1

    .line 8482
    .end local v10    # "j":I
    :cond_5b
    const-string/jumbo v10, "type("

    const/4 v12, 0x5

    invoke-virtual {v1, v0, v10, v7, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_74

    .line 8483
    const/4 v5, 0x1

    .line 8484
    add-int/lit8 v0, v0, 0x5

    .line 8485
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 8486
    .restart local v10    # "j":I
    invoke-virtual {v1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 8487
    add-int/lit8 v0, v10, 0x1

    .line 8490
    .end local v10    # "j":I
    :cond_74
    const-string/jumbo v10, "launchFlags("

    const/16 v12, 0xc

    invoke-virtual {v1, v0, v10, v7, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_a0

    .line 8491
    const/4 v5, 0x1

    .line 8492
    add-int/lit8 v0, v0, 0xc

    .line 8493
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 8494
    .restart local v10    # "j":I
    invoke-virtual {v1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v6, Landroid/content/Intent;->mFlags:I

    .line 8495
    and-int/lit8 v12, p1, 0x4

    if-nez v12, :cond_9e

    .line 8496
    iget v12, v6, Landroid/content/Intent;->mFlags:I

    and-int/lit16 v12, v12, -0xc4

    iput v12, v6, Landroid/content/Intent;->mFlags:I

    .line 8498
    :cond_9e
    add-int/lit8 v0, v10, 0x1

    .line 8501
    .end local v10    # "j":I
    :cond_a0
    const-string v10, "component("

    const/16 v12, 0xa

    invoke-virtual {v1, v0, v10, v7, v12}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 8502
    const/4 v5, 0x1

    .line 8503
    add-int/lit8 v0, v0, 0xa

    .line 8504
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 8505
    .restart local v10    # "j":I
    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 8506
    .restart local v12    # "sep":I
    if-ltz v12, :cond_ca

    if-ge v12, v10, :cond_ca

    .line 8507
    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 8508
    .local v13, "pkg":Ljava/lang/String;
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 8509
    .local v14, "cls":Ljava/lang/String;
    new-instance v15, Landroid/content/ComponentName;

    invoke-direct {v15, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v15, v6, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 8511
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "cls":Ljava/lang/String;
    :cond_ca
    add-int/lit8 v0, v10, 0x1

    .line 8514
    .end local v10    # "j":I
    .end local v12    # "sep":I
    :cond_cc
    const-string v10, "extras("

    invoke-virtual {v1, v0, v10, v7, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_1dc

    .line 8515
    const/4 v5, 0x1

    .line 8516
    add-int/lit8 v0, v0, 0x7

    .line 8518
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 8519
    .local v8, "closeParen":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_1d4

    .line 8522
    :goto_de
    if-ge v0, v8, :cond_1dc

    .line 8524
    const/16 v12, 0x3d

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 8525
    .local v12, "j":I
    add-int/lit8 v13, v0, 0x1

    if-le v12, v13, :cond_1cc

    if-ge v0, v8, :cond_1cc

    .line 8528
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 8529
    .local v13, "type":C
    add-int/lit8 v0, v0, 0x1

    .line 8530
    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 8531
    .local v14, "key":Ljava/lang/String;
    add-int/lit8 v0, v12, 0x1

    .line 8534
    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 8535
    if-eq v12, v10, :cond_100

    if-lt v12, v8, :cond_101

    :cond_100
    move v12, v8

    .line 8536
    :cond_101
    const-string v15, "EXTRA missing \'!\'"

    if-ge v0, v12, :cond_1c6

    .line 8537
    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 8538
    .local v16, "value":Ljava/lang/String;
    move/from16 v17, v12

    .line 8541
    .end local v0    # "i":I
    .local v17, "i":I
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_116

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 8545
    :cond_116
    sparse-switch v13, :sswitch_data_202

    .line 8574
    move v10, v12

    move/from16 v12, v17

    .end local v17    # "i":I
    .restart local v10    # "j":I
    .local v12, "i":I
    :try_start_11c
    new-instance v0, Ljava/net/URISyntaxException;
    :try_end_11e
    .catch Ljava/lang/NumberFormatException; {:try_start_11c .. :try_end_11e} :catch_1bd

    goto/16 :goto_1b7

    .line 8571
    .end local v10    # "j":I
    .local v12, "j":I
    .restart local v17    # "i":I
    :sswitch_120
    :try_start_120
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v10

    invoke-virtual {v0, v14, v10}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V
    :try_end_129
    .catch Ljava/lang/NumberFormatException; {:try_start_120 .. :try_end_129} :catch_12c

    .line 8572
    move v10, v12

    goto/16 :goto_198

    .line 8576
    :catch_12c
    move-exception v0

    move v10, v12

    move/from16 v12, v17

    goto/16 :goto_1be

    .line 8568
    :sswitch_132
    :try_start_132
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_134
    .catch Ljava/lang/NumberFormatException; {:try_start_132 .. :try_end_134} :catch_13d

    move v10, v12

    .end local v12    # "j":I
    .restart local v10    # "j":I
    :try_start_135
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v0, v14, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8569
    goto :goto_198

    .line 8576
    .end local v10    # "j":I
    .restart local v12    # "j":I
    :catch_13d
    move-exception v0

    move v10, v12

    move/from16 v12, v17

    .end local v12    # "j":I
    .restart local v10    # "j":I
    goto/16 :goto_1be

    .line 8565
    .end local v10    # "j":I
    .restart local v12    # "j":I
    :sswitch_143
    move v10, v12

    .end local v12    # "j":I
    .restart local v10    # "j":I
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8566
    goto :goto_198

    .line 8562
    .end local v10    # "j":I
    .restart local v12    # "j":I
    :sswitch_14e
    move v10, v12

    .end local v12    # "j":I
    .restart local v10    # "j":I
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 8563
    goto :goto_198

    .line 8559
    .end local v10    # "j":I
    .restart local v12    # "j":I
    :sswitch_159
    move v10, v12

    .end local v12    # "j":I
    .restart local v10    # "j":I
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v0, v14, v11, v12}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 8560
    goto :goto_198

    .line 8556
    .end local v10    # "j":I
    .restart local v12    # "j":I
    :sswitch_164
    move v10, v12

    .end local v12    # "j":I
    .restart local v10    # "j":I
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 8557
    goto :goto_198

    .line 8553
    .end local v10    # "j":I
    .restart local v12    # "j":I
    :sswitch_173
    move v10, v12

    .end local v12    # "j":I
    .restart local v10    # "j":I
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 8554
    goto :goto_198

    .line 8547
    .end local v10    # "j":I
    .restart local v12    # "j":I
    :sswitch_17e
    move v10, v12

    .end local v12    # "j":I
    .restart local v10    # "j":I
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_188
    .catch Ljava/lang/NumberFormatException; {:try_start_135 .. :try_end_188} :catch_189

    .line 8548
    goto :goto_198

    .line 8576
    :catch_189
    move-exception v0

    move/from16 v12, v17

    goto :goto_1be

    .line 8550
    .end local v10    # "j":I
    .restart local v12    # "j":I
    :sswitch_18d
    move v10, v12

    .end local v12    # "j":I
    .restart local v10    # "j":I
    :try_start_18e
    iget-object v0, v6, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v0, v14, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_197
    .catch Ljava/lang/NumberFormatException; {:try_start_18e .. :try_end_197} :catch_1b3

    .line 8551
    nop

    .line 8578
    :goto_198
    nop

    .line 8580
    move/from16 v12, v17

    .end local v17    # "i":I
    .local v12, "i":I
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 8581
    .local v0, "ch":C
    if-ne v0, v9, :cond_1a3

    move v0, v12

    goto :goto_1dc

    .line 8582
    :cond_1a3
    const/16 v11, 0x21

    if-ne v0, v11, :cond_1ad

    .line 8583
    nop

    .end local v0    # "ch":C
    .end local v10    # "j":I
    .end local v13    # "type":C
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    add-int/lit8 v0, v12, 0x1

    .line 8584
    .end local v12    # "i":I
    .local v0, "i":I
    const/4 v10, -0x1

    goto/16 :goto_de

    .line 8582
    .local v0, "ch":C
    .restart local v10    # "j":I
    .restart local v12    # "i":I
    .restart local v13    # "type":C
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/String;
    :cond_1ad
    new-instance v2, Ljava/net/URISyntaxException;

    invoke-direct {v2, v1, v15, v12}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 8576
    .end local v0    # "ch":C
    .end local v12    # "i":I
    .restart local v17    # "i":I
    :catch_1b3
    move-exception v0

    move/from16 v12, v17

    .end local v17    # "i":I
    .restart local v12    # "i":I
    goto :goto_1be

    .line 8574
    :goto_1b7
    :try_start_1b7
    const-string v2, "EXTRA has unknown type"

    invoke-direct {v0, v1, v2, v12}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "intentFragmentStart":I
    .end local v5    # "isIntentFragment":Z
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v8    # "closeParen":I
    .end local v10    # "j":I
    .end local v12    # "i":I
    .end local v13    # "type":C
    .end local v14    # "key":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    .end local p0    # "uri":Ljava/lang/String;
    .end local p1    # "flags":I
    throw v0
    :try_end_1bd
    .catch Ljava/lang/NumberFormatException; {:try_start_1b7 .. :try_end_1bd} :catch_1bd

    .line 8576
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v4    # "intentFragmentStart":I
    .restart local v5    # "isIntentFragment":Z
    .restart local v6    # "intent":Landroid/content/Intent;
    .restart local v8    # "closeParen":I
    .restart local v10    # "j":I
    .restart local v12    # "i":I
    .restart local v13    # "type":C
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v16    # "value":Ljava/lang/String;
    .restart local p0    # "uri":Ljava/lang/String;
    .restart local p1    # "flags":I
    :catch_1bd
    move-exception v0

    .line 8577
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_1be
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v7, "EXTRA value can\'t be parsed"

    invoke-direct {v2, v1, v7, v12}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 8536
    .end local v10    # "j":I
    .end local v16    # "value":Ljava/lang/String;
    .local v0, "i":I
    .local v12, "j":I
    :cond_1c6
    new-instance v2, Ljava/net/URISyntaxException;

    invoke-direct {v2, v1, v15, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 8526
    .end local v13    # "type":C
    .end local v14    # "key":Ljava/lang/String;
    :cond_1cc
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v7, "EXTRA missing \'=\'"

    invoke-direct {v2, v1, v7, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 8519
    .end local v12    # "j":I
    :cond_1d4
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v7, "EXTRA missing trailing \')\'"

    invoke-direct {v2, v1, v7, v0}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 8587
    .end local v8    # "closeParen":I
    :cond_1dc
    :goto_1dc
    if-eqz v5, :cond_1e9

    .line 8588
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto :goto_1ef

    .line 8590
    :cond_1e9
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v6, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 8593
    :goto_1ef
    iget-object v7, v6, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-nez v7, :cond_1f5

    .line 8595
    iput-object v2, v6, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 8598
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "intentFragmentStart":I
    .end local v5    # "isIntentFragment":Z
    :cond_1f5
    goto :goto_200

    .line 8599
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1f6
    new-instance v3, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v6, v3

    .line 8602
    .restart local v6    # "intent":Landroid/content/Intent;
    :goto_200
    return-object v6

    nop

    :sswitch_data_202
    .sparse-switch
        0x42 -> :sswitch_18d
        0x53 -> :sswitch_17e
        0x62 -> :sswitch_173
        0x63 -> :sswitch_164
        0x64 -> :sswitch_159
        0x66 -> :sswitch_14e
        0x69 -> :sswitch_143
        0x6c -> :sswitch_132
        0x73 -> :sswitch_120
    .end sparse-switch
.end method

.method private blacklist getLogMessageForKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Landroid/content/Intent$NestedIntentKey;

    .line 12610
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v0

    const-string/jumbo v1, "} is not an intent."

    const-class v2, Landroid/content/Intent;

    const-string v3, "The key {"

    sparse-switch v0, :sswitch_data_128

    .line 12636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown key type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12628
    :sswitch_26
    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v0

    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_5a

    .line 12629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index out of range for clipData items. index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". item counts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 12630
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12629
    return-object v0

    .line 12632
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clipData items at index ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] is null or does not contain an intent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12621
    :sswitch_78
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_9d

    .line 12622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} does not correspond to an ArrayList<Parcelable> in the bundle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12625
    :cond_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "List.get("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") for key {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12614
    :sswitch_c3
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e8

    .line 12615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} does not correspond to a Parcelable[] in the bundle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12618
    :cond_e8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parcelable["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] for key {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12612
    :sswitch_10e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} does not correspond to an intent in the bundle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_128
    .sparse-switch
        0x1 -> :sswitch_10e
        0x2 -> :sswitch_c3
        0x4 -> :sswitch_78
        0x8 -> :sswitch_26
    .end sparse-switch
.end method

.method private blacklist handleNestedIntent(Landroid/content/Intent;Ljava/util/Set;Landroid/content/Intent$NestedIntentKey;Z)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "key"    # Landroid/content/Intent$NestedIntentKey;
    .param p4, "forceUnparcel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Set<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent$NestedIntentKey;",
            "Z)V"
        }
    .end annotation

    .line 12487
    .local p2, "visited":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent;>;"
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_c

    .line 12488
    new-instance v0, Landroid/content/Intent$CreatorTokenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/Intent$CreatorTokenInfo;-><init>(Landroid/content/Intent-IA;)V

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 12490
    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 12491
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0, v1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;Landroid/util/ArraySet;)V

    .line 12493
    :cond_1e
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12494
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 12495
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12496
    invoke-direct {p1, p2, p4}, Landroid/content/Intent;->collectNestedIntentKeysRecur(Ljava/util/Set;Z)V

    .line 12498
    :cond_33
    return-void
.end method

.method private blacklist handleParcelableArray([Landroid/os/Parcelable;Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 10
    .param p1, "parcelables"    # [Landroid/os/Parcelable;
    .param p2, "key"    # Ljava/lang/String;
    .param p4, "forceUnparcel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/Intent;",
            ">;Z)V"
        }
    .end annotation

    .line 12502
    .local p3, "visited":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    .line 12503
    aget-object v1, p1, v0

    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_1c

    check-cast v1, Landroid/content/Intent;

    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 12504
    new-instance v2, Landroid/content/Intent$NestedIntentKey;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v0, v4}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V

    invoke-direct {p0, v1, p3, v2, p4}, Landroid/content/Intent;->handleNestedIntent(Landroid/content/Intent;Ljava/util/Set;Landroid/content/Intent$NestedIntentKey;Z)V

    .line 12502
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12509
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private blacklist handleParcelableList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 10
    .param p2, "key"    # Ljava/lang/String;
    .param p4, "forceUnparcel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Landroid/content/Intent;",
            ">;Z)V"
        }
    .end annotation

    .line 12513
    .local p1, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .local p3, "visited":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 12514
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_21

    check-cast v1, Landroid/content/Intent;

    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {p3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 12515
    new-instance v2, Landroid/content/Intent$NestedIntentKey;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v0, v4}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V

    invoke-direct {p0, v1, p3, v2, p4}, Landroid/content/Intent;->handleNestedIntent(Landroid/content/Intent;Ljava/util/Set;Landroid/content/Intent$NestedIntentKey;Z)V

    .line 12513
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12520
    .end local v0    # "i":I
    :cond_24
    return-void
.end method

.method public static greylist-max-o isAccessUriMode(I)Z
    .registers 2
    .param p0, "modeFlags"    # I

    .line 7054
    and-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist isImageCaptureIntent()Z
    .registers 3

    .line 13202
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 13203
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 13204
    const-string v1, "android.provider.action.MOTION_PHOTO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 13205
    const-string v1, "android.provider.action.MOTION_PHOTO_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 13206
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    .line 13202
    :goto_36
    return v0
.end method

.method static synthetic blacklist lambda$static$0(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 12523
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 12524
    return-void
.end method

.method static synthetic blacklist lambda$static$1(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 12527
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 12528
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->enableTokenVerification()V

    .line 12530
    :cond_9
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_12

    .line 12531
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->setTokenVerificationEnabled()V

    .line 12533
    :cond_12
    return-void
.end method

.method private blacklist logCounterIfFlagsMissing(ILjava/lang/String;)V
    .registers 4
    .param p1, "requiredFlags"    # I
    .param p2, "metricId"    # Ljava/lang/String;

    .line 13422
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, p1

    if-eq v0, p1, :cond_a

    .line 13423
    invoke-static {p2}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 13425
    :cond_a
    return-void
.end method

.method private static greylist-max-o makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;
    .registers 9
    .param p3, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ClipData$Item;"
        }
    .end annotation

    .line 13468
    .local p0, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p1, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .local p2, "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_b

    :cond_a
    move-object v1, v0

    .line 13469
    .local v1, "uri":Landroid/net/Uri;
    :goto_b
    if-eqz p1, :cond_14

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_15

    :cond_14
    move-object v2, v0

    .line 13470
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_15
    if-eqz p2, :cond_1e

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1f

    :cond_1e
    move-object v3, v0

    .line 13471
    .local v3, "htmlText":Ljava/lang/String;
    :goto_1f
    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    return-object v4
.end method

.method public static whitelist makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    .line 8114
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8115
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8116
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8117
    return-object v0
.end method

.method public static whitelist makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "selectorAction"    # Ljava/lang/String;
    .param p1, "selectorCategory"    # Ljava/lang/String;

    .line 8144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8145
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8146
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8147
    .local v1, "selector":Landroid/content/Intent;
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8148
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 8150
    return-object v0
.end method

.method public static whitelist makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3
    .param p0, "mainActivity"    # Landroid/content/ComponentName;

    .line 8167
    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 8168
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8170
    return-object v0
.end method

.method private blacklist maybeConvertFileToContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 13429
    const-string v0, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 13430
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_57

    .line 13431
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13433
    .local v0, "file":Ljava/io/File;
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 13434
    :cond_28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_39} :catch_3e

    move-object p2, v1

    .line 13435
    if-eqz p2, :cond_3d

    .line 13436
    return-object p2

    .line 13440
    :cond_3d
    goto :goto_57

    .line 13438
    :catch_3e
    move-exception v1

    .line 13439
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring failure to create file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Intent"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13442
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_57
    :goto_57
    return-object p2
.end method

.method public static blacklist maybeMarkAsMissingCreatorToken(Ljava/lang/Object;)V
    .registers 6
    .param p0, "object"    # Ljava/lang/Object;

    .line 895
    instance-of v0, p0, Landroid/content/Intent;

    if-eqz v0, :cond_b

    move-object v0, p0

    check-cast v0, Landroid/content/Intent;

    .line 896
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/content/Intent;->maybeMarkAsMissingCreatorTokenInternal(Landroid/content/Intent;)V

    goto :goto_44

    .line 897
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_b
    instance-of v0, p0, [Landroid/os/Parcelable;

    if-eqz v0, :cond_25

    move-object v0, p0

    check-cast v0, [Landroid/os/Parcelable;

    .line 898
    .local v0, "parcelables":[Landroid/os/Parcelable;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_44

    aget-object v3, v0, v2

    .line 899
    .local v3, "p":Landroid/os/Parcelable;
    instance-of v4, v3, Landroid/content/Intent;

    if-eqz v4, :cond_22

    move-object v4, v3

    check-cast v4, Landroid/content/Intent;

    .line 900
    .local v4, "intent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/content/Intent;->maybeMarkAsMissingCreatorTokenInternal(Landroid/content/Intent;)V

    .line 898
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 903
    .end local v0    # "parcelables":[Landroid/os/Parcelable;
    :cond_25
    instance-of v0, p0, Ljava/util/ArrayList;

    if-eqz v0, :cond_44

    move-object v0, p0

    check-cast v0, Ljava/util/ArrayList;

    .line 904
    .local v0, "parcelables":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 905
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    if-ge v2, v1, :cond_44

    .line 906
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 907
    .local v3, "p":Ljava/lang/Object;
    instance-of v4, v3, Landroid/content/Intent;

    if-eqz v4, :cond_41

    move-object v4, v3

    check-cast v4, Landroid/content/Intent;

    .line 908
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/content/Intent;->maybeMarkAsMissingCreatorTokenInternal(Landroid/content/Intent;)V

    .line 905
    .end local v3    # "p":Ljava/lang/Object;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 912
    .end local v0    # "parcelables":Ljava/util/ArrayList;
    .end local v1    # "N":I
    .end local v2    # "i":I
    :cond_44
    :goto_44
    return-void
.end method

.method private static blacklist maybeMarkAsMissingCreatorTokenInternal(Landroid/content/Intent;)V
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;

    .line 915
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v3

    .line 916
    .local v0, "isForeign":Z
    :goto_b
    iget v4, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    .line 918
    .local v2, "isWithoutTrustedCreatorToken":Z
    :goto_13
    if-eqz v0, :cond_20

    if-eqz v2, :cond_20

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->preventIntentRedirect()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 919
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addExtendedFlags(I)Landroid/content/Intent;

    .line 921
    :cond_20
    return-void
.end method

.method public static whitelist normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Ljava/lang/String;

    .line 12983
    if-nez p0, :cond_4

    .line 12984
    const/4 v0, 0x0

    return-object v0

    .line 12987
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 12989
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 12990
    .local v0, "semicolonIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    .line 12991
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 12993
    :cond_1c
    return-object p0
.end method

.method public static greylist-max-r parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;
    .registers 19
    .param p0, "cmd"    # Landroid/os/ShellCommand;
    .param p1, "optionHandler"    # Landroid/content/Intent$CommandOptionHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 8632
    move-object/from16 v1, p1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8633
    .local v0, "intent":Landroid/content/Intent;
    move-object v2, v0

    .line 8634
    .local v2, "baseIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 8636
    .local v3, "hasIntentInfo":Z
    const/4 v4, 0x0

    .line 8637
    .local v4, "data":Landroid/net/Uri;
    const/4 v5, 0x0

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move-object v3, v0

    .line 8640
    .end local v0    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    .local v4, "hasIntentInfo":Z
    .local v5, "data":Landroid/net/Uri;
    .local v6, "type":Ljava/lang/String;
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .local v7, "opt":Ljava/lang/String;
    const/16 v8, 0x2f

    const/4 v9, 0x7

    if-eqz v0, :cond_731

    .line 8641
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v13, 0x8

    sparse-switch v0, :sswitch_data_7e4

    :cond_22
    goto/16 :goto_2bc

    :sswitch_24
    const-string v0, "--grant-write-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x1d

    goto/16 :goto_2bd

    :sswitch_30
    const-string v0, "--activity-multiple-task"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x28

    goto/16 :goto_2bd

    :sswitch_3c
    const-string v0, "--grant-read-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x1c

    goto/16 :goto_2bd

    :sswitch_48
    const-string v0, "--receiver-foreground"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x35

    goto/16 :goto_2bd

    :sswitch_54
    const-string v0, "--receiver-no-abort"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x36

    goto/16 :goto_2bd

    :sswitch_60
    const-string v0, "--activity-launched-from-history"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x27

    goto/16 :goto_2bd

    :sswitch_6c
    const-string v0, "--activity-clear-when-task-reset"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x25

    goto/16 :goto_2bd

    :sswitch_78
    const-string v0, "--esal"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x17

    goto/16 :goto_2bd

    :sswitch_84
    const-string v0, "--elal"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0xf

    goto/16 :goto_2bd

    :sswitch_90
    const-string v0, "--eial"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0xc

    goto/16 :goto_2bd

    :sswitch_9c
    const-string v0, "--efal"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x12

    goto/16 :goto_2bd

    :sswitch_a8
    const-string v0, "--edal"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x15

    goto/16 :goto_2bd

    :sswitch_b4
    const-string v0, "--selector"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x38

    goto/16 :goto_2bd

    :sswitch_c0
    const-string v0, "--activity-match-external"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x32

    goto/16 :goto_2bd

    :sswitch_cc
    const-string v0, "--receiver-replace-pending"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x34

    goto/16 :goto_2bd

    :sswitch_d8
    const-string v0, "--include-stopped-packages"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x21

    goto/16 :goto_2bd

    :sswitch_e4
    const-string v0, "--exclude-stopped-packages"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x20

    goto/16 :goto_2bd

    :sswitch_f0
    const-string v0, "--grant-persistable-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x1e

    goto/16 :goto_2bd

    :sswitch_fc
    const-string v0, "--activity-single-top"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto/16 :goto_2bd

    :sswitch_106
    const-string v0, "--receiver-registered-only"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x33

    goto/16 :goto_2bd

    :sswitch_112
    const-string v0, "--activity-no-user-action"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x2b

    goto/16 :goto_2bd

    :sswitch_11e
    const-string v0, "--activity-clear-top"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x24

    goto/16 :goto_2bd

    :sswitch_12a
    const-string v0, "--activity-reset-task-if-needed"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x2e

    goto/16 :goto_2bd

    :sswitch_136
    const-string v0, "--activity-no-animation"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x29

    goto/16 :goto_2bd

    :sswitch_142
    const-string v0, "--activity-exclude-from-recents"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x26

    goto/16 :goto_2bd

    :sswitch_14e
    const-string v0, "--esn"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v8, v9

    goto/16 :goto_2bd

    :sswitch_159
    const-string v0, "--esa"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x16

    goto/16 :goto_2bd

    :sswitch_165
    const-string v0, "--ela"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0xe

    goto/16 :goto_2bd

    :sswitch_171
    const-string v0, "--eia"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0xb

    goto/16 :goto_2bd

    :sswitch_17d
    const-string v0, "--efa"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x11

    goto/16 :goto_2bd

    :sswitch_189
    const-string v0, "--eda"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x14

    goto/16 :goto_2bd

    :sswitch_195
    const-string v0, "--ecn"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0xa

    goto/16 :goto_2bd

    :sswitch_1a1
    const-string v0, "--ez"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x18

    goto/16 :goto_2bd

    :sswitch_1ad
    const-string v0, "--eu"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x9

    goto/16 :goto_2bd

    :sswitch_1b9
    const-string v0, "--es"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v8, 0x6

    goto/16 :goto_2bd

    :sswitch_1c4
    const-string v0, "--el"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0xd

    goto/16 :goto_2bd

    :sswitch_1d0
    const-string v0, "--ei"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move v8, v13

    goto/16 :goto_2bd

    :sswitch_1db
    const-string v0, "--ef"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x10

    goto/16 :goto_2bd

    :sswitch_1e7
    const-string v0, "--ed"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x13

    goto/16 :goto_2bd

    :sswitch_1f3
    const-string v0, "-t"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v8, 0x2

    goto/16 :goto_2bd

    :sswitch_1fe
    const-string v0, "-p"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x1a

    goto/16 :goto_2bd

    :sswitch_20a
    const-string v0, "-n"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x19

    goto/16 :goto_2bd

    :sswitch_216
    const-string v0, "-i"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v8, 0x3

    goto/16 :goto_2bd

    :sswitch_221
    const-string v0, "-f"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x1b

    goto/16 :goto_2bd

    :sswitch_22d
    const-string v0, "-e"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v8, 0x5

    goto/16 :goto_2bd

    :sswitch_238
    const-string v0, "-d"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v8, 0x1

    goto/16 :goto_2bd

    :sswitch_243
    const-string v0, "-c"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v8, 0x4

    goto/16 :goto_2bd

    :sswitch_24e
    const-string v0, "-a"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v8, 0x0

    goto/16 :goto_2bd

    :sswitch_259
    const-string v0, "--receiver-include-background"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x37

    goto :goto_2bd

    :sswitch_264
    const-string v0, "--activity-previous-is-top"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x2c

    goto :goto_2bd

    :sswitch_26f
    const-string v0, "--activity-brought-to-front"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x23

    goto :goto_2bd

    :sswitch_27a
    const-string v0, "--activity-reorder-to-front"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x2d

    goto :goto_2bd

    :sswitch_285
    const-string v0, "--debug-log-resolution"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x22

    goto :goto_2bd

    :sswitch_290
    const-string v0, "--activity-clear-task"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x30

    goto :goto_2bd

    :sswitch_29b
    const-string v0, "--activity-no-history"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x2a

    goto :goto_2bd

    :sswitch_2a6
    const-string v0, "--activity-task-on-home"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x31

    goto :goto_2bd

    :sswitch_2b1
    const-string v0, "--grant-prefix-uri-permission"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 v8, 0x1f

    goto :goto_2bd

    :goto_2bc
    const/4 v8, -0x1

    :goto_2bd
    const-string v0, "Bad component name: "

    const/high16 v9, 0x20000000

    const/16 v16, 0x0

    const/high16 v10, 0x1000000

    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x8000000

    const-string v15, "(?<!\\\\),"

    const-string v14, ","

    packed-switch v8, :pswitch_data_8ca

    .line 8978
    if-eqz v1, :cond_716

    move-object/from16 v10, p0

    invoke-interface {v1, v7, v10}, Landroid/content/Intent$CommandOptionHandler;->handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z

    move-result v0

    if-eqz v0, :cond_718

    goto/16 :goto_714

    .line 8974
    :pswitch_2dc
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 8975
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8976
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    move-object/from16 v10, p0

    move-object v3, v0

    goto/16 :goto_714

    .line 8971
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :pswitch_2e9
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8972
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8968
    :pswitch_2f0
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8969
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8965
    :pswitch_2f7
    const/high16 v0, 0x10000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8966
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8962
    :pswitch_300
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8963
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8959
    :pswitch_307
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8960
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8956
    :pswitch_30e
    const/16 v0, 0x800

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8957
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8953
    :pswitch_317
    const/16 v0, 0x4000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8954
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8950
    :pswitch_320
    const v0, 0x8000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8951
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8947
    :pswitch_32a
    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8948
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8944
    :pswitch_331
    const/high16 v0, 0x200000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8945
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8941
    :pswitch_33a
    const/high16 v0, 0x20000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8942
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8938
    :pswitch_343
    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8939
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8935
    :pswitch_34a
    const/high16 v0, 0x40000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8936
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8932
    :pswitch_353
    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8933
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8929
    :pswitch_35a
    const/high16 v0, 0x10000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8930
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8926
    :pswitch_363
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8927
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8923
    :pswitch_36a
    const/high16 v0, 0x100000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8924
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8920
    :pswitch_373
    const/high16 v0, 0x800000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8921
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8917
    :pswitch_37c
    const/high16 v0, 0x80000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8918
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8914
    :pswitch_385
    const/high16 v0, 0x4000000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8915
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8911
    :pswitch_38e
    const/high16 v0, 0x400000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8912
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8908
    :pswitch_397
    invoke-virtual {v3, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8909
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8905
    :pswitch_39e
    const/16 v0, 0x20

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8906
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8902
    :pswitch_3a7
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8903
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8899
    :pswitch_3b0
    const/16 v0, 0x80

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8900
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8896
    :pswitch_3b9
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8897
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8893
    :pswitch_3c2
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8894
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8890
    :pswitch_3ca
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8891
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8886
    :pswitch_3d2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8887
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8888
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8878
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_3e5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8879
    .restart local v0    # "str":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8880
    if-ne v3, v2, :cond_3ef

    .line 8881
    const/4 v4, 0x1

    .line 8884
    .end local v0    # "str":Ljava/lang/String;
    :cond_3ef
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8867
    :pswitch_3f3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8868
    .local v8, "str":Ljava/lang/String;
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 8869
    .local v9, "cn":Landroid/content/ComponentName;
    if-eqz v9, :cond_407

    .line 8871
    invoke-virtual {v3, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 8872
    if-ne v3, v2, :cond_403

    .line 8873
    const/4 v4, 0x1

    .line 8876
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "cn":Landroid/content/ComponentName;
    :cond_403
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8870
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v9    # "cn":Landroid/content/ComponentName;
    :cond_407
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 8846
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "cn":Landroid/content/ComponentName;
    :pswitch_41e
    const/4 v0, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8847
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 8851
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_479

    const-string/jumbo v10, "t"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43e

    goto :goto_479

    .line 8853
    :cond_43e
    const-string v10, "false"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_477

    const-string v10, "f"

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44f

    goto :goto_477

    .line 8857
    :cond_44f
    :try_start_44f
    invoke-static {v9}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_457
    .catch Ljava/lang/NumberFormatException; {:try_start_44f .. :try_end_457} :catch_45d

    if-eqz v10, :cond_45b

    move v11, v0

    goto :goto_45c

    :cond_45b
    const/4 v11, 0x0

    .line 8860
    .local v11, "arg":Z
    :goto_45c
    goto :goto_47a

    .line 8858
    .end local v11    # "arg":Z
    :catch_45d
    move-exception v0

    .line 8859
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid boolean value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 8854
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_477
    :goto_477
    const/4 v11, 0x0

    .restart local v11    # "arg":Z
    goto :goto_47a

    .line 8852
    .end local v11    # "arg":Z
    :cond_479
    :goto_479
    const/4 v11, 0x1

    .line 8863
    .restart local v11    # "arg":Z
    :goto_47a
    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8865
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v11    # "arg":Z
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8831
    :pswitch_481
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8832
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8836
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8837
    .local v9, "strings":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 8838
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_494
    array-length v12, v9

    if-ge v11, v12, :cond_49f

    .line 8839
    aget-object v12, v9, v11

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8838
    add-int/lit8 v11, v11, 0x1

    goto :goto_494

    .line 8841
    .end local v11    # "i":I
    :cond_49f
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8842
    const/4 v0, 0x1

    .line 8844
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_714

    .line 8820
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_4a8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8821
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8825
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8826
    .restart local v9    # "strings":[Ljava/lang/String;
    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 8827
    const/4 v0, 0x1

    .line 8829
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_714

    .line 8808
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_4bd
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8809
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8810
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8811
    .restart local v9    # "strings":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 8812
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4d0
    array-length v12, v9

    if-ge v11, v12, :cond_4df

    .line 8813
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8812
    add-int/lit8 v11, v11, 0x1

    goto :goto_4d0

    .line 8815
    .end local v11    # "i":I
    :cond_4df
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8816
    const/4 v0, 0x1

    .line 8818
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_714

    .line 8796
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_4e8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8797
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8798
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8799
    .restart local v9    # "strings":[Ljava/lang/String;
    array-length v10, v9

    new-array v10, v10, [D

    .line 8800
    .local v10, "list":[D
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4f8
    array-length v12, v9

    if-ge v11, v12, :cond_50a

    .line 8801
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 8800
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f8

    .line 8803
    .end local v11    # "i":I
    :cond_50a
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 8804
    const/4 v0, 0x1

    .line 8806
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":[D
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_714

    .line 8789
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_513
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8790
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8791
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8792
    const/4 v0, 0x1

    .line 8794
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_714

    .line 8777
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_528
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8778
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8779
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8780
    .restart local v9    # "strings":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 8781
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_53b
    array-length v12, v9

    if-ge v11, v12, :cond_54a

    .line 8782
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8781
    add-int/lit8 v11, v11, 0x1

    goto :goto_53b

    .line 8784
    .end local v11    # "i":I
    :cond_54a
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8785
    const/4 v0, 0x1

    .line 8787
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_714

    .line 8765
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_553
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8766
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8767
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8768
    .restart local v9    # "strings":[Ljava/lang/String;
    array-length v10, v9

    new-array v10, v10, [F

    .line 8769
    .local v10, "list":[F
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_563
    array-length v12, v9

    if-ge v11, v12, :cond_575

    .line 8770
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    aput v12, v10, v11

    .line 8769
    add-int/lit8 v11, v11, 0x1

    goto :goto_563

    .line 8772
    .end local v11    # "i":I
    :cond_575
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    .line 8773
    const/4 v0, 0x1

    .line 8775
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":[F
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_714

    .line 8758
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_57e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8759
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8760
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8761
    const/4 v0, 0x1

    .line 8763
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_714

    .line 8746
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_593
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8747
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8748
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8749
    .restart local v9    # "strings":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 8750
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5a6
    array-length v12, v9

    if-ge v11, v12, :cond_5b5

    .line 8751
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8750
    add-int/lit8 v11, v11, 0x1

    goto :goto_5a6

    .line 8753
    .end local v11    # "i":I
    :cond_5b5
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8754
    const/4 v0, 0x1

    .line 8756
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_714

    .line 8734
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_5be
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8735
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8736
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8737
    .restart local v9    # "strings":[Ljava/lang/String;
    array-length v10, v9

    new-array v10, v10, [J

    .line 8738
    .local v10, "list":[J
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5ce
    array-length v12, v9

    if-ge v11, v12, :cond_5e0

    .line 8739
    aget-object v12, v9, v11

    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    aput-wide v12, v10, v11

    .line 8738
    add-int/lit8 v11, v11, 0x1

    goto :goto_5ce

    .line 8741
    .end local v11    # "i":I
    :cond_5e0
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 8742
    const/4 v0, 0x1

    .line 8744
    .end local v4    # "hasIntentInfo":Z
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":[J
    .local v0, "hasIntentInfo":Z
    move-object/from16 v10, p0

    move v4, v0

    goto/16 :goto_714

    .line 8728
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :pswitch_5e9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8729
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8730
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8732
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8717
    :pswitch_5fc
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8718
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8719
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8720
    .restart local v9    # "strings":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, v9

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 8721
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_60f
    array-length v12, v9

    if-ge v11, v12, :cond_61e

    .line 8722
    aget-object v12, v9, v11

    invoke-static {v12}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8721
    add-int/lit8 v11, v11, 0x1

    goto :goto_60f

    .line 8724
    .end local v11    # "i":I
    :cond_61e
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8726
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8706
    :pswitch_625
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8707
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8708
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8709
    .restart local v9    # "strings":[Ljava/lang/String;
    array-length v10, v9

    new-array v10, v10, [I

    .line 8710
    .local v10, "list":[I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_635
    array-length v12, v9

    if-ge v11, v12, :cond_647

    .line 8711
    aget-object v12, v9, v11

    invoke-static {v12}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v10, v11

    .line 8710
    add-int/lit8 v11, v11, 0x1

    goto :goto_635

    .line 8713
    .end local v11    # "i":I
    :cond_647
    invoke-virtual {v3, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 8715
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "strings":[Ljava/lang/String;
    .end local v10    # "list":[I
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8697
    :pswitch_64e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8698
    .local v8, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v9

    .line 8699
    .local v9, "value":Ljava/lang/String;
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    .line 8700
    .local v10, "cn":Landroid/content/ComponentName;
    if-eqz v10, :cond_663

    .line 8702
    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8704
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "cn":Landroid/content/ComponentName;
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8701
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    .restart local v10    # "cn":Landroid/content/ComponentName;
    :cond_663
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 8691
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "cn":Landroid/content/ComponentName;
    :pswitch_67a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8692
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8693
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8695
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8685
    :pswitch_68d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8686
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8687
    .restart local v8    # "value":Ljava/lang/String;
    invoke-static {v8}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 8689
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8680
    :pswitch_6a0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8681
    .restart local v0    # "key":Ljava/lang/String;
    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    move-object/from16 v8, v16

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8683
    .end local v0    # "key":Ljava/lang/String;
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8674
    :pswitch_6b1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8675
    .restart local v0    # "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    .line 8676
    .restart local v8    # "value":Ljava/lang/String;
    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8678
    .end local v0    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    move-object/from16 v10, p0

    goto/16 :goto_714

    .line 8667
    :pswitch_6c0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8668
    if-ne v3, v2, :cond_6ce

    .line 8669
    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    .end local v4    # "hasIntentInfo":Z
    .local v0, "hasIntentInfo":Z
    goto :goto_714

    .line 8668
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :cond_6ce
    move-object/from16 v10, p0

    goto :goto_714

    .line 8661
    :pswitch_6d1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    .line 8662
    if-ne v3, v2, :cond_6df

    .line 8663
    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    .end local v4    # "hasIntentInfo":Z
    .restart local v0    # "hasIntentInfo":Z
    goto :goto_714

    .line 8662
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :cond_6df
    move-object/from16 v10, p0

    goto :goto_714

    .line 8655
    :pswitch_6e2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 8656
    .end local v6    # "type":Ljava/lang/String;
    .local v0, "type":Ljava/lang/String;
    if-ne v3, v2, :cond_6ed

    .line 8657
    const/4 v4, 0x1

    move-object/from16 v10, p0

    move-object v6, v0

    goto :goto_714

    .line 8656
    :cond_6ed
    move-object/from16 v10, p0

    move-object v6, v0

    goto :goto_714

    .line 8649
    .end local v0    # "type":Ljava/lang/String;
    .restart local v6    # "type":Ljava/lang/String;
    :pswitch_6f1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8650
    .end local v5    # "data":Landroid/net/Uri;
    .local v0, "data":Landroid/net/Uri;
    if-ne v3, v2, :cond_700

    .line 8651
    const/4 v4, 0x1

    move-object/from16 v10, p0

    move-object v5, v0

    goto :goto_714

    .line 8650
    :cond_700
    move-object/from16 v10, p0

    move-object v5, v0

    goto :goto_714

    .line 8643
    .end local v0    # "data":Landroid/net/Uri;
    .restart local v5    # "data":Landroid/net/Uri;
    :pswitch_704
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8644
    if-ne v3, v2, :cond_712

    .line 8645
    const/4 v0, 0x1

    move-object/from16 v10, p0

    move v4, v0

    .end local v4    # "hasIntentInfo":Z
    .local v0, "hasIntentInfo":Z
    goto :goto_714

    .line 8644
    .end local v0    # "hasIntentInfo":Z
    .restart local v4    # "hasIntentInfo":Z
    :cond_712
    move-object/from16 v10, p0

    .line 8984
    :goto_714
    goto/16 :goto_f

    .line 8978
    :cond_716
    move-object/from16 v10, p0

    .line 8981
    :cond_718
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown option: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8986
    :cond_731
    const/4 v0, 0x1

    move-object/from16 v10, p0

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 8988
    if-eq v3, v2, :cond_73b

    move v11, v0

    goto :goto_73c

    :cond_73b
    const/4 v11, 0x0

    .line 8989
    .local v11, "hasSelector":Z
    :goto_73c
    if-eqz v11, :cond_742

    .line 8991
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 8992
    move-object v3, v2

    .line 8995
    :cond_742
    invoke-virtual {v10}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 8996
    .local v0, "arg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 8997
    const-string v12, "android.intent.category.LAUNCHER"

    const-string v13, "android.intent.action.MAIN"

    if-nez v0, :cond_759

    .line 8998
    if-eqz v11, :cond_789

    .line 9004
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 9005
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_789

    .line 9007
    :cond_759
    const/16 v14, 0x3a

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_766

    .line 9010
    invoke-static {v0, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    goto :goto_789

    .line 9012
    :cond_766
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_77d

    .line 9015
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 9016
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9017
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_789

    .line 9020
    :cond_77d
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    .line 9021
    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9022
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9024
    :cond_789
    :goto_789
    if-eqz v2, :cond_7d9

    .line 9025
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 9026
    .local v8, "extras":Landroid/os/Bundle;
    const/4 v9, 0x0

    move-object v12, v9

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual {v3, v9}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9027
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 9028
    .local v12, "uriExtras":Landroid/os/Bundle;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9029
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7c6

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v9

    if-eqz v9, :cond_7c6

    .line 9030
    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 9031
    .local v9, "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7b6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7c6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 9032
    .local v14, "c":Ljava/lang/String;
    invoke-virtual {v2, v14}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 9033
    .end local v14    # "c":Ljava/lang/String;
    goto :goto_7b6

    .line 9035
    .end local v9    # "cats":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7c6
    const/16 v9, 0x48

    invoke-virtual {v3, v2, v9}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 9036
    if-nez v8, :cond_7cf

    .line 9037
    move-object v8, v12

    goto :goto_7d5

    .line 9038
    :cond_7cf
    if-eqz v12, :cond_7d5

    .line 9039
    invoke-virtual {v12, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 9040
    move-object v8, v12

    .line 9042
    :cond_7d5
    :goto_7d5
    invoke-virtual {v3, v8}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9043
    const/4 v4, 0x1

    .line 9046
    .end local v8    # "extras":Landroid/os/Bundle;
    .end local v12    # "uriExtras":Landroid/os/Bundle;
    :cond_7d9
    if-eqz v4, :cond_7dc

    .line 9047
    return-object v3

    .line 9046
    :cond_7dc
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "No intent supplied"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_data_7e4
    .sparse-switch
        -0x7ffea226 -> :sswitch_2b1
        -0x7e40bfdd -> :sswitch_2a6
        -0x61305b9a -> :sswitch_29b
        -0x4aae571d -> :sswitch_290
        -0x3fbe74d1 -> :sswitch_285
        -0x328eb9b9 -> :sswitch_27a
        -0x31a9343b -> :sswitch_26f
        -0x2f378b56 -> :sswitch_264
        -0x2e804d8f -> :sswitch_259
        0x5d4 -> :sswitch_24e
        0x5d6 -> :sswitch_243
        0x5d7 -> :sswitch_238
        0x5d8 -> :sswitch_22d
        0x5d9 -> :sswitch_221
        0x5dc -> :sswitch_216
        0x5e1 -> :sswitch_20a
        0x5e3 -> :sswitch_1fe
        0x5e7 -> :sswitch_1f3
        0x152a3f -> :sswitch_1e7
        0x152a41 -> :sswitch_1db
        0x152a44 -> :sswitch_1d0
        0x152a47 -> :sswitch_1c4
        0x152a4e -> :sswitch_1b9
        0x152a50 -> :sswitch_1ad
        0x152a55 -> :sswitch_1a1
        0x2901df0 -> :sswitch_195
        0x2901e02 -> :sswitch_189
        0x2901e40 -> :sswitch_17d
        0x2901e9d -> :sswitch_171
        0x2901efa -> :sswitch_165
        0x2901fd3 -> :sswitch_159
        0x2901fe0 -> :sswitch_14e
        0x41eb1c6 -> :sswitch_142
        0x54a2ed6 -> :sswitch_136
        0xb611ab9 -> :sswitch_12a
        0xe1b6a37 -> :sswitch_11e
        0x1998b94a -> :sswitch_112
        0x1a0135d9 -> :sswitch_106
        0x1a23762e -> :sswitch_fc
        0x1f699c40 -> :sswitch_f0
        0x22987a20 -> :sswitch_e4
        0x2caeb912 -> :sswitch_d8
        0x2e337d40 -> :sswitch_cc
        0x422c3bb1 -> :sswitch_c0
        0x47f6597f -> :sswitch_b4
        0x4f73a2aa -> :sswitch_a8
        0x4f73aa2c -> :sswitch_9c
        0x4f73b56f -> :sswitch_90
        0x4f73c0b2 -> :sswitch_84
        0x4f73daf9 -> :sswitch_78
        0x50b32d5c -> :sswitch_6c
        0x5359f12e -> :sswitch_60
        0x569e74a2 -> :sswitch_54
        0x62838641 -> :sswitch_48
        0x67da9e16 -> :sswitch_3c
        0x69396684 -> :sswitch_30
        0x6c467a2f -> :sswitch_24
    .end sparse-switch

    :pswitch_data_8ca
    .packed-switch 0x0
        :pswitch_704
        :pswitch_6f1
        :pswitch_6e2
        :pswitch_6d1
        :pswitch_6c0
        :pswitch_6b1
        :pswitch_6b1
        :pswitch_6a0
        :pswitch_68d
        :pswitch_67a
        :pswitch_64e
        :pswitch_625
        :pswitch_5fc
        :pswitch_5e9
        :pswitch_5be
        :pswitch_593
        :pswitch_57e
        :pswitch_553
        :pswitch_528
        :pswitch_513
        :pswitch_4e8
        :pswitch_4bd
        :pswitch_4a8
        :pswitch_481
        :pswitch_41e
        :pswitch_3f3
        :pswitch_3e5
        :pswitch_3d2
        :pswitch_3ca
        :pswitch_3c2
        :pswitch_3b9
        :pswitch_3b0
        :pswitch_3a7
        :pswitch_39e
        :pswitch_397
        :pswitch_38e
        :pswitch_385
        :pswitch_37c
        :pswitch_373
        :pswitch_36a
        :pswitch_363
        :pswitch_35a
        :pswitch_353
        :pswitch_34a
        :pswitch_343
        :pswitch_33a
        :pswitch_331
        :pswitch_32a
        :pswitch_320
        :pswitch_317
        :pswitch_30e
        :pswitch_307
        :pswitch_300
        :pswitch_2f7
        :pswitch_2f0
        :pswitch_2e9
        :pswitch_2dc
    .end packed-switch
.end method

.method public static whitelist parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    .registers 20
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 12824
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 12826
    .local v2, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 12829
    .local v3, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12831
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 12832
    .local v5, "data":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 12833
    .local v7, "mimeType":Ljava/lang/String;
    if-eqz v5, :cond_28

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_29

    :cond_28
    const/4 v8, 0x0

    :goto_29
    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 12835
    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    .line 12837
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 12838
    .local v9, "packageName":Ljava/lang/String;
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 12839
    .local v11, "className":Ljava/lang/String;
    if-eqz v9, :cond_4a

    if-eqz v11, :cond_4a

    .line 12840
    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 12843
    :cond_4a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 12845
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    .line 12847
    .local v12, "outerDepth":I
    :goto_51
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move v14, v13

    .local v14, "type":I
    if-eq v13, v6, :cond_aa

    if-ne v14, v4, :cond_60

    .line 12848
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v12, :cond_aa

    .line 12849
    :cond_60
    if-eq v14, v4, :cond_a8

    if-ne v14, v10, :cond_65

    .line 12850
    goto :goto_a8

    .line 12853
    :cond_65
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 12854
    .local v13, "nodeName":Ljava/lang/String;
    const-string v15, "categories"

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_87

    .line 12855
    sget-object v15, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 12857
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 12858
    .local v15, "cat":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 12860
    if-eqz v15, :cond_83

    .line 12861
    invoke-virtual {v2, v15}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 12863
    :cond_83
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 12865
    .end local v15    # "cat":Ljava/lang/String;
    goto :goto_a6

    :cond_87
    const-string v15, "extra"

    invoke-virtual {v13, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a3

    .line 12866
    iget-object v4, v2, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v4, :cond_9a

    .line 12867
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v2, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 12869
    :cond_9a
    iget-object v4, v2, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v15, v1, v4}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 12870
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a6

    .line 12873
    :cond_a3
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 12875
    .end local v13    # "nodeName":Ljava/lang/String;
    :goto_a6
    const/4 v4, 0x3

    goto :goto_51

    .line 12847
    .end local v14    # "type":I
    :cond_a8
    :goto_a8
    const/4 v4, 0x3

    goto :goto_51

    .line 12877
    .restart local v14    # "type":I
    :cond_aa
    return-object v2
.end method

.method public static whitelist parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 8203
    invoke-static {p0, p1}, Landroid/content/Intent;->parseUriInternal(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 8204
    .local v0, "intent":Landroid/content/Intent;
    iget v1, v0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/content/Intent;->mLocalFlags:I

    .line 8205
    return-object v0
.end method

.method private static blacklist parseUriInternal(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 20
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 8213
    move-object/from16 v1, p0

    const-string v0, "android-app:"

    const/4 v2, 0x0

    .line 8215
    .local v2, "i":I
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_9} :catch_3a8

    .line 8218
    .local v3, "androidApp":Z
    and-int/lit8 v4, p1, 0x3

    const-string/jumbo v5, "intent:"

    const-string v6, "android.intent.action.VIEW"

    if-eqz v4, :cond_34

    .line 8219
    :try_start_12
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    if-nez v3, :cond_34

    .line 8220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_1f} :catch_3a8

    move-object v4, v0

    .line 8222
    .local v4, "intent":Landroid/content/Intent;
    :try_start_20
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_27} :catch_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_20 .. :try_end_27} :catch_3a8

    .line 8225
    nop

    .line 8226
    return-object v4

    .line 8223
    :catch_29
    move-exception v0

    .line 8224
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2a
    new-instance v5, Ljava/net/URISyntaxException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "i":I
    .end local p0    # "uri":Ljava/lang/String;
    .end local p1    # "flags":I
    throw v5

    .line 8230
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v2    # "i":I
    .restart local p0    # "uri":Ljava/lang/String;
    .restart local p1    # "flags":I
    :cond_34
    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 8232
    const/4 v4, -0x1

    if-ne v2, v4, :cond_4a

    .line 8233
    if-nez v3, :cond_5a

    .line 8234
    new-instance v0, Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0

    .line 8238
    :cond_4a
    const-string v4, "#Intent;"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 8239
    if-nez v3, :cond_59

    .line 8240
    invoke-static/range {p0 .. p1}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 8242
    :cond_59
    const/4 v2, -0x1

    .line 8247
    :cond_5a
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8248
    .restart local v4    # "intent":Landroid/content/Intent;
    move-object v6, v4

    .line 8249
    .local v6, "baseIntent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 8250
    .local v7, "explicitAction":Z
    const/4 v8, 0x0

    .line 8253
    .local v8, "inSelector":Z
    const/4 v9, 0x0

    .line 8255
    .local v9, "scheme":Ljava/lang/String;
    const/4 v10, 0x0

    if-ltz v2, :cond_6d

    .line 8256
    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11
    :try_end_6a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_6a} :catch_3a8

    .line 8257
    .local v11, "data":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x8

    goto :goto_6f

    .line 8259
    .end local v11    # "data":Ljava/lang/String;
    :cond_6d
    move-object/from16 v11, p0

    .line 8263
    .restart local v11    # "data":Ljava/lang/String;
    :goto_6f
    const-string v12, ":"

    const-string v13, ""

    if-ltz v2, :cond_28e

    :try_start_75
    const-string v14, "end"

    invoke-virtual {v1, v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_28e

    .line 8264
    const/16 v14, 0x3d

    invoke-virtual {v1, v14, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 8265
    .local v14, "eq":I
    if-gez v14, :cond_87

    add-int/lit8 v14, v2, -0x1

    .line 8266
    :cond_87
    const/16 v15, 0x3b

    invoke-virtual {v1, v15, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .line 8267
    .local v15, "semi":I
    if-ltz v15, :cond_280

    .line 8270
    if-ge v14, v15, :cond_9b

    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v1, v13, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 8273
    .local v13, "value":Ljava/lang/String;
    :cond_9b
    const-string v10, "action="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b4

    .line 8274
    invoke-virtual {v4, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8275
    if-nez v8, :cond_ad

    .line 8276
    const/4 v7, 0x1

    move/from16 v17, v3

    goto/16 :goto_270

    .line 8275
    :cond_ad
    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8281
    :cond_b4
    const-string v10, "category="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 8282
    invoke-virtual {v4, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8286
    :cond_c6
    const-string/jumbo v10, "type="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_d8

    .line 8287
    iput-object v13, v4, Landroid/content/Intent;->mType:Ljava/lang/String;

    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8291
    :cond_d8
    const-string/jumbo v10, "identifier="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_ea

    .line 8292
    iput-object v13, v4, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8296
    :cond_ea
    const-string/jumbo v10, "launchFlags="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_115

    .line 8297
    invoke-static {v13}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v4, Landroid/content/Intent;->mFlags:I

    .line 8298
    and-int/lit8 v10, p1, 0x4

    if-nez v10, :cond_10e

    .line 8299
    iget v10, v4, Landroid/content/Intent;->mFlags:I

    and-int/lit16 v10, v10, -0xc4

    iput v10, v4, Landroid/content/Intent;->mFlags:I

    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8298
    :cond_10e
    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8304
    :cond_115
    const-string v10, "extendedLaunchFlags="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_12e

    .line 8305
    invoke-static {v13}, Landroid/content/Intent;->decodeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v4, Landroid/content/Intent;->mExtendedFlags:I

    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8309
    :cond_12e
    const-string/jumbo v10, "package="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_140

    .line 8310
    iput-object v13, v4, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8314
    :cond_140
    const-string v10, "component="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_155

    .line 8315
    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    iput-object v10, v4, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8319
    :cond_155
    const-string/jumbo v10, "scheme="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_183

    .line 8320
    if-eqz v8, :cond_17e

    .line 8321
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, v4, Landroid/content/Intent;->mData:Landroid/net/Uri;

    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8323
    :cond_17e
    move-object v9, v13

    move/from16 v17, v3

    goto/16 :goto_270

    .line 8328
    :cond_183
    const-string/jumbo v10, "sourceBounds="

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_199

    .line 8329
    invoke-static {v13}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v10

    iput-object v10, v4, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8333
    :cond_199
    add-int/lit8 v10, v2, 0x3

    if-ne v15, v10, :cond_1b1

    const-string v10, "SEL"

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1b1

    .line 8334
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 8335
    .end local v4    # "intent":Landroid/content/Intent;
    .local v10, "intent":Landroid/content/Intent;
    const/4 v4, 0x1

    move/from16 v17, v3

    move v8, v4

    move-object v4, v10

    .end local v8    # "inSelector":Z
    .local v4, "inSelector":Z
    goto/16 :goto_270

    .line 8340
    .end local v10    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    .restart local v8    # "inSelector":Z
    :cond_1b1
    add-int/lit8 v10, v2, 0x2

    invoke-virtual {v1, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8342
    .local v10, "key":Ljava/lang/String;
    iget-object v12, v4, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v12, :cond_1c6

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    iput-object v12, v4, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 8343
    :cond_1c6
    iget-object v12, v4, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 8345
    .local v12, "b":Landroid/os/Bundle;
    move/from16 v17, v3

    .end local v3    # "androidApp":Z
    .local v17, "androidApp":Z
    const-string v3, "S."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1da

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8346
    :cond_1da
    const-string v3, "B."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1ee

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v12, v10, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8347
    :cond_1ee
    const-string v3, "b."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_202

    invoke-static {v13}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    invoke-virtual {v12, v10, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    move/from16 v16, v7

    move-object v7, v4

    goto/16 :goto_26d

    .line 8348
    :cond_202
    const-string v3, "c."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_216

    move/from16 v16, v7

    const/4 v3, 0x0

    .end local v7    # "explicitAction":Z
    .local v16, "explicitAction":Z
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v12, v10, v7}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    move-object v7, v4

    goto :goto_26d

    .line 8349
    .end local v16    # "explicitAction":Z
    .restart local v7    # "explicitAction":Z
    :cond_216
    move/from16 v16, v7

    const/4 v3, 0x0

    .end local v7    # "explicitAction":Z
    .restart local v16    # "explicitAction":Z
    const-string v7, "d."

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_22a

    move-object v7, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v12, v10, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_26d

    .line 8350
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_22a
    move-object v7, v4

    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v3, "f."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_23b

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v12, v10, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_26d

    .line 8351
    :cond_23b
    const-string/jumbo v3, "i."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_24c

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_26d

    .line 8352
    :cond_24c
    const-string/jumbo v3, "l."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_25d

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v12, v10, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_26d

    .line 8353
    :cond_25d
    const-string/jumbo v3, "s."

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_277

    invoke-static {v13}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    invoke-virtual {v12, v10, v3}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 8358
    .end local v10    # "key":Ljava/lang/String;
    .end local v12    # "b":Landroid/os/Bundle;
    .end local v16    # "explicitAction":Z
    .end local v17    # "androidApp":Z
    .restart local v3    # "androidApp":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    .local v7, "explicitAction":Z
    :goto_26d
    move-object v4, v7

    move/from16 v7, v16

    .end local v3    # "androidApp":Z
    .restart local v17    # "androidApp":Z
    :goto_270
    add-int/lit8 v2, v15, 0x1

    .line 8359
    .end local v13    # "value":Ljava/lang/String;
    .end local v14    # "eq":I
    .end local v15    # "semi":I
    move/from16 v3, v17

    const/4 v10, 0x0

    goto/16 :goto_6f

    .line 8354
    .end local v4    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v10    # "key":Ljava/lang/String;
    .restart local v12    # "b":Landroid/os/Bundle;
    .restart local v13    # "value":Ljava/lang/String;
    .restart local v14    # "eq":I
    .restart local v15    # "semi":I
    .restart local v16    # "explicitAction":Z
    :cond_277
    new-instance v0, Ljava/net/URISyntaxException;

    const-string/jumbo v3, "unknown EXTRA type"

    invoke-direct {v0, v1, v3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v2    # "i":I
    .end local p0    # "uri":Ljava/lang/String;
    .end local p1    # "flags":I
    throw v0

    .line 8268
    .end local v10    # "key":Ljava/lang/String;
    .end local v12    # "b":Landroid/os/Bundle;
    .end local v13    # "value":Ljava/lang/String;
    .end local v16    # "explicitAction":Z
    .end local v17    # "androidApp":Z
    .restart local v2    # "i":I
    .restart local v3    # "androidApp":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    .local v7, "explicitAction":Z
    .restart local p0    # "uri":Ljava/lang/String;
    .restart local p1    # "flags":I
    :cond_280
    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    .end local v3    # "androidApp":Z
    .end local v4    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v16    # "explicitAction":Z
    .restart local v17    # "androidApp":Z
    new-instance v0, Ljava/net/URISyntaxException;

    const-string/jumbo v3, "uri end not found"

    invoke-direct {v0, v1, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "i":I
    .end local p0    # "uri":Ljava/lang/String;
    .end local p1    # "flags":I
    throw v0

    .line 8263
    .end local v14    # "eq":I
    .end local v15    # "semi":I
    .end local v16    # "explicitAction":Z
    .end local v17    # "androidApp":Z
    .restart local v2    # "i":I
    .restart local v3    # "androidApp":Z
    .restart local v4    # "intent":Landroid/content/Intent;
    .local v7, "explicitAction":Z
    .restart local p0    # "uri":Ljava/lang/String;
    .restart local p1    # "flags":I
    :cond_28e
    move/from16 v17, v3

    move/from16 v16, v7

    move-object v7, v4

    .line 8361
    .end local v3    # "androidApp":Z
    .end local v4    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v16    # "explicitAction":Z
    .restart local v17    # "androidApp":Z
    if-eqz v8, :cond_29e

    .line 8363
    iget-object v3, v6, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v3, :cond_29c

    .line 8364
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 8366
    :cond_29c
    move-object v4, v6

    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    goto :goto_29f

    .line 8361
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_29e
    move-object v4, v7

    .line 8369
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    :goto_29f
    if-eqz v11, :cond_3a7

    .line 8370
    invoke-virtual {v11, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2cb

    .line 8371
    const/4 v0, 0x7

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 8372
    .end local v11    # "data":Ljava/lang/String;
    .local v0, "data":Ljava/lang/String;
    if-eqz v9, :cond_2c8

    .line 8373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x3a

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .end local v0    # "data":Ljava/lang/String;
    .local v3, "data":Ljava/lang/String;
    goto/16 :goto_38f

    .line 8372
    .end local v3    # "data":Ljava/lang/String;
    .restart local v0    # "data":Ljava/lang/String;
    :cond_2c8
    move-object v11, v0

    goto/16 :goto_38f

    .line 8375
    .end local v0    # "data":Ljava/lang/String;
    .restart local v11    # "data":Ljava/lang/String;
    :cond_2cb
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38f

    .line 8376
    const/16 v0, 0xc

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_38e

    const/16 v0, 0xd

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_38e

    .line 8378
    const/16 v0, 0xe

    invoke-virtual {v11, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5
    :try_end_2e9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_75 .. :try_end_2e9} :catch_3a8

    .line 8379
    .local v5, "end":I
    const-string v7, "android.intent.action.MAIN"

    if-gez v5, :cond_2ff

    .line 8381
    :try_start_2ed
    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 8382
    if-nez v16, :cond_2fc

    .line 8383
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8385
    :cond_2fc
    nop

    .end local v11    # "data":Ljava/lang/String;
    .local v13, "data":Ljava/lang/String;
    goto/16 :goto_38c

    .line 8388
    .end local v13    # "data":Ljava/lang/String;
    .restart local v11    # "data":Ljava/lang/String;
    :cond_2ff
    const/4 v10, 0x0

    .line 8389
    .local v10, "authority":Ljava/lang/String;
    invoke-virtual {v11, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 8391
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v0, v14, :cond_34e

    .line 8392
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v14, v0

    .local v14, "newEnd":I
    if-ltz v0, :cond_343

    .line 8394
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 8395
    move v5, v14

    .line 8396
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v5, v0, :cond_34e

    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    move v3, v0

    .end local v14    # "newEnd":I
    .local v3, "newEnd":I
    if-ltz v0, :cond_34e

    .line 8398
    add-int/lit8 v0, v5, 0x1

    .line 8399
    invoke-virtual {v11, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8398
    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 8400
    move v5, v3

    goto :goto_34e

    .line 8404
    .end local v3    # "newEnd":I
    .restart local v14    # "newEnd":I
    :cond_343
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decodeIfNeeded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 8407
    .end local v14    # "newEnd":I
    :cond_34e
    :goto_34e
    if-nez v9, :cond_357

    .line 8409
    if-nez v16, :cond_355

    .line 8410
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8412
    :cond_355
    nop

    .end local v11    # "data":Ljava/lang/String;
    .restart local v13    # "data":Ljava/lang/String;
    goto :goto_38c

    .line 8413
    .end local v13    # "data":Ljava/lang/String;
    .restart local v11    # "data":Ljava/lang/String;
    :cond_357
    if-nez v10, :cond_36c

    .line 8414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .end local v11    # "data":Ljava/lang/String;
    .restart local v13    # "data":Ljava/lang/String;
    goto :goto_38c

    .line 8416
    .end local v13    # "data":Ljava/lang/String;
    .restart local v11    # "data":Ljava/lang/String;
    :cond_36c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 8419
    .end local v5    # "end":I
    .end local v10    # "authority":Ljava/lang/String;
    .end local v11    # "data":Ljava/lang/String;
    .restart local v13    # "data":Ljava/lang/String;
    :goto_38c
    move-object v11, v13

    goto :goto_38f

    .line 8420
    .end local v13    # "data":Ljava/lang/String;
    .restart local v11    # "data":Ljava/lang/String;
    :cond_38e
    move-object v11, v13

    .line 8424
    :cond_38f
    :goto_38f
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_393
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2ed .. :try_end_393} :catch_3a8

    if-lez v0, :cond_3a7

    .line 8426
    :try_start_395
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v4, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_39b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_395 .. :try_end_39b} :catch_39c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_395 .. :try_end_39b} :catch_3a8

    .line 8429
    goto :goto_3a7

    .line 8427
    :catch_39c
    move-exception v0

    .line 8428
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_39d
    new-instance v3, Ljava/net/URISyntaxException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "i":I
    .end local p0    # "uri":Ljava/lang/String;
    .end local p1    # "flags":I
    throw v3
    :try_end_3a7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_39d .. :try_end_3a7} :catch_3a8

    .line 8433
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v2    # "i":I
    .restart local p0    # "uri":Ljava/lang/String;
    .restart local p1    # "flags":I
    :cond_3a7
    :goto_3a7
    return-object v4

    .line 8435
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "baseIntent":Landroid/content/Intent;
    .end local v8    # "inSelector":Z
    .end local v9    # "scheme":Ljava/lang/String;
    .end local v11    # "data":Ljava/lang/String;
    .end local v16    # "explicitAction":Z
    .end local v17    # "androidApp":Z
    :catch_3a8
    move-exception v0

    .line 8436
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/net/URISyntaxException;

    const-string/jumbo v4, "illegal Intent URI format"

    invoke-direct {v3, v1, v4, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3
.end method

.method public static greylist-max-r printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 56
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 9053
    const-string v52, "    [--selector]"

    const-string v53, "    [<URI> | <PACKAGE> | <COMPONENT>]"

    const-string v1, "<INTENT> specifications include these flags and arguments:"

    const-string v2, "    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>] [-i <IDENTIFIER>]"

    const-string v3, "    [-c <CATEGORY> [-c <CATEGORY>] ...]"

    const-string v4, "    [-n <COMPONENT_NAME>]"

    const-string v5, "    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]"

    const-string v6, "    [--esn <EXTRA_KEY> ...]"

    const-string v7, "    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]"

    const-string v8, "    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]"

    const-string v9, "    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]"

    const-string v10, "    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]"

    const-string v11, "    [--ed <EXTRA_KEY> <EXTRA_DOUBLE_VALUE> ...]"

    const-string v12, "    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]"

    const-string v13, "    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]"

    const-string v14, "    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const-string v15, "        (multiple extras passed as Integer[])"

    const-string v16, "    [--eial <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const-string v17, "        (multiple extras passed as List<Integer>)"

    const-string v18, "    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const-string v19, "        (multiple extras passed as Long[])"

    const-string v20, "    [--elal <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const-string v21, "        (multiple extras passed as List<Long>)"

    const-string v22, "    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const-string v23, "        (multiple extras passed as Float[])"

    const-string v24, "    [--efal <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const-string v25, "        (multiple extras passed as List<Float>)"

    const-string v26, "    [--eda <EXTRA_KEY> <EXTRA_DOUBLE_VALUE>[,<EXTRA_DOUBLE_VALUE...]]"

    const-string v27, "        (multiple extras passed as Double[])"

    const-string v28, "    [--edal <EXTRA_KEY> <EXTRA_DOUBLE_VALUE>[,<EXTRA_DOUBLE_VALUE...]]"

    const-string v29, "        (multiple extras passed as List<Double>)"

    const-string v30, "    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const-string v31, "        (multiple extras passed as String[]; to embed a comma into a string,"

    const-string v32, "         escape it using \"\\,\")"

    const-string v33, "    [--esal <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const-string v34, "        (multiple extras passed as List<String>; to embed a comma into a string,"

    const-string v35, "         escape it using \"\\,\")"

    const-string v36, "    [-f <FLAG>]"

    const-string v37, "    [--grant-read-uri-permission] [--grant-write-uri-permission]"

    const-string v38, "    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]"

    const-string v39, "    [--debug-log-resolution] [--exclude-stopped-packages]"

    const-string v40, "    [--include-stopped-packages]"

    const-string v41, "    [--activity-brought-to-front] [--activity-clear-top]"

    const-string v42, "    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]"

    const-string v43, "    [--activity-launched-from-history] [--activity-multiple-task]"

    const-string v44, "    [--activity-no-animation] [--activity-no-history]"

    const-string v45, "    [--activity-no-user-action] [--activity-previous-is-top]"

    const-string v46, "    [--activity-reorder-to-front] [--activity-reset-task-if-needed]"

    const-string v47, "    [--activity-single-top] [--activity-clear-task]"

    const-string v48, "    [--activity-task-on-home] [--activity-match-external]"

    const-string v49, "    [--receiver-registered-only] [--receiver-replace-pending]"

    const-string v50, "    [--receiver-foreground] [--receiver-no-abort]"

    const-string v51, "    [--receiver-include-background]"

    filled-new-array/range {v1 .. v53}, [Ljava/lang/String;

    move-result-object v0

    .line 9108
    .local v0, "lines":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_70
    if-ge v2, v1, :cond_7f

    aget-object v3, v0, v2

    .line 9109
    .local v3, "line":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9110
    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9108
    .end local v3    # "line":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 9112
    :cond_7f
    move-object/from16 v4, p0

    return-void
.end method

.method public static greylist-max-o restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 10
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 12914
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 12915
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 12917
    .local v1, "outerDepth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 12918
    .local v2, "attrCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "attrNdx":I
    :goto_f
    const-string v4, "Intent"

    if-ltz v3, :cond_a2

    .line 12919
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 12920
    .local v5, "attrName":Ljava/lang/String;
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 12921
    .local v6, "attrValue":Ljava/lang/String;
    const-string v7, "action"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 12922
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9e

    .line 12923
    :cond_28
    const-string v7, "data"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    .line 12924
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_9e

    .line 12925
    :cond_38
    const-string/jumbo v7, "type"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 12926
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9e

    .line 12927
    :cond_45
    const-string/jumbo v7, "ident"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 12928
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9e

    .line 12929
    :cond_52
    const-string v7, "component"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 12930
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_9e

    .line 12931
    :cond_62
    const-string v7, "flags"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 12932
    const/16 v4, 0x10

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_9e

    .line 12933
    :cond_74
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->intentSaveToXmlPackage()Z

    move-result v7

    if-eqz v7, :cond_87

    .line 12934
    const-string/jumbo v7, "package"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 12935
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9e

    .line 12937
    :cond_87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreFromXml: unknown attribute="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12918
    .end local v5    # "attrName":Ljava/lang/String;
    .end local v6    # "attrValue":Ljava/lang/String;
    :goto_9e
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_f

    .line 12943
    .end local v3    # "attrNdx":I
    :cond_a2
    :goto_a2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v5, v3

    .local v5, "event":I
    const/4 v6, 0x1

    if-eq v3, v6, :cond_f0

    const/4 v3, 0x3

    if-ne v5, v3, :cond_b3

    .line 12944
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v1, :cond_f0

    .line 12945
    :cond_b3
    const/4 v3, 0x2

    if-ne v5, v3, :cond_a2

    .line 12946
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 12947
    .local v3, "name":Ljava/lang/String;
    const-string v6, "categories"

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 12948
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 12949
    add-int/lit8 v6, v2, -0x1

    .local v6, "attrNdx":I
    :goto_c8
    if-ltz v6, :cond_d4

    .line 12950
    invoke-interface {p0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 12949
    add-int/lit8 v6, v6, -0x1

    goto :goto_c8

    .end local v6    # "attrNdx":I
    :cond_d4
    goto :goto_a2

    .line 12953
    :cond_d5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreFromXml: unknown name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12954
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a2

    .line 12959
    .end local v3    # "name":Ljava/lang/String;
    :cond_f0
    return-object v0
.end method

.method private greylist-max-o toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .param p1, "uri"    # Ljava/lang/StringBuilder;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "defAction"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 12212
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    .line 12214
    .local v3, "frag":Ljava/lang/StringBuilder;
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .end local p2    # "scheme":Ljava/lang/String;
    .end local p3    # "defAction":Ljava/lang/String;
    .end local p4    # "defPackage":Ljava/lang/String;
    .end local p5    # "flags":I
    .local v4, "scheme":Ljava/lang/String;
    .local v5, "defAction":Ljava/lang/String;
    .local v6, "defPackage":Ljava/lang/String;
    .local v7, "flags":I
    invoke-direct/range {v2 .. v7}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12215
    move-object p2, v2

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "defAction":Ljava/lang/String;
    .end local v6    # "defPackage":Ljava/lang/String;
    .local p3, "scheme":Ljava/lang/String;
    .local p4, "defAction":Ljava/lang/String;
    .local p5, "defPackage":Ljava/lang/String;
    iget-object v0, p2, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_35

    .line 12216
    const-string v0, "SEL;"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12220
    iget-object v2, p2, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v0, p2, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_2e

    iget-object v0, p2, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v0, v0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12224
    :cond_35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_48

    .line 12225
    const-string v0, "#Intent;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12226
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 12227
    const-string v0, "end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12229
    :cond_48
    return-void
.end method

.method private greylist-max-o toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "uri"    # Ljava/lang/StringBuilder;
    .param p2, "scheme"    # Ljava/lang/String;
    .param p3, "defAction"    # Ljava/lang/String;
    .param p4, "defPackage"    # Ljava/lang/String;
    .param p5, "flags"    # I

    .line 12233
    const/16 v0, 0x3b

    if-eqz p2, :cond_16

    .line 12234
    const-string/jumbo v1, "scheme="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12236
    :cond_16
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 12237
    const-string v1, "action="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12239
    :cond_35
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v1, :cond_5e

    .line 12240
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_5e

    .line 12241
    const-string v2, "category="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12240
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 12244
    .end local v1    # "i":I
    :cond_5e
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    const-string v2, "/"

    if-eqz v1, :cond_78

    .line 12245
    const-string/jumbo v1, "type="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12247
    :cond_78
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_90

    .line 12248
    const-string/jumbo v1, "identifier="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12250
    :cond_90
    iget v1, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v1, :cond_a8

    .line 12251
    const-string/jumbo v1, "launchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12253
    :cond_a8
    iget v1, p0, Landroid/content/Intent;->mExtendedFlags:I

    if-eqz v1, :cond_bf

    .line 12254
    const-string v1, "extendedLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12255
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12257
    :cond_bf
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_df

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 12258
    const-string/jumbo v1, "package="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12260
    :cond_df
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_fa

    .line 12261
    const-string v1, "component="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 12262
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 12261
    invoke-static {v3, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12262
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12264
    :cond_fa
    iget-object v1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_116

    .line 12265
    const-string/jumbo v1, "sourceBounds="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 12266
    invoke-virtual {v2}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12267
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12269
    :cond_116
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_19c

    .line 12270
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_124
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12271
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 12273
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_13d

    const/16 v4, 0x53

    goto :goto_176

    .line 12274
    :cond_13d
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_144

    const/16 v4, 0x42

    goto :goto_176

    .line 12275
    :cond_144
    instance-of v4, v3, Ljava/lang/Byte;

    if-eqz v4, :cond_14b

    const/16 v4, 0x62

    goto :goto_176

    .line 12276
    :cond_14b
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_152

    const/16 v4, 0x63

    goto :goto_176

    .line 12277
    :cond_152
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_159

    const/16 v4, 0x64

    goto :goto_176

    .line 12278
    :cond_159
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_160

    const/16 v4, 0x66

    goto :goto_176

    .line 12279
    :cond_160
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_167

    const/16 v4, 0x69

    goto :goto_176

    .line 12280
    :cond_167
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_16e

    const/16 v4, 0x6c

    goto :goto_176

    .line 12281
    :cond_16e
    instance-of v4, v3, Ljava/lang/Short;

    if-eqz v4, :cond_175

    const/16 v4, 0x73

    goto :goto_176

    .line 12282
    :cond_175
    const/4 v4, 0x0

    :goto_176
    nop

    .line 12284
    .local v4, "entryType":C
    if-eqz v4, :cond_19b

    .line 12285
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12286
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12287
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12288
    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12289
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12290
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12292
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "entryType":C
    :cond_19b
    goto :goto_124

    .line 12294
    :cond_19c
    return-void
.end method


# virtual methods
.method public whitelist addCategory(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "category"    # Ljava/lang/String;

    .line 10435
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    .line 10436
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 10438
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 10439
    return-object p0
.end method

.method public blacklist addExtendedFlags(I)Landroid/content/Intent;
    .registers 3
    .param p1, "flags"    # I

    .line 11363
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 11364
    return-object p0
.end method

.method public whitelist addFlags(I)Landroid/content/Intent;
    .registers 3
    .param p1, "flags"    # I

    .line 11346
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 11347
    return-object p0
.end method

.method public greylist-max-o canStripForHistory()Z
    .registers 2

    .line 9974
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isParcelled()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist checkCreatorToken()V
    .registers 3

    .line 12537
    sget-object v0, Landroid/content/Intent;->MARK_TRUSTED_TOKEN_PRESENT_ACTION:Ljava/util/function/Consumer;

    sget-object v1, Landroid/content/Intent;->ENABLE_TOKEN_VERIFY_ACTION:Ljava/util/function/Consumer;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;->forEachNestedCreatorToken(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 12538
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_10

    .line 12542
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->enableTokenVerification()V

    .line 12544
    :cond_10
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_19

    .line 12545
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->setTokenVerificationEnabled()V

    .line 12547
    :cond_19
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 7978
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public whitelist cloneFilter()Landroid/content/Intent;
    .registers 3

    .line 7986
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public blacklist cloneForCreatorToken()Landroid/content/Intent;
    .registers 4

    .line 7994
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 7995
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 7996
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 7997
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 7998
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mFlags:I

    and-int/lit16 v1, v1, 0xc3

    .line 7999
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 8000
    .local v0, "clone":Landroid/content/Intent;
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_34

    .line 8001
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->cloneOnlyUriItems()Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 8003
    :cond_34
    iget-object v1, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    iput-object v1, v0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 8004
    return-object v0
.end method

.method public blacklist collectExtraIntentKeys()V
    .registers 2

    .line 12408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->collectExtraIntentKeys(Z)V

    .line 12409
    return-void
.end method

.method public blacklist collectExtraIntentKeys(Z)V
    .registers 3
    .param p1, "forceUnparcel"    # Z

    .line 12424
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->preventIntentRedirect()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 12425
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/content/Intent;->collectNestedIntentKeysRecur(Ljava/util/Set;Z)V

    .line 12427
    :cond_e
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 12297
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 8
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 12044
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V

    .line 12045
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 12038
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p2    # "fieldId":J
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    .local v2, "fieldId":J
    invoke-virtual/range {v0 .. v7}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    .line 12039
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "secure"    # Z
    .param p5, "comp"    # Z
    .param p6, "extras"    # Z
    .param p7, "clip"    # Z

    .line 12050
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 12051
    .local v0, "token":J
    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local p4    # "secure":Z
    .end local p5    # "comp":Z
    .end local p6    # "extras":Z
    .end local p7    # "clip":Z
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    .local v4, "secure":Z
    .local v5, "comp":Z
    .local v6, "extras":Z
    .local v7, "clip":Z
    invoke-direct/range {v2 .. v7}, Landroid/content/Intent;->dumpDebugWithoutFieldId(Landroid/util/proto/ProtoOutputStream;ZZZZ)V

    .line 12052
    invoke-virtual {v3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 12053
    return-void
.end method

.method public whitelist fillIn(Landroid/content/Intent;I)I
    .registers 8
    .param p1, "other"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 11638
    const/4 v0, 0x0

    .line 11639
    .local v0, "changes":I
    const/4 v1, 0x0

    .line 11640
    .local v1, "mayHaveCopiedUris":Z
    iget-object v2, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v2, :cond_e

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_14

    .line 11642
    :cond_e
    iget-object v2, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 11643
    or-int/lit8 v0, v0, 0x1

    .line 11645
    :cond_14
    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v2, :cond_1c

    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v2, :cond_33

    :cond_1c
    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v2, :cond_24

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v2, :cond_28

    :cond_24
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_33

    .line 11648
    :cond_28
    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 11649
    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 11650
    or-int/lit8 v0, v0, 0x2

    .line 11651
    const/4 v1, 0x1

    .line 11653
    :cond_33
    iget-object v2, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_3f

    and-int/lit16 v2, p2, 0x100

    if-eqz v2, :cond_45

    .line 11655
    :cond_3f
    iget-object v2, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    .line 11656
    or-int/lit16 v0, v0, 0x100

    .line 11658
    :cond_45
    iget-object v2, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v2, :cond_60

    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v2, :cond_51

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_60

    .line 11660
    :cond_51
    iget-object v2, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v2, :cond_5e

    .line 11661
    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 11663
    :cond_5e
    or-int/lit8 v0, v0, 0x4

    .line 11665
    :cond_60
    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_76

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_6c

    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_76

    .line 11668
    :cond_6c
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v2, :cond_76

    .line 11669
    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 11670
    or-int/lit8 v0, v0, 0x10

    .line 11675
    :cond_76
    iget-object v2, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v2, :cond_90

    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_90

    .line 11676
    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v2, :cond_90

    .line 11677
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 11678
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 11679
    or-int/lit8 v0, v0, 0x40

    .line 11682
    :cond_90
    iget-object v2, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v2, :cond_a3

    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v2, :cond_9c

    and-int/lit16 v2, p2, 0x80

    if-eqz v2, :cond_a3

    .line 11684
    :cond_9c
    iget-object v2, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    iput-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 11685
    or-int/lit16 v0, v0, 0x80

    .line 11686
    const/4 v1, 0x1

    .line 11691
    :cond_a3
    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_b1

    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_b1

    .line 11692
    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11693
    or-int/lit8 v0, v0, 0x8

    .line 11695
    :cond_b1
    iget v2, p0, Landroid/content/Intent;->mFlags:I

    iget v3, p1, Landroid/content/Intent;->mFlags:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/Intent;->mFlags:I

    .line 11696
    iget v2, p0, Landroid/content/Intent;->mExtendedFlags:I

    iget v3, p1, Landroid/content/Intent;->mExtendedFlags:I

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 11697
    iget-object v2, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_d6

    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_cb

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_d6

    .line 11699
    :cond_cb
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 11700
    or-int/lit8 v0, v0, 0x20

    .line 11702
    :cond_d6
    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v2, :cond_e9

    .line 11703
    iget-object v2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_105

    .line 11704
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11705
    const/4 v1, 0x1

    goto :goto_105

    .line 11707
    :cond_e9
    iget-object v2, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_105

    .line 11709
    :try_start_ed
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 11710
    .local v2, "newb":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11711
    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_fb
    .catch Ljava/lang/RuntimeException; {:try_start_ed .. :try_end_fb} :catch_fd

    .line 11712
    const/4 v1, 0x1

    .line 11720
    .end local v2    # "newb":Landroid/os/Bundle;
    goto :goto_105

    .line 11713
    :catch_fd
    move-exception v2

    .line 11719
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Intent"

    const-string v4, "Failure filling in extras"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11722
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_105
    :goto_105
    iget-object v2, p1, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-direct {p0, v2, v0}, Landroid/content/Intent;->fillInCreatorTokenInfo(Landroid/content/Intent$CreatorTokenInfo;I)V

    .line 11723
    if-eqz v1, :cond_119

    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_119

    iget v2, p1, Landroid/content/Intent;->mContentUserHint:I

    if-eq v2, v3, :cond_119

    .line 11725
    iget v2, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 11727
    :cond_119
    return v0
.end method

.method public whitelist filterEquals(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "other"    # Landroid/content/Intent;

    .line 11838
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 11839
    return v0

    .line 11841
    :cond_4
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v0

    .line 11842
    :cond_f
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v2, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v0

    .line 11843
    :cond_1a
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v0

    .line 11844
    :cond_25
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v0

    .line 11845
    :cond_30
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v0

    .line 11846
    :cond_3b
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v0

    .line 11847
    :cond_46
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    iget-object v2, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    return v0

    .line 11849
    :cond_51
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist filterHashCode()I
    .registers 3

    .line 11861
    const/4 v0, 0x0

    .line 11862
    .local v0, "code":I
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 11863
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11865
    :cond_c
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_17

    .line 11866
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11868
    :cond_17
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 11869
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11871
    :cond_22
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 11872
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11874
    :cond_2d
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_38

    .line 11875
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11877
    :cond_38
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_43

    .line 11878
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11880
    :cond_43
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v1, :cond_4e

    .line 11881
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11883
    :cond_4e
    return v0
.end method

.method public greylist-max-o fixUris(I)V
    .registers 9
    .param p1, "contentUserHint"    # I

    .line 13245
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 13246
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_c

    .line 13247
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 13249
    :cond_c
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_15

    .line 13250
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v1, p1}, Landroid/content/ClipData;->fixUris(I)V

    .line 13252
    :cond_15
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 13253
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.intent.extra.STREAM"

    if-eqz v2, :cond_35

    .line 13254
    const-class v2, Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 13255
    .local v2, "stream":Landroid/net/Uri;
    if-eqz v2, :cond_34

    .line 13256
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13258
    .end local v2    # "stream":Landroid/net/Uri;
    :cond_34
    goto :goto_81

    :cond_35
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 13259
    const-class v2, Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    .line 13260
    .local v2, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v2, :cond_80

    .line 13261
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13262
    .local v4, "newStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_61

    .line 13263
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-static {v6, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13262
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 13265
    .end local v5    # "i":I
    :cond_61
    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_80

    .line 13267
    .end local v2    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v4    # "newStreams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_65
    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 13268
    const-class v2, Landroid/net/Uri;

    const-string/jumbo v3, "output"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 13269
    .local v2, "output":Landroid/net/Uri;
    if-eqz v2, :cond_81

    .line 13270
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_81

    .line 13267
    .end local v2    # "output":Landroid/net/Uri;
    :cond_80
    :goto_80
    nop

    .line 13273
    :cond_81
    :goto_81
    return-void
.end method

.method public blacklist forEachNestedCreatorToken(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 12551
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Landroid/content/Intent;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;->forEachNestedCreatorToken(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 12552
    return-void
.end method

.method public whitelist getAction()Ljava/lang/String;
    .registers 2

    .line 9125
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getBooleanArrayExtra(Ljava/lang/String;)[Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9755
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getBooleanExtra(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 9409
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    move v0, p2

    goto :goto_c

    .line 9410
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 9409
    :goto_c
    return v0
.end method

.method public whitelist getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9895
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getByteArrayExtra(Ljava/lang/String;)[B
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9769
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getByteExtra(Ljava/lang/String;B)B
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 9426
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    move v0, p2

    goto :goto_10

    .line 9427
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 9426
    :goto_10
    return v0
.end method

.method public whitelist getCategories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9296
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist getCharArrayExtra(Ljava/lang/String;)[C
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9797
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getCharExtra(Ljava/lang/String;C)C
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .line 9460
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    move v0, p2

    goto :goto_c

    .line 9461
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    .line 9460
    :goto_c
    return v0
.end method

.method public whitelist getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9881
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 9741
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9557
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .registers 2

    .line 9316
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 2

    .line 10054
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getContentUserHint()I
    .registers 2

    .line 9321
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    return v0
.end method

.method public blacklist getCreatorToken()Landroid/os/IBinder;
    .registers 2

    .line 12385
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;)Landroid/os/IBinder;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getData()Landroid/net/Uri;
    .registers 2

    .line 9140
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getDataString()Ljava/lang/String;
    .registers 2

    .line 9148
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getDoubleArrayExtra(Ljava/lang/String;)[D
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9853
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getDoubleExtra(Ljava/lang/String;D)D
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 9528
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    move-wide v0, p2

    goto :goto_c

    .line 9529
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 9528
    :goto_c
    return-wide v0
.end method

.method public blacklist getExtendedFlags()I
    .registers 2

    .line 10018
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    return v0
.end method

.method public greylist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9393
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9935
    move-object v0, p2

    .line 9936
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_e

    .line 9937
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 9938
    .local v1, "result2":Ljava/lang/Object;
    if-eqz v1, :cond_e

    .line 9939
    move-object v0, v1

    .line 9943
    .end local v1    # "result2":Ljava/lang/Object;
    :cond_e
    return-object v0
.end method

.method public blacklist getExtraIntentKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/Intent$NestedIntentKey;",
            ">;"
        }
    .end annotation

    .line 12390
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 3

    .line 9953
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    .line 9954
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    .line 9955
    :cond_c
    const/4 v0, 0x0

    .line 9953
    :goto_d
    return-object v0
.end method

.method public blacklist getExtrasTotalSize()I
    .registers 2

    .line 9963
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 9964
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->getSize()I

    move-result v0

    goto :goto_c

    .line 9965
    :cond_b
    const/4 v0, 0x0

    .line 9963
    :goto_c
    return v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 10002
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    return v0
.end method

.method public whitelist getFloatArrayExtra(Ljava/lang/String;)[F
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9839
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getFloatExtra(Ljava/lang/String;F)F
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 9511
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    move v0, p2

    goto :goto_c

    .line 9512
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 9511
    :goto_c
    return v0
.end method

.method public greylist getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9914
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getIdentifier()Ljava/lang/String;
    .registers 2

    .line 9269
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntArrayExtra(Ljava/lang/String;)[I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9811
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getIntExtra(Ljava/lang/String;I)I
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 9477
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    move v0, p2

    goto :goto_c

    .line 9478
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 9477
    :goto_c
    return v0
.end method

.method public whitelist getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9711
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public greylist-max-o getLaunchToken()Ljava/lang/String;
    .registers 2

    .line 9326
    iget-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLongArrayExtra(Ljava/lang/String;)[J
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9825
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getLongExtra(Ljava/lang/String;J)J
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 9494
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    move-wide v0, p2

    goto :goto_c

    .line 9495
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 9494
    :goto_c
    return-wide v0
.end method

.method public blacklist getOriginalIntent()Landroid/content/Intent;
    .registers 2

    .line 9187
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getPackage()Ljava/lang/String;
    .registers 2

    .line 10039
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9608
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getParcelableArrayExtra(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 9625
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9644
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 9663
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 3
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9575
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 9590
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getScheme()Ljava/lang/String;
    .registers 2

    .line 9164
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public whitelist getSelector()Landroid/content/Intent;
    .registers 2

    .line 9306
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9680
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 9696
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getShortArrayExtra(Ljava/lang/String;)[S
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9783
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getShortExtra(Ljava/lang/String;S)S
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .line 9443
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    move v0, p2

    goto :goto_c

    .line 9444
    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    .line 9443
    :goto_c
    return v0
.end method

.method public whitelist getSourceBounds()Landroid/graphics/Rect;
    .registers 2

    .line 10063
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9867
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9726
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9543
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 9178
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist hasCategory(Ljava/lang/String;)Z
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .line 9283
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist hasExtra(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 9353
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist hasFileDescriptors()Z
    .registers 2

    .line 9361
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public greylist-max-o hasWebURI()Z
    .registers 4

    .line 13185
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 13186
    return v1

    .line 13188
    :cond_8
    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 13189
    .local v0, "scheme":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 13190
    return v1

    .line 13192
    :cond_13
    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_25
    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public greylist-max-o isDocument()Z
    .registers 3

    .line 13476
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist isExcludingStopped()Z
    .registers 3

    .line 10024
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isImplicitImageCaptureIntent()Z
    .registers 2

    .line 13211
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist isMismatchingFilter()Z
    .registers 3

    .line 13237
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public greylist-max-o isWebIntent()Z
    .registers 3

    .line 13197
    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 13198
    invoke-virtual {p0}, Landroid/content/Intent;->hasWebURI()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 13197
    :goto_13
    return v0
.end method

.method public greylist-max-o maybeStripForHistory()Landroid/content/Intent;
    .registers 3

    .line 9985
    invoke-virtual {p0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 9986
    return-object p0

    .line 9988
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public blacklist mergeExtras(Landroid/content/Intent;Landroid/os/BundleMerger;)V
    .registers 5
    .param p1, "other"    # Landroid/content/Intent;
    .param p2, "extrasMerger"    # Landroid/os/BundleMerger;

    .line 11780
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1}, Landroid/os/BundleMerger;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11781
    return-void
.end method

.method public greylist-max-o migrateExtraStreamToClipData()Z
    .registers 2

    .line 13285
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist migrateExtraStreamToClipData(Landroid/content/Context;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 13300
    const-string/jumbo v0, "output"

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v1

    if-eqz v1, :cond_11

    return v2

    .line 13303
    :cond_11
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_18

    return v2

    .line 13305
    :cond_18
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 13306
    .local v1, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.CHOOSER"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 13312
    const/4 v0, 0x0

    .line 13314
    .local v0, "migrated":Z
    :try_start_25
    const-string v2, "android.intent.extra.INTENT"

    const-class v3, Landroid/content/Intent;

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 13315
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_36

    .line 13316
    invoke-virtual {v2, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v3
    :try_end_35
    .catch Ljava/lang/ClassCastException; {:try_start_25 .. :try_end_35} :catch_37

    or-int/2addr v0, v3

    .line 13319
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_36
    goto :goto_38

    .line 13318
    :catch_37
    move-exception v2

    .line 13321
    :goto_38
    :try_start_38
    const-string v2, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 13322
    .local v2, "intents":[Landroid/os/Parcelable;
    if-eqz v2, :cond_52

    .line 13323
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_41
    array-length v4, v2

    if-ge v3, v4, :cond_52

    .line 13324
    aget-object v4, v2, v3

    check-cast v4, Landroid/content/Intent;

    .line 13325
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_4f

    .line 13326
    invoke-virtual {v4, p1}, Landroid/content/Intent;->migrateExtraStreamToClipData(Landroid/content/Context;)Z

    move-result v5
    :try_end_4e
    .catch Ljava/lang/ClassCastException; {:try_start_38 .. :try_end_4e} :catch_53

    or-int/2addr v0, v5

    .line 13323
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 13331
    .end local v2    # "intents":[Landroid/os/Parcelable;
    .end local v3    # "i":I
    :cond_52
    goto :goto_54

    .line 13330
    :catch_53
    move-exception v2

    .line 13332
    :goto_54
    return v0

    .line 13334
    .end local v0    # "migrated":Z
    :cond_55
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.extra.HTML_TEXT"

    const-string v5, "android.intent.extra.TEXT"

    const-string v6, "android.intent.extra.STREAM"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_a1

    .line 13336
    :try_start_65
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p0, v6, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 13337
    .local v0, "stream":Landroid/net/Uri;
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 13338
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13339
    .local v4, "htmlText":Ljava/lang/String;
    if-nez v0, :cond_7d

    if-nez v3, :cond_7d

    if-eqz v4, :cond_7c

    goto :goto_7d

    .end local v0    # "stream":Landroid/net/Uri;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "htmlText":Ljava/lang/String;
    :cond_7c
    goto :goto_9f

    .line 13340
    .restart local v0    # "stream":Landroid/net/Uri;
    .restart local v3    # "text":Ljava/lang/CharSequence;
    .restart local v4    # "htmlText":Ljava/lang/String;
    :cond_7d
    :goto_7d
    new-instance v5, Landroid/content/ClipData;

    .line 13341
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v9, Landroid/content/ClipData$Item;

    invoke-direct {v9, v3, v4, v7, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v5, v7, v6, v9}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 13343
    .local v5, "clipData":Landroid/content/ClipData;
    invoke-virtual {p0, v5}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 13344
    if-eqz v0, :cond_9d

    .line 13345
    const-string/jumbo v6, "intents.value_explicit_uri_grant_for_send_action"

    invoke-direct {p0, v8, v6}, Landroid/content/Intent;->logCounterIfFlagsMissing(ILjava/lang/String;)V

    .line 13347
    invoke-virtual {p0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_9d
    .catch Ljava/lang/ClassCastException; {:try_start_65 .. :try_end_9d} :catch_9e

    .line 13349
    :cond_9d
    return v8

    .line 13351
    .end local v0    # "stream":Landroid/net/Uri;
    .end local v3    # "text":Ljava/lang/CharSequence;
    .end local v4    # "htmlText":Ljava/lang/String;
    .end local v5    # "clipData":Landroid/content/ClipData;
    :catch_9e
    move-exception v0

    .line 13352
    :goto_9f
    goto/16 :goto_13f

    .line 13354
    :cond_a1
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 13356
    :try_start_a9
    const-class v0, Landroid/net/Uri;

    invoke-virtual {p0, v6, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 13357
    .local v0, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 13358
    .local v3, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 13359
    .local v4, "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, -0x1

    .line 13360
    .local v5, "num":I
    if-eqz v0, :cond_bf

    .line 13361
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    .line 13363
    :cond_bf
    if-eqz v3, :cond_cf

    .line 13364
    if-ltz v5, :cond_ca

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_ca

    .line 13366
    return v2

    .line 13368
    :cond_ca
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    .line 13370
    :cond_cf
    if-eqz v4, :cond_df

    .line 13371
    if-ltz v5, :cond_da

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_da

    .line 13373
    return v2

    .line 13375
    :cond_da
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v6

    .line 13377
    :cond_df
    if-lez v5, :cond_10e

    .line 13378
    new-instance v6, Landroid/content/ClipData;

    .line 13379
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    .line 13380
    invoke-static {v0, v3, v4, v2}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-direct {v6, v7, v9, v10}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 13382
    .local v6, "clipData":Landroid/content/ClipData;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_f3
    if-ge v7, v5, :cond_ff

    .line 13383
    invoke-static {v0, v3, v4, v7}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 13382
    add-int/lit8 v7, v7, 0x1

    goto :goto_f3

    .line 13386
    .end local v7    # "i":I
    :cond_ff
    invoke-virtual {p0, v6}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 13387
    if-eqz v0, :cond_10d

    .line 13388
    const-string/jumbo v7, "intents.value_explicit_uri_grant_for_send_multiple_action"

    invoke-direct {p0, v8, v7}, Landroid/content/Intent;->logCounterIfFlagsMissing(ILjava/lang/String;)V

    .line 13390
    invoke-virtual {p0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_10d
    .catch Ljava/lang/ClassCastException; {:try_start_a9 .. :try_end_10d} :catch_10f

    .line 13392
    :cond_10d
    return v8

    .line 13377
    .end local v0    # "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v3    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "htmlTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "num":I
    .end local v6    # "clipData":Landroid/content/ClipData;
    :cond_10e
    goto :goto_110

    .line 13394
    :catch_10f
    move-exception v0

    .line 13395
    :goto_110
    goto :goto_13f

    .line 13396
    :cond_111
    invoke-direct {p0}, Landroid/content/Intent;->isImageCaptureIntent()Z

    move-result v3

    if-eqz v3, :cond_13f

    .line 13399
    :try_start_117
    const-class v3, Landroid/net/Uri;

    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_11f
    .catch Ljava/lang/ClassCastException; {:try_start_117 .. :try_end_11f} :catch_13d

    .line 13402
    .local v3, "output":Landroid/net/Uri;
    nop

    .line 13404
    if-eqz v3, :cond_13f

    .line 13405
    invoke-direct {p0, p1, v3}, Landroid/content/Intent;->maybeConvertFileToContentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 13406
    .end local v3    # "output":Landroid/net/Uri;
    .local v2, "output":Landroid/net/Uri;
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13408
    const-string v0, ""

    invoke-static {v0, v2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 13410
    const-string/jumbo v0, "intents.value_explicit_uri_grant_for_image_capture_action"

    const/4 v3, 0x3

    invoke-direct {p0, v3, v0}, Landroid/content/Intent;->logCounterIfFlagsMissing(ILjava/lang/String;)V

    .line 13413
    invoke-virtual {p0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 13414
    return v8

    .line 13400
    .end local v2    # "output":Landroid/net/Uri;
    :catch_13d
    move-exception v0

    .line 13401
    .local v0, "e":Ljava/lang/ClassCastException;
    return v2

    .line 13418
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_13f
    :goto_13f
    return v2
.end method

.method public blacklist prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    .registers 6
    .param p1, "localFlags"    # I
    .param p2, "source"    # Landroid/content/AttributionSource;

    .line 13146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 13148
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 13151
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    .line 13153
    :cond_e
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_17

    .line 13154
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p2}, Landroid/content/ClipData;->prepareToEnterProcess(Landroid/content/AttributionSource;)V

    .line 13156
    :cond_17
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v0, :cond_20

    .line 13159
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    .line 13162
    :cond_20
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_38

    .line 13163
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_38

    .line 13164
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    .line 13165
    iput v1, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 13169
    :cond_38
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 13170
    invoke-virtual {p0}, Landroid/content/Intent;->checkCreatorToken()V

    .line 13174
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string v1, "android.bluetooth."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 13175
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 13176
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 13177
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_63

    .line 13178
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->prepareToEnterProcess(Landroid/content/AttributionSource;)V

    .line 13181
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_63
    return-void
.end method

.method public blacklist prepareToEnterProcess(ZLandroid/content/AttributionSource;)V
    .registers 4
    .param p1, "fromProtectedComponent"    # Z
    .param p2, "source"    # Landroid/content/AttributionSource;

    .line 13132
    if-eqz p1, :cond_7

    .line 13133
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    goto :goto_b

    .line 13135
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V

    .line 13137
    :goto_b
    return-void
.end method

.method public greylist-max-r prepareToLeaveProcess(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 13005
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_15

    .line 13006
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .local v0, "leavingPackage":Z
    goto :goto_27

    .line 13007
    .end local v0    # "leavingPackage":Z
    :cond_15
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 13008
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .restart local v0    # "leavingPackage":Z
    goto :goto_27

    .line 13013
    .end local v0    # "leavingPackage":Z
    :cond_26
    const/4 v0, 0x1

    .line 13015
    .restart local v0    # "leavingPackage":Z
    :goto_27
    invoke-virtual {p0, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    .line 13016
    return-void
.end method

.method public greylist-max-o prepareToLeaveProcess(Z)V
    .registers 3
    .param p1, "leavingPackage"    # Z

    .line 13025
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(ZZ)V

    .line 13026
    return-void
.end method

.method blacklist prepareToLeaveProcess(ZZ)V
    .registers 13
    .param p1, "leavingPackage"    # Z
    .param p2, "isTopLevel"    # Z

    .line 13032
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAllowFds(Z)V

    .line 13034
    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v1, :cond_d

    .line 13035
    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(ZZ)V

    .line 13037
    :cond_d
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_1a

    .line 13038
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ClipData;->prepareToLeaveProcess(ZI)V

    .line 13040
    :cond_1a
    iget-object v1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v1, :cond_23

    .line 13041
    iget-object v1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(ZZ)V

    .line 13044
    :cond_23
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_41

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v1

    if-nez v1, :cond_41

    .line 13045
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 13046
    .local v1, "intent":Ljava/lang/Object;
    instance-of v2, v1, Landroid/content/Intent;

    if-eqz v2, :cond_41

    .line 13047
    move-object v2, v1

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->prepareToLeaveProcess(ZZ)V

    .line 13051
    .end local v1    # "intent":Ljava/lang/Object;
    :cond_41
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "Intent.getData()"

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, -0x1

    const/4 v7, 0x2

    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    if-eqz v1, :cond_129

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_129

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_129

    if-eqz p1, :cond_129

    .line 13053
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_212

    :cond_65
    goto/16 :goto_11e

    :sswitch_67
    const-string v9, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x7

    goto/16 :goto_11f

    :sswitch_72
    const-string v9, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    move v1, v7

    goto/16 :goto_11f

    :sswitch_7d
    const-string v9, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0xf

    goto/16 :goto_11f

    :sswitch_89
    const-string v9, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    move v1, v4

    goto/16 :goto_11f

    :sswitch_94
    const-string v9, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    move v1, v5

    goto/16 :goto_11f

    :sswitch_9f
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0xa

    goto/16 :goto_11f

    :sswitch_ab
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0xc

    goto/16 :goto_11f

    :sswitch_b5
    const-string v9, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0xd

    goto/16 :goto_11f

    :sswitch_c1
    const-string v9, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x6

    goto :goto_11f

    :sswitch_cb
    const-string v9, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x3

    goto :goto_11f

    :sswitch_d5
    const-string v9, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0x9

    goto :goto_11f

    :sswitch_e0
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    move v1, v2

    goto :goto_11f

    :sswitch_ea
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0xb

    goto :goto_11f

    :sswitch_f5
    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x4

    goto :goto_11f

    :sswitch_ff
    const-string v9, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    move v1, v0

    goto :goto_11f

    :sswitch_109
    const-string v9, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x5

    goto :goto_11f

    :sswitch_113
    const-string v9, "android.intent.action.PACKAGE_NEEDS_INTEGRITY_VERIFICATION"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/16 v1, 0xe

    goto :goto_11f

    :goto_11e
    move v1, v6

    :goto_11f
    packed-switch v1, :pswitch_data_258

    .line 13074
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    goto :goto_129

    .line 13072
    :pswitch_128
    nop

    .line 13078
    :cond_129
    :goto_129
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_165

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_165

    invoke-static {}, Landroid/os/StrictMode;->vmContentUriWithoutPermissionEnabled()Z

    move-result v1

    if-eqz v1, :cond_165

    if-eqz p1, :cond_165

    .line 13080
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_27e

    :cond_142
    goto :goto_156

    :sswitch_143
    const-string v2, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    goto :goto_157

    :sswitch_14c
    const-string v0, "android.provider.action.QUICK_CONTACT"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_142

    move v0, v2

    goto :goto_157

    :goto_156
    move v0, v6

    :goto_157
    packed-switch v0, :pswitch_data_288

    .line 13086
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    goto :goto_165

    .line 13084
    :pswitch_164
    nop

    .line 13091
    :cond_165
    :goto_165
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1d3

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 13092
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d3

    if-eqz p1, :cond_1d3

    .line 13093
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    .line 13094
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 13095
    .local v0, "sm":Landroid/os/storage/StorageManager;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13096
    .local v1, "before":Ljava/io/File;
    nop

    .line 13097
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 13096
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/StorageManager;->translateAppToSystem(Ljava/io/File;II)Ljava/io/File;

    move-result-object v2

    .line 13098
    .local v2, "after":Ljava/io/File;
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d3

    .line 13099
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Translated "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Intent"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13100
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 13105
    .end local v0    # "sm":Landroid/os/storage/StorageManager;
    .end local v1    # "before":Ljava/io/File;
    .end local v2    # "after":Ljava/io/File;
    :cond_1d3
    invoke-static {}, Landroid/os/StrictMode;->vmUnsafeIntentLaunchEnabled()Z

    move-result v0

    if-eqz v0, :cond_20b

    .line 13106
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_1e8

    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v0, v0, 0x24

    if-nez v0, :cond_1e8

    .line 13109
    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    goto :goto_20b

    .line 13110
    :cond_1e8
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_1f1

    .line 13111
    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    goto :goto_20b

    .line 13112
    :cond_1f1
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_20b

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_208

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 13113
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_208

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_20b

    .line 13118
    :cond_208
    invoke-static {p0}, Landroid/os/StrictMode;->onUnsafeIntentLaunch(Landroid/content/Intent;)V

    .line 13122
    :cond_20b
    :goto_20b
    if-eqz p2, :cond_210

    .line 13123
    invoke-virtual {p0}, Landroid/content/Intent;->collectExtraIntentKeys()V

    .line 13125
    :cond_210
    return-void

    nop

    :sswitch_data_212
    .sparse-switch
        -0x78257653 -> :sswitch_113
        -0x6cb4d57b -> :sswitch_109
        -0x6342a1e0 -> :sswitch_ff
        -0x5a4113c8 -> :sswitch_f5
        -0x4418042d -> :sswitch_ea
        -0x39738481 -> :sswitch_e0
        -0x254e496f -> :sswitch_d5
        0xf54386e -> :sswitch_cb
        0x187b165e -> :sswitch_c1
        0x22b70ddb -> :sswitch_b5
        0x32c98ebd -> :sswitch_ab
        0x543610e0 -> :sswitch_9f
        0x5559c83a -> :sswitch_94
        0x5f557da2 -> :sswitch_89
        0x7277a986 -> :sswitch_7d
        0x751aa7fa -> :sswitch_72
        0x79e65f52 -> :sswitch_67
    .end sparse-switch

    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
        :pswitch_128
    .end packed-switch

    :sswitch_data_27e
    .sparse-switch
        -0x2265ad8c -> :sswitch_14c
        0x6316690b -> :sswitch_143
    .end sparse-switch

    :pswitch_data_288
    .packed-switch 0x0
        :pswitch_164
        :pswitch_164
    .end packed-switch
.end method

.method public greylist-max-o prepareToLeaveUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 10541
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    .line 10542
    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 10544
    :cond_7
    return-void
.end method

.method public whitelist putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 10910
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10911
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10913
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10914
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # B

    .line 10585
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10586
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10588
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 10589
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # C

    .line 10608
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10609
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10611
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 10612
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .line 10723
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10724
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10726
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 10727
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 10700
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10701
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10703
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 10704
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 10654
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10655
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10657
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10658
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 10677
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10678
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10680
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10681
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .line 11186
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11189
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 11190
    return-object p0
.end method

.method public greylist putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11214
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11217
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 11218
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .line 10792
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10793
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10795
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10796
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .line 10933
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10934
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10936
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 10937
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 10769
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10770
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10772
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10773
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 10746
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10747
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10749
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10750
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # S

    .line 10631
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10632
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10634
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 10635
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 10562
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10563
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10565
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10566
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .line 10979
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10980
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10982
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 10983
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .line 11025
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11026
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11028
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    .line 11029
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .line 11117
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11120
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 11121
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .line 11094
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11095
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11097
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 11098
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .line 11048
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11049
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11051
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 11052
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .line 11071
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11072
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11074
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 11075
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    .line 10815
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10816
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10818
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 10819
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .line 11163
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11166
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 11167
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .line 11140
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11143
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 11144
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .line 11002
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 11003
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11005
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    .line 11006
    return-object p0
.end method

.method public whitelist putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .line 10956
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10957
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10959
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 10960
    return-object p0
.end method

.method public whitelist putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .param p1, "src"    # Landroid/content/Intent;

    .line 11229
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_19

    .line 11230
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_12

    .line 11231
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    goto :goto_19

    .line 11233
    :cond_12
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11241
    :cond_19
    :goto_19
    iget v0, p1, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2b

    iget v0, p1, Landroid/content/Intent;->mLocalFlags:I

    and-int/lit8 v0, v0, 0x24

    if-nez v0, :cond_2b

    .line 11245
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 11247
    :cond_2b
    return-object p0
.end method

.method public whitelist putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 11262
    invoke-virtual {p1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 11263
    iget v0, p0, Landroid/content/Intent;->mLocalFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/content/Intent;->mLocalFlags:I

    .line 11265
    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_17

    .line 11266
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11268
    :cond_17
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 11269
    return-object p0
.end method

.method public whitelist putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 10863
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10864
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10866
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10867
    return-object p0
.end method

.method public whitelist putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 10839
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10840
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10842
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10843
    return-object p0
.end method

.method public whitelist putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 10886
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 10887
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 10889
    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 10890
    return-object p0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 12746
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12747
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 12748
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 12749
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    .line 12750
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 12751
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 12752
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 12753
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 12755
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_45

    .line 12756
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 12759
    :cond_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12760
    .local v0, "N":I
    const/4 v1, 0x0

    if-lez v0, :cond_67

    .line 12761
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 12763
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    if-ge v2, v0, :cond_66

    .line 12764
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 12763
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 12766
    .end local v2    # "i":I
    :cond_66
    goto :goto_69

    .line 12767
    :cond_67
    iput-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 12770
    :goto_69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_76

    .line 12771
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 12774
    :cond_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_83

    .line 12775
    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1}, Landroid/content/ClipData;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 12777
    :cond_83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    .line 12778
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 12779
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_9c

    .line 12780
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    .line 12783
    :cond_9c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->preventIntentRedirect()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 12784
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e8

    .line 12785
    new-instance v2, Landroid/content/Intent$CreatorTokenInfo;

    invoke-direct {v2, v1}, Landroid/content/Intent$CreatorTokenInfo;-><init>(Landroid/content/Intent-IA;)V

    iput-object v2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 12786
    iget-object v2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;Landroid/os/IBinder;)V

    .line 12788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12789
    if-lez v0, :cond_e8

    .line 12790
    iget-object v2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3, v0}, Landroid/util/ArraySet;-><init>(I)V

    invoke-static {v2, v3}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;Landroid/util/ArraySet;)V

    .line 12791
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_c9
    if-ge v2, v0, :cond_e8

    .line 12792
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 12793
    .local v3, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v4

    .line 12794
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 12795
    .local v5, "index":I
    iget-object v6, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v6}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v6

    new-instance v7, Landroid/content/Intent$NestedIntentKey;

    invoke-direct {v7, v3, v4, v5, v1}, Landroid/content/Intent$NestedIntentKey;-><init>(ILjava/lang/String;ILandroid/content/Intent-IA;)V

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    .line 12791
    .end local v3    # "type":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c9

    .line 12801
    .end local v2    # "i":I
    :cond_e8
    return-void
.end method

.method public whitelist removeCategory(Ljava/lang/String;)V
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .line 10450
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_14

    .line 10451
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 10452
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 10453
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    .line 10456
    :cond_14
    return-void
.end method

.method public blacklist removeCreatorToken()V
    .registers 3

    .line 12378
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-eqz v0, :cond_a

    .line 12379
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;Landroid/os/IBinder;)V

    .line 12381
    :cond_a
    return-void
.end method

.method public blacklist removeCreatorTokenInfo()V
    .registers 2

    .line 12373
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 12374
    return-void
.end method

.method public blacklist removeExtendedFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 11389
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 11390
    return-void
.end method

.method public whitelist removeExtra(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 11302
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    .line 11303
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 11304
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_14

    .line 11305
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11308
    :cond_14
    return-void
.end method

.method public whitelist removeFlags(I)V
    .registers 4
    .param p1, "flags"    # I

    .line 11376
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    .line 11377
    return-void
.end method

.method public whitelist removeLaunchSecurityProtection()V
    .registers 2

    .line 12650
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    .line 12651
    invoke-virtual {p0}, Landroid/content/Intent;->removeCreatorTokenInfo()V

    .line 12652
    return-void
.end method

.method public whitelist replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .param p1, "src"    # Landroid/content/Intent;

    .line 11280
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11281
    return-object p0
.end method

.method public whitelist replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 11292
    if-eqz p1, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    .line 11293
    return-object p0
.end method

.method public whitelist resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .registers 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 10114
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 10115
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0

    .line 10118
    :cond_7
    const/high16 v0, 0x10000

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 10120
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1f

    .line 10121
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 10126
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "flags"    # I

    .line 10147
    const/4 v0, 0x0

    .line 10148
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_f

    .line 10150
    :try_start_5
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 10153
    :goto_c
    goto :goto_1a

    .line 10151
    :catch_d
    move-exception v1

    goto :goto_c

    .line 10155
    :cond_f
    const/high16 v1, 0x10000

    or-int/2addr v1, p2

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 10157
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1a

    .line 10158
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 10162
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public greylist resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .registers 11
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "flags"    # I

    .line 10175
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 10176
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0

    .line 10179
    :cond_7
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 10180
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_f

    .line 10181
    const/4 v1, 0x0

    return-object v1

    .line 10183
    :cond_f
    const/4 v1, 0x0

    .line 10184
    .local v1, "comp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    .line 10185
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 10186
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_28

    .line 10187
    goto :goto_3a

    .line 10189
    :cond_28
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10191
    .local v4, "foundComp":Landroid/content/ComponentName;
    if-nez v1, :cond_3d

    .line 10195
    move-object v1, v4

    .line 10184
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "foundComp":Landroid/content/ComponentName;
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 10192
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "foundComp":Landroid/content/ComponentName;
    :cond_3d
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Multiple system services handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 10197
    .end local v2    # "i":I
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "foundComp":Landroid/content/ComponentName;
    :cond_6a
    return-object v1
.end method

.method public whitelist resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 9227
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 9228
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0

    .line 9230
    :cond_7
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_20

    .line 9231
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 9232
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9235
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist resolveType(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 9209
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 9252
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_25

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_22

    .line 9253
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 9254
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 9255
    :cond_22
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0

    .line 9257
    :cond_25
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12882
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 12883
    const-string v0, "action"

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12885
    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_1b

    .line 12886
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12888
    :cond_1b
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 12889
    const-string/jumbo v0, "type"

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12891
    :cond_27
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 12892
    const-string/jumbo v0, "ident"

    iget-object v2, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12894
    :cond_33
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_42

    .line 12895
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "component"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12897
    :cond_42
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->intentSaveToXmlPackage()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_54

    .line 12898
    const-string/jumbo v0, "package"

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12900
    :cond_54
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "flags"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12902
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_87

    .line 12903
    const-string v0, "categories"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12904
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "categoryNdx":I
    :goto_72
    if-ltz v2, :cond_84

    .line 12905
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "category"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12904
    add-int/lit8 v2, v2, -0x1

    goto :goto_72

    .line 12907
    .end local v2    # "categoryNdx":I
    :cond_84
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12909
    :cond_87
    return-void
.end method

.method public whitelist setAction(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "action"    # Ljava/lang/String;

    .line 10212
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    .line 10213
    return-object p0
.end method

.method public greylist-max-r setAllowFds(Z)V
    .registers 3
    .param p1, "allowFds"    # Z

    .line 9367
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 9368
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    .line 9370
    :cond_9
    return-void
.end method

.method public whitelist setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 4
    .param p1, "packageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 11501
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11502
    return-object p0
.end method

.method public whitelist setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "packageContext"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .line 11462
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11463
    return-object p0
.end method

.method public whitelist setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 11482
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11483
    return-object p0
.end method

.method public whitelist setClipData(Landroid/content/ClipData;)V
    .registers 2
    .param p1, "clip"    # Landroid/content/ClipData;

    .line 10529
    iput-object p1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    .line 10530
    return-void
.end method

.method public whitelist setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 11441
    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    .line 11442
    return-object p0
.end method

.method public blacklist setCreatorToken(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "creatorToken"    # Landroid/os/IBinder;

    .line 12395
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_c

    .line 12396
    new-instance v0, Landroid/content/Intent$CreatorTokenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/Intent$CreatorTokenInfo;-><init>(Landroid/content/Intent-IA;)V

    iput-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    .line 12398
    :cond_c
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0, p1}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fputmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;Landroid/os/IBinder;)V

    .line 12399
    return-void
.end method

.method public whitelist setData(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 3
    .param p1, "data"    # Landroid/net/Uri;

    .line 10238
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 10239
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 10240
    return-object p0
.end method

.method public whitelist setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 3
    .param p1, "data"    # Landroid/net/Uri;

    .line 10266
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .line 10355
    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 10356
    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 10357
    return-object p0
.end method

.method public whitelist setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "type"    # Ljava/lang/String;

    .line 10386
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setDefusable(Z)V
    .registers 3
    .param p1, "defusable"    # Z

    .line 9374
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 9375
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 9377
    :cond_9
    return-void
.end method

.method public whitelist setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 9342
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 9343
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 9345
    :cond_9
    return-void
.end method

.method public whitelist setFlags(I)Landroid/content/Intent;
    .registers 2
    .param p1, "flags"    # I

    .line 11331
    iput p1, p0, Landroid/content/Intent;->mFlags:I

    .line 11332
    return-object p0
.end method

.method public whitelist setIdentifier(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2
    .param p1, "identifier"    # Ljava/lang/String;

    .line 10414
    iput-object p1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    .line 10415
    return-object p0
.end method

.method public greylist-max-o setLaunchToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "launchToken"    # Ljava/lang/String;

    .line 9331
    iput-object p1, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    .line 9332
    return-void
.end method

.method public blacklist setOriginalIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "originalIntent"    # Landroid/content/Intent;

    .line 9194
    iput-object p1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    .line 9195
    return-void
.end method

.method public whitelist setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 11409
    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v0, :cond_7

    goto :goto_f

    .line 11410
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set package name when selector is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11413
    :cond_f
    :goto_f
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    .line 11414
    return-object p0
.end method

.method public whitelist setSelector(Landroid/content/Intent;)V
    .registers 4
    .param p1, "selector"    # Landroid/content/Intent;

    .line 10490
    if-eq p1, p0, :cond_14

    .line 10494
    if-eqz p1, :cond_11

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_9

    goto :goto_11

    .line 10495
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t set selector when package name is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10498
    :cond_11
    :goto_11
    iput-object p1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    .line 10499
    return-void

    .line 10491
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent being set as a selector of itself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSourceBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 11511
    if-eqz p1, :cond_a

    .line 11512
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto :goto_d

    .line 11514
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    .line 11516
    :goto_d
    return-void
.end method

.method public whitelist setType(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 10295
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    .line 10296
    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    .line 10297
    return-object p0
.end method

.method public whitelist setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 10326
    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r toInsecureString()Ljava/lang/String;
    .registers 9

    .line 11903
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    .line 11905
    .local v3, "b":Ljava/lang/StringBuilder;
    const-string v0, "Intent { "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11906
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 11907
    const-string v0, " }"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11909
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o toShortString(ZZZZ)Ljava/lang/String;
    .registers 13
    .param p1, "secure"    # Z
    .param p2, "comp"    # Z
    .param p3, "extras"    # Z
    .param p4, "clip"    # Z

    .line 11914
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    .line 11915
    .local v3, "b":Ljava/lang/StringBuilder;
    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .end local p1    # "secure":Z
    .end local p2    # "comp":Z
    .end local p3    # "extras":Z
    .end local p4    # "clip":Z
    .local v4, "secure":Z
    .local v5, "comp":Z
    .local v6, "extras":Z
    .local v7, "clip":Z
    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 11916
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o toShortString(Ljava/lang/StringBuilder;ZZZZ)V
    .registers 16
    .param p1, "b"    # Ljava/lang/StringBuilder;
    .param p2, "secure"    # Z
    .param p3, "comp"    # Z
    .param p4, "extras"    # Z
    .param p5, "clip"    # Z

    .line 11922
    const/4 v0, 0x1

    .line 11923
    .local v0, "first":Z
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 11924
    const-string v1, "act="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11925
    const/4 v0, 0x0

    .line 11927
    :cond_11
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const/16 v2, 0x20

    if-eqz v1, :cond_45

    .line 11928
    if-nez v0, :cond_1c

    .line 11929
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11931
    :cond_1c
    const/4 v0, 0x0

    .line 11932
    const-string v1, "cat=["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11933
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_40

    .line 11934
    if-lez v1, :cond_32

    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11935
    :cond_32
    iget-object v3, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11933
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 11937
    .end local v1    # "i":I
    :cond_40
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11939
    :cond_45
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_65

    .line 11940
    if-nez v0, :cond_4e

    .line 11941
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11943
    :cond_4e
    const/4 v0, 0x0

    .line 11944
    const-string v1, "dat="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11945
    if-eqz p2, :cond_60

    .line 11946
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_65

    .line 11948
    :cond_60
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11951
    :cond_65
    :goto_65
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_7b

    .line 11952
    if-nez v0, :cond_6e

    .line 11953
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11955
    :cond_6e
    const/4 v0, 0x0

    .line 11956
    const-string/jumbo v1, "typ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11958
    :cond_7b
    iget-object v1, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    if-eqz v1, :cond_91

    .line 11959
    if-nez v0, :cond_84

    .line 11960
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11962
    :cond_84
    const/4 v0, 0x0

    .line 11963
    const-string/jumbo v1, "id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11965
    :cond_91
    iget v1, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v1, :cond_aa

    .line 11966
    if-nez v0, :cond_9a

    .line 11967
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11969
    :cond_9a
    const/4 v0, 0x0

    .line 11970
    const-string v1, "flg=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11972
    :cond_aa
    iget v1, p0, Landroid/content/Intent;->mExtendedFlags:I

    if-eqz v1, :cond_c4

    .line 11973
    if-nez v0, :cond_b3

    .line 11974
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11976
    :cond_b3
    const/4 v0, 0x0

    .line 11977
    const-string/jumbo v1, "xflg=0x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11979
    :cond_c4
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_da

    .line 11980
    if-nez v0, :cond_cd

    .line 11981
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11983
    :cond_cd
    const/4 v0, 0x0

    .line 11984
    const-string/jumbo v1, "pkg="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11986
    :cond_da
    if-eqz p3, :cond_f5

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_f5

    .line 11987
    if-nez v0, :cond_e5

    .line 11988
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11990
    :cond_e5
    const/4 v0, 0x0

    .line 11991
    const-string v1, "cmp="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11993
    :cond_f5
    iget-object v1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_10e

    .line 11994
    if-nez v0, :cond_fe

    .line 11995
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11997
    :cond_fe
    const/4 v0, 0x0

    .line 11998
    const-string v1, "bnds="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12000
    :cond_10e
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_12f

    .line 12001
    if-nez v0, :cond_117

    .line 12002
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12004
    :cond_117
    const-string v1, "clip={"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12005
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz p5, :cond_125

    if-eqz p2, :cond_123

    goto :goto_125

    :cond_123
    const/4 v3, 0x0

    goto :goto_126

    :cond_125
    :goto_125
    const/4 v3, 0x1

    :goto_126
    invoke-virtual {v1, p1, v3}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;Z)V

    .line 12006
    const/4 v0, 0x0

    .line 12007
    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12009
    :cond_12f
    if-eqz p4, :cond_140

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_140

    .line 12010
    if-nez v0, :cond_13a

    .line 12011
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12013
    :cond_13a
    const/4 v0, 0x0

    .line 12014
    const-string v1, "(has extras)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12016
    :cond_140
    iget v1, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v3, -0x2

    if-eq v1, v3, :cond_157

    .line 12017
    if-nez v0, :cond_14a

    .line 12018
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12020
    :cond_14a
    const/4 v0, 0x0

    .line 12021
    const-string/jumbo v1, "u="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12023
    :cond_157
    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    const-string/jumbo v2, "}"

    if-eqz v1, :cond_171

    .line 12024
    const-string v1, " sel="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12025
    iget-object v3, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .end local p1    # "b":Ljava/lang/StringBuilder;
    .end local p2    # "secure":Z
    .end local p3    # "comp":Z
    .end local p4    # "extras":Z
    .end local p5    # "clip":Z
    .local v4, "b":Ljava/lang/StringBuilder;
    .local v5, "secure":Z
    .local v6, "comp":Z
    .local v7, "extras":Z
    .local v8, "clip":Z
    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 12026
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_176

    .line 12023
    .end local v4    # "b":Ljava/lang/StringBuilder;
    .end local v5    # "secure":Z
    .end local v6    # "comp":Z
    .end local v7    # "extras":Z
    .end local v8    # "clip":Z
    .restart local p1    # "b":Ljava/lang/StringBuilder;
    .restart local p2    # "secure":Z
    .restart local p3    # "comp":Z
    .restart local p4    # "extras":Z
    .restart local p5    # "clip":Z
    :cond_171
    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 12028
    .end local p1    # "b":Ljava/lang/StringBuilder;
    .end local p2    # "secure":Z
    .end local p3    # "comp":Z
    .end local p4    # "extras":Z
    .end local p5    # "clip":Z
    .restart local v4    # "b":Ljava/lang/StringBuilder;
    .restart local v5    # "secure":Z
    .restart local v6    # "comp":Z
    .restart local v7    # "extras":Z
    .restart local v8    # "clip":Z
    :goto_176
    iget-object p1, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz p1, :cond_191

    .line 12029
    const-string p1, " org={"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12030
    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    .end local v4    # "b":Ljava/lang/StringBuilder;
    .local v5, "b":Ljava/lang/StringBuilder;
    .local v6, "secure":Z
    .local v7, "comp":Z
    .local v8, "extras":Z
    .local v9, "clip":Z
    iget-object v4, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual/range {v4 .. v9}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 12031
    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    .end local v9    # "clip":Z
    .restart local v4    # "b":Ljava/lang/StringBuilder;
    .local v5, "secure":Z
    .local v6, "comp":Z
    .local v7, "extras":Z
    .local v8, "clip":Z
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12033
    :cond_191
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 11888
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11889
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/content/Intent;->toString(Ljava/lang/StringBuilder;)V

    .line 11890
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toString(Ljava/lang/StringBuilder;)V
    .registers 9
    .param p1, "b"    # Ljava/lang/StringBuilder;

    .line 11895
    const-string v0, "Intent { "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11896
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "b":Ljava/lang/StringBuilder;
    .local v2, "b":Ljava/lang/StringBuilder;
    invoke-virtual/range {v1 .. v6}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 11897
    const-string p1, " }"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11898
    return-void
.end method

.method public whitelist toURI()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist toUri(I)Ljava/lang/String;
    .registers 11
    .param p1, "flags"    # I

    .line 12130
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v0

    .line 12131
    .local v3, "uri":Ljava/lang/StringBuilder;
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_b3

    .line 12132
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_98

    .line 12137
    const-string v0, "android-app://"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12138
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12139
    const/4 v0, 0x0

    .line 12140
    .local v0, "scheme":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_83

    .line 12145
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12146
    if-eqz v0, :cond_83

    .line 12147
    const/16 v1, 0x2f

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12148
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12149
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 12150
    .local v4, "authority":Ljava/lang/String;
    if-eqz v4, :cond_83

    .line 12151
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12152
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12155
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    const-string v5, "/"

    invoke-static {v1, v5}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12156
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_5b

    .line 12157
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12159
    :cond_5b
    iget-object v5, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 12160
    .local v5, "queryParams":Ljava/lang/String;
    if-eqz v5, :cond_6f

    .line 12161
    const/16 v6, 0x3f

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12162
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12164
    :cond_6f
    iget-object v6, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/net/Uri;->encodeIfNotEncoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12165
    .local v2, "fragment":Ljava/lang/String;
    if-eqz v2, :cond_83

    .line 12166
    const/16 v6, 0x23

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12167
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12172
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "fragment":Ljava/lang/String;
    .end local v4    # "authority":Ljava/lang/String;
    .end local v5    # "queryParams":Ljava/lang/String;
    :cond_83
    if-nez v0, :cond_88

    const-string v1, "android.intent.action.MAIN"

    goto :goto_8a

    :cond_88
    const-string v1, "android.intent.action.VIEW"

    :goto_8a
    move-object v5, v1

    iget-object v6, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v2, p0

    move v7, p1

    .end local p1    # "flags":I
    .local v7, "flags":I
    invoke-direct/range {v2 .. v7}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 12133
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v7    # "flags":I
    .restart local p1    # "flags":I
    :cond_98
    move-object v2, p0

    move v7, p1

    .end local p1    # "flags":I
    .restart local v7    # "flags":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent must include an explicit package name to build an android-app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12176
    .end local v7    # "flags":I
    .restart local p1    # "flags":I
    :cond_b3
    move-object v2, p0

    move v7, p1

    .end local p1    # "flags":I
    .restart local v7    # "flags":I
    const/4 p1, 0x0

    .line 12177
    .local p1, "scheme":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const-string/jumbo v1, "intent:"

    if-eqz v0, :cond_114

    .line 12178
    iget-object v0, v2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12179
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_10f

    .line 12180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 12181
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_cc
    if-ge v5, v4, :cond_10f

    .line 12182
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 12183
    .local v6, "c":C
    const/16 v8, 0x61

    if-lt v6, v8, :cond_da

    const/16 v8, 0x7a

    if-le v6, v8, :cond_10c

    :cond_da
    const/16 v8, 0x41

    if-lt v6, v8, :cond_e2

    const/16 v8, 0x5a

    if-le v6, v8, :cond_10c

    :cond_e2
    const/16 v8, 0x30

    if-lt v6, v8, :cond_ea

    const/16 v8, 0x39

    if-le v6, v8, :cond_10c

    :cond_ea
    const/16 v8, 0x2e

    if-eq v6, v8, :cond_10c

    const/16 v8, 0x2d

    if-eq v6, v8, :cond_10c

    const/16 v8, 0x2b

    if-ne v6, v8, :cond_f7

    .line 12185
    goto :goto_10c

    .line 12187
    :cond_f7
    const/16 v8, 0x3a

    if-ne v6, v8, :cond_10f

    if-lez v5, :cond_10f

    .line 12189
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 12190
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12191
    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 12192
    goto :goto_10f

    .line 12181
    .end local v6    # "c":C
    :cond_10c
    :goto_10c
    add-int/lit8 v5, v5, 0x1

    goto :goto_cc

    .line 12199
    .end local v4    # "N":I
    .end local v5    # "i":I
    :cond_10f
    :goto_10f
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12201
    .end local v0    # "data":Ljava/lang/String;
    move-object v4, p1

    goto :goto_11c

    :cond_114
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_11b

    .line 12202
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12205
    :cond_11b
    move-object v4, p1

    .end local p1    # "scheme":Ljava/lang/String;
    .local v4, "scheme":Ljava/lang/String;
    :goto_11c
    const-string v5, "android.intent.action.VIEW"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 12655
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12656
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 12657
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12658
    iget-object v0, p0, Landroid/content/Intent;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12659
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12660
    iget v0, p0, Landroid/content/Intent;->mExtendedFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12661
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12662
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 12664
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    .line 12665
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12666
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3a

    .line 12668
    :cond_37
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12671
    :goto_3a
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_59

    .line 12672
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 12673
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12674
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_48
    if-ge v3, v0, :cond_58

    .line 12675
    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12674
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 12677
    .end local v0    # "N":I
    .end local v3    # "i":I
    :cond_58
    goto :goto_5c

    .line 12678
    :cond_59
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12681
    :goto_5c
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_69

    .line 12682
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12683
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6c

    .line 12685
    :cond_69
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12688
    :goto_6c
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_79

    .line 12689
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12690
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7c

    .line 12692
    :cond_79
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12694
    :goto_7c
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12695
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 12697
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    if-eqz v0, :cond_93

    .line 12698
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12699
    iget-object v0, p0, Landroid/content/Intent;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_96

    .line 12701
    :cond_93
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12704
    :goto_96
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->preventIntentRedirect()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 12705
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    if-nez v0, :cond_a4

    .line 12706
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f0

    .line 12708
    :cond_a4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12709
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmCreatorToken(Landroid/content/Intent$CreatorTokenInfo;)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 12711
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_ed

    .line 12712
    iget-object v0, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v0}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 12713
    .restart local v0    # "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 12714
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c6
    if-ge v1, v0, :cond_ec

    .line 12715
    iget-object v2, p0, Landroid/content/Intent;->mCreatorTokenInfo:Landroid/content/Intent$CreatorTokenInfo;

    invoke-static {v2}, Landroid/content/Intent$CreatorTokenInfo;->-$$Nest$fgetmNestedIntentKeys(Landroid/content/Intent$CreatorTokenInfo;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent$NestedIntentKey;

    .line 12716
    .local v2, "key":Landroid/content/Intent$NestedIntentKey;
    invoke-static {v2}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmType(Landroid/content/Intent$NestedIntentKey;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12717
    invoke-static {v2}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmKey(Landroid/content/Intent$NestedIntentKey;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 12718
    invoke-static {v2}, Landroid/content/Intent$NestedIntentKey;->-$$Nest$fgetmIndex(Landroid/content/Intent$NestedIntentKey;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12714
    .end local v2    # "key":Landroid/content/Intent$NestedIntentKey;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c6

    .line 12720
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_ec
    goto :goto_f0

    .line 12721
    :cond_ed
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12725
    :cond_f0
    :goto_f0
    return-void
.end method
