.class public Landroid/telephony/ims/stub/ImsConfigImplBase;
.super Ljava/lang/Object;
.source "ImsConfigImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;,
        Landroid/telephony/ims/stub/ImsConfigImplBase$SetConfigResult;
    }
.end annotation


# static fields
.field public static final whitelist CONFIG_RESULT_FAILED:I = 0x1

.field public static final whitelist CONFIG_RESULT_SUCCESS:I = 0x0

.field public static final whitelist CONFIG_RESULT_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsConfigImplBase"


# instance fields
.field private final blacklist mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

.field private final blacklist mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IRcsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRcsConfigData:[B

.field private final blacklist mRcsConfigDataLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNotifyRcsAutoConfigurationReceived(Landroid/telephony/ims/stub/ImsConfigImplBase;[BZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->onNotifyRcsAutoConfigurationReceived([BZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNotifyRcsAutoConfigurationRemoved(Landroid/telephony/ims/stub/ImsConfigImplBase;)V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->onNotifyRcsAutoConfigurationRemoved()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 550
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 553
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    .line 577
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    .line 578
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 550
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 553
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    .line 570
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    .line 571
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 550
    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    .line 553
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    .line 563
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    .line 564
    return-void
.end method

.method private greylist-max-o addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 586
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 587
    return-void
.end method

.method private blacklist addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 6
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 634
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    .line 638
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_8
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    if-nez v1, :cond_e

    .line 640
    monitor-exit v0

    return-void

    .line 642
    :cond_e
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 643
    .local v1, "cloneRcsConfigData":[B
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_24

    .line 646
    :try_start_17
    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationChanged([B)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 649
    goto :goto_23

    .line 647
    :catch_1b
    move-exception v0

    .line 648
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ImsConfigImplBase"

    const-string v3, "dead binder to call onConfigurationChanged, skipping."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_23
    return-void

    .line 643
    .end local v1    # "cloneRcsConfigData":[B
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method static synthetic blacklist lambda$notifyAutoConfigurationErrorReceived$4(ILjava/lang/String;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 6
    .param p0, "errorCode"    # I
    .param p1, "errorString"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 846
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onAutoConfigurationErrorReceived(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 849
    goto :goto_c

    .line 847
    :catch_4
    move-exception v0

    .line 848
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyAutoConfigurationErrorReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method static synthetic blacklist lambda$notifyConfigChanged$0(IILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 6
    .param p0, "item"    # I
    .param p1, "value"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 609
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onIntConfigChanged(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 612
    goto :goto_c

    .line 610
    :catch_4
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "notifyConfigChanged(int): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method static synthetic blacklist lambda$notifyConfigChanged$1(ILjava/lang/String;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 6
    .param p0, "item"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 625
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onStringConfigChanged(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 628
    goto :goto_c

    .line 626
    :catch_4
    move-exception v0

    .line 627
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "notifyConfigChanged(string): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method static synthetic blacklist lambda$notifyPreProvisioningReceived$5([BLandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 5
    .param p0, "configXml"    # [B
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 872
    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onPreProvisioningReceived([B)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 875
    goto :goto_c

    .line 873
    :catch_4
    move-exception v0

    .line 874
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyPreProvisioningReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method static synthetic blacklist lambda$onNotifyRcsAutoConfigurationReceived$2([BLandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 5
    .param p0, "rcsConfigData"    # [B
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 674
    :try_start_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationChanged([B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 677
    goto :goto_12

    .line 675
    :catch_a
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyRcsAutoConfigurationReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method static synthetic blacklist lambda$onNotifyRcsAutoConfigurationRemoved$3(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 4
    .param p0, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 692
    :try_start_0
    invoke-interface {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationReset()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 695
    goto :goto_c

    .line 693
    :catch_4
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyRcsAutoConfigurationRemoved, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private final greylist-max-o notifyConfigChanged(II)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 603
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_5

    .line 604
    return-void

    .line 606
    :cond_5
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    .line 607
    :try_start_8
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 614
    monitor-exit v0

    .line 615
    return-void

    .line 614
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private greylist-max-o notifyConfigChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 619
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_5

    .line 620
    return-void

    .line 622
    :cond_5
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    .line 623
    :try_start_8
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 630
    monitor-exit v0

    .line 631
    return-void

    .line 630
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private blacklist onNotifyRcsAutoConfigurationReceived([BZ)V
    .registers 7
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z

    .line 658
    if-eqz p2, :cond_7

    invoke-static {p1}, Landroid/telephony/ims/RcsConfig;->decompressGzip([B)[B

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    .line 660
    .local v0, "rcsConfigData":[B
    :goto_8
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 661
    :try_start_b
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 662
    monitor-exit v1

    return-void

    .line 664
    :cond_15
    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    .line 665
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_32

    .line 668
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-eqz v1, :cond_2e

    .line 669
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v1

    .line 670
    :try_start_1f
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v3, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda1;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 679
    monitor-exit v1

    goto :goto_2e

    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw v2

    .line 681
    :cond_2e
    :goto_2e
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyRcsAutoConfigurationReceived([BZ)V

    .line 682
    return-void

    .line 665
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2
.end method

.method private blacklist onNotifyRcsAutoConfigurationRemoved()V
    .registers 4

    .line 685
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    .line 687
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_21

    .line 688
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-eqz v0, :cond_1d

    .line 689
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    .line 690
    :try_start_e
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 697
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v1

    .line 699
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyRcsAutoConfigurationRemoved()V

    .line 700
    return-void

    .line 687
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private greylist-max-o removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IImsConfigCallback;

    .line 594
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 595
    return-void
.end method

.method private blacklist removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;

    .line 653
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    .line 654
    return-void
.end method


# virtual methods
.method public final blacklist clearConfigurationCache()V
    .registers 3

    .line 898
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->clearCachedValue()V

    .line 900
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 901
    const/4 v1, 0x0

    :try_start_9
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    .line 902
    monitor-exit v0

    .line 903
    return-void

    .line 902
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist getConfigInt(I)I
    .registers 3
    .param p1, "item"    # I

    .line 793
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getConfigString(I)Ljava/lang/String;
    .registers 3
    .param p1, "item"    # I

    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .registers 2

    .line 705
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-object v0
.end method

.method public final whitelist notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "errorString"    # Ljava/lang/String;

    .line 840
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_5

    .line 841
    return-void

    .line 843
    :cond_5
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    .line 844
    :try_start_8
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda4;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 851
    monitor-exit v0

    .line 852
    return-void

    .line 851
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public final whitelist notifyPreProvisioningReceived([B)V
    .registers 5
    .param p1, "configXml"    # [B

    .line 866
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_5

    .line 867
    return-void

    .line 869
    :cond_5
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    .line 870
    :try_start_8
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    .line 877
    monitor-exit v0

    .line 878
    return-void

    .line 877
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public final whitelist notifyProvisionedValueChanged(II)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 716
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(II)V

    .line 719
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;II)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 722
    goto :goto_13

    .line 720
    :catch_b
    move-exception v0

    .line 721
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "notifyProvisionedValueChanged(int): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public final whitelist notifyProvisionedValueChanged(ILjava/lang/String;)V
    .registers 6
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 734
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;)V

    .line 737
    :try_start_5
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    .line 740
    goto :goto_13

    .line 738
    :catch_b
    move-exception v0

    .line 739
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsConfigImplBase"

    const-string v2, "notifyProvisionedValueChanged(string): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public whitelist notifyRcsAutoConfigurationReceived([BZ)V
    .registers 3
    .param p1, "config"    # [B
    .param p2, "isCompressed"    # Z

    .line 752
    return-void
.end method

.method public whitelist notifyRcsAutoConfigurationRemoved()V
    .registers 1

    .line 758
    return-void
.end method

.method public whitelist setConfig(II)I
    .registers 4
    .param p1, "item"    # I
    .param p2, "value"    # I

    .line 769
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setConfig(ILjava/lang/String;)I
    .registers 4
    .param p1, "item"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 781
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 887
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_d

    .line 888
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$fputmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/Executor;)V

    .line 890
    :cond_d
    return-void
.end method

.method public whitelist setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .registers 2
    .param p1, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;

    .line 821
    return-void
.end method

.method public whitelist triggerAutoConfiguration()V
    .registers 1

    .line 829
    return-void
.end method

.method public blacklist updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .registers 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 812
    return-void
.end method
