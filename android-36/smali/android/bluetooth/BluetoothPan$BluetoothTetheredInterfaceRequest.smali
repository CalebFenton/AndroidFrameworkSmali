.class public Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;
.super Ljava/lang/Object;
.source "BluetoothPan.java"

# interfaces
.implements Landroid/net/TetheringManager$TetheredInterfaceRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothTetheredInterfaceRequest"
.end annotation


# instance fields
.field private final blacklist mId:I

.field private final blacklist mPanCallback:Landroid/bluetooth/IBluetoothPanCallback;

.field private blacklist mService:Landroid/bluetooth/IBluetoothPan;

.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothPan;


# direct methods
.method private constructor blacklist <init>(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;Landroid/bluetooth/IBluetoothPanCallback;I)V
    .registers 5
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPan;
    .param p2, "service"    # Landroid/bluetooth/IBluetoothPan;
    .param p3, "panCallback"    # Landroid/bluetooth/IBluetoothPanCallback;
    .param p4, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 201
    iput-object p3, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mPanCallback:Landroid/bluetooth/IBluetoothPanCallback;

    .line 202
    iput p4, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mId:I

    .line 203
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;Landroid/bluetooth/IBluetoothPanCallback;ILandroid/bluetooth/BluetoothPan-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;-><init>(Landroid/bluetooth/BluetoothPan;Landroid/bluetooth/IBluetoothPan;Landroid/bluetooth/IBluetoothPanCallback;I)V

    return-void
.end method


# virtual methods
.method public blacklist release()V
    .registers 7

    .line 210
    iget-object v0, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    if-eqz v0, :cond_4d

    .line 215
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    iget-object v2, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mPanCallback:Landroid/bluetooth/IBluetoothPanCallback;

    iget v3, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mId:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->this$0:Landroid/bluetooth/BluetoothPan;

    invoke-static {v4}, Landroid/bluetooth/BluetoothPan;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/BluetoothPan;)Landroid/content/AttributionSource;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v5, v4}, Landroid/bluetooth/IBluetoothPan;->setBluetoothTethering(Landroid/bluetooth/IBluetoothPanCallback;IZLandroid/content/AttributionSource;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_1b
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    .line 219
    nop

    :goto_16
    iput-object v0, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 220
    goto :goto_49

    .line 219
    :catchall_19
    move-exception v1

    goto :goto_4a

    .line 216
    :catch_1b
    move-exception v1

    .line 217
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1c
    invoke-static {}, Landroid/bluetooth/BluetoothPan;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_1c .. :try_end_47} :catchall_19

    .line 219
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_16

    .line 221
    :goto_49
    return-void

    .line 219
    :goto_4a
    iput-object v0, p0, Landroid/bluetooth/BluetoothPan$BluetoothTetheredInterfaceRequest;->mService:Landroid/bluetooth/IBluetoothPan;

    .line 220
    throw v1

    .line 211
    :cond_4d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The tethered interface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
