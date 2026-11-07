.class public Landroid/telephony/MbmsDownloadSession;
.super Ljava/lang/Object;
.source "MbmsDownloadSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/MbmsDownloadSession$DownloadStatus;,
        Landroid/telephony/MbmsDownloadSession$DownloadResultCode;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_TOP_LEVEL_TEMP_DIRECTORY:Ljava/lang/String; = "androidMbmsTempFileRoot"

.field private static final greylist-max-o DESTINATION_SANITY_CHECK_FILE_NAME:Ljava/lang/String; = "destinationSanityCheckFile"

.field public static final whitelist EXTRA_MBMS_COMPLETED_FILE_URI:Ljava/lang/String; = "android.telephony.extra.MBMS_COMPLETED_FILE_URI"

.field public static final whitelist EXTRA_MBMS_DOWNLOAD_REQUEST:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

.field public static final whitelist EXTRA_MBMS_DOWNLOAD_RESULT:Ljava/lang/String; = "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

.field public static final whitelist EXTRA_MBMS_FILE_INFO:Ljava/lang/String; = "android.telephony.extra.MBMS_FILE_INFO"

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field private static final blacklist MAX_SERVICE_ANNOUNCEMENT_SIZE:I = 0x2800

.field public static final whitelist MBMS_DOWNLOAD_SERVICE_ACTION:Ljava/lang/String; = "android.telephony.action.EmbmsDownload"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist MBMS_DOWNLOAD_SERVICE_OVERRIDE_METADATA:Ljava/lang/String; = "mbms-download-service-override"

.field public static final whitelist RESULT_CANCELLED:I = 0x2

.field public static final whitelist RESULT_DOWNLOAD_FAILURE:I = 0x6

.field public static final whitelist RESULT_EXPIRED:I = 0x3

.field public static final whitelist RESULT_FILE_ROOT_UNREACHABLE:I = 0x8

.field public static final whitelist RESULT_IO_ERROR:I = 0x4

.field public static final whitelist RESULT_OUT_OF_STORAGE:I = 0x7

.field public static final whitelist RESULT_SERVICE_ID_NOT_DEFINED:I = 0x5

.field public static final whitelist RESULT_SUCCESSFUL:I = 0x1

.field public static final whitelist STATUS_ACTIVELY_DOWNLOADING:I = 0x1

.field public static final whitelist STATUS_PENDING_DOWNLOAD:I = 0x2

.field public static final whitelist STATUS_PENDING_DOWNLOAD_WINDOW:I = 0x4

.field public static final whitelist STATUS_PENDING_REPAIR:I = 0x3

.field public static final whitelist STATUS_UNKNOWN:I

.field private static greylist-max-o sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final greylist-max-o mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

.field private final greylist-max-o mInternalDownloadProgressListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/mbms/DownloadProgressListener;",
            "Landroid/telephony/mbms/InternalDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mInternalDownloadStatusListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/telephony/mbms/DownloadStatusListener;",
            "Landroid/telephony/mbms/InternalDownloadStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/telephony/mbms/vendor/IMbmsDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private greylist-max-o mSubscriptionId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/telephony/MbmsDownloadSession;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Landroid/telephony/MbmsDownloadSession;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalCallback(Landroid/telephony/MbmsDownloadSession;)Landroid/telephony/mbms/InternalDownloadSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/telephony/MbmsDownloadSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionId(Landroid/telephony/MbmsDownloadSession;)I
    .registers 1

    iget p0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendErrorToApp(Landroid/telephony/MbmsDownloadSession;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsIsInitialized()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 67
    const-class v0, Landroid/telephony/MbmsDownloadSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "subscriptionId"    # I
    .param p4, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 240
    new-instance v0, Landroid/telephony/MbmsDownloadSession$1;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsDownloadSession$1;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 247
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 250
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 257
    iput-object p1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 258
    iput p3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    .line 259
    new-instance v0, Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-direct {v0, p4, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    .line 260
    return-void
.end method

.method private greylist-max-o bindAndInitialize()I
    .registers 4

    .line 334
    new-instance v0, Landroid/telephony/MbmsDownloadSession$3;

    invoke-direct {v0, p0}, Landroid/telephony/MbmsDownloadSession$3;-><init>(Landroid/telephony/MbmsDownloadSession;)V

    iput-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 393
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v1, "android.telephony.action.EmbmsDownload"

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Landroid/telephony/mbms/MbmsUtils;->startBinding(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method

.method private greylist-max-o checkDownloadRequestDestination(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 9
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 1095
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getDestinationUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v0, "downloadRequestDestination":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1101
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/mbms/MbmsTempFileProvider;->getEmbmsTempFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "destinationSanityCheckFile"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1103
    .local v1, "testFile":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1107
    .local v2, "testFileDestination":Ljava/io/File;
    :try_start_25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 1108
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1110
    :cond_2e
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_32} :catch_46
    .catchall {:try_start_25 .. :try_end_32} :catchall_44

    if-eqz v3, :cond_3c

    .line 1119
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1120
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1121
    nop

    .line 1122
    return-void

    .line 1111
    :cond_3c
    :try_start_3c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Destination provided in the download request is invalid -- files in the temp file directory cannot be directly moved there."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadRequestDestination":Ljava/io/File;
    .end local v1    # "testFile":Ljava/io/File;
    .end local v2    # "testFileDestination":Ljava/io/File;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    throw v3
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_44} :catch_46
    .catchall {:try_start_3c .. :try_end_44} :catchall_44

    .line 1119
    .restart local v0    # "downloadRequestDestination":Ljava/io/File;
    .restart local v1    # "testFile":Ljava/io/File;
    .restart local v2    # "testFileDestination":Ljava/io/File;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    :catchall_44
    move-exception v3

    goto :goto_60

    .line 1115
    :catch_46
    move-exception v3

    .line 1116
    .local v3, "e":Ljava/io/IOException;
    :try_start_47
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got IOException while testing out the destination: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadRequestDestination":Ljava/io/File;
    .end local v1    # "testFile":Ljava/io/File;
    .end local v2    # "testFileDestination":Ljava/io/File;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    throw v4
    :try_end_60
    .catchall {:try_start_47 .. :try_end_60} :catchall_44

    .line 1119
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "downloadRequestDestination":Ljava/io/File;
    .restart local v1    # "testFile":Ljava/io/File;
    .restart local v2    # "testFileDestination":Ljava/io/File;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    :goto_60
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1120
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1121
    throw v3

    .line 1097
    .end local v1    # "testFile":Ljava/io/File;
    .end local v2    # "testFileDestination":Ljava/io/File;
    :cond_67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The destination path must be a directory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "subscriptionId"    # I
    .param p3, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    .line 304
    sget-object v0, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 307
    new-instance v0, Landroid/telephony/MbmsDownloadSession;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/telephony/MbmsDownloadSession;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)V

    .line 309
    .local v0, "session":Landroid/telephony/MbmsDownloadSession;
    invoke-direct {v0}, Landroid/telephony/MbmsDownloadSession;->bindAndInitialize()I

    move-result v1

    .line 310
    .local v1, "result":I
    if-eqz v1, :cond_24

    .line 311
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 312
    new-instance v2, Landroid/telephony/MbmsDownloadSession$2;

    invoke-direct {v2, p3, v1}, Landroid/telephony/MbmsDownloadSession$2;-><init>(Landroid/telephony/mbms/MbmsDownloadSessionCallback;I)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 318
    const/4 v2, 0x0

    return-object v2

    .line 320
    :cond_24
    return-object v0

    .line 305
    .end local v0    # "session":Landroid/telephony/MbmsDownloadSession;
    .end local v1    # "result":I
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot have two active instances"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist create(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/mbms/MbmsDownloadSessionCallback;

    .line 268
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/MbmsDownloadSession;->create(Landroid/content/Context;Ljava/util/concurrent/Executor;ILandroid/telephony/mbms/MbmsDownloadSessionCallback;)Landroid/telephony/MbmsDownloadSession;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 6
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 1084
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    move-result-object v0

    .line 1085
    .local v0, "token":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1086
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to delete non-existent download token at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return-void

    .line 1089
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_41

    .line 1090
    sget-object v1, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t delete download token at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_41
    return-void
.end method

.method private greylist-max-o getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;
    .registers 5
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 1125
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    .line 1126
    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v1

    .line 1125
    invoke-static {v0, v1}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1127
    .local v0, "tempFileLocation":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/mbms/DownloadRequest;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".download_token"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1129
    .local v1, "downloadTokenFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public static whitelist getMaximumServiceAnnouncementSize()I
    .registers 1

    .line 330
    const/16 v0, 0x2800

    return v0
.end method

.method private greylist-max-o sendErrorToApp(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 1133
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->onError(ILjava/lang/String;)V

    .line 1134
    return-void
.end method

.method private greylist-max-o validateTempFileRootSanity(Ljava/io/File;)V
    .registers 5
    .param p1, "tempFileRootDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 559
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 562
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 565
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "canonicalTempFilePath":Ljava/lang/String;
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 569
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 572
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 575
    return-void

    .line 573
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Temp file root cannot be your files dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 570
    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Temp file root cannot be your cache dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 567
    :cond_51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Temp file root cannot be your data dir"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 563
    .end local v0    # "canonicalTempFilePath":Ljava/lang/String;
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided File is not a directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided directory does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 7
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 1064
    const-string v0, "Failed to create download token for request "

    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->getDownloadRequestTokenPath(Landroid/telephony/mbms/DownloadRequest;)Ljava/io/File;

    move-result-object v1

    .line 1065
    .local v1, "token":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_17

    .line 1066
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1068
    :cond_17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1069
    sget-object v0, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    return-void

    .line 1073
    :cond_40
    :try_start_40
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1080
    nop

    .line 1081
    return-void

    .line 1074
    :cond_48
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Token location is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1075
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "token":Ljava/io/File;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    throw v2
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_6d} :catch_6d

    .line 1077
    .restart local v1    # "token":Ljava/io/File;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    :catch_6d
    move-exception v2

    .line 1078
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " due to IOException "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". Attempted to write to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1079
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public whitelist addProgressListener(Landroid/telephony/mbms/DownloadRequest;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/DownloadProgressListener;)V
    .registers 10
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/telephony/mbms/DownloadProgressListener;

    .line 814
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 815
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_4c

    .line 819
    new-instance v1, Landroid/telephony/mbms/InternalDownloadProgressListener;

    invoke-direct {v1, p3, p2}, Landroid/telephony/mbms/InternalDownloadProgressListener;-><init>(Landroid/telephony/mbms/DownloadProgressListener;Ljava/util/concurrent/Executor;)V

    .line 823
    .local v1, "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    const/4 v2, 0x0

    :try_start_10
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->addProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v3

    .line 824
    .local v3, "result":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    .line 829
    if-eqz v3, :cond_29

    .line 830
    const/16 v4, 0x192

    if-eq v3, v4, :cond_21

    .line 833
    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 834
    return-void

    .line 831
    :cond_21
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    throw v4
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_29} :catch_3b

    .line 841
    .end local v3    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    :cond_29
    nop

    .line 842
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    return-void

    .line 826
    .restart local v3    # "result":I
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 827
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    throw v4
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3b} :catch_3b

    .line 836
    .end local v3    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    :catch_3b
    move-exception v3

    .line 837
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 838
    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 839
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 840
    return-void

    .line 816
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addServiceAnnouncement([B)V
    .registers 7
    .param p1, "contents"    # [B

    .line 465
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 466
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_4a

    .line 470
    array-length v1, p1

    const/16 v2, 0x2800

    if-gt v1, v2, :cond_42

    .line 475
    const/4 v1, 0x0

    :try_start_10
    iget v2, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v2, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->addServiceAnnouncement(I[B)I

    move-result v2

    .line 477
    .local v2, "returnCode":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    .line 482
    if-eqz v2, :cond_1e

    .line 483
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 490
    .end local v2    # "returnCode":I
    :cond_1e
    goto :goto_41

    .line 479
    .restart local v2    # "returnCode":I
    :cond_1f
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 480
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "contents":[B
    throw v3
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_2a} :catch_2a

    .line 485
    .end local v2    # "returnCode":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "contents":[B
    :catch_2a
    move-exception v2

    .line 486
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 488
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 489
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 491
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_41
    return-void

    .line 471
    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "File too large"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 467
    :cond_4a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist addStatusListener(Landroid/telephony/mbms/DownloadRequest;Ljava/util/concurrent/Executor;Landroid/telephony/mbms/DownloadStatusListener;)V
    .registers 10
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/telephony/mbms/DownloadStatusListener;

    .line 702
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 703
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_4c

    .line 707
    new-instance v1, Landroid/telephony/mbms/InternalDownloadStatusListener;

    invoke-direct {v1, p3, p2}, Landroid/telephony/mbms/InternalDownloadStatusListener;-><init>(Landroid/telephony/mbms/DownloadStatusListener;Ljava/util/concurrent/Executor;)V

    .line 711
    .local v1, "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    const/4 v2, 0x0

    :try_start_10
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->addStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v3

    .line 712
    .local v3, "result":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_30

    .line 717
    if-eqz v3, :cond_29

    .line 718
    const/16 v4, 0x192

    if-eq v3, v4, :cond_21

    .line 721
    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 722
    return-void

    .line 719
    :cond_21
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    throw v4
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_29} :catch_3b

    .line 729
    .end local v3    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    :cond_29
    nop

    .line 730
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    return-void

    .line 714
    .restart local v3    # "result":I
    :cond_30
    :try_start_30
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 715
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    throw v4
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_3b} :catch_3b

    .line 724
    .end local v3    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    :catch_3b
    move-exception v3

    .line 725
    .local v3, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 726
    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 727
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 728
    return-void

    .line 704
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist cancelDownload(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 7
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;

    .line 913
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 914
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_38

    .line 919
    const/4 v1, 0x0

    :try_start_b
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->cancelDownload(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    .line 920
    .local v2, "result":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 925
    if-eqz v2, :cond_18

    .line 926
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_1b

    .line 928
    :cond_18
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->deleteDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    .line 934
    .end local v2    # "result":I
    :goto_1b
    goto :goto_37

    .line 922
    .restart local v2    # "result":I
    :cond_1c
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 923
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    throw v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_27} :catch_27

    .line 930
    .end local v2    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    :catch_27
    move-exception v2

    .line 931
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 932
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 933
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 935
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void

    .line 915
    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api close()V
    .registers 6

    .line 1045
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 1046
    .local v2, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v2, :cond_1e

    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v3, :cond_11

    goto :goto_1e

    .line 1050
    :cond_11
    iget v3, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v2, v3}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->dispose(I)V

    .line 1051
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1056
    .end local v2    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    goto :goto_42

    .line 1047
    .restart local v2    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    :cond_1e
    :goto_1e
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Service already dead"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_25} :catch_39
    .catchall {:try_start_2 .. :try_end_25} :catchall_37

    .line 1056
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1057
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1058
    iput-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1059
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 1048
    return-void

    .line 1056
    .end local v2    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    :catchall_37
    move-exception v2

    goto :goto_55

    .line 1052
    :catch_39
    move-exception v2

    .line 1054
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3a
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Remote exception while disposing of service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_37

    .line 1056
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_42
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1057
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1058
    iput-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1059
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 1060
    nop

    .line 1061
    return-void

    .line 1056
    :goto_55
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1057
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1058
    iput-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1059
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalCallback:Landroid/telephony/mbms/InternalDownloadSessionCallback;

    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadSessionCallback;->stop()V

    .line 1060
    throw v2
.end method

.method public whitelist download(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 9
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;

    .line 620
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 621
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_5f

    .line 626
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v2, "MbmsTempFileRootPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 628
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "mbms_temp_file_root"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_30

    .line 629
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "androidMbmsTempFileRoot"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 631
    .local v2, "tempRootDirectory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 632
    invoke-virtual {p0, v2}, Landroid/telephony/MbmsDownloadSession;->setTempFileRootDirectory(Ljava/io/File;)V

    .line 635
    .end local v2    # "tempRootDirectory":Ljava/io/File;
    :cond_30
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->checkDownloadRequestDestination(Landroid/telephony/mbms/DownloadRequest;)V

    .line 638
    :try_start_33
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->download(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    .line 639
    .local v2, "result":I
    if-nez v2, :cond_3d

    .line 640
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->writeDownloadRequestToken(Landroid/telephony/mbms/DownloadRequest;)V

    goto :goto_43

    .line 642
    :cond_3d
    const/4 v5, -0x1

    if-eq v2, v5, :cond_44

    .line 648
    invoke-direct {p0, v2, v4}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 654
    .end local v2    # "result":I
    :goto_43
    goto :goto_5e

    .line 644
    .restart local v2    # "result":I
    :cond_44
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 645
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Middleware must not return an unknown error code"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    throw v5
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_4f} :catch_4f

    .line 650
    .end local v2    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    :catch_4f
    move-exception v2

    .line 651
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 652
    sget-object v5, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 653
    const/4 v3, 0x3

    invoke-direct {p0, v3, v4}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 655
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_5e
    return-void

    .line 622
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_5f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTempFileRootDirectory()Ljava/io/File;
    .registers 4

    .line 587
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v1, "MbmsTempFileRootPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 589
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "mbms_temp_file_root"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 591
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 593
    :cond_19
    return-object v2
.end method

.method public whitelist listPendingDownloads()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/DownloadRequest;",
            ">;"
        }
    .end annotation

    .line 665
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 666
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_27

    .line 671
    :try_start_a
    iget v1, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->listPendingDownloads(I)Ljava/util/List;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return-object v1

    .line 672
    :catch_11
    move-exception v1

    .line 673
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 674
    sget-object v2, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 675
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 676
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 667
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadProgressListener;)V
    .registers 9
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadProgressListener;

    .line 863
    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 864
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_7c

    .line 868
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 869
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadProgressListener;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_84

    .line 870
    .local v1, "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    if-eqz v1, :cond_74

    .line 875
    const/4 v2, 0x0

    :try_start_15
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->removeProgressListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadProgressListener;)I

    move-result v3

    .line 876
    .local v3, "result":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4b

    .line 882
    if-eqz v3, :cond_3b

    .line 883
    const/16 v4, 0x192

    if-eq v3, v4, :cond_33

    .line 886
    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_25} :catch_56
    .catchall {:try_start_15 .. :try_end_25} :catchall_84

    .line 896
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 897
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadProgressListener;

    .line 898
    .local v2, "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    if-eqz v2, :cond_32

    .line 899
    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    .line 887
    .end local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    :cond_32
    return-void

    .line 884
    :cond_33
    :try_start_33
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    throw v4
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3b} :catch_56
    .catchall {:try_start_33 .. :try_end_3b} :catchall_84

    .line 894
    .end local v3    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    :cond_3b
    nop

    .line 896
    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 897
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/InternalDownloadProgressListener;

    .line 898
    .local v0, "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    if-eqz v0, :cond_49

    .line 899
    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    .line 901
    .end local v0    # "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    :cond_49
    nop

    .line 902
    return-void

    .line 878
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .restart local v3    # "result":I
    :cond_4b
    :try_start_4b
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 879
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    throw v4
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_56} :catch_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_84

    .line 889
    .end local v3    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    :catch_56
    move-exception v3

    .line 890
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_57
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 891
    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 892
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_84

    .line 896
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 897
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadProgressListener;

    .line 898
    .restart local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    if-eqz v2, :cond_73

    .line 899
    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    .line 893
    .end local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    :cond_73
    return-void

    .line 871
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_74
    :try_start_74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Provided listener was never registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    throw v2

    .line 865
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadProgressListener;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    :cond_7c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    throw v1
    :try_end_84
    .catchall {:try_start_74 .. :try_end_84} :catchall_84

    .line 896
    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "listener":Landroid/telephony/mbms/DownloadProgressListener;
    :catchall_84
    move-exception v0

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadProgressListeners:Ljava/util/Map;

    .line 897
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadProgressListener;

    .line 898
    .local v1, "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    if-eqz v1, :cond_92

    .line 899
    invoke-virtual {v1}, Landroid/telephony/mbms/InternalDownloadProgressListener;->stop()V

    .line 901
    .end local v1    # "internalCallback":Landroid/telephony/mbms/InternalDownloadProgressListener;
    :cond_92
    throw v0
.end method

.method public whitelist removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/DownloadStatusListener;)V
    .registers 9
    .param p1, "request"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "listener"    # Landroid/telephony/mbms/DownloadStatusListener;

    .line 751
    :try_start_0
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 752
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_7c

    .line 756
    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 757
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadStatusListener;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_84

    .line 758
    .local v1, "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    if-eqz v1, :cond_74

    .line 763
    const/4 v2, 0x0

    :try_start_15
    invoke-interface {v0, p1, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->removeStatusListener(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/IDownloadStatusListener;)I

    move-result v3

    .line 764
    .local v3, "result":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4b

    .line 770
    if-eqz v3, :cond_3b

    .line 771
    const/16 v4, 0x192

    if-eq v3, v4, :cond_33

    .line 774
    invoke-direct {p0, v3, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_25} :catch_56
    .catchall {:try_start_15 .. :try_end_25} :catchall_84

    .line 784
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 785
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStatusListener;

    .line 786
    .local v2, "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    if-eqz v2, :cond_32

    .line 787
    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    .line 775
    .end local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    :cond_32
    return-void

    .line 772
    :cond_33
    :try_start_33
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown download request."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    throw v4
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_3b} :catch_56
    .catchall {:try_start_33 .. :try_end_3b} :catchall_84

    .line 782
    .end local v3    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    :cond_3b
    nop

    .line 784
    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 785
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/InternalDownloadStatusListener;

    .line 786
    .local v0, "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    if-eqz v0, :cond_49

    .line 787
    invoke-virtual {v0}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    .line 789
    .end local v0    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    :cond_49
    nop

    .line 790
    return-void

    .line 766
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .restart local v3    # "result":I
    :cond_4b
    :try_start_4b
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 767
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Middleware must not return an unknown error code"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    throw v4
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_56} :catch_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_84

    .line 777
    .end local v3    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    :catch_56
    move-exception v3

    .line 778
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_57
    iget-object v4, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 779
    sget-object v4, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 780
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_66
    .catchall {:try_start_57 .. :try_end_66} :catchall_84

    .line 784
    iget-object v2, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 785
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/InternalDownloadStatusListener;

    .line 786
    .restart local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    if-eqz v2, :cond_73

    .line 787
    invoke-virtual {v2}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    .line 781
    .end local v2    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    :cond_73
    return-void

    .line 759
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_74
    :try_start_74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Provided listener was never registered"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    throw v2

    .line 753
    .end local v1    # "internalListener":Landroid/telephony/mbms/InternalDownloadStatusListener;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    :cond_7c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    throw v1
    :try_end_84
    .catchall {:try_start_74 .. :try_end_84} :catchall_84

    .line 784
    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "request":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "listener":Landroid/telephony/mbms/DownloadStatusListener;
    :catchall_84
    move-exception v0

    iget-object v1, p0, Landroid/telephony/MbmsDownloadSession;->mInternalDownloadStatusListeners:Ljava/util/Map;

    .line 785
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/mbms/InternalDownloadStatusListener;

    .line 786
    .local v1, "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    if-eqz v1, :cond_92

    .line 787
    invoke-virtual {v1}, Landroid/telephony/mbms/InternalDownloadStatusListener;->stop()V

    .line 789
    .end local v1    # "internalCallback":Landroid/telephony/mbms/InternalDownloadStatusListener;
    :cond_92
    throw v0
.end method

.method public whitelist requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)V
    .registers 8
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;
    .param p2, "fileInfo"    # Landroid/telephony/mbms/FileInfo;

    .line 954
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 955
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_4d

    .line 960
    const/4 v1, 0x0

    :try_start_b
    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->requestDownloadState(Landroid/telephony/mbms/DownloadRequest;Landroid/telephony/mbms/FileInfo;)I

    move-result v2

    .line 961
    .local v2, "result":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    .line 966
    if-eqz v2, :cond_30

    .line 967
    const/16 v3, 0x192

    if-eq v2, v3, :cond_28

    .line 970
    const/16 v3, 0x193

    if-eq v2, v3, :cond_20

    .line 973
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_30

    .line 971
    :cond_20
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown file."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    throw v3

    .line 968
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    :cond_28
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown download request."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    throw v3

    .line 979
    .end local v2    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    :cond_30
    :goto_30
    goto :goto_4c

    .line 963
    .restart local v2    # "result":I
    :cond_31
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 964
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    .end local p2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    throw v3
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_3c} :catch_3c

    .line 975
    .end local v2    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    .restart local p2    # "fileInfo":Landroid/telephony/mbms/FileInfo;
    :catch_3c
    move-exception v2

    .line 976
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 977
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 978
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 980
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_4c
    return-void

    .line 956
    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist requestUpdateFileServices(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 416
    .local p1, "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 417
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_3d

    .line 421
    const/4 v1, 0x0

    :try_start_b
    iget v2, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v2, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->requestUpdateFileServices(ILjava/util/List;)I

    move-result v2

    .line 422
    .local v2, "returnCode":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 427
    if-eqz v2, :cond_19

    .line 428
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 435
    .end local v2    # "returnCode":I
    :cond_19
    goto :goto_3c

    .line 424
    .restart local v2    # "returnCode":I
    :cond_1a
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 425
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_25} :catch_25

    .line 430
    .end local v2    # "returnCode":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "classList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_25
    move-exception v2

    .line 431
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Remote process died"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 433
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 434
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 436
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void

    .line 418
    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)V
    .registers 7
    .param p1, "downloadRequest"    # Landroid/telephony/mbms/DownloadRequest;

    .line 1003
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 1004
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_41

    .line 1009
    const/4 v1, 0x0

    :try_start_b
    invoke-interface {v0, p1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->resetDownloadKnowledge(Landroid/telephony/mbms/DownloadRequest;)I

    move-result v2

    .line 1010
    .local v2, "result":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_25

    .line 1015
    if-eqz v2, :cond_24

    .line 1016
    const/16 v3, 0x192

    if-eq v2, v3, :cond_1c

    .line 1019
    invoke-direct {p0, v2, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    goto :goto_24

    .line 1017
    :cond_1c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown download request."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    throw v3

    .line 1025
    .end local v2    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    :cond_24
    :goto_24
    goto :goto_40

    .line 1012
    .restart local v2    # "result":I
    :cond_25
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 1013
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Middleware must not return an unknown error code"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    throw v3
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_30} :catch_30

    .line 1021
    .end local v2    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "downloadRequest":Landroid/telephony/mbms/DownloadRequest;
    :catch_30
    move-exception v2

    .line 1022
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1023
    sget-object v3, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1024
    const/4 v3, 0x3

    invoke-direct {p0, v3, v1}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 1026
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_40
    return-void

    .line 1005
    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setTempFileRootDirectory(Ljava/io/File;)V
    .registers 9
    .param p1, "tempFileRootDirectory"    # Ljava/io/File;

    .line 519
    iget-object v0, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/vendor/IMbmsDownloadService;

    .line 520
    .local v0, "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    if-eqz v0, :cond_7a

    .line 524
    :try_start_a
    invoke-direct {p0, p1}, Landroid/telephony/MbmsDownloadSession;->validateTempFileRootSanity(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_71

    .line 527
    nop

    .line 530
    :try_start_e
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_12} :catch_57

    .line 533
    .local v1, "filePath":Ljava/lang/String;
    nop

    .line 536
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_15
    iget v4, p0, Landroid/telephony/MbmsDownloadSession;->mSubscriptionId:I

    invoke-interface {v0, v4, v1}, Landroid/telephony/mbms/vendor/IMbmsDownloadService;->setTempFileRootDirectory(ILjava/lang/String;)I

    move-result v4

    .line 537
    .local v4, "result":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3c

    .line 542
    if-eqz v4, :cond_24

    .line 543
    invoke-direct {p0, v4, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_23} :catch_47

    .line 544
    return-void

    .line 551
    .end local v4    # "result":I
    :cond_24
    nop

    .line 553
    iget-object v3, p0, Landroid/telephony/MbmsDownloadSession;->mContext:Landroid/content/Context;

    const-string v4, "MbmsTempFileRootPrefs"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 555
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "mbms_temp_file_root"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 556
    return-void

    .line 539
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .restart local v4    # "result":I
    :cond_3c
    :try_start_3c
    invoke-virtual {p0}, Landroid/telephony/MbmsDownloadSession;->close()V

    .line 540
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Middleware must not return an unknown error code"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .end local v1    # "filePath":Ljava/lang/String;
    .end local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .end local p1    # "tempFileRootDirectory":Ljava/io/File;
    throw v5
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_47} :catch_47

    .line 546
    .end local v4    # "result":I
    .restart local v0    # "downloadService":Landroid/telephony/mbms/vendor/IMbmsDownloadService;
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local p0    # "this":Landroid/telephony/MbmsDownloadSession;
    .restart local p1    # "tempFileRootDirectory":Ljava/io/File;
    :catch_47
    move-exception v4

    .line 547
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v5, p0, Landroid/telephony/MbmsDownloadSession;->mService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 548
    sget-object v5, Landroid/telephony/MbmsDownloadSession;->sIsInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 549
    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Landroid/telephony/MbmsDownloadSession;->sendErrorToApp(ILjava/lang/String;)V

    .line 550
    return-void

    .line 531
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_57
    move-exception v1

    .line 532
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to canonicalize the provided path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 525
    .end local v1    # "e":Ljava/io/IOException;
    :catch_71
    move-exception v1

    .line 526
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Got IOException checking directory sanity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Middleware not yet bound"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
