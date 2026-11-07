.class Landroid/net/wifi/WifiManager$30;
.super Landroid/net/wifi/IIntegerListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->getAutojoinDisallowedSecurityTypes(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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

    .line 13191
    iput-object p2, p0, Landroid/net/wifi/WifiManager$30;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$30;->val$resultsCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/net/wifi/IIntegerListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(ILjava/util/function/Consumer;)V
    .registers 6
    .param p0, "value"    # I
    .param p1, "resultsCallback"    # Ljava/util/function/Consumer;

    .line 13196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13197
    .local v0, "restrictions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/16 v2, 0x20

    if-ge v1, v2, :cond_19

    .line 13198
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p0

    if-eqz v2, :cond_16

    .line 13199
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13197
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 13202
    .end local v1    # "i":I
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 13203
    .local v1, "results":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 13204
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 13203
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 13206
    .end local v2    # "i":I
    :cond_35
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 13207
    return-void
.end method


# virtual methods
.method public blacklist onResult(I)V
    .registers 5
    .param p1, "value"    # I

    .line 13194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13195
    iget-object v0, p0, Landroid/net/wifi/WifiManager$30;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$30;->val$resultsCallback:Ljava/util/function/Consumer;

    new-instance v2, Landroid/net/wifi/WifiManager$30$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Landroid/net/wifi/WifiManager$30$$ExternalSyntheticLambda0;-><init>(ILjava/util/function/Consumer;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13208
    return-void
.end method
