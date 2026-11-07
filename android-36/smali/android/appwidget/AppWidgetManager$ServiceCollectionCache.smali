.class public Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;
.super Ljava/lang/Object;
.source "AppWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceCollectionCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;
    }
.end annotation


# instance fields
.field private final blacklist mActiveConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Intent$FilterComparison;",
            "Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mTimeOut:J


# direct methods
.method public static synthetic blacklist $r8$lambda$ZDcQMTsLKFfCK1gXzOZS0Db8mUU(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent$FilterComparison;)Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;
    .registers 2

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->lambda$connectAndConsumeInner$1(Landroid/content/Intent$FilterComparison;)Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$v7HIrr9hPZryvu7LbHxJe-cE0YE(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->lambda$connectAndConsume$0(Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActiveConnections(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mActiveConnections:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeOut(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)J
    .registers 3

    iget-wide v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mTimeOut:J

    return-wide v0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;J)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeOut"    # J

    .line 1658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mActiveConnections:Ljava/util/Map;

    .line 1659
    iput-object p1, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mContext:Landroid/content/Context;

    .line 1660
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mHandler:Landroid/os/Handler;

    .line 1661
    iput-wide p2, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mTimeOut:J

    .line 1662
    return-void
.end method

.method private blacklist connectAndConsumeInner(Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1674
    .local p2, "task":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/IBinder;>;"
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mActiveConnections:Ljava/util/Map;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v2, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;

    .line 1676
    .local v0, "activeConnection":Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;
    invoke-virtual {v0, p2, p3}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;->add(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    .line 1677
    return-void
.end method

.method private synthetic blacklist lambda$connectAndConsume$0(Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "task"    # Ljava/util/function/Consumer;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 1669
    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->connectAndConsumeInner(Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic blacklist lambda$connectAndConsumeInner$1(Landroid/content/Intent$FilterComparison;)Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;
    .registers 3
    .param p1, "x$0"    # Landroid/content/Intent$FilterComparison;

    .line 1675
    new-instance v0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$ConnectionTask;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent$FilterComparison;)V

    return-object v0
.end method


# virtual methods
.method public blacklist connectAndConsume(Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Consumer<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1669
    .local p2, "task":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/IBinder;>;"
    iget-object v0, p0, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/appwidget/AppWidgetManager$ServiceCollectionCache$$ExternalSyntheticLambda1;-><init>(Landroid/appwidget/AppWidgetManager$ServiceCollectionCache;Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1670
    return-void
.end method
