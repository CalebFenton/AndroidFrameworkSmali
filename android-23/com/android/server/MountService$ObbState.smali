.class Lcom/android/server/MountService$ObbState;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObbState"
.end annotation


# instance fields
.field final canonicalPath:Ljava/lang/String;

.field final nonce:I

.field final ownerGid:I

.field final ownerPath:Ljava/lang/String;

.field final rawPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;

.field final token:Landroid/os/storage/IObbActionListener;

.field final voldPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/storage/IObbActionListener;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/MountService;
    .param p2, "rawPath"    # Ljava/lang/String;
    .param p3, "canonicalPath"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "token"    # Landroid/os/storage/IObbActionListener;
    .param p6, "nonce"    # I

    #@0
    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 455
    iput-object p2, p0, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@7
    .line 456
    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    #@d
    .line 458
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    #@10
    move-result v0

    #@11
    .line 459
    .local v0, "userId":I
    const/4 v1, 0x0

    #@12
    invoke-static {p3, v0, v1}, Lcom/android/server/MountService;->buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    iput-object v1, p0, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    #@18
    .line 460
    const/4 v1, 0x1

    #@19
    invoke-static {p3, v0, v1}, Lcom/android/server/MountService;->buildObbPath(Ljava/lang/String;IZ)Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    #@1f
    .line 462
    invoke-static {p4}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    #@22
    move-result v1

    #@23
    iput v1, p0, Lcom/android/server/MountService$ObbState;->ownerGid:I

    #@25
    .line 463
    iput-object p5, p0, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    #@27
    .line 464
    iput p6, p0, Lcom/android/server/MountService$ObbState;->nonce:I

    #@29
    .line 454
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 486
    new-instance v0, Lcom/android/server/MountService$UnmountObbAction;

    #@3
    iget-object v1, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    #@5
    invoke-direct {v0, v1, p0, v3}, Lcom/android/server/MountService$UnmountObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V

    #@8
    .line 487
    .local v0, "action":Lcom/android/server/MountService$ObbAction;
    iget-object v1, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    #@a
    invoke-static {v1}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    #@d
    move-result-object v1

    #@e
    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->this$0:Lcom/android/server/MountService;

    #@10
    invoke-static {v2}, Lcom/android/server/MountService;->-get7(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, v3, v0}, Lcom/android/server/MountService$ObbActionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendMessage(Landroid/os/Message;)Z

    #@1b
    .line 485
    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    #@2
    invoke-interface {v0}, Landroid/os/storage/IObbActionListener;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public link()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    #@8
    .line 490
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "ObbState{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 501
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "rawPath="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 502
    const-string/jumbo v1, ",canonicalPath="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->canonicalPath:Ljava/lang/String;

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    .line 503
    const-string/jumbo v1, ",ownerPath="

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    .line 504
    const-string/jumbo v1, ",voldPath="

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->voldPath:Ljava/lang/String;

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 505
    const-string/jumbo v1, ",ownerGid="

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    iget v2, p0, Lcom/android/server/MountService$ObbState;->ownerGid:I

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    .line 506
    const-string/jumbo v1, ",token="

    #@47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    iget-object v2, p0, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    .line 507
    const-string/jumbo v1, ",binder="

    #@53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    .line 508
    const/16 v1, 0x7d

    #@60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@63
    .line 509
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    return-object v1
.end method

.method public unlink()V
    .locals 2

    #@0
    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    #@8
    .line 494
    return-void
.end method
