.class Landroid/net/EthernetManager$1;
.super Landroid/net/IEthernetServiceListener$Stub;
.source "EthernetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/net/EthernetManager$InterfaceStateListener;


# direct methods
.method constructor blacklist <init>(Landroid/net/EthernetManager;Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V
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

    .line 288
    iput-object p2, p0, Landroid/net/EthernetManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/EthernetManager$1;->val$listener:Landroid/net/EthernetManager$InterfaceStateListener;

    invoke-direct {p0}, Landroid/net/IEthernetServiceListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onInterfaceStateChanged$0(Landroid/net/EthernetManager$InterfaceStateListener;Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .registers 5
    .param p0, "listener"    # Landroid/net/EthernetManager$InterfaceStateListener;
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "role"    # I
    .param p4, "configuration"    # Landroid/net/IpConfiguration;

    .line 296
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/net/EthernetManager$InterfaceStateListener;->onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V

    return-void
.end method


# virtual methods
.method public blacklist onEthernetStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 290
    return-void
.end method

.method public blacklist onInterfaceStateChanged(Ljava/lang/String;IILandroid/net/IpConfiguration;)V
    .registers 12
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "role"    # I
    .param p4, "configuration"    # Landroid/net/IpConfiguration;

    .line 295
    iget-object v0, p0, Landroid/net/EthernetManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/net/EthernetManager$1;->val$listener:Landroid/net/EthernetManager$InterfaceStateListener;

    new-instance v1, Landroid/net/EthernetManager$1$$ExternalSyntheticLambda0;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "state":I
    .end local p3    # "role":I
    .end local p4    # "configuration":Landroid/net/IpConfiguration;
    .local v3, "iface":Ljava/lang/String;
    .local v4, "state":I
    .local v5, "role":I
    .local v6, "configuration":Landroid/net/IpConfiguration;
    invoke-direct/range {v1 .. v6}, Landroid/net/EthernetManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/EthernetManager$InterfaceStateListener;Ljava/lang/String;IILandroid/net/IpConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method
