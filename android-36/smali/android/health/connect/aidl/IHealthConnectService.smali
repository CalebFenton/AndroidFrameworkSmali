.class public interface abstract Landroid/health/connect/aidl/IHealthConnectService;
.super Ljava/lang/Object;
.source "IHealthConnectService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/aidl/IHealthConnectService$Stub;,
        Landroid/health/connect/aidl/IHealthConnectService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.health.connect.aidl.IHealthConnectService"


# virtual methods
.method public abstract blacklist aggregateRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/AggregateDataRequestParcel;Landroid/health/connect/aidl/IAggregateRecordsResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist canRestore(ILandroid/health/connect/aidl/ICanRestoreResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist configureScheduledExport(Landroid/health/connect/exportimport/ScheduledExportSettings;Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createMedicalDataSource(Landroid/content/AttributionSource;Landroid/health/connect/CreateMedicalDataSourceRequest;Landroid/health/connect/aidl/IMedicalDataSourceResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteAllStagedRemoteData(Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteMedicalDataSourceWithData(Landroid/content/AttributionSource;Ljava/lang/String;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteMedicalResourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/util/List<",
            "Landroid/health/connect/MedicalResourceId;",
            ">;",
            "Landroid/health/connect/aidl/IEmptyResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteMedicalResourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/DeleteMedicalResourcesRequest;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteUsingFilters(Landroid/content/AttributionSource;Landroid/health/connect/aidl/DeleteUsingFiltersRequestParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist finishMigration(Ljava/lang/String;Landroid/health/connect/aidl/IMigrationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getActivityDates(Landroid/health/connect/aidl/ActivityDatesRequestParcel;Landroid/health/connect/aidl/IActivityDatesResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAllBackupFileNames(Z)Landroid/health/connect/restore/BackupFileNamesSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getAllDataForBackup(Landroid/health/connect/restore/StageRemoteDataRequest;Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getChangeLogToken(Landroid/content/AttributionSource;Landroid/health/connect/changelog/ChangeLogTokenRequest;Landroid/health/connect/aidl/IGetChangeLogTokenCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getChangeLogs(Landroid/content/AttributionSource;Landroid/health/connect/changelog/ChangeLogsRequest;Landroid/health/connect/aidl/IChangeLogsResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getChangesForBackup(Ljava/lang/String;Landroid/health/connect/aidl/IGetChangesForBackupResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getContributorApplicationsInfo(Landroid/health/connect/aidl/IApplicationInfoResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCurrentPriority(ILandroid/health/connect/aidl/IGetPriorityResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getGrantedHealthPermissions(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHealthConnectDataState(Landroid/health/connect/aidl/IGetHealthConnectDataStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHealthConnectMigrationUiState(Landroid/health/connect/aidl/IGetHealthConnectMigrationUiStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHealthPermissionsFlags(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getHistoricalAccessStartDateInMilliseconds(Ljava/lang/String;Landroid/os/UserHandle;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getImportStatus(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IImportStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getLatestMetadataForBackup(Landroid/health/connect/aidl/IGetLatestMetadataForBackupResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMedicalDataSourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMedicalDataSourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/GetMedicalDataSourcesRequest;Landroid/health/connect/aidl/IMedicalDataSourcesResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getRecordRetentionPeriodInDays(Landroid/os/UserHandle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getScheduledExportPeriodInDays(Landroid/os/UserHandle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getScheduledExportStatus(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IScheduledExportStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist grantHealthPermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist insertMinDataMigrationSdkExtensionVersion(Ljava/lang/String;ILandroid/health/connect/aidl/IMigrationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist insertRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/RecordsParcel;Landroid/health/connect/aidl/IInsertRecordsResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist queryAccessLogs(Ljava/lang/String;Landroid/health/connect/aidl/IAccessLogsResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist queryAllMedicalResourceTypeInfos(Landroid/health/connect/aidl/IMedicalResourceTypeInfosCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist queryAllRecordTypesInfo(Landroid/health/connect/aidl/IRecordTypeInfoResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist queryDocumentProviders(Landroid/os/UserHandle;Landroid/health/connect/exportimport/IQueryDocumentProvidersCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist readMedicalResourcesByIds(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/util/List<",
            "Landroid/health/connect/MedicalResourceId;",
            ">;",
            "Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist readMedicalResourcesByRequest(Landroid/content/AttributionSource;Landroid/health/connect/aidl/ReadMedicalResourcesRequestParcel;Landroid/health/connect/aidl/IReadMedicalResourcesResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist readRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/ReadRecordsRequestParcel;Landroid/health/connect/aidl/IReadRecordsResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist restoreChanges(Ljava/util/List;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/health/connect/backuprestore/RestoreChange;",
            ">;",
            "Landroid/health/connect/aidl/IEmptyResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist restoreLatestMetadata(Landroid/health/connect/backuprestore/BackupMetadata;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist revokeAllHealthPermissions(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist revokeHealthPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist runImmediateExport(Landroid/net/Uri;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist runImport(Landroid/os/UserHandle;Landroid/net/Uri;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setHealthPermissionsUserFixedFlagValue(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setLowerRateLimitsForTesting(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setRecordRetentionPeriodInDays(ILandroid/os/UserHandle;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stageAllHealthConnectRemoteData(Landroid/health/connect/restore/StageRemoteDataRequest;Landroid/os/UserHandle;Landroid/health/connect/aidl/IDataStagingFinishedCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startMigration(Ljava/lang/String;Landroid/health/connect/aidl/IMigrationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateDataDownloadState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updatePriority(Landroid/health/connect/aidl/UpdatePriorityRequestParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist updateRecords(Landroid/content/AttributionSource;Landroid/health/connect/aidl/RecordsParcel;Landroid/health/connect/aidl/IEmptyResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist upsertMedicalResources(Landroid/content/AttributionSource;Ljava/util/List;Landroid/health/connect/aidl/IMedicalResourcesResponseCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/util/List<",
            "Landroid/health/connect/UpsertMedicalResourceRequest;",
            ">;",
            "Landroid/health/connect/aidl/IMedicalResourcesResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist upsertMedicalResourcesFromRequestsParcel(Landroid/content/AttributionSource;Landroid/health/connect/aidl/UpsertMedicalResourceRequestsParcel;Landroid/health/connect/aidl/IMedicalResourceListParcelResponseCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist writeMigrationData(Ljava/lang/String;Landroid/health/connect/migration/MigrationEntityParcel;Landroid/health/connect/aidl/IMigrationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
