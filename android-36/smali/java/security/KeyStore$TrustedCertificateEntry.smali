.class public final Ljava/security/KeyStore$TrustedCertificateEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrustedCertificateEntry"
.end annotation


# instance fields
.field private final greylist-max-o attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o cert:Ljava/security/cert/Certificate;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/security/cert/Certificate;)V
    .registers 4
    .param p1, "trustedCert"    # Ljava/security/cert/Certificate;

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    if-eqz p1, :cond_e

    .line 788
    iput-object p1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    .line 789
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->attributes:Ljava/util/Set;

    .line 790
    return-void

    .line 786
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/security/cert/Certificate;Ljava/util/Set;)V
    .registers 5
    .param p1, "trustedCert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Set<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;)V"
        }
    .end annotation

    .line 808
    .local p2, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/KeyStore$Entry$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 812
    iput-object p1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    .line 813
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 814
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->attributes:Ljava/util/Set;

    .line 815
    return-void

    .line 810
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api getAttributes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/security/KeyStore$Entry$Attribute;",
            ">;"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->attributes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api getTrustedCertificate()Ljava/security/cert/Certificate;
    .registers 2

    .line 823
    iget-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trusted certificate entry:\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
