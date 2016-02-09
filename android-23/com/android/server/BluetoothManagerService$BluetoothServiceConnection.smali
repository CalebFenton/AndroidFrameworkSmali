.class Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothServiceConnection"
.end annotation


# instance fields
.field private mGetNameAddressOnly:Z

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;

    #@0
    .prologue
    .line 1053
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;-><init>(Lcom/android/server/BluetoothManagerService;)V

    #@3
    return-void
.end method


# virtual methods
.method public isGetNameAddressOnly()Z
    .locals 1

    #@0
    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->mGetNameAddressOnly:Z

    #@2
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1067
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x28

    #@8
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 1069
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "com.android.bluetooth.btservice.AdapterService"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 1070
    const/4 v1, 0x1

    #@1a
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@1c
    .line 1078
    :goto_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1e
    .line 1079
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    #@20
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@27
    .line 1065
    return-void

    #@28
    .line 1072
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    const-string/jumbo v2, "com.android.bluetooth.gatt.GattService"

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-eqz v1, :cond_1

    #@35
    .line 1073
    const/4 v1, 0x2

    #@36
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@38
    goto :goto_0

    #@39
    .line 1075
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@3c
    new-instance v2, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v3, "Unknown service connected: "

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 1076
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1086
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    #@2
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@5
    move-result-object v1

    #@6
    const/16 v2, 0x29

    #@8
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@b
    move-result-object v0

    #@c
    .line 1087
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "com.android.bluetooth.btservice.AdapterService"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    .line 1088
    const/4 v1, 0x1

    #@1a
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@1c
    .line 1095
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    #@1e
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get11(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@25
    .line 1082
    return-void

    #@26
    .line 1089
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "com.android.bluetooth.gatt.GattService"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    if-eqz v1, :cond_1

    #@33
    .line 1090
    const/4 v1, 0x2

    #@34
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@36
    goto :goto_0

    #@37
    .line 1092
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@3a
    new-instance v2, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v3, "Unknown service disconnected: "

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@55
    .line 1093
    return-void
.end method

.method public setGetNameAddressOnly(Z)V
    .locals 0
    .param p1, "getOnly"    # Z

    #@0
    .prologue
    .line 1058
    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->mGetNameAddressOnly:Z

    #@2
    .line 1057
    return-void
.end method
