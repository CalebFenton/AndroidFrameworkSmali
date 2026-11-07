.class Landroid/net/wifi/WifiManager$12;
.super Landroid/net/wifi/IMacAddressListListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->getBssidBlocklist(Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$resultListener:Ljava/util/function/Consumer;


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

    .line 9844
    iput-object p2, p0, Landroid/net/wifi/WifiManager$12;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$12;->val$resultListener:Ljava/util/function/Consumer;

    invoke-direct {p0}, Landroid/net/wifi/IMacAddressListListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Ljava/util/function/Consumer;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    .registers 3
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .param p1, "value"    # Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;

    .line 9849
    invoke-virtual {p1}, Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 9850
    return-void
.end method


# virtual methods
.method public blacklist onResult(Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<",
            "Landroid/net/MacAddress;",
            ">;)V"
        }
    .end annotation

    .line 9847
    .local p1, "value":Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;, "Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice<Landroid/net/MacAddress;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9848
    iget-object v0, p0, Landroid/net/wifi/WifiManager$12;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$12;->val$resultListener:Ljava/util/function/Consumer;

    new-instance v2, Landroid/net/wifi/WifiManager$12$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/net/wifi/WifiManager$12$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Lcom/android/wifi/x/com/android/modules/utils/ParceledListSlice;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9851
    return-void
.end method
