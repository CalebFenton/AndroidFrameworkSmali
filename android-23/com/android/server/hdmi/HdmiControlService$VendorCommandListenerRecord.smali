.class Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VendorCommandListenerRecord"
.end annotation


# instance fields
.field private final mDeviceType:I

.field private final mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mDeviceType:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p3, "deviceType"    # I

    #@0
    .prologue
    .line 1153
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1154
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    #@7
    .line 1155
    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->mDeviceType:I

    #@9
    .line 1153
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    #@0
    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get10(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@9
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get17(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit v1

    #@11
    .line 1159
    return-void

    #@12
    .line 1160
    :catchall_0
    move-exception v0

    #@13
    monitor-exit v1

    #@14
    throw v0
.end method
