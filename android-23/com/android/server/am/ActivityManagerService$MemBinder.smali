.class Lcom/android/server/am/ActivityManagerService$MemBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 2187
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 2188
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@5
    .line 2187
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2193
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@3
    const-string/jumbo v1, "android.permission.DUMP"

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 2195
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "Permission Denial: can\'t dump meminfo from from pid="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 2196
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1b
    move-result v1

    #@1c
    .line 2195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 2196
    const-string/jumbo v1, ", uid="

    #@23
    .line 2195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 2196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@2a
    move-result v1

    #@2b
    .line 2195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 2197
    const-string/jumbo v1, " without permission "

    #@32
    .line 2195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 2197
    const-string/jumbo v1, "android.permission.DUMP"

    #@39
    .line 2195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@44
    .line 2198
    return-void

    #@45
    .line 2201
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$MemBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@47
    const-string/jumbo v3, "  "

    #@4a
    const/4 v6, 0x0

    #@4b
    move-object v1, p1

    #@4c
    move-object v2, p2

    #@4d
    move-object v4, p3

    #@4e
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->dumpApplicationMemoryUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;ZLjava/io/PrintWriter;)V

    #@51
    .line 2192
    return-void
.end method
