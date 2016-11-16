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
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;

    #@0
    .prologue
    .line 1087
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
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1089
    const-string/jumbo v1, "BluetoothManagerService"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "BluetoothServiceConnection: "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1090
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    #@20
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@23
    move-result-object v1

    #@24
    const/16 v2, 0x28

    #@26
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@29
    move-result-object v0

    #@2a
    .line 1092
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "com.android.bluetooth.btservice.AdapterService"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 1093
    const/4 v1, 0x1

    #@38
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@3a
    .line 1101
    :goto_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3c
    .line 1102
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3e
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@45
    .line 1088
    return-void

    #@46
    .line 1095
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    const-string/jumbo v2, "com.android.bluetooth.gatt.GattService"

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_1

    #@53
    .line 1096
    const/4 v1, 0x2

    #@54
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@56
    goto :goto_0

    #@57
    .line 1098
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@5a
    new-instance v2, Ljava/lang/StringBuilder;

    #@5c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5f
    const-string/jumbo v3, "Unknown service connected: "

    #@62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v2

    #@66
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@75
    .line 1099
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1107
    const-string/jumbo v1, "BluetoothManagerService"

    #@3
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "BluetoothServiceConnection, disconnected: "

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    .line 1108
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    .line 1107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 1109
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    #@20
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@23
    move-result-object v1

    #@24
    const/16 v2, 0x29

    #@26
    invoke-virtual {v1, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    #@29
    move-result-object v0

    #@2a
    .line 1110
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, "com.android.bluetooth.btservice.AdapterService"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 1111
    const/4 v1, 0x1

    #@38
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@3a
    .line 1118
    :goto_0
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;->this$0:Lcom/android/server/BluetoothManagerService;

    #@3c
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->-get12(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    #@3f
    move-result-object v1

    #@40
    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    #@43
    .line 1105
    return-void

    #@44
    .line 1112
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    const-string/jumbo v2, "com.android.bluetooth.gatt.GattService"

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v1

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 1113
    const/4 v1, 0x2

    #@52
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@54
    goto :goto_0

    #@55
    .line 1115
    :cond_1
    const-string/jumbo v1, "BluetoothManagerService"

    #@58
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    const-string/jumbo v3, "Unknown service disconnected: "

    #@60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 1116
    return-void
.end method
