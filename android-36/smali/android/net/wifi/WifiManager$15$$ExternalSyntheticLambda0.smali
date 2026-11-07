.class public final synthetic Landroid/net/wifi/WifiManager$15$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/function/BiConsumer;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Z


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/function/BiConsumer;Ljava/lang/String;Z)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$15$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/BiConsumer;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$15$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/net/wifi/WifiManager$15$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$15$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/BiConsumer;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$15$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/net/wifi/WifiManager$15$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiManager$15;->lambda$onResult$0(Ljava/util/function/BiConsumer;Ljava/lang/String;Z)V

    return-void
.end method
