.class Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;
.super Ljava/lang/Object;
.source "TaskRunnerImplJni.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static blacklist sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 11
    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;
    .registers 2

    .line 16
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 17
    .local v0, "holder":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    if-eqz v0, :cond_d

    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    if-eqz v1, :cond_d

    .line 18
    iget-object v1, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    check-cast v1, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;

    return-object v1

    .line 20
    :cond_d
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/NativeLibraryLoadedStatus;->checkLoaded()V

    .line 21
    new-instance v1, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;-><init>()V

    return-object v1
.end method

.method public static blacklist setInstanceForTesting(Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;)V
    .registers 2
    .param p0, "impl"    # Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImpl$Natives;

    .line 25
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    if-nez v0, :cond_a

    .line 26
    invoke-static {}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    .line 28
    :cond_a
    sget-object v0, Landroid/net/connectivity/org/chromium/base/task/TaskRunnerImplJni;->sOverride:Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    iput-object p0, v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist destroy(J)V
    .registers 3
    .param p1, "nativeTaskRunnerAndroid"    # J

    .line 34
    nop

    .line 35
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_task_TaskRunnerImpl_destroy(J)V

    .line 37
    return-void
.end method

.method public blacklist init(II)J
    .registers 5
    .param p1, "taskRunnerType"    # I
    .param p2, "taskTraits"    # I

    .line 41
    invoke-static {p1, p2}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_task_TaskRunnerImpl_init(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist postDelayedTask(JLjava/lang/Runnable;JLjava/lang/String;)V
    .registers 7
    .param p1, "nativeTaskRunnerAndroid"    # J
    .param p3, "task"    # Ljava/lang/Runnable;
    .param p4, "delay"    # J
    .param p6, "runnableClassName"    # Ljava/lang/String;

    .line 48
    nop

    .line 49
    invoke-static/range {p1 .. p6}, Landroid/net/connectivity/org/jni_zero/GEN_JNI;->android_net_connectivity_org_chromium_base_task_TaskRunnerImpl_postDelayedTask(JLjava/lang/Object;JLjava/lang/Object;)V

    .line 54
    return-void
.end method
