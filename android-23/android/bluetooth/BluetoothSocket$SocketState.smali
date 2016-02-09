.class final enum Landroid/bluetooth/BluetoothSocket$SocketState;
.super Ljava/lang/Enum;
.source "BluetoothSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SocketState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/bluetooth/BluetoothSocket$SocketState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

.field public static final enum LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 139
    new-instance v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    #@6
    const-string/jumbo v1, "INIT"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    #@c
    sput-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    #@e
    .line 140
    new-instance v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    #@10
    const-string/jumbo v1, "CONNECTED"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    #@16
    sput-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    #@18
    .line 141
    new-instance v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    #@1a
    const-string/jumbo v1, "LISTENING"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    #@22
    .line 142
    new-instance v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    #@24
    const-string/jumbo v1, "CLOSED"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/bluetooth/BluetoothSocket$SocketState;-><init>(Ljava/lang/String;I)V

    #@2a
    sput-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    #@2c
    .line 138
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/bluetooth/BluetoothSocket$SocketState;

    #@2f
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->INIT:Landroid/bluetooth/BluetoothSocket$SocketState;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CONNECTED:Landroid/bluetooth/BluetoothSocket$SocketState;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->LISTENING:Landroid/bluetooth/BluetoothSocket$SocketState;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/bluetooth/BluetoothSocket$SocketState;->CLOSED:Landroid/bluetooth/BluetoothSocket$SocketState;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->$VALUES:[Landroid/bluetooth/BluetoothSocket$SocketState;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/bluetooth/BluetoothSocket$SocketState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    const-class v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/bluetooth/BluetoothSocket$SocketState;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/bluetooth/BluetoothSocket$SocketState;
    .locals 1

    #@0
    .prologue
    .line 138
    sget-object v0, Landroid/bluetooth/BluetoothSocket$SocketState;->$VALUES:[Landroid/bluetooth/BluetoothSocket$SocketState;

    #@2
    return-object v0
.end method
