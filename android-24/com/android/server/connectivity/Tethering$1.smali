.class Lcom/android/server/connectivity/Tethering$1;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$enable:Z

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "val$enable"    # Z
    .param p3, "val$receiver"    # Landroid/os/ResultReceiver;
    .param p4, "val$adapter"    # Landroid/bluetooth/BluetoothAdapter;

    #@0
    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    #@2
    iput-boolean p2, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    #@4
    iput-object p3, p0, Lcom/android/server/connectivity/Tethering$1;->val$receiver:Landroid/os/ResultReceiver;

    #@6
    iput-object p4, p0, Lcom/android/server/connectivity/Tethering$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    #@0
    .prologue
    move-object v1, p2

    #@1
    .line 468
    check-cast v1, Landroid/bluetooth/BluetoothPan;

    #@3
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    #@5
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    #@8
    move-object v1, p2

    #@9
    .line 471
    check-cast v1, Landroid/bluetooth/BluetoothPan;

    #@b
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    #@e
    move-result v1

    #@f
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    #@11
    if-ne v1, v2, :cond_1

    #@13
    .line 472
    const/4 v0, 0x0

    #@14
    .line 474
    .local v0, "result":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    #@16
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->val$receiver:Landroid/os/ResultReceiver;

    #@18
    invoke-static {v1, v2, v0}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V

    #@1b
    .line 475
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    #@1d
    if-eqz v1, :cond_0

    #@1f
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    #@21
    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;)Z

    #@24
    move-result v1

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 476
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    #@29
    const/4 v2, 0x2

    #@2a
    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;I)V

    #@2d
    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    #@2f
    const/4 v2, 0x5

    #@30
    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    #@33
    .line 467
    return-void

    #@34
    .line 473
    .end local v0    # "result":I
    :cond_1
    const/4 v0, 0x5

    #@35
    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    #@0
    .prologue
    .line 464
    return-void
.end method
