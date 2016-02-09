.class Lcom/android/server/storage/DeviceStorageMonitorService$3;
.super Landroid/os/Binder;
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
    .line 395
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@2
    invoke-virtual {v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    const-string/jumbo v1, "android.permission.DUMP"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v1, "Permission Denial: can\'t dump devicestoragemonitor from from pid="

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 402
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1e
    move-result v1

    #@1f
    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 403
    const-string/jumbo v1, ", uid="

    #@26
    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 403
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2d
    move-result v1

    #@2e
    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@39
    .line 404
    return-void

    #@3a
    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    #@3c
    invoke-virtual {v0, p2}, Lcom/android/server/storage/DeviceStorageMonitorService;->dumpImpl(Ljava/io/PrintWriter;)V

    #@3f
    .line 397
    return-void
.end method
