.class public abstract Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BluetoothConnectionCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$BluetoothConnectionCallback$DisconnectReason;
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 4771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist disconnectReasonToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "reason"    # I

    .line 4810
    sparse-switch p0, :sswitch_data_38

    .line 4834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized disconnect reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4812
    :sswitch_17
    const-string v0, "Reason unknown"

    return-object v0

    .line 4832
    :sswitch_1a
    const-string v0, "Bad parameters"

    return-object v0

    .line 4830
    :sswitch_1d
    const-string v0, "Connection already exists"

    return-object v0

    .line 4828
    :sswitch_20
    const-string v0, "Resource constrained"

    return-object v0

    .line 4826
    :sswitch_23
    const-string v0, "System policy"

    return-object v0

    .line 4824
    :sswitch_26
    const-string v0, "Security"

    return-object v0

    .line 4822
    :sswitch_29
    const-string v0, "Timeout"

    return-object v0

    .line 4820
    :sswitch_2c
    const-string v0, "Remote error"

    return-object v0

    .line 4818
    :sswitch_2f
    const-string v0, "Local error"

    return-object v0

    .line 4816
    :sswitch_32
    const-string v0, "Remote request"

    return-object v0

    .line 4814
    :sswitch_35
    const-string v0, "Local request"

    return-object v0

    :sswitch_data_38
    .sparse-switch
        0x44c -> :sswitch_35
        0x44d -> :sswitch_32
        0x44e -> :sswitch_2f
        0x44f -> :sswitch_2c
        0x450 -> :sswitch_29
        0x451 -> :sswitch_26
        0x452 -> :sswitch_23
        0x453 -> :sswitch_20
        0x454 -> :sswitch_1d
        0x455 -> :sswitch_1a
        0x7fffffff -> :sswitch_17
    .end sparse-switch
.end method


# virtual methods
.method public whitelist onDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 4777
    return-void
.end method

.method public whitelist onDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I

    .line 4786
    return-void
.end method
