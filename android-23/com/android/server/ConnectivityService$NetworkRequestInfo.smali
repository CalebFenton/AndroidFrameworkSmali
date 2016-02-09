.class Lcom/android/server/ConnectivityService$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# static fields
.field static final LISTEN:Z = false

.field static final REQUEST:Z = true


# instance fields
.field final isRequest:Z

.field private final mBinder:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field mPendingIntentSent:Z

.field final mPid:I

.field final mUid:I

.field final messenger:Landroid/os/Messenger;

.field final request:Landroid/net/NetworkRequest;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "r"    # Landroid/net/NetworkRequest;
    .param p3, "pi"    # Landroid/app/PendingIntent;
    .param p4, "isRequest"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3510
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 3511
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@8
    .line 3512
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@a
    .line 3513
    iput-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    #@c
    .line 3514
    iput-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@e
    .line 3515
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    #@14
    .line 3516
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@17
    move-result v0

    #@18
    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@1a
    .line 3517
    iput-boolean p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    #@1c
    .line 3510
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "m"    # Landroid/os/Messenger;
    .param p3, "r"    # Landroid/net/NetworkRequest;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "isRequest"    # Z

    #@0
    .prologue
    .line 3520
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    #@2
    .line 3521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3522
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    #@7
    .line 3523
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@9
    .line 3524
    iput-object p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@b
    .line 3525
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    #@e
    move-result v1

    #@f
    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    #@11
    .line 3526
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    #@14
    move-result v1

    #@15
    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@17
    .line 3527
    iput-boolean p5, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    #@19
    .line 3528
    const/4 v1, 0x0

    #@1a
    iput-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@1c
    .line 3531
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@1e
    const/4 v2, 0x0

    #@1f
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 3520
    :goto_0
    return-void

    #@23
    .line 3532
    :catch_0
    move-exception v0

    #@24
    .line 3533
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->binderDied()V

    #@27
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 3544
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ConnectivityService NetworkRequestInfo binderDied("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 3545
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@e
    .line 3544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 3545
    const-string/jumbo v1, ", "

    #@15
    .line 3544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 3545
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@1b
    .line 3544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 3545
    const-string/jumbo v1, ")"

    #@22
    .line 3544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap17(Ljava/lang/String;)V

    #@2d
    .line 3546
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    #@2f
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@31
    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    #@34
    .line 3543
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 3550
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-boolean v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->isRequest:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const-string/jumbo v0, "Request"

    #@c
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 3551
    const-string/jumbo v1, " from uid/pid:"

    #@13
    .line 3550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 3551
    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    #@19
    .line 3550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 3551
    const-string/jumbo v1, "/"

    #@20
    .line 3550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 3551
    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    #@26
    .line 3550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 3552
    const-string/jumbo v1, " for "

    #@2d
    .line 3550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    .line 3552
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    #@33
    .line 3550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 3553
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@39
    if-nez v0, :cond_1

    #@3b
    const-string/jumbo v0, ""

    #@3e
    .line 3550
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    return-object v0

    #@47
    :cond_0
    const-string/jumbo v0, "Listen"

    #@4a
    goto :goto_0

    #@4b
    .line 3553
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v2, " to trigger "

    #@53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    #@59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    goto :goto_1
.end method

.method unlinkDeathRecipient()V
    .locals 2

    #@0
    .prologue
    .line 3538
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3539
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@a
    .line 3537
    :cond_0
    return-void
.end method
