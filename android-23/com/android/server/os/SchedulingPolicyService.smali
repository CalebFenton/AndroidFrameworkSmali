.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public requestPriority(III)I
    .locals 6
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "prio"    # I

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, -0x1

    #@3
    .line 48
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@6
    move-result v2

    #@7
    const/16 v3, 0x3f5

    #@9
    if-ne v2, v3, :cond_0

    #@b
    if-ge p3, v5, :cond_1

    #@d
    .line 50
    :cond_0
    return v4

    #@e
    .line 49
    :cond_1
    if-gt p3, v1, :cond_0

    #@10
    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    #@13
    move-result v2

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 54
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@19
    move-result v2

    #@1a
    if-ne v2, p1, :cond_2

    #@1c
    .line 55
    const/4 v1, 0x4

    #@1d
    .line 54
    :cond_2
    invoke-static {p2, v1}, Landroid/os/Process;->setThreadGroup(II)V

    #@20
    .line 57
    const/4 v1, 0x1

    #@21
    invoke-static {p2, v1, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 61
    const/4 v1, 0x0

    #@25
    return v1

    #@26
    .line 58
    :catch_0
    move-exception v0

    #@27
    .line 59
    .local v0, "e":Ljava/lang/RuntimeException;
    return v4
.end method
