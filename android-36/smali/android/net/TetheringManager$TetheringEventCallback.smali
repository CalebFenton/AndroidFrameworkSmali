.class public interface abstract Landroid/net/TetheringManager$TetheringEventCallback;
.super Ljava/lang/Object;
.source "TetheringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TetheringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TetheringEventCallback"
.end annotation


# virtual methods
.method public whitelist onClientsChanged(Ljava/util/Collection;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/TetheredClient;",
            ">;)V"
        }
    .end annotation

    .line 1756
    .local p1, "clients":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/TetheredClient;>;"
    return-void
.end method

.method public whitelist onError(Landroid/net/TetheringInterface;I)V
    .registers 4
    .param p1, "iface"    # Landroid/net/TetheringInterface;
    .param p2, "error"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1740
    invoke-virtual {p1}, Landroid/net/TetheringInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Landroid/net/TetheringManager$TetheringEventCallback;->onError(Ljava/lang/String;I)V

    .line 1741
    return-void
.end method

.method public whitelist onError(Ljava/lang/String;I)V
    .registers 3
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "error"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1725
    return-void
.end method

.method public whitelist onLocalOnlyInterfacesChanged(Ljava/util/List;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1697
    .local p1, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist onLocalOnlyInterfacesChanged(Ljava/util/Set;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/TetheringInterface;",
            ">;)V"
        }
    .end annotation

    .line 1712
    .local p1, "interfaces":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/TetheringInterface;>;"
    invoke-static {p1}, Landroid/net/TetheringManager;->toIfaces(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/TetheringManager$TetheringEventCallback;->onLocalOnlyInterfacesChanged(Ljava/util/List;)V

    .line 1713
    return-void
.end method

.method public whitelist onOffloadStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1766
    return-void
.end method

.method public blacklist onSupportedTetheringTypes(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1602
    .local p1, "supportedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    return-void
.end method

.method public blacklist onTetherableInterfaceRegexpsChanged(Landroid/net/TetheringManager$TetheringInterfaceRegexps;)V
    .registers 2
    .param p1, "reg"    # Landroid/net/TetheringManager$TetheringInterfaceRegexps;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1632
    return-void
.end method

.method public whitelist onTetherableInterfacesChanged(Ljava/util/List;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1644
    .local p1, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist onTetherableInterfacesChanged(Ljava/util/Set;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/TetheringInterface;",
            ">;)V"
        }
    .end annotation

    .line 1659
    .local p1, "interfaces":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/TetheringInterface;>;"
    invoke-static {p1}, Landroid/net/TetheringManager;->toIfaces(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/TetheringManager$TetheringEventCallback;->onTetherableInterfacesChanged(Ljava/util/List;)V

    .line 1660
    return-void
.end method

.method public whitelist onTetheredInterfacesChanged(Ljava/util/List;)V
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1671
    .local p1, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist onTetheredInterfacesChanged(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/TetheringInterface;",
            ">;)V"
        }
    .end annotation

    .line 1685
    .local p1, "interfaces":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/TetheringInterface;>;"
    invoke-static {p1}, Landroid/net/TetheringManager;->toIfaces(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/net/TetheringManager$TetheringEventCallback;->onTetheredInterfacesChanged(Ljava/util/List;)V

    .line 1686
    return-void
.end method

.method public whitelist onTetheringSupported(Z)V
    .registers 2
    .param p1, "supported"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1588
    return-void
.end method

.method public whitelist onUpstreamChanged(Landroid/net/Network;)V
    .registers 2
    .param p1, "network"    # Landroid/net/Network;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1615
    return-void
.end method
