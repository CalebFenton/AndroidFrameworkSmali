.class public Landroid/window/TransitionMetrics;
.super Ljava/lang/Object;
.source "TransitionMetrics.java"


# static fields
.field private static final blacklist sTransitionMetrics:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/window/TransitionMetrics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mTransitionMetricsReporter:Landroid/window/ITransitionMetricsReporter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/window/TransitionMetrics$1;

    invoke-direct {v0}, Landroid/window/TransitionMetrics$1;-><init>()V

    sput-object v0, Landroid/window/TransitionMetrics;->sTransitionMetrics:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/window/ITransitionMetricsReporter;)V
    .registers 2
    .param p1, "reporter"    # Landroid/window/ITransitionMetricsReporter;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Landroid/window/TransitionMetrics;->mTransitionMetricsReporter:Landroid/window/ITransitionMetricsReporter;

    .line 34
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/ITransitionMetricsReporter;Landroid/window/TransitionMetrics-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionMetrics;-><init>(Landroid/window/ITransitionMetricsReporter;)V

    return-void
.end method

.method public static blacklist getInstance()Landroid/window/TransitionMetrics;
    .registers 1

    .line 48
    sget-object v0, Landroid/window/TransitionMetrics;->sTransitionMetrics:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionMetrics;

    return-object v0
.end method


# virtual methods
.method public blacklist reportAnimationStart(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "transitionToken"    # Landroid/os/IBinder;

    .line 39
    :try_start_0
    iget-object v0, p0, Landroid/window/TransitionMetrics;->mTransitionMetricsReporter:Landroid/window/ITransitionMetricsReporter;

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 39
    invoke-interface {v0, p1, v1, v2}, Landroid/window/ITransitionMetricsReporter;->reportAnimationStart(Landroid/os/IBinder;J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 43
    goto :goto_e

    .line 41
    :catch_a
    move-exception v0

    .line 42
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 44
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
