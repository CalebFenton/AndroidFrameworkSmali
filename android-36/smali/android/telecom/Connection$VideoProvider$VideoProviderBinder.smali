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
.field final synthetic blacklist this$0:Landroid/telecom/Connection$VideoProvider;


# direct methods
.method private constructor blacklist <init>(Landroid/telecom/Connection$VideoProvider;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1661
    iput-object p1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-direct {p0}, Lcom/android/internal/telecom/IVideoProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/Connection$VideoProvider;Landroid/telecom/Connection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;-><init>(Landroid/telecom/Connection$VideoProvider;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o addVideoCallback(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "videoCallbackBinder"    # Landroid/os/IBinder;

    .line 1663
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1664
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1665
    return-void
.end method

.method public greylist-max-o removeVideoCallback(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "videoCallbackBinder"    # Landroid/os/IBinder;

    .line 1668
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1669
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1670
    return-void
.end method

.method public greylist-max-o requestCallDataUsage()V
    .registers 3

    .line 1726
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1727
    return-void
.end method

.method public greylist-max-o requestCameraCapabilities()V
    .registers 3

    .line 1722
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1723
    return-void
.end method

.method public greylist-max-o sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 6
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .line 1710
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1711
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1712
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1713
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1714
    return-void
.end method

.method public greylist-max-o sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 4
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .line 1717
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1718
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1719
    return-void
.end method

.method public greylist-max-o setCamera(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "callingPackageName"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I

    .line 1675
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1676
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1680
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1684
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1685
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1688
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1689
    iget-object v1, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v1}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1690
    return-void
.end method

.method public greylist-max-o setDeviceOrientation(I)V
    .registers 5
    .param p1, "rotation"    # I

    .line 1701
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1702
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1703
    return-void
.end method

.method public greylist-max-o setDisplaySurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1697
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1698
    return-void
.end method

.method public greylist-max-o setPauseImage(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1730
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1731
    return-void
.end method

.method public greylist-max-o setPreviewSurface(Landroid/view/Surface;)V
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 1693
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1694
    return-void
.end method

.method public greylist-max-o setZoom(F)V
    .registers 5
    .param p1, "value"    # F

    .line 1706
    iget-object v0, p0, Landroid/telecom/Connection$VideoProvider$VideoProviderBinder;->this$0:Landroid/telecom/Connection$VideoProvider;

    invoke-static {v0}, Landroid/telecom/Connection$VideoProvider;->-$$Nest$fgetmMessageHandler(Landroid/telecom/Connection$VideoProvider;)Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Connection$VideoProvider$VideoProviderHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1707
    return-void
.end method
