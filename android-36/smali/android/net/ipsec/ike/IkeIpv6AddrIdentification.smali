.class public Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;
.super Landroid/net/ipsec/ike/IkeIdentification;
.source "IkeIpv6AddrIdentification.java"


# static fields
.field private static final blacklist IP_ADDRESS_KEY:Ljava/lang/String; = "ipv6Address"


# instance fields
.field public final whitelist ipv6Address:Ljava/net/Inet6Address;


# direct methods
.method public constructor whitelist <init>(Ljava/net/Inet6Address;)V
    .registers 3
    .param p1, "address"    # Ljava/net/Inet6Address;

    .line 58
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeIdentification;-><init>(I)V

    .line 59
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    .line 60
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "ipv6AddrBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeIdentification;-><init>(I)V

    .line 46
    :try_start_4
    invoke-static {p1}, Ljava/net/Inet6Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_c} :catch_e
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_c} :catch_e

    .line 49
    nop

    .line 50
    return-void

    .line 47
    :catch_e
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    invoke-direct {v1, v0}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;
    .registers 3
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 69
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    new-instance v0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    .line 72
    const-string v1, "ipv6Address"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet6Address;

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    .line 71
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 100
    :cond_6
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getEncodedIdData()[B
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIdTypeString()Ljava/lang/String;
    .registers 2

    .line 106
    const-string v0, "IPv6 Address"

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 91
    iget v0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->idType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 82
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeIdentification;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 83
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    invoke-virtual {v1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ipv6Address"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v0
.end method

.method public blacklist validateEndCertIdOrThrow(Ljava/security/cert/X509Certificate;)V
    .registers 4
    .param p1, "endCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    invoke-virtual {v0}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1, v0}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->validateEndCertSanOrThrow(Ljava/security/cert/X509Certificate;ILjava/lang/Object;)V

    .line 115
    return-void
.end method
