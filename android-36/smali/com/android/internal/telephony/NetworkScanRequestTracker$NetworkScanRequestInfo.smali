.class public Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;
.super Ljava/lang/Object;
.source "NetworkScanRequestTracker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkScanRequestTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkScanRequestInfo"
.end annotation


# instance fields
.field private final blacklist mBinder:Landroid/os/IBinder;

.field private final blacklist mCallingPackage:Ljava/lang/String;

.field private blacklist mIsBinderDead:Z

.field private final blacklist mMessenger:Landroid/os/Messenger;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mPid:I

.field private blacklist mRenounceFineLocationAccess:Z

.field private final blacklist mRequest:Landroid/telephony/NetworkScanRequest;

.field private final blacklist mScanId:I

.field private final blacklist mUid:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallingPackage(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mCallingPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessenger(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/os/Messenger;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPid:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRenounceFineLocationAccess(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRenounceFineLocationAccess:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequest(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)Landroid/telephony/NetworkScanRequest;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScanId(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mScanId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUid(Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mUid:I

    return p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/NetworkScanRequestTracker;Landroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;ILcom/android/internal/telephony/Phone;IILjava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p2, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    .line 286
    iput-object p3, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mMessenger:Landroid/os/Messenger;

    .line 287
    iput-object p4, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 288
    iput p5, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mScanId:I

    .line 289
    iput-object p6, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 290
    iput p7, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mUid:I

    .line 291
    iput p8, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mPid:I

    .line 292
    iput-object p9, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mCallingPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 293
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mIsBinderDead:Z

    .line 294
    iput-boolean p10, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRenounceFineLocationAccess:Z

    .line 297
    :try_start_1a
    invoke-interface {p4, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    return-void

    .line 299
    :catch_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->binderDied()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 3

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneInterfaceManager NetworkScanRequestInfo binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanRequestTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->setIsBinderDead(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->this$0:Lcom/android/internal/telephony/NetworkScanRequestTracker;

    iget p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mScanId:I

    invoke-static {v0, p0}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->-$$Nest$minterruptNetworkScan(Lcom/android/internal/telephony/NetworkScanRequestTracker;I)V

    return-void
.end method

.method declared-synchronized blacklist getIsBinderDead()Z
    .registers 2

    monitor-enter p0

    .line 308
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mIsBinderDead:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method blacklist getRequest()Landroid/telephony/NetworkScanRequest;
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mRequest:Landroid/telephony/NetworkScanRequest;

    return-object p0
.end method

.method declared-synchronized blacklist setIsBinderDead(Z)V
    .registers 2

    monitor-enter p0

    .line 304
    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/telephony/NetworkScanRequestTracker$NetworkScanRequestInfo;->mIsBinderDead:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 305
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method
