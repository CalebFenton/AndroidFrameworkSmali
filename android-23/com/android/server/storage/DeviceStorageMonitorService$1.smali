.class Lcom/android/server/storage/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 146
    iget v1, p1, Landroid/os/Message;->what:I

    #@3
    if-eq v1, v0, :cond_0

    #@5
    .line 147
    const-string/jumbo v0, "DeviceStorageMonitorService"

    #@8
    const-string/jumbo v1, "Will not process invalid message"

    #@b
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 148
    return-void

    #@f
    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@11
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@13
    if-ne v2, v0, :cond_1

    #@15
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V

    #@18
    .line 144
    return-void

    #@19
    .line 150
    :cond_1
    const/4 v0, 0x0

    #@1a
    goto :goto_0
.end method
