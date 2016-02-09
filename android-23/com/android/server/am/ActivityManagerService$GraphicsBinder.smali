.class Lcom/android/server/am/ActivityManagerService$GraphicsBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GraphicsBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 2207
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 2208
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@5
    .line 2207
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
    .line 2213
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@2
    const-string/jumbo v1, "android.permission.DUMP"

    #@5
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 2215
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "Permission Denial: can\'t dump gfxinfo from from pid="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 2216
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@1a
    move-result v1

    #@1b
    .line 2215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 2216
    const-string/jumbo v1, ", uid="

    #@22
    .line 2215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 2216
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@29
    move-result v1

    #@2a
    .line 2215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 2217
    const-string/jumbo v1, " without permission "

    #@31
    .line 2215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    .line 2217
    const-string/jumbo v1, "android.permission.DUMP"

    #@38
    .line 2215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@43
    .line 2218
    return-void

    #@44
    .line 2221
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@46
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpGraphicsHardwareUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@49
    .line 2212
    return-void
.end method
