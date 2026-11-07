.class Landroid/ranging/RangingSession$TransportHandleReceiveCallback;
.super Ljava/lang/Object;
.source "RangingSession.java"

# interfaces
.implements Landroid/ranging/oob/TransportHandle$ReceiveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/RangingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportHandleReceiveCallback"
.end annotation


# instance fields
.field private final blacklist mOobHandle:Landroid/ranging/oob/OobHandle;

.field final synthetic blacklist this$0:Landroid/ranging/RangingSession;


# direct methods
.method constructor blacklist <init>(Landroid/ranging/RangingSession;Landroid/ranging/RangingDevice;)V
    .registers 5
    .param p1, "this$0"    # Landroid/ranging/RangingSession;
    .param p2, "device"    # Landroid/ranging/RangingDevice;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 400
    iput-object p1, p0, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;->this$0:Landroid/ranging/RangingSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v0, Landroid/ranging/oob/OobHandle;

    invoke-static {p1}, Landroid/ranging/RangingSession;->-$$Nest$fgetmSessionHandle(Landroid/ranging/RangingSession;)Landroid/ranging/SessionHandle;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/ranging/oob/OobHandle;-><init>(Landroid/ranging/SessionHandle;Landroid/ranging/RangingDevice;)V

    iput-object v0, p0, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;->mOobHandle:Landroid/ranging/oob/OobHandle;

    .line 402
    return-void
.end method


# virtual methods
.method public whitelist onClose()V
    .registers 3

    .line 425
    iget-object v0, p0, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;->this$0:Landroid/ranging/RangingSession;

    invoke-static {v0}, Landroid/ranging/RangingSession;->-$$Nest$fgetmRangingSessionManager(Landroid/ranging/RangingSession;)Landroid/ranging/RangingSessionManager;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;->mOobHandle:Landroid/ranging/oob/OobHandle;

    invoke-virtual {v0, v1}, Landroid/ranging/RangingSessionManager;->deviceOobClosed(Landroid/ranging/oob/OobHandle;)V

    .line 426
    return-void
.end method

.method public whitelist onDisconnect()V
    .registers 3

    .line 415
    iget-object v0, p0, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;->this$0:Landroid/ranging/RangingSession;

    invoke-static {v0}, Landroid/ranging/RangingSession;->-$$Nest$fgetmRangingSessionManager(Landroid/ranging/RangingSession;)Landroid/ranging/RangingSessionManager;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;->mOobHandle:Landroid/ranging/oob/OobHandle;

    invoke-virtual {v0, v1}, Landroid/ranging/RangingSessionManager;->deviceOobDisconnected(Landroid/ranging/oob/OobHandle;)V

    .line 416
    return-void
.end method

.method public whitelist onReceiveData([B)V
    .registers 4
    .param p1, "data"    # [B

    .line 406
    iget-object v0, p0, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;->this$0:Landroid/ranging/RangingSession;

    invoke-static {v0}, Landroid/ranging/RangingSession;->-$$Nest$fgetmRangingSessionManager(Landroid/ranging/RangingSession;)Landroid/ranging/RangingSessionManager;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;->mOobHandle:Landroid/ranging/oob/OobHandle;

    invoke-virtual {v0, v1, p1}, Landroid/ranging/RangingSessionManager;->oobDataReceived(Landroid/ranging/oob/OobHandle;[B)V

    .line 407
    return-void
.end method

.method public whitelist onReconnect()V
    .registers 3

    .line 420
    iget-object v0, p0, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;->this$0:Landroid/ranging/RangingSession;

    invoke-static {v0}, Landroid/ranging/RangingSession;->-$$Nest$fgetmRangingSessionManager(Landroid/ranging/RangingSession;)Landroid/ranging/RangingSessionManager;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/RangingSession$TransportHandleReceiveCallback;->mOobHandle:Landroid/ranging/oob/OobHandle;

    invoke-virtual {v0, v1}, Landroid/ranging/RangingSessionManager;->deviceOobReconnected(Landroid/ranging/oob/OobHandle;)V

    .line 421
    return-void
.end method

.method public whitelist onSendFailed()V
    .registers 1

    .line 411
    return-void
.end method
