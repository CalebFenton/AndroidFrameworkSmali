.class Landroid/net/wifi/WifiManager$20;
.super Landroid/net/wifi/IIntegerListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->getMloMode(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
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

    .line 12328
    iput-object p2, p0, Landroid/net/wifi/WifiManager$20;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$20;->val$resultsCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/net/wifi/IIntegerListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p0, "resultsCallback"    # Ljava/util/function/Consumer;
    .param p1, "value"    # I

    .line 12333
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12334
    return-void
.end method


# virtual methods
.method public blacklist onResult(I)V
    .registers 5
    .param p1, "value"    # I

    .line 12331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12332
    iget-object v0, p0, Landroid/net/wifi/WifiManager$20;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$20;->val$resultsCallback:Ljava/util/function/Consumer;

    new-instance v2, Landroid/net/wifi/WifiManager$20$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/net/wifi/WifiManager$20$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12335
    return-void
.end method
