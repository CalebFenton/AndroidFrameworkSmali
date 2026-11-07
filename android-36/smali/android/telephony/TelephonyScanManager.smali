.class public final Landroid/telephony/TelephonyScanManager;
.super Ljava/lang/Object;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyScanManager$NetworkScanCallback;,
        Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    }
.end annotation


# static fields
.field public static final blacklist CALLBACK_RESTRICTED_SCAN_RESULTS:I = 0x4

.field public static final greylist-max-o CALLBACK_SCAN_COMPLETE:I = 0x3

.field public static final greylist-max-o CALLBACK_SCAN_ERROR:I = 0x2

.field public static final greylist-max-o CALLBACK_SCAN_RESULTS:I = 0x1

.field public static final blacklist CALLBACK_TELEPHONY_DIED:I = 0x5

.field public static final blacklist INVALID_SCAN_ID:I = -0x1

.field public static final greylist-max-o SCAN_RESULT_KEY:Ljava/lang/String; = "scanResult"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TelephonyScanManager"


# instance fields
.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final greylist-max-o mLooper:Landroid/os/Looper;

.field private final greylist-max-o mMessenger:Landroid/os/Messenger;

.field private final greylist-max-o mScanInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyScanManager$NetworkScanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/telephony/TelephonyScanManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyScanManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TelephonyScanManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 121
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/TelephonyScanManager;->mLooper:Landroid/os/Looper;

    .line 122
    new-instance v1, Landroid/telephony/TelephonyScanManager$1;

    iget-object v2, p0, Landroid/telephony/TelephonyScanManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Landroid/telephony/TelephonyScanManager$1;-><init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/telephony/TelephonyScanManager;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v1, Landroid/os/Messenger;

    iget-object v2, p0, Landroid/telephony/TelephonyScanManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/telephony/TelephonyScanManager;->mMessenger:Landroid/os/Messenger;

    .line 216
    new-instance v1, Landroid/telephony/TelephonyScanManager$2;

    invoke-direct {v1, p0}, Landroid/telephony/TelephonyScanManager$2;-><init>(Landroid/telephony/TelephonyScanManager;)V

    iput-object v1, p0, Landroid/telephony/TelephonyScanManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 222
    return-void
.end method

.method private greylist-max-o getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 2

    .line 296
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 294
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o saveScanInfo(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .registers 7
    .param p1, "id"    # I
    .param p2, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 290
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    new-instance v1, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    invoke-direct {v1, p2, p3, p4}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;-><init>(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    return-void
.end method


# virtual methods
.method public blacklist requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/NetworkScan;
    .registers 21
    .param p1, "subId"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "callingFeatureId"    # Ljava/lang/String;

    .line 250
    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    const/4 v11, 0x0

    :try_start_7
    const-string v0, "Request was null"

    invoke-static {v4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    const-string v0, "Callback was null"

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 252
    const-string v0, "Executor was null"

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    invoke-direct {p0}, Landroid/telephony/TelephonyScanManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 254
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1d

    return-object v11

    .line 260
    :cond_1d
    iget-object v12, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    monitor-enter v12
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_20} :catch_5e
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_20} :catch_54

    .line 261
    :try_start_20
    iget-object v5, p0, Landroid/telephony/TelephonyScanManager;->mMessenger:Landroid/os/Messenger;

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    move v2, p1

    move v3, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/telephony/ITelephony;->requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 265
    .local v0, "scanId":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3d

    .line 266
    const-string v3, "TelephonyScanManager"

    const-string v5, "Failed to initiate network scan"

    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    monitor-exit v12

    return-object v11

    .line 275
    :cond_3d
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v5, p0, Landroid/telephony/TelephonyScanManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 276
    invoke-direct {p0, v0, v4, v9, v10}, Landroid/telephony/TelephonyScanManager;->saveScanInfo(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    .line 277
    new-instance v3, Landroid/telephony/NetworkScan;

    invoke-direct {v3, v0, p1}, Landroid/telephony/NetworkScan;-><init>(II)V

    monitor-exit v12

    return-object v3

    .line 278
    .end local v0    # "scanId":I
    :catchall_51
    move-exception v0

    monitor-exit v12
    :try_end_53
    .catchall {:try_start_20 .. :try_end_53} :catchall_51

    .end local p0    # "this":Landroid/telephony/TelephonyScanManager;
    .end local p1    # "subId":I
    .end local p2    # "renounceFineLocationAccess":Z
    .end local p3    # "request":Landroid/telephony/NetworkScanRequest;
    .end local p4    # "executor":Ljava/util/concurrent/Executor;
    .end local p5    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .end local p6    # "callingPackage":Ljava/lang/String;
    .end local p7    # "callingFeatureId":Ljava/lang/String;
    :try_start_53
    throw v0
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_54} :catch_5e
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_54} :catch_54

    .line 281
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .restart local p0    # "this":Landroid/telephony/TelephonyScanManager;
    .restart local p1    # "subId":I
    .restart local p2    # "renounceFineLocationAccess":Z
    .restart local p3    # "request":Landroid/telephony/NetworkScanRequest;
    .restart local p4    # "executor":Ljava/util/concurrent/Executor;
    .restart local p5    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .restart local p6    # "callingPackage":Ljava/lang/String;
    .restart local p7    # "callingFeatureId":Ljava/lang/String;
    :catch_54
    move-exception v0

    .line 282
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "TelephonyScanManager"

    const-string/jumbo v3, "requestNetworkScan NPE"

    invoke-static {v1, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_68

    .line 279
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catch_5e
    move-exception v0

    .line 280
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "TelephonyScanManager"

    const-string/jumbo v3, "requestNetworkScan RemoteException"

    invoke-static {v1, v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    .end local v0    # "ex":Landroid/os/RemoteException;
    nop

    .line 284
    :goto_68
    return-object v11
.end method
