.class final Landroid/location/CountryDetector$ListenerTransport;
.super Landroid/location/ICountryListener$Stub;
.source "CountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/CountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerTransport"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/location/Country;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$HnFcaw7-xncq6TLLPgHOB7yfSD0(Landroid/location/CountryDetector$ListenerTransport;Landroid/location/Country;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/location/CountryDetector$ListenerTransport;->lambda$onCountryDetected$0(Landroid/location/Country;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/location/Country;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 76
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/location/Country;>;"
    invoke-direct {p0}, Landroid/location/ICountryListener$Stub;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/location/CountryDetector$ListenerTransport;->mListener:Ljava/util/function/Consumer;

    .line 78
    iput-object p2, p0, Landroid/location/CountryDetector$ListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 79
    return-void
.end method

.method private synthetic blacklist lambda$onCountryDetected$0(Landroid/location/Country;)V
    .registers 3
    .param p1, "country"    # Landroid/location/Country;

    .line 82
    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onCountryDetected(Landroid/location/Country;)V
    .registers 4
    .param p1, "country"    # Landroid/location/Country;

    .line 82
    iget-object v0, p0, Landroid/location/CountryDetector$ListenerTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/CountryDetector$ListenerTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/location/CountryDetector$ListenerTransport$$ExternalSyntheticLambda0;-><init>(Landroid/location/CountryDetector$ListenerTransport;Landroid/location/Country;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method
