.class Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiRecordListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/hdmi/IHdmiRecordListener;

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;

    #@2
    return-object v0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    #@0
    .prologue
    .line 1189
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1190
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiRecordListener;

    #@7
    .line 1189
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    #@0
    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get12(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    monitor-enter v1

    #@7
    .line 1196
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@9
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-get18(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    #@c
    move-result-object v0

    #@d
    if-ne v0, p0, :cond_0

    #@f
    .line 1197
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    #@11
    const/4 v2, 0x0

    #@12
    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->-set2(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v1

    #@16
    .line 1194
    return-void

    #@17
    .line 1195
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method
