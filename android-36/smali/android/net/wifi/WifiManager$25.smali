.class Landroid/net/wifi/WifiManager$25;
.super Landroid/net/wifi/IIntegerListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->querySendDhcpHostnameRestriction(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$resultsCallback:Ljava/util/function/IntConsumer;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
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

    .line 12659
    iput-object p2, p0, Landroid/net/wifi/WifiManager$25;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$25;->val$resultsCallback:Ljava/util/function/IntConsumer;

    invoke-direct {p0}, Landroid/net/wifi/IIntegerListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Ljava/util/function/IntConsumer;I)V
    .registers 2
    .param p0, "resultsCallback"    # Ljava/util/function/IntConsumer;
    .param p1, "value"    # I

    .line 12664
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 12665
    return-void
.end method


# virtual methods
.method public blacklist onResult(I)V
    .registers 5
    .param p1, "value"    # I

    .line 12662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12663
    iget-object v0, p0, Landroid/net/wifi/WifiManager$25;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$25;->val$resultsCallback:Ljava/util/function/IntConsumer;

    new-instance v2, Landroid/net/wifi/WifiManager$25$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/net/wifi/WifiManager$25$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12666
    return-void
.end method
