.class Landroid/net/wifi/WifiManager$15;
.super Landroid/net/wifi/ILastCallerListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->getLastCallerInfoForApi(ILjava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$resultsCallback:Ljava/util/function/BiConsumer;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Ljava/util/function/BiConsumer;)V
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

    .line 10990
    iput-object p2, p0, Landroid/net/wifi/WifiManager$15;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$15;->val$resultsCallback:Ljava/util/function/BiConsumer;

    invoke-direct {p0}, Landroid/net/wifi/ILastCallerListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Ljava/util/function/BiConsumer;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "resultsCallback"    # Ljava/util/function/BiConsumer;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 10995
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10996
    return-void
.end method


# virtual methods
.method public blacklist onResult(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 10993
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10994
    iget-object v0, p0, Landroid/net/wifi/WifiManager$15;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$15;->val$resultsCallback:Ljava/util/function/BiConsumer;

    new-instance v2, Landroid/net/wifi/WifiManager$15$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Landroid/net/wifi/WifiManager$15$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10997
    return-void
.end method
