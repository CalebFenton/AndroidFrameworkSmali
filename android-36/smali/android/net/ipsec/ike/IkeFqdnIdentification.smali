.class public Landroid/net/ipsec/ike/IkeFqdnIdentification;
.super Landroid/net/ipsec/ike/IkeIdentification;
.source "IkeFqdnIdentification.java"


# static fields
.field private static final blacklist ASCII:Ljava/nio/charset/Charset;

.field private static final blacklist FQDN_KEY:Ljava/lang/String; = "fqdn"


# instance fields
.field public final whitelist fqdn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeIdentification;-><init>(I)V

    .line 58
    sget-object v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 62
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    .line 63
    return-void

    .line 59
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non US-ASCII character set used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "fqdnBytes"    # [B

    .line 46
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeIdentification;-><init>(I)V

    .line 47
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/net/ipsec/ike/IkeFqdnIdentification;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeFqdnIdentification;
    .registers 3
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 72
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    const-string v1, "fqdn"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/IkeFqdnIdentification;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 99
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 102
    :cond_6
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/IkeFqdnIdentification;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getEncodedIdData()[B
    .registers 3

    .line 127
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    sget-object v1, Landroid/net/ipsec/ike/IkeFqdnIdentification;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIdTypeString()Ljava/lang/String;
    .registers 2

    .line 108
    const-string v0, "FQDN"

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 93
    iget v0, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->idType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 84
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeIdentification;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 85
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "fqdn"

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
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

    .line 116
    const/4 v0, 0x2

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeFqdnIdentification;->fqdn:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/ipsec/ike/IkeFqdnIdentification;->validateEndCertSanOrThrow(Ljava/security/cert/X509Certificate;ILjava/lang/Object;)V

    .line 117
    return-void
.end method
