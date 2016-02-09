.class final Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceEventListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    #@0
    .prologue
    .line 1122
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1123
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    #@7
    .line 1122
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get10(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@9
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get5(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 1127
    return-void

    #@12
    .line 1128
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
