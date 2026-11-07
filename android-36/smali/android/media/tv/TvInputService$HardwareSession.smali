.class public abstract Landroid/media/tv/TvInputService$HardwareSession;
.super Landroid/media/tv/TvInputService$Session;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "HardwareSession"
.end annotation


# instance fields
.field private greylist-max-o mHardwareSession:Landroid/media/tv/TvInputManager$Session;

.field private final greylist-max-o mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

.field private greylist-max-o mProxySession:Landroid/media/tv/ITvInputSession;

.field private greylist-max-o mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

.field private greylist-max-o mServiceHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHardwareSession(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$Session;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHardwareSessionCallback(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxySession(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSession;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxySessionCallback(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/ITvInputSessionCallback;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHardwareSession(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/TvInputManager$Session;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProxySession(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySession:Landroid/media/tv/ITvInputSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProxySessionCallback(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mProxySessionCallback:Landroid/media/tv/ITvInputSessionCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceHandler(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvInputService$HardwareSession;->mServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2762
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$Session;-><init>(Landroid/content/Context;)V

    .line 2780
    new-instance v0, Landroid/media/tv/TvInputService$HardwareSession$1;

    invoke-direct {v0, p0}, Landroid/media/tv/TvInputService$HardwareSession$1;-><init>(Landroid/media/tv/TvInputService$HardwareSession;)V

    iput-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSessionCallback:Landroid/media/tv/TvInputManager$SessionCallback;

    .line 2763
    return-void
.end method


# virtual methods
.method public abstract whitelist getHardwareInputId()Ljava/lang/String;
.end method

.method public whitelist onHardwareVideoAvailable()V
    .registers 1

    .line 2834
    return-void
.end method

.method public whitelist onHardwareVideoUnavailable(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 2849
    return-void
.end method

.method public final whitelist onSetSurface(Landroid/view/Surface;)Z
    .registers 4
    .param p1, "surface"    # Landroid/view/Surface;

    .line 2826
    const-string v0, "TvInputService"

    const-string v1, "onSetSurface() should not be called in HardwareProxySession."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o release()V
    .registers 2

    .line 2853
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    if-eqz v0, :cond_c

    .line 2854
    iget-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputManager$Session;->release()V

    .line 2855
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputService$HardwareSession;->mHardwareSession:Landroid/media/tv/TvInputManager$Session;

    .line 2857
    :cond_c
    invoke-super {p0}, Landroid/media/tv/TvInputService$Session;->release()V

    .line 2858
    return-void
.end method
