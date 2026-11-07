.class public abstract Landroid/net/ipsec/ike/IkeIdentification;
.super Ljava/lang/Object;
.source "IkeIdentification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/IkeIdentification$IdType;
    }
.end annotation


# static fields
.field public static final blacklist ID_TYPE_DER_ASN1_DN:I = 0x9

.field public static final blacklist ID_TYPE_FQDN:I = 0x2

.field public static final blacklist ID_TYPE_IPV4_ADDR:I = 0x1

.field public static final blacklist ID_TYPE_IPV6_ADDR:I = 0x5

.field private static final blacklist ID_TYPE_KEY:Ljava/lang/String; = "idType"

.field public static final blacklist ID_TYPE_KEY_ID:I = 0xb

.field public static final blacklist ID_TYPE_RFC822_ADDR:I = 0x3

.field private static final blacklist INDEX_SAN_DATA:I = 0x1

.field private static final blacklist INDEX_SAN_TYPE:I = 0x0

.field protected static final blacklist SAN_TYPE_DNS:I = 0x2

.field protected static final blacklist SAN_TYPE_IP_ADDRESS:I = 0x7

.field protected static final blacklist SAN_TYPE_RFC822_NAME:I = 0x1

.field private static final blacklist SUPPORTED_ID_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist idType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/IkeIdentification;->SUPPORTED_ID_TYPES:Ljava/util/Set;

    .line 76
    sget-object v0, Landroid/net/ipsec/ike/IkeIdentification;->SUPPORTED_ID_TYPES:Ljava/util/Set;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Landroid/net/ipsec/ike/IkeIdentification;->SUPPORTED_ID_TYPES:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Landroid/net/ipsec/ike/IkeIdentification;->SUPPORTED_ID_TYPES:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Landroid/net/ipsec/ike/IkeIdentification;->SUPPORTED_ID_TYPES:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Landroid/net/ipsec/ike/IkeIdentification;->SUPPORTED_ID_TYPES:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Landroid/net/ipsec/ike/IkeIdentification;->SUPPORTED_ID_TYPES:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method protected constructor blacklist <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Landroid/net/ipsec/ike/IkeIdentification;->idType:I

    .line 98
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeIdentification;
    .registers 5
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 107
    const-string v0, "idType"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "idType":I
    packed-switch v0, :pswitch_data_40

    .line 122
    :pswitch_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ID type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :pswitch_22
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeKeyIdIdentification;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeKeyIdIdentification;

    move-result-object v1

    return-object v1

    .line 118
    :pswitch_27
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    move-result-object v1

    return-object v1

    .line 116
    :pswitch_2c
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeIpv6AddrIdentification;

    move-result-object v1

    return-object v1

    .line 114
    :pswitch_31
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    move-result-object v1

    return-object v1

    .line 112
    :pswitch_36
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeFqdnIdentification;

    move-result-object v1

    return-object v1

    .line 110
    :pswitch_3b
    invoke-static {p0}, Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeIpv4AddrIdentification;

    move-result-object v1

    return-object v1

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_9
        :pswitch_2c
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_27
        :pswitch_9
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public abstract blacklist getEncodedIdData()[B
.end method

.method public abstract blacklist getIdTypeString()Ljava/lang/String;
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 133
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 134
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "idType"

    iget v2, p0, Landroid/net/ipsec/ike/IkeIdentification;->idType:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 135
    return-object v0
.end method

.method public abstract blacklist validateEndCertIdOrThrow(Ljava/security/cert/X509Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation
.end method

.method protected blacklist validateEndCertSanOrThrow(Ljava/security/cert/X509Certificate;ILjava/lang/Object;)V
    .registers 9
    .param p1, "endCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "expectedSanType"    # I
    .param p3, "expectedSanData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    .line 168
    .local v0, "allSans":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    if-eqz v0, :cond_53

    .line 172
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 173
    .local v2, "san":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_2f

    .line 174
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 175
    .local v3, "item":Ljava/lang/Object;
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 176
    return-void

    .line 179
    .end local v2    # "san":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "item":Ljava/lang/Object;
    :cond_2f
    goto :goto_a

    .line 180
    :cond_30
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End certificate SAN and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 181
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeIdentification;->getIdTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ID mismatched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/ipsec/ike/IkeIdentification;
    .end local p1    # "endCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "expectedSanType":I
    .end local p3    # "expectedSanData":Ljava/lang/Object;
    throw v1

    .line 169
    .restart local p0    # "this":Landroid/net/ipsec/ike/IkeIdentification;
    .restart local p1    # "endCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "expectedSanType":I
    .restart local p3    # "expectedSanData":Ljava/lang/Object;
    :cond_53
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v2, "End certificate does not contain SAN"

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/ipsec/ike/IkeIdentification;
    .end local p1    # "endCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "expectedSanType":I
    .end local p3    # "expectedSanData":Ljava/lang/Object;
    throw v1
    :try_end_5b
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_5b} :catch_5b

    .line 182
    .end local v0    # "allSans":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    .restart local p0    # "this":Landroid/net/ipsec/ike/IkeIdentification;
    .restart local p1    # "endCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "expectedSanType":I
    .restart local p3    # "expectedSanData":Ljava/lang/Object;
    :catch_5b
    move-exception v0

    .line 183
    .local v0, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    invoke-direct {v1, v0}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
