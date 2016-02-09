.class Lcom/android/server/AppOpsService$2;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/storage/MountServiceInternal$ExternalStorageMountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;

    #@0
    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public getMountMode(ILjava/lang/String;)I
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 296
    invoke-static {p1}, Landroid/os/Process;->isIsolated(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 297
    return v2

    #@8
    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    #@a
    const/16 v1, 0x3b

    #@c
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 301
    return v2

    #@13
    .line 303
    :cond_1
    iget-object v0, p0, Lcom/android/server/AppOpsService$2;->this$0:Lcom/android/server/AppOpsService;

    #@15
    const/16 v1, 0x3c

    #@17
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/AppOpsService;->noteOperation(IILjava/lang/String;)I

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 305
    const/4 v0, 0x2

    #@1e
    return v0

    #@1f
    .line 307
    :cond_2
    const/4 v0, 0x3

    #@20
    return v0
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppOpsService$2;->getMountMode(ILjava/lang/String;)I

    #@4
    move-result v0

    #@5
    .line 313
    .local v0, "mountMode":I
    const/4 v2, 0x2

    #@6
    if-eq v0, v2, :cond_0

    #@8
    .line 314
    const/4 v2, 0x3

    #@9
    if-ne v0, v2, :cond_1

    #@b
    .line 313
    :cond_0
    :goto_0
    return v1

    #@c
    .line 314
    :cond_1
    const/4 v1, 0x0

    #@d
    goto :goto_0
.end method
