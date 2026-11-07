.class public abstract Landroid/app/HomeVisibilityListener;
.super Ljava/lang/Object;
.source "HomeVisibilityListener.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field blacklist mIsHomeActivityVisible:Z

.field private blacklist mMaxScanTasksForHomeVisibility:I

.field blacklist mObserver:Landroid/app/IProcessObserver$Stub;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/app/HomeVisibilityListener;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Landroid/app/HomeVisibilityListener;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misHomeActivityVisible(Landroid/app/HomeVisibilityListener;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;->isHomeActivityVisible()Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    const-class v0, Landroid/app/HomeVisibilityListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/HomeVisibilityListener;->TAG:Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/app/HomeVisibilityListener;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/app/HomeVisibilityListener;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/app/HomeVisibilityListener$1;

    invoke-direct {v0, p0}, Landroid/app/HomeVisibilityListener$1;-><init>(Landroid/app/HomeVisibilityListener;)V

    iput-object v0, p0, Landroid/app/HomeVisibilityListener;->mObserver:Landroid/app/IProcessObserver$Stub;

    .line 100
    return-void
.end method

.method private blacklist isHomeActivityVisible()Z
    .registers 10

    .line 103
    iget-object v0, p0, Landroid/app/HomeVisibilityListener;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iget v1, p0, Landroid/app/HomeVisibilityListener;->mMaxScanTasksForHomeVisibility:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/app/ActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "tasksTopToBottom":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v0, :cond_8b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto/16 :goto_8b

    .line 110
    :cond_14
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "taskSize":I
    :goto_19
    if-ge v1, v4, :cond_8a

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 112
    .local v5, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-boolean v6, Landroid/app/HomeVisibilityListener;->DBG:Z

    if-eqz v6, :cond_79

    .line 113
    sget-object v6, Landroid/app/HomeVisibilityListener;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Task#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": activity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", visible="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 114
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 115
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 116
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 113
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_79
    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_87

    .line 119
    return v2

    .line 110
    .end local v5    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 122
    .end local v1    # "i":I
    .end local v4    # "taskSize":I
    :cond_8a
    return v3

    .line 107
    :cond_8b
    :goto_8b
    return v3
.end method


# virtual methods
.method blacklist init(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 55
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/HomeVisibilityListener;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 56
    iput-object p2, p0, Landroid/app/HomeVisibilityListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/app/HomeVisibilityListener;->mMaxScanTasksForHomeVisibility:I

    .line 59
    invoke-direct {p0}, Landroid/app/HomeVisibilityListener;->isHomeActivityVisible()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/HomeVisibilityListener;->mIsHomeActivityVisible:Z

    .line 60
    return-void
.end method

.method public abstract blacklist onHomeVisibilityChanged(Z)V
.end method
