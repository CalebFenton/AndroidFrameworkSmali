.class Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachePackageDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method private constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    #@0
    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@2
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/storage/DeviceStorageMonitorService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    #@3
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 156
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@3
    iput-boolean p2, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    #@5
    .line 157
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@7
    iput-boolean v1, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    #@9
    .line 160
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@b
    const-wide/16 v2, 0x0

    #@d
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    #@10
    .line 155
    return-void
.end method
