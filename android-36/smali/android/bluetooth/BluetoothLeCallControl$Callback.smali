.class public abstract Landroid/bluetooth/BluetoothLeCallControl$Callback;
.super Ljava/lang/Object;
.source "BluetoothLeCallControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeCallControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothLeCallControl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-class v1, Landroid/bluetooth/BluetoothLeCallControl$Callback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothLeCallControl$Callback;->TAG:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onAcceptCall(ILjava/util/UUID;)V
.end method

.method public blacklist onHoldCall(ILjava/util/UUID;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "callId"    # Ljava/util/UUID;

    .line 104
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl$Callback;->TAG:Ljava/lang/String;

    const-string v1, "onHoldCall: unimplemented, however CAPABILITY_HOLD_CALL is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method

.method public blacklist onJoinCalls(ILjava/util/List;)V
    .registers 5
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 145
    .local p2, "callIds":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl$Callback;->TAG:Ljava/lang/String;

    const-string v1, "onJoinCalls: unimplemented, however CAPABILITY_JOIN_CALLS is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public abstract blacklist onPlaceCall(ILjava/util/UUID;Ljava/lang/String;)V
.end method

.method public abstract blacklist onTerminateCall(ILjava/util/UUID;)V
.end method

.method public blacklist onUnholdCall(ILjava/util/UUID;)V
    .registers 5
    .param p1, "requestId"    # I
    .param p2, "callId"    # Ljava/util/UUID;

    .line 118
    sget-object v0, Landroid/bluetooth/BluetoothLeCallControl$Callback;->TAG:Ljava/lang/String;

    const-string v1, "onUnholdCall: unimplemented, however CAPABILITY_HOLD_CALL is set!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method
