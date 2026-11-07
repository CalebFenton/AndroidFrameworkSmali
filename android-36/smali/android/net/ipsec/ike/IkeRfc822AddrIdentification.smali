.class public final Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;
.super Landroid/net/ipsec/ike/IkeIdentification;
.source "IkeRfc822AddrIdentification.java"


# static fields
.field private static final blacklist RFC822_NAME_KEY:Ljava/lang/String; = "rfc822Name"

.field private static final blacklist UTF8:Ljava/nio/charset/Charset;


# instance fields
.field public final whitelist rfc822Name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "rfc822Name"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeIdentification;-><init>(I)V

    .line 57
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "rfc822NameBytes"    # [B

    .line 45
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeIdentification;-><init>(I)V

    .line 46
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;
    .registers 3
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 67
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    const-string v1, "rfc822Name"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 94
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 97
    :cond_6
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getEncodedIdData()[B
    .registers 3

    .line 122
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    sget-object v1, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIdTypeString()Ljava/lang/String;
    .registers 2

    .line 103
    const-string v0, "RFC822 Address"

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 88
    iget v0, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->idType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 79
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeIdentification;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 80
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "rfc822Name"

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
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

    .line 111
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->rfc822Name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/ipsec/ike/IkeRfc822AddrIdentification;->validateEndCertSanOrThrow(Ljava/security/cert/X509Certificate;ILjava/lang/Object;)V

    .line 112
    return-void
.end method
