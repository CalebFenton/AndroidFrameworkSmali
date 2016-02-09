.class Lcom/android/server/storage/DeviceStorageMonitorService$2;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Lcom/android/server/storage/DeviceStorageMonitorInternal;


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
    .line 377
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public checkMemory()V
    .locals 4

    #@0
    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@2
    const-wide/16 v2, 0x0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    #@8
    .line 379
    return-void
.end method

.method public getMemoryLowThreshold()J
    .locals 2

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@2
    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mMemLowThreshold:J

    #@4
    return-wide v0
.end method

.method public isMemoryLow()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 386
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@3
    iget-boolean v1, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowMemFlag:Z

    #@5
    if-nez v1, :cond_0

    #@7
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@9
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get0(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    const/4 v0, 0x0

    #@10
    :cond_0
    return v0
.end method
