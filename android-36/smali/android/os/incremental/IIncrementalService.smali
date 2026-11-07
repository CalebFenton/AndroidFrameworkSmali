.class public interface abstract Landroid/os/incremental/IIncrementalService;
.super Ljava/lang/Object;
.source "IIncrementalService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IIncrementalService$Stub;,
        Landroid/os/incremental/IIncrementalService$Default;
    }
.end annotation


# static fields
.field public static final blacklist BIND_PERMANENT:I = 0x1

.field public static final blacklist BIND_TEMPORARY:I = 0x0

.field public static final blacklist CREATE_MODE_CREATE:I = 0x4

.field public static final blacklist CREATE_MODE_OPEN_EXISTING:I = 0x8

.field public static final blacklist CREATE_MODE_PERMANENT_BIND:I = 0x2

.field public static final blacklist CREATE_MODE_TEMPORARY_BIND:I = 0x1

.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.incremental.IIncrementalService"

.field public static final blacklist METRICS_DATA_LOADER_BIND_DELAY_MILLIS:Ljava/lang/String; = "dataLoaderBindDelayMillis"

.field public static final blacklist METRICS_DATA_LOADER_STATUS_CODE:Ljava/lang/String; = "dataLoaderStatusCode"

.field public static final blacklist METRICS_LAST_READ_ERROR_NUMBER:Ljava/lang/String; = "lastReadErrorNo"

.field public static final blacklist METRICS_LAST_READ_ERROR_UID:Ljava/lang/String; = "lastReadErrorUid"

.field public static final blacklist METRICS_MILLIS_SINCE_LAST_DATA_LOADER_BIND:Ljava/lang/String; = "millisSinceLastDataLoaderBind"

.field public static final blacklist METRICS_MILLIS_SINCE_LAST_READ_ERROR:Ljava/lang/String; = "millisSinceLastReadError"

.field public static final blacklist METRICS_MILLIS_SINCE_OLDEST_PENDING_READ:Ljava/lang/String; = "millisSinceOldestPendingRead"

.field public static final blacklist METRICS_READ_LOGS_ENABLED:Ljava/lang/String; = "readLogsEnabled"

.field public static final blacklist METRICS_STORAGE_HEALTH_STATUS_CODE:Ljava/lang/String; = "storageHealthStatusCode"

.field public static final blacklist METRICS_TOTAL_DELAYED_READS:Ljava/lang/String; = "totalDelayedReads"

.field public static final blacklist METRICS_TOTAL_DELAYED_READS_MILLIS:Ljava/lang/String; = "totalDelayedReadsMillis"

.field public static final blacklist METRICS_TOTAL_FAILED_READS:Ljava/lang/String; = "totalFailedReads"


# virtual methods
.method public abstract blacklist configureNativeBinaries(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createLinkedStorage(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist createStorage(Ljava/lang/String;Landroid/content/pm/DataLoaderParamsParcel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteBindMount(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteStorage(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist disallowReadLogs(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getLoadingProgress(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMetadataById(I[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMetadataByPath(ILjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getMetrics(I)Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isFileFullyLoaded(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isFullyLoaded(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist makeBindMount(ILjava/lang/String;Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist makeDirectories(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist makeDirectory(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist makeFile(ILjava/lang/String;ILandroid/os/incremental/IncrementalNewFileParams;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist makeFileFromRange(ILjava/lang/String;Ljava/lang/String;JJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist makeLink(ILjava/lang/String;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInstallationComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist openStorage(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist registerLoadingProgressListener(ILandroid/os/incremental/IStorageLoadingProgressListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startLoading(ILandroid/content/pm/DataLoaderParamsParcel;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unlink(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterLoadingProgressListener(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist waitForNativeBinariesExtraction(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
