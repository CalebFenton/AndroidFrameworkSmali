.class public final Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;
.super Landroid/net/ipsec/ike/IkeIdentification;
.source "IkeDerAsn1DnIdentification.java"


# static fields
.field private static final blacklist DER_ASN1_DN_KEY:Ljava/lang/String; = "derAsn1Dn"


# instance fields
.field public final whitelist derAsn1Dn:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor whitelist <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .param p1, "derAsn1Dn"    # Ljavax/security/auth/x500/X500Principal;

    .line 63
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeIdentification;-><init>(I)V

    .line 65
    const-string v0, "derAsn1Dn not provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    .line 67
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "derAsn1DnBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;
        }
    .end annotation

    .line 45
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/net/ipsec/ike/IkeIdentification;-><init>(I)V

    .line 47
    const-string v0, "derAsn1DnBytes not provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    :try_start_a
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v0, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_11} :catch_13

    .line 54
    nop

    .line 55
    return-void

    .line 51
    :catch_13
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    invoke-direct {v1, v0}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;
    .registers 5
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 76
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    const-string v0, "derAsn1Dn"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 79
    .local v0, "dnBundle":Landroid/os/PersistableBundle;
    const-string v1, "ASN1 DN bundle is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    new-instance v1, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    .line 82
    invoke-static {v0}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    .line 81
    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 111
    :cond_6
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    move-object v1, p1

    check-cast v1, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;

    iget-object v1, v1, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getEncodedIdData()[B
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIdTypeString()Ljava/lang/String;
    .registers 2

    .line 117
    const-string v0, "DER ASN.1 DN"

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 102
    iget v0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->idType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 92
    invoke-super {p0}, Landroid/net/ipsec/ike/IkeIdentification;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 93
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    .line 94
    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 93
    const-string v2, "derAsn1Dn"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 95
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

    .line 124
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeDerAsn1DnIdentification;->derAsn1Dn:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    return-void

    .line 125
    :cond_d
    new-instance v0, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;

    const-string v1, "End cert subject DN and DER ASN1 DN ID mismtached"

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
