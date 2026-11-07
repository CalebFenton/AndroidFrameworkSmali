.class Landroid/net/wifi/WifiManager$23;
.super Landroid/net/wifi/IWifiBandsListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->getSupportedSimultaneousBandCombinations(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$resultsCallback:Ljava/util/function/Consumer;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 12465
    iput-object p2, p0, Landroid/net/wifi/WifiManager$23;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$23;->val$resultsCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/net/wifi/IWifiBandsListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 2
    .param p0, "resultsCallback"    # Ljava/util/function/Consumer;
    .param p1, "bandCombinations"    # Ljava/util/List;

    .line 12474
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12475
    return-void
.end method


# virtual methods
.method public blacklist onResult([Landroid/net/wifi/WifiBands;)V
    .registers 7
    .param p1, "supportedBands"    # [Landroid/net/wifi/WifiBands;

    .line 12468
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12470
    .local v0, "bandCombinations":Ljava/util/List;, "Ljava/util/List<[I>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_16

    aget-object v3, p1, v2

    .line 12471
    .local v3, "wifiBands":Landroid/net/wifi/WifiBands;
    iget-object v4, v3, Landroid/net/wifi/WifiBands;->bands:[I

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12470
    .end local v3    # "wifiBands":Landroid/net/wifi/WifiBands;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 12473
    :cond_16
    iget-object v1, p0, Landroid/net/wifi/WifiManager$23;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$23;->val$resultsCallback:Ljava/util/function/Consumer;

    new-instance v3, Landroid/net/wifi/WifiManager$23$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Landroid/net/wifi/WifiManager$23$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12476
    return-void
.end method
