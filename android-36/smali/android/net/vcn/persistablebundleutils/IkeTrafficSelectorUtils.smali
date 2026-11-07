.class public final Landroid/net/vcn/persistablebundleutils/IkeTrafficSelectorUtils;
.super Ljava/lang/Object;
.source "IkeTrafficSelectorUtils.java"


# static fields
.field private static final blacklist END_ADDRESS_KEY:Ljava/lang/String; = "END_ADDRESS_KEY"

.field private static final blacklist END_PORT_KEY:Ljava/lang/String; = "END_PORT_KEY"

.field private static final blacklist START_ADDRESS_KEY:Ljava/lang/String; = "START_ADDRESS_KEY"

.field private static final blacklist START_PORT_KEY:Ljava/lang/String; = "START_PORT_KEY"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTrafficSelector;
    .registers 8
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 45
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    const-string v0, "START_PORT_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "startPort":I
    const-string v1, "END_PORT_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, "endPort":I
    const-string v2, "START_ADDRESS_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "startingAddress":Ljava/lang/String;
    const-string v3, "END_ADDRESS_KEY"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "endingAddress":Ljava/lang/String;
    const-string/jumbo v4, "startAddress was null"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    const-string v4, "endAddress was null"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    new-instance v4, Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 58
    invoke-static {v2}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 59
    invoke-static {v3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/net/ipsec/ike/IkeTrafficSelector;-><init>(IILjava/net/InetAddress;Ljava/net/InetAddress;)V

    .line 55
    return-object v4
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeTrafficSelector;)Landroid/os/PersistableBundle;
    .registers 4
    .param p0, "ts"    # Landroid/net/ipsec/ike/IkeTrafficSelector;

    .line 65
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 67
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "START_PORT_KEY"

    iget v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    const-string v1, "END_PORT_KEY"

    iget v2, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endPort:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 69
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->startingAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "START_ADDRESS_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeTrafficSelector;->endingAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "END_ADDRESS_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method
