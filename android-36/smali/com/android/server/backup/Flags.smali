.class public final Lcom/android/server/backup/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# static fields
.field private static blacklist FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags; = null

.field public static final blacklist FLAG_ENABLE_CLEAR_PIPE_AFTER_RESTORE_FILE:Ljava/lang/String; = "com.android.server.backup.enable_clear_pipe_after_restore_file"

.field public static final blacklist FLAG_ENABLE_INCREASED_BMM_LOGGING_FOR_RESTORE_AT_INSTALL:Ljava/lang/String; = "com.android.server.backup.enable_increased_bmm_logging_for_restore_at_install"

.field public static final blacklist FLAG_ENABLE_INCREASE_DATATYPES_FOR_AGENT_LOGGING:Ljava/lang/String; = "com.android.server.backup.enable_increase_datatypes_for_agent_logging"

.field public static final blacklist FLAG_ENABLE_MAX_SIZE_WRITES_TO_PIPES:Ljava/lang/String; = "com.android.server.backup.enable_max_size_writes_to_pipes"

.field public static final blacklist FLAG_ENABLE_METRICS_SETTINGS_BACKUP_AGENTS:Ljava/lang/String; = "com.android.server.backup.enable_metrics_settings_backup_agents"

.field public static final blacklist FLAG_ENABLE_METRICS_SYSTEM_BACKUP_AGENTS:Ljava/lang/String; = "com.android.server.backup.enable_metrics_system_backup_agents"

.field public static final blacklist FLAG_ENABLE_READ_ALL_EXTERNAL_STORAGE_FILES:Ljava/lang/String; = "com.android.server.backup.enable_read_all_external_storage_files"

.field public static final blacklist FLAG_ENABLE_RESTRICTED_MODE_CHANGES:Ljava/lang/String; = "com.android.server.backup.enable_restricted_mode_changes"

.field public static final blacklist FLAG_ENABLE_SKIPPING_RESTORE_LAUNCHED_APPS:Ljava/lang/String; = "com.android.server.backup.enable_skipping_restore_launched_apps"

.field public static final blacklist FLAG_ENABLE_V_TO_U_RESTORE_FOR_SYSTEM_COMPONENTS_IN_ALLOWLIST:Ljava/lang/String; = "com.android.server.backup.enable_v_to_u_restore_for_system_components_in_allowlist"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Lcom/android/server/backup/FeatureFlagsImpl;

    invoke-direct {v0}, Lcom/android/server/backup/FeatureFlagsImpl;-><init>()V

    sput-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist enableClearPipeAfterRestoreFile()Z
    .registers 1

    .line 32
    sget-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/backup/FeatureFlags;->enableClearPipeAfterRestoreFile()Z

    move-result v0

    return v0
.end method

.method public static greylist enableIncreaseDatatypesForAgentLogging()Z
    .registers 1

    .line 39
    sget-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/backup/FeatureFlags;->enableIncreaseDatatypesForAgentLogging()Z

    move-result v0

    return v0
.end method

.method public static greylist enableIncreasedBmmLoggingForRestoreAtInstall()Z
    .registers 1

    .line 46
    sget-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/backup/FeatureFlags;->enableIncreasedBmmLoggingForRestoreAtInstall()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMaxSizeWritesToPipes()Z
    .registers 1

    .line 53
    sget-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/backup/FeatureFlags;->enableMaxSizeWritesToPipes()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMetricsSettingsBackupAgents()Z
    .registers 1

    .line 60
    sget-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/backup/FeatureFlags;->enableMetricsSettingsBackupAgents()Z

    move-result v0

    return v0
.end method

.method public static greylist enableMetricsSystemBackupAgents()Z
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/backup/FeatureFlags;->enableMetricsSystemBackupAgents()Z

    move-result v0

    return v0
.end method

.method public static greylist enableReadAllExternalStorageFiles()Z
    .registers 1

    .line 74
    sget-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/backup/FeatureFlags;->enableReadAllExternalStorageFiles()Z

    move-result v0

    return v0
.end method

.method public static greylist enableRestrictedModeChanges()Z
    .registers 1

    .line 81
    sget-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/backup/FeatureFlags;->enableRestrictedModeChanges()Z

    move-result v0

    return v0
.end method

.method public static greylist enableSkippingRestoreLaunchedApps()Z
    .registers 1

    .line 88
    sget-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/backup/FeatureFlags;->enableSkippingRestoreLaunchedApps()Z

    move-result v0

    return v0
.end method

.method public static greylist enableVToURestoreForSystemComponentsInAllowlist()Z
    .registers 1

    .line 95
    sget-object v0, Lcom/android/server/backup/Flags;->FEATURE_FLAGS:Lcom/android/server/backup/FeatureFlags;

    invoke-interface {v0}, Lcom/android/server/backup/FeatureFlags;->enableVToURestoreForSystemComponentsInAllowlist()Z

    move-result v0

    return v0
.end method
