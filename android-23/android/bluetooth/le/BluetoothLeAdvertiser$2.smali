.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field final synthetic val$callback:Landroid/bluetooth/le/AdvertiseCallback;

.field final synthetic val$settings:Landroid/bluetooth/le/AdvertiseSettings;


# direct methods
.method constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .param p2, "val$callback"    # Landroid/bluetooth/le/AdvertiseCallback;
    .param p3, "val$settings"    # Landroid/bluetooth/le/AdvertiseSettings;

    #@0
    .prologue
    .line 367
    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    #@2
    iput-object p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    #@4
    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$settings:Landroid/bluetooth/le/AdvertiseSettings;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertiseCallback;

    #@2
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$settings:Landroid/bluetooth/le/AdvertiseSettings;

    #@4
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    #@7
    .line 370
    return-void
.end method
