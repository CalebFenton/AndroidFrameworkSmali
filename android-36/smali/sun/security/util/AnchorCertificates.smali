.class public Lsun/security/util/AnchorCertificates;
.super Ljava/lang/Object;
.source "AnchorCertificates.java"


# static fields
.field private static final blacklist HASH:Ljava/lang/String; = "SHA-256"

.field private static blacklist certIssuers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist certs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist debug:Lsun/security/util/Debug;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetcertIssuers()Ljava/util/Set;
    .registers 1

    sget-object v0, Lsun/security/util/AnchorCertificates;->certIssuers:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetcerts()Ljava/util/Set;
    .registers 1

    sget-object v0, Lsun/security/util/AnchorCertificates;->certs:Ljava/util/Set;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetdebug()Lsun/security/util/Debug;
    .registers 1

    sget-object v0, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputcertIssuers(Ljava/util/Set;)V
    .registers 1

    sput-object p0, Lsun/security/util/AnchorCertificates;->certIssuers:Ljava/util/Set;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputcerts(Ljava/util/Set;)V
    .registers 1

    sput-object p0, Lsun/security/util/AnchorCertificates;->certs:Ljava/util/Set;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    const-string v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/security/util/AnchorCertificates;->certs:Ljava/util/Set;

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lsun/security/util/AnchorCertificates;->certIssuers:Ljava/util/Set;

    .line 55
    new-instance v0, Lsun/security/util/AnchorCertificates$1;

    invoke-direct {v0}, Lsun/security/util/AnchorCertificates$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist contains(Ljava/security/cert/X509Certificate;)Z
    .registers 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 102
    const-string v0, "SHA-256"

    sget-object v1, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    invoke-static {v0, p0, v1}, Lsun/security/x509/X509CertImpl;->getFingerprint(Ljava/lang/String;Ljava/security/cert/X509Certificate;Lsun/security/util/Debug;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_12

    :cond_c
    sget-object v1, Lsun/security/util/AnchorCertificates;->certs:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 104
    .local v1, "result":Z
    :goto_12
    if-eqz v1, :cond_34

    sget-object v2, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_34

    .line 105
    sget-object v2, Lsun/security/util/AnchorCertificates;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnchorCertificate.contains: matched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 106
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 108
    :cond_34
    return v1
.end method
