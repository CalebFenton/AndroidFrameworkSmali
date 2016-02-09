.class final Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;
.super Lcom/android/internal/telecom/IVideoProvider$Stub;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoProviderBinder"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method private constructor <init>(Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    .line 626
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;)V
    .locals 0
    .param p1, "this$1"    # Landroid/telecom/Connection$VideoProvider;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;)V

    #@3
    return-void
.end method


# virtual methods
.method public addVideoCallback(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "videoCallbackBinder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 628
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    .line 629
    const/4 v1, 0x1

    #@7
    .line 628
    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 627
    return-void
.end method

.method public removeVideoCallback(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "videoCallbackBinder"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    .line 634
    const/16 v1, 0xc

    #@8
    .line 633
    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 632
    return-void
.end method

.method public requestCallDataUsage()V
    .locals 2

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xa

    #@8
    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 674
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 2

    #@0
    .prologue
    .line 671
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x9

    #@8
    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 670
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 659
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 660
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 661
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 662
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@a
    invoke-static {v1}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x7

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 658
    return-void
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 666
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    .line 667
    const/16 v1, 0x8

    #@8
    .line 666
    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 665
    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 638
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 637
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    .line 651
    const/4 v1, 0x5

    #@7
    const/4 v2, 0x0

    #@8
    .line 650
    invoke-virtual {v0, v1, p1, v2}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(III)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 649
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 646
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 645
    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 679
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xb

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 678
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 642
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 641
    return-void
.end method

.method public setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$1:Landroid/telecom/Connection$VideoProvider;

    #@2
    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-get0(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x6

    #@b
    invoke-virtual {v0, v2, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 654
    return-void
.end method
