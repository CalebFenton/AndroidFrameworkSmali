.class public final Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;
.super Landroid/hardware/lights/LightsManager$LightsSession;
.source "InputDeviceLightsManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputDeviceLightsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputDeviceLightsSession"
.end annotation


# instance fields
.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private blacklist mClosed:Z

.field final synthetic blacklist this$0:Landroid/hardware/input/InputDeviceLightsManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/input/InputDeviceLightsManager;)V
    .registers 4
    .param p1, "this$0"    # Landroid/hardware/input/InputDeviceLightsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 101
    iput-object p1, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->this$0:Landroid/hardware/input/InputDeviceLightsManager;

    invoke-direct {p0}, Landroid/hardware/lights/LightsManager$LightsSession;-><init>()V

    .line 95
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mClosed:Z

    .line 102
    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "InputDeviceLightsSession.close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/input/InputDeviceLightsManager;Landroid/hardware/input/InputDeviceLightsManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;-><init>(Landroid/hardware/input/InputDeviceLightsManager;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 123
    iget-boolean v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mClosed:Z

    if-nez v0, :cond_1f

    .line 124
    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->this$0:Landroid/hardware/input/InputDeviceLightsManager;

    invoke-static {v0}, Landroid/hardware/input/InputDeviceLightsManager;->-$$Nest$fgetmGlobal(Landroid/hardware/input/InputDeviceLightsManager;)Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->this$0:Landroid/hardware/input/InputDeviceLightsManager;

    invoke-static {v1}, Landroid/hardware/input/InputDeviceLightsManager;->-$$Nest$fgetmDeviceId(Landroid/hardware/input/InputDeviceLightsManager;)I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManagerGlobal;->closeLightSession(ILandroid/os/IBinder;)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mClosed:Z

    .line 126
    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 128
    :cond_1f
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 136
    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_d

    .line 138
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 139
    nop

    .line 140
    return-void

    .line 138
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 139
    throw v0
.end method

.method public whitelist requestLights(Landroid/hardware/lights/LightsRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/hardware/lights/LightsRequest;

    .line 112
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-boolean v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->mClosed:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 115
    iget-object v0, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->this$0:Landroid/hardware/input/InputDeviceLightsManager;

    invoke-static {v0}, Landroid/hardware/input/InputDeviceLightsManager;->-$$Nest$fgetmGlobal(Landroid/hardware/input/InputDeviceLightsManager;)Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->this$0:Landroid/hardware/input/InputDeviceLightsManager;

    invoke-static {v1}, Landroid/hardware/input/InputDeviceLightsManager;->-$$Nest$fgetmDeviceId(Landroid/hardware/input/InputDeviceLightsManager;)I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/input/InputDeviceLightsManager$InputDeviceLightsSession;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/input/InputManagerGlobal;->requestLights(ILandroid/hardware/lights/LightsRequest;Landroid/os/IBinder;)V

    .line 116
    return-void
.end method
