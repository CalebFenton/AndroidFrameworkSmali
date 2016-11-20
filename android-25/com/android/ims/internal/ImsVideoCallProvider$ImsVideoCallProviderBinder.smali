.class final Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;
.super Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.source "ImsVideoCallProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/ImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsVideoCallProviderBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ims/internal/ImsVideoCallProvider;


# direct methods
.method private constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProvider;

    #@0
    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-direct {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/ims/internal/ImsVideoCallProvider;Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ims/internal/ImsVideoCallProvider;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;-><init>(Lcom/android/ims/internal/ImsVideoCallProvider;)V

    #@3
    return-void
.end method


# virtual methods
.method public requestCallDataUsage()V
    .locals 2

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xa

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 147
    return-void
.end method

.method public requestCameraCapabilities()V
    .locals 2

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0x9

    #@8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 143
    return-void
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 3
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 132
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@3
    move-result-object v0

    #@4
    .line 133
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@6
    .line 134
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@8
    .line 135
    iget-object v1, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@a
    invoke-static {v1}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x7

    #@f
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 131
    return-void
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 2
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    .line 140
    const/16 v1, 0x8

    #@8
    .line 139
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 138
    return-void
.end method

.method public setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/ims/internal/IImsVideoCallCallback;

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 107
    return-void
.end method

.method public setCamera(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x2

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 111
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3
    .param p1, "rotation"    # I

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x5

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 123
    return-void
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x4

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 119
    return-void
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/16 v1, 0xb

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@f
    .line 151
    return-void
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x3

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@e
    .line 115
    return-void
.end method

.method public setZoom(F)V
    .locals 3
    .param p1, "value"    # F

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/ims/internal/ImsVideoCallProvider$ImsVideoCallProviderBinder;->this$0:Lcom/android/ims/internal/ImsVideoCallProvider;

    #@2
    invoke-static {v0}, Lcom/android/ims/internal/ImsVideoCallProvider;->-get0(Lcom/android/ims/internal/ImsVideoCallProvider;)Landroid/os/Handler;

    #@5
    move-result-object v0

    #@6
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x6

    #@b
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 127
    return-void
.end method
