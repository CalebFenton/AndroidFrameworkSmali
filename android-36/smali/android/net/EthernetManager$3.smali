.class Landroid/net/EthernetManager$3;
.super Landroid/net/IEthernetServiceListener$Stub;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/EthernetManager;->addEthernetStateListener(Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Ljava/util/function/IntConsumer;


# direct methods
.method constructor blacklist <init>(Landroid/net/EthernetManager;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/EthernetManager;
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

    .line 665
    iput-object p2, p0, Landroid/net/EthernetManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/EthernetManager$3;->val$listener:Ljava/util/function/IntConsumer;

    invoke-direct {p0}, Landroid/net/IEthernetServiceListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onEthernetStateChanged$0(Ljava/util/function/IntConsumer;I)V
    .registers 2
    .param p0, "listener"    # Ljava/util/function/IntConsumer;
    .param p1, "state"    # I

    .line 668
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method


# virtual methods
.method public blacklist onEthernetStateChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 668
    iget-object v0, p0, Landroid/net/EthernetManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/EthernetManager$3;->val$listener:Ljava/util/function/IntConsumer;

    new-instance v2, Landroid/net/EthernetManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/net/EthernetManager$3$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 669
    return-void
.end method

.method public blacklist onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "role"    # I
    .param p4, "configuration"    # Landroid/net/IpConfiguration;

    .line 673
    return-void
.end method
