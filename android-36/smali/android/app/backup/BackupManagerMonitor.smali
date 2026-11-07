.class public Landroid/app/backup/BackupManagerMonitor;
.super Ljava/lang/Object;
.source "BackupManagerMonitor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist EXTRA_LOG_AGENT_LOGGING_RESULTS:Ljava/lang/String; = "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

.field public static final blacklist EXTRA_LOG_CANCELLATION_REASON:Ljava/lang/String; = "android.app.backup.extra.CANCELLATION_REASON"

.field public static final whitelist EXTRA_LOG_CANCEL_ALL:Ljava/lang/String; = "android.app.backup.extra.LOG_CANCEL_ALL"

.field public static final whitelist EXTRA_LOG_EVENT_CATEGORY:Ljava/lang/String; = "android.app.backup.extra.LOG_EVENT_CATEGORY"

.field public static final whitelist EXTRA_LOG_EVENT_ID:Ljava/lang/String; = "android.app.backup.extra.LOG_EVENT_ID"

.field public static final whitelist EXTRA_LOG_EVENT_PACKAGE_LONG_VERSION:Ljava/lang/String; = "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

.field public static final whitelist EXTRA_LOG_EVENT_PACKAGE_NAME:Ljava/lang/String; = "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

.field public static final whitelist EXTRA_LOG_EVENT_PACKAGE_VERSION:Ljava/lang/String; = "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_LOG_EXCEPTION_FULL_BACKUP:Ljava/lang/String; = "android.app.backup.extra.LOG_EXCEPTION_FULL_BACKUP"

.field public static final whitelist EXTRA_LOG_ILLEGAL_KEY:Ljava/lang/String; = "android.app.backup.extra.LOG_ILLEGAL_KEY"

.field public static final whitelist EXTRA_LOG_MANIFEST_PACKAGE_NAME:Ljava/lang/String; = "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

.field public static final whitelist EXTRA_LOG_OLD_VERSION:Ljava/lang/String; = "android.app.backup.extra.LOG_OLD_VERSION"

.field public static final blacklist EXTRA_LOG_OPERATION_TYPE:Ljava/lang/String; = "android.app.backup.extra.OPERATION_TYPE"

.field public static final whitelist EXTRA_LOG_POLICY_ALLOW_APKS:Ljava/lang/String; = "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

.field public static final whitelist EXTRA_LOG_PREFLIGHT_ERROR:Ljava/lang/String; = "android.app.backup.extra.LOG_PREFLIGHT_ERROR"

.field public static final whitelist EXTRA_LOG_RESTORE_ANYWAY:Ljava/lang/String; = "android.app.backup.extra.LOG_RESTORE_ANYWAY"

.field public static final whitelist EXTRA_LOG_RESTORE_VERSION:Ljava/lang/String; = "android.app.backup.extra.LOG_RESTORE_VERSION"

.field public static final blacklist EXTRA_LOG_V_TO_U_ALLOWLIST:Ljava/lang/String; = "android.app.backup.extra.V_TO_U_ALLOWLIST"

.field public static final blacklist EXTRA_LOG_V_TO_U_DENYLIST:Ljava/lang/String; = "android.app.backup.extra.V_TO_U_DENYLIST"

.field public static final whitelist EXTRA_LOG_WIDGET_PACKAGE_NAME:Ljava/lang/String; = "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

.field public static final whitelist LOG_EVENT_CATEGORY_AGENT:I = 0x2

.field public static final whitelist LOG_EVENT_CATEGORY_BACKUP_MANAGER_POLICY:I = 0x3

.field public static final whitelist LOG_EVENT_CATEGORY_TRANSPORT:I = 0x1

.field public static final blacklist LOG_EVENT_ID_AGENT_CRASHED_BEFORE_RESTORE_DATA_IS_SENT:I = 0x4e

.field public static final blacklist LOG_EVENT_ID_AGENT_FAILURE:I = 0x45

.field public static final blacklist LOG_EVENT_ID_AGENT_FAILURE_DURING_RESTORE:I = 0x50

.field public static final whitelist LOG_EVENT_ID_AGENT_LOGGING_RESULTS:I = 0x34

.field public static final whitelist LOG_EVENT_ID_APK_NOT_INSTALLED:I = 0x28

.field public static final whitelist LOG_EVENT_ID_APP_HAS_NO_AGENT:I = 0x1c

.field public static final whitelist LOG_EVENT_ID_BACKUP_DISABLED:I = 0xd

.field public static final blacklist LOG_EVENT_ID_CANNOT_GET_NEXT_PKG_NAME:I = 0x38

.field public static final whitelist LOG_EVENT_ID_CANNOT_RESTORE_WITHOUT_APK:I = 0x29

.field public static final whitelist LOG_EVENT_ID_CANT_FIND_AGENT:I = 0x1e

.field public static final whitelist LOG_EVENT_ID_CORRUPT_MANIFEST:I = 0x2e

.field public static final whitelist LOG_EVENT_ID_DEVICE_NOT_PROVISIONED:I = 0xe

.field public static final whitelist LOG_EVENT_ID_ERROR_PREFLIGHT:I = 0x10

.field public static final whitelist LOG_EVENT_ID_EXCEPTION_FULL_BACKUP:I = 0x13

.field public static final whitelist LOG_EVENT_ID_EXPECTED_DIFFERENT_PACKAGE:I = 0x2b

.field public static final blacklist LOG_EVENT_ID_FAILED_TO_READ_DATA_FROM_TRANSPORT:I = 0x51

.field public static final blacklist LOG_EVENT_ID_FAILED_TO_SEND_DATA_TO_AGENT_DURING_RESTORE:I = 0x4f

.field public static final blacklist LOG_EVENT_ID_FULL_AGENT_ERROR:I = 0x41

.field public static final blacklist LOG_EVENT_ID_FULL_BACKUP_AGENT_PIPE_BROKEN:I = 0x52

.field public static final whitelist LOG_EVENT_ID_FULL_BACKUP_CANCEL:I = 0x4

.field public static final blacklist LOG_EVENT_ID_FULL_RESTORE:I = 0x3b

.field public static final whitelist LOG_EVENT_ID_FULL_RESTORE_ALLOW_BACKUP_FALSE:I = 0x27

.field public static final whitelist LOG_EVENT_ID_FULL_RESTORE_SIGNATURE_MISMATCH:I = 0x25

.field public static final whitelist LOG_EVENT_ID_FULL_RESTORE_TIMEOUT:I = 0x2d

.field public static final whitelist LOG_EVENT_ID_ILLEGAL_KEY:I = 0x5

.field public static final whitelist LOG_EVENT_ID_KEY_VALUE_BACKUP_CANCEL:I = 0x15

.field public static final whitelist LOG_EVENT_ID_KEY_VALUE_RESTORE_TIMEOUT:I = 0x1f

.field public static final blacklist LOG_EVENT_ID_KV_AGENT_ERROR:I = 0x3d

.field public static final blacklist LOG_EVENT_ID_KV_RESTORE:I = 0x3a

.field public static final whitelist LOG_EVENT_ID_LOST_TRANSPORT:I = 0x19

.field public static final whitelist LOG_EVENT_ID_MISSING_SIGNATURE:I = 0x2a

.field public static final whitelist LOG_EVENT_ID_NO_DATA_TO_SEND:I = 0x7

.field public static final blacklist LOG_EVENT_ID_NO_FEEDER_THREAD:I = 0x40

.field public static final blacklist LOG_EVENT_ID_NO_NEXT_RESTORE_TARGET:I = 0x3c

.field public static final whitelist LOG_EVENT_ID_NO_PACKAGES:I = 0x31

.field public static final whitelist LOG_EVENT_ID_NO_PM_METADATA_RECEIVED:I = 0x17

.field public static final whitelist LOG_EVENT_ID_NO_RESTORE_METADATA_AVAILABLE:I = 0x16

.field public static final blacklist LOG_EVENT_ID_PACKAGE_ACCEPTED_FOR_RESTORE:I = 0x4b

.field public static final whitelist LOG_EVENT_ID_PACKAGE_INELIGIBLE:I = 0x9

.field public static final whitelist LOG_EVENT_ID_PACKAGE_KEY_VALUE_PARTICIPANT:I = 0xa

.field public static final whitelist LOG_EVENT_ID_PACKAGE_NOT_FOUND:I = 0xc

.field public static final whitelist LOG_EVENT_ID_PACKAGE_NOT_PRESENT:I = 0x1a

.field public static final blacklist LOG_EVENT_ID_PACKAGE_RESTORE_FINISHED:I = 0x3e

.field public static final whitelist LOG_EVENT_ID_PACKAGE_STOPPED:I = 0xb

.field public static final whitelist LOG_EVENT_ID_PACKAGE_TRANSPORT_NOT_PRESENT:I = 0xf

.field public static final whitelist LOG_EVENT_ID_PM_AGENT_HAS_NO_METADATA:I = 0x18

.field public static final whitelist LOG_EVENT_ID_QUOTA_HIT_PREFLIGHT:I = 0x12

.field public static final whitelist LOG_EVENT_ID_RESTORE_ANY_VERSION:I = 0x22

.field public static final blacklist LOG_EVENT_ID_RESTORE_AT_INSTALL_INVOKED:I = 0x49

.field public static final blacklist LOG_EVENT_ID_RESTORE_COMPLETE:I = 0x44

.field public static final blacklist LOG_EVENT_ID_RESTORE_DATA_DOES_NOT_BELONG_TO_PACKAGE:I = 0x4c

.field public static final whitelist LOG_EVENT_ID_RESTORE_VERSION_HIGHER:I = 0x1b

.field public static final whitelist LOG_EVENT_ID_SIGNATURE_MISMATCH:I = 0x1d

.field public static final blacklist LOG_EVENT_ID_SKIP_RESTORE_AT_INSTALL:I = 0x4a

.field public static final blacklist LOG_EVENT_ID_START_PACKAGE_RESTORE:I = 0x43

.field public static final blacklist LOG_EVENT_ID_START_RESTORE_AT_INSTALL:I = 0x36

.field public static final blacklist LOG_EVENT_ID_START_SYSTEM_RESTORE:I = 0x35

.field public static final whitelist LOG_EVENT_ID_SYSTEM_APP_NO_AGENT:I = 0x26

.field public static final blacklist LOG_EVENT_ID_TRANSPORT_ERROR_DURING_START_RESTORE:I = 0x37

.field public static final blacklist LOG_EVENT_ID_TRANSPORT_ERROR_FULL_RESTORE:I = 0x42

.field public static final blacklist LOG_EVENT_ID_TRANSPORT_ERROR_KV_RESTORE:I = 0x3f

.field public static final whitelist LOG_EVENT_ID_TRANSPORT_IS_NULL:I = 0x32

.field public static final whitelist LOG_EVENT_ID_TRANSPORT_NON_INCREMENTAL_BACKUP_REQUIRED:I = 0x33

.field public static final blacklist LOG_EVENT_ID_UNABLE_TO_CREATE_AGENT_FOR_RESTORE:I = 0x4d

.field public static final blacklist LOG_EVENT_ID_UNKNOWN_RESTORE_TYPE:I = 0x39

.field public static final whitelist LOG_EVENT_ID_UNKNOWN_VERSION:I = 0x2c

.field public static final whitelist LOG_EVENT_ID_VERSIONS_MATCH:I = 0x23

.field public static final whitelist LOG_EVENT_ID_VERSION_OF_BACKUP_OLDER:I = 0x24

.field public static final blacklist LOG_EVENT_ID_V_TO_U_RESTORE_PKG_ELIGIBLE:I = 0x46

.field public static final blacklist LOG_EVENT_ID_V_TO_U_RESTORE_PKG_NOT_ELIGIBLE:I = 0x47

.field public static final blacklist LOG_EVENT_ID_V_TO_U_RESTORE_SET_LIST:I = 0x48

.field public static final whitelist LOG_EVENT_ID_WIDGET_METADATA_MISMATCH:I = 0x2f

.field public static final whitelist LOG_EVENT_ID_WIDGET_UNKNOWN_VERSION:I = 0x30


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onEvent(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "event"    # Landroid/os/Bundle;

    .line 327
    return-void
.end method
