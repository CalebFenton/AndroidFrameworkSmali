.class public final Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;
.super Ljava/lang/Object;
.source "IkeIdentificationUtils.java"


# static fields
.field private static final blacklist DER_ASN1_DN_KEY:Ljava/lang/String; = "DER_ASN1_DN_KEY"

.field private static final blacklist FQDN_KEY:Ljava/lang/String; = "FQDN_KEY"

.field private static final blacklist ID_TYPE_DER_ASN1_DN:I = 0x1

.field private static final blacklist ID_TYPE_FQDN:I = 0x2

.field private static final blacklist ID_TYPE_IPV4_ADDR:I = 0x3

.field private static final blacklist ID_TYPE_IPV6_ADDR:I = 0x4

.field private static final blacklist ID_TYPE_KEY:Ljava/lang/String; = "ID_TYPE_KEY"

.field private static final blacklist ID_TYPE_KEY_ID:I = 0x5

.field private static final blacklist ID_TYPE_RFC822_ADDR:I = 0x6

.field private static final blacklist IP4_ADDRESS_KEY:Ljava/lang/String; = "IP4_ADDRESS_KEY"

.field private static final blacklist IP6_ADDRESS_KEY:Ljava/lang/String; = "IP6_ADDRESS_KEY"

.field private static final blacklist KEY_ID_KEY:Ljava/lang/String; = "KEY_ID_KEY"

.field private static final blacklist RFC822_ADDRESS_KEY:Ljava/lang/String; = "RFC822_ADDRESS_KEY"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createPersistableBundle(I)Landroid/os/PersistableBundle;
    .registers 3
    .param p0, "idType"    # I

    .line 105
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 106
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "ID_TYPE_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 107
    return-object v0
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeIdentification;
    .registers 6
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 113
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    const-string v0, "ID_TYPE_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "idType":I
    packed-switch v0, :pswitch_data_9c

    .line 140
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized IKE ID type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :pswitch_27
    new-instance v1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    const-string v2, "RFC822_ADDRESS_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 134
    :pswitch_33
    const-string v1, "KEY_ID_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 135
    .local v1, "keyIdBundle":Landroid/os/PersistableBundle;
    const-string v2, "Key ID was null"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    new-instance v2, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    invoke-static {v1}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;-><init>([B)V

    return-object v2

    .line 129
    .end local v1    # "keyIdBundle":Landroid/os/PersistableBundle;
    :pswitch_48
    const-string v1, "IP6_ADDRESS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "v6AddressStr":Ljava/lang/String;
    const-string v2, "IPv6 address was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 131
    new-instance v2, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    .line 132
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    check-cast v3, Ljava/net/Inet6Address;

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;-><init>(Ljava/net/Inet6Address;)V

    .line 131
    return-object v2

    .line 124
    .end local v1    # "v6AddressStr":Ljava/lang/String;
    :pswitch_5f
    const-string v1, "IP4_ADDRESS_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "v4AddressStr":Ljava/lang/String;
    const-string v2, "IPv4 address was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    new-instance v2, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    .line 127
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;-><init>(Ljava/net/Inet4Address;)V

    .line 126
    return-object v2

    .line 122
    .end local v1    # "v4AddressStr":Ljava/lang/String;
    :pswitch_76
    new-instance v1, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const-string v2, "FQDN_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 117
    :pswitch_82
    const-string v1, "DER_ASN1_DN_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 118
    .local v1, "dnBundle":Landroid/os/PersistableBundle;
    const-string v2, "ASN1 DN was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    new-instance v2, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    .line 120
    invoke-static {v1}, Landroid/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-direct {v2, v3}, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    .line 119
    return-object v2

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_82
        :pswitch_76
        :pswitch_5f
        :pswitch_48
        :pswitch_33
        :pswitch_27
    .end packed-switch
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/os/PersistableBundle;
    .registers 5
    .param p0, "ikeId"    # Landroid/net/ipsec/ike/IkeIdentification;

    .line 67
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    if-eqz v0, :cond_1c

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 69
    .local v0, "result":Landroid/os/PersistableBundle;
    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    .line 70
    .local v1, "id":Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;
    iget-object v2, v1, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    .line 72
    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 70
    const-string v3, "DER_ASN1_DN_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 73
    return-object v0

    .line 74
    .end local v0    # "result":Landroid/os/PersistableBundle;
    .end local v1    # "id":Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;
    :cond_1c
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    if-eqz v0, :cond_30

    .line 75
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 76
    .restart local v0    # "result":Landroid/os/PersistableBundle;
    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    .line 77
    .local v1, "id":Landroid/net/ipsec/ike/IkeFqdnIdentification;
    const-string v2, "FQDN_KEY"

    iget-object v3, v1, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object v0

    .line 79
    .end local v0    # "result":Landroid/os/PersistableBundle;
    .end local v1    # "id":Landroid/net/ipsec/ike/IkeFqdnIdentification;
    :cond_30
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    if-eqz v0, :cond_48

    .line 80
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 81
    .restart local v0    # "result":Landroid/os/PersistableBundle;
    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    .line 82
    .local v1, "id":Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;
    iget-object v2, v1, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;->ipv4Address:Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IP4_ADDRESS_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v0

    .line 84
    .end local v0    # "result":Landroid/os/PersistableBundle;
    .end local v1    # "id":Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;
    :cond_48
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    if-eqz v0, :cond_60

    .line 85
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 86
    .restart local v0    # "result":Landroid/os/PersistableBundle;
    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    .line 87
    .local v1, "id":Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;
    iget-object v2, v1, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->ipv6Address:Ljava/net/Inet6Address;

    invoke-virtual {v2}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IP6_ADDRESS_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v0

    .line 89
    .end local v0    # "result":Landroid/os/PersistableBundle;
    .end local v1    # "id":Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;
    :cond_60
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    if-eqz v0, :cond_78

    .line 90
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 91
    .restart local v0    # "result":Landroid/os/PersistableBundle;
    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    .line 92
    .local v1, "id":Landroid/net/ipsec/ike/IkeKeyIdIdentification;
    iget-object v2, v1, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->keyId:[B

    invoke-static {v2}, Landroid/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "KEY_ID_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 93
    return-object v0

    .line 94
    .end local v0    # "result":Landroid/os/PersistableBundle;
    .end local v1    # "id":Landroid/net/ipsec/ike/IkeKeyIdIdentification;
    :cond_78
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    if-eqz v0, :cond_8c

    .line 95
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/net/vcn/persistablebundleutils/IkeIdentificationUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 96
    .restart local v0    # "result":Landroid/os/PersistableBundle;
    move-object v1, p0

    check-cast v1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    .line 97
    .local v1, "id":Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;
    const-string v2, "RFC822_ADDRESS_KEY"

    iget-object v3, v1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v0

    .line 100
    .end local v0    # "result":Landroid/os/PersistableBundle;
    .end local v1    # "id":Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;
    :cond_8c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized IkeIdentification subclass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
