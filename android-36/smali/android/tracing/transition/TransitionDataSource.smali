.class public Landroid/tracing/transition/TransitionDataSource;
.super Landroid/tracing/perfetto/DataSource;
.source "TransitionDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/tracing/perfetto/DataSource<",
        "Landroid/tracing/perfetto/DataSourceInstance;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static blacklist DATA_SOURCE_NAME:Ljava/lang/String;


# instance fields
.field private final blacklist mOnFlushStaticCallback:Ljava/lang/Runnable;

.field private final blacklist mOnStartStaticCallback:Ljava/lang/Runnable;

.field private final blacklist mOnStopStaticCallback:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnFlushStaticCallback(Landroid/tracing/transition/TransitionDataSource;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/tracing/transition/TransitionDataSource;->mOnFlushStaticCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnStartStaticCallback(Landroid/tracing/transition/TransitionDataSource;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/tracing/transition/TransitionDataSource;->mOnStartStaticCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnStopStaticCallback(Landroid/tracing/transition/TransitionDataSource;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Landroid/tracing/transition/TransitionDataSource;->mOnStopStaticCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const-string v0, "com.android.wm.shell.transition"

    sput-object v0, Landroid/tracing/transition/TransitionDataSource;->DATA_SOURCE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "onStart"    # Ljava/lang/Runnable;
    .param p2, "onFlush"    # Ljava/lang/Runnable;
    .param p3, "onStop"    # Ljava/lang/Runnable;

    .line 38
    sget-object v0, Landroid/tracing/transition/TransitionDataSource;->DATA_SOURCE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/tracing/perfetto/DataSource;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Landroid/tracing/transition/TransitionDataSource;->mOnStartStaticCallback:Ljava/lang/Runnable;

    .line 40
    iput-object p2, p0, Landroid/tracing/transition/TransitionDataSource;->mOnFlushStaticCallback:Ljava/lang/Runnable;

    .line 41
    iput-object p3, p0, Landroid/tracing/transition/TransitionDataSource;->mOnStopStaticCallback:Ljava/lang/Runnable;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist createInstance(Landroid/util/proto/ProtoInputStream;I)Landroid/tracing/perfetto/DataSourceInstance;
    .registers 4
    .param p1, "configStream"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "instanceIndex"    # I

    .line 46
    new-instance v0, Landroid/tracing/transition/TransitionDataSource$1;

    invoke-direct {v0, p0, p0, p2}, Landroid/tracing/transition/TransitionDataSource$1;-><init>(Landroid/tracing/transition/TransitionDataSource;Landroid/tracing/perfetto/DataSource;I)V

    return-object v0
.end method
