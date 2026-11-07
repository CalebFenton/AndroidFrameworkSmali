.class Lsun/security/provider/certpath/RevocationChecker$1;
.super Ljava/lang/Object;
.source "RevocationChecker.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/provider/certpath/RevocationChecker;->getRevocationProperties()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 182
    invoke-virtual {p0}, Lsun/security/provider/certpath/RevocationChecker$1;->run()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    .registers 7

    .line 184
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;-><init>(Lsun/security/provider/certpath/RevocationChecker-IA;)V

    .line 185
    .local v0, "rp":Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;
    const-string v1, "com.sun.security.onlyCheckRevocationOfEECert"

    invoke-static {v1}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "onlyEE":Ljava/lang/String;
    const/4 v2, 0x1

    const-string v3, "true"

    const/4 v4, 0x0

    if-eqz v1, :cond_1a

    .line 188
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v2

    goto :goto_1b

    :cond_1a
    move v5, v4

    :goto_1b
    iput-boolean v5, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->onlyEE:Z

    .line 189
    const-string v5, "ocsp.enable"

    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, "ocspEnabled":Ljava/lang/String;
    if-eqz v5, :cond_2c

    .line 191
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v4

    :goto_2d
    iput-boolean v2, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspEnabled:Z

    .line 192
    const-string v2, "ocsp.responderURL"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspUrl:Ljava/lang/String;

    .line 193
    nop

    .line 194
    const-string v2, "ocsp.responderCertSubjectName"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSubject:Ljava/lang/String;

    .line 195
    nop

    .line 196
    const-string v2, "ocsp.responderCertIssuerName"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspIssuer:Ljava/lang/String;

    .line 197
    nop

    .line 198
    const-string v2, "ocsp.responderCertSerialNumber"

    invoke-static {v2}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->ocspSerial:Ljava/lang/String;

    .line 199
    nop

    .line 200
    const-string v2, "com.sun.security.enableCRLDP"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lsun/security/provider/certpath/RevocationChecker$RevocationProperties;->crlDPEnabled:Z

    .line 201
    return-object v0
.end method
