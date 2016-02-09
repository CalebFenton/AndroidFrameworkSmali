.class Lcom/android/commands/hid/Device$DeviceCallback;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/hid/Device;


# direct methods
.method private constructor <init>(Lcom/android/commands/hid/Device;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/hid/Device;

    #@0
    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/hid/Device;Lcom/android/commands/hid/Device$DeviceCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/hid/Device;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/commands/hid/Device$DeviceCallback;-><init>(Lcom/android/commands/hid/Device;)V

    #@3
    return-void
.end method


# virtual methods
.method public onDeviceError()V
    .locals 3

    #@0
    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    #@2
    invoke-static {v1}, Lcom/android/commands/hid/Device;->-get1(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x3

    #@7
    invoke-virtual {v1, v2}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(I)Landroid/os/Message;

    #@a
    move-result-object v0

    #@b
    .line 159
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    #@f
    .line 160
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@12
    .line 157
    return-void
.end method

.method public onDeviceOpen()V
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    #@2
    invoke-static {v0}, Lcom/android/commands/hid/Device;->-get1(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/commands/hid/Device$DeviceHandler;->resumeEvents()V

    #@9
    .line 153
    return-void
.end method
