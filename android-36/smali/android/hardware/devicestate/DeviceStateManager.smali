.class public final Landroid/hardware/devicestate/DeviceStateManager;
.super Ljava/lang/Object;
.source "DeviceStateManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;,
        Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SHOW_REAR_DISPLAY_OVERLAY:Ljava/lang/String; = "com.android.intent.action.SHOW_REAR_DISPLAY_OVERLAY"

.field public static final blacklist EXTRA_ORIGINAL_DEVICE_BASE_STATE:Ljava/lang/String; = "original_device_base_state"

.field public static final blacklist INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

.field public static final blacklist INVALID_DEVICE_STATE_IDENTIFIER:I = -0x1

.field public static final blacklist MAXIMUM_DEVICE_STATE_IDENTIFIER:I = 0x2710

.field public static final blacklist MINIMUM_DEVICE_STATE_IDENTIFIER:I


# instance fields
.field private final blacklist mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 73
    new-instance v0, Landroid/hardware/devicestate/DeviceState;

    new-instance v1, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;

    const/4 v2, -0x1

    const-string v3, "INVALID"

    invoke-direct {v1, v2, v3}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;-><init>(ILjava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Landroid/hardware/devicestate/DeviceState$Configuration$Builder;->build()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/devicestate/DeviceState;-><init>(Landroid/hardware/devicestate/DeviceState$Configuration;)V

    sput-object v0, Landroid/hardware/devicestate/DeviceStateManager;->INVALID_DEVICE_STATE:Landroid/hardware/devicestate/DeviceState;

    .line 73
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getInstance()Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    move-result-object v0

    .line 98
    .local v0, "global":Landroid/hardware/devicestate/DeviceStateManagerGlobal;
    if-eqz v0, :cond_c

    .line 102
    iput-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    .line 103
    return-void

    .line 99
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to get instance of global device state manager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist cancelBaseStateOverride()V
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->cancelBaseStateOverride()V

    .line 206
    return-void
.end method

.method public blacklist cancelStateRequest()V
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->cancelStateRequest()V

    .line 160
    return-void
.end method

.method public whitelist getSupportedDeviceStates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->getSupportedDeviceStates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 218
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p2, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->registerDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;Ljava/util/concurrent/Executor;)V

    .line 219
    return-void
.end method

.method public blacklist requestBaseStateOverride(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .registers 5
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    .line 191
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->requestBaseStateOverride(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 192
    return-void
.end method

.method public blacklist requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V
    .registers 5
    .param p1, "request"    # Landroid/hardware/devicestate/DeviceStateRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/devicestate/DeviceStateRequest$Callback;

    .line 141
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->requestState(Landroid/hardware/devicestate/DeviceStateRequest;Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateRequest$Callback;)V

    .line 142
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    .line 226
    iget-object v0, p0, Landroid/hardware/devicestate/DeviceStateManager;->mGlobal:Landroid/hardware/devicestate/DeviceStateManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/devicestate/DeviceStateManagerGlobal;->unregisterDeviceStateCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 227
    return-void
.end method
