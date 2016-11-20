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

.method private isPermittedCallingUid()Z
    .locals 2

    #@0
    .prologue
    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@3
    move-result v0

    #@4
    .line 68
    .local v0, "callingUid":I
    sparse-switch v0, :sswitch_data_0

    #@7
    .line 73
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 71
    :sswitch_0
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 68
    nop

    #@c
    :sswitch_data_0
    .sparse-switch
        0x411 -> :sswitch_0
        0x417 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public requestPriority(III)I
    .locals 4
    .param p1, "pid"    # I
    .param p2, "tid"    # I
    .param p3, "prio"    # I

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    const/4 v3, -0x1

    #@2
    .line 49
    invoke-direct {p0}, Lcom/android/server/os/SchedulingPolicyService;->isPermittedCallingUid()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    const/4 v2, 0x1

    #@9
    if-ge p3, v2, :cond_1

    #@b
    .line 51
    :cond_0
    return v3

    #@c
    .line 50
    :cond_1
    if-gt p3, v1, :cond_0

    #@e
    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    #@11
    move-result v2

    #@12
    if-ne v2, p1, :cond_0

    #@14
    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    #@17
    move-result v2

    #@18
    if-ne v2, p1, :cond_2

    #@1a
    .line 56
    const/4 v1, 0x4

    #@1b
    .line 55
    :cond_2
    invoke-static {p2, v1}, Landroid/os/Process;->setThreadGroup(II)V

    #@1e
    .line 58
    const v1, 0x40000001    # 2.0000002f

    #@21
    invoke-static {p2, v1, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 63
    const/4 v1, 0x0

    #@25
    return v1

    #@26
    .line 60
    :catch_0
    move-exception v0

    #@27
    .line 61
    .local v0, "e":Ljava/lang/RuntimeException;
    return v3
.end method
