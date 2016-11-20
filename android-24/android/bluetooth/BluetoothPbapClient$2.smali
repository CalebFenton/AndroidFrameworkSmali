.class Landroid/bluetooth/BluetoothPbapClient$2;
.super Ljava/lang/Object;
.source "BluetoothPbapClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothPbapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothPbapClient;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothPbapClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothPbapClient;

    #@0
    .prologue
    .line 286
    iput-object p1, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@2
    invoke-static {p2}, Landroid/bluetooth/IBluetoothPbapClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothPbapClient;

    #@5
    move-result-object v1

    #@6
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbapClient;->-set0(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    #@9
    .line 292
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@b
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->-get3(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 293
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@13
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->-get3(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@16
    move-result-object v0

    #@17
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@19
    const/16 v2, 0x11

    #@1b
    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    #@1e
    .line 287
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 300
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@3
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothPbapClient;->-set0(Landroid/bluetooth/BluetoothPbapClient;Landroid/bluetooth/IBluetoothPbapClient;)Landroid/bluetooth/IBluetoothPbapClient;

    #@6
    .line 301
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@8
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->-get3(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@b
    move-result-object v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 302
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbapClient$2;->this$0:Landroid/bluetooth/BluetoothPbapClient;

    #@10
    invoke-static {v0}, Landroid/bluetooth/BluetoothPbapClient;->-get3(Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    #@13
    move-result-object v0

    #@14
    const/16 v1, 0x11

    #@16
    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    #@19
    .line 296
    :cond_0
    return-void
.end method
