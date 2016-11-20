.class final enum Lsun/security/ssl/X509KeyManagerImpl$CheckType;
.super Ljava/lang/Enum;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lsun/security/ssl/X509KeyManagerImpl$CheckType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckType;

.field public static final enum CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

.field public static final enum NONE:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

.field public static final enum SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;


# instance fields
.field final validEku:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 476
    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@6
    const-string/jumbo v1, "NONE"

    #@9
    .line 477
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@c
    move-result-object v2

    #@d
    .line 476
    invoke-direct {v0, v1, v5, v2}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    #@10
    .line 477
    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->NONE:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@12
    .line 479
    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@14
    const-string/jumbo v1, "CLIENT"

    #@17
    .line 481
    new-instance v2, Ljava/util/HashSet;

    #@19
    new-array v3, v7, [Ljava/lang/String;

    #@1b
    .line 482
    const-string/jumbo v4, "2.5.29.37.0"

    #@1e
    aput-object v4, v3, v5

    #@20
    const-string/jumbo v4, "1.3.6.1.5.5.7.3.2"

    #@23
    aput-object v4, v3, v6

    #@25
    .line 481
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@28
    move-result-object v3

    #@29
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@2c
    .line 479
    invoke-direct {v0, v1, v6, v2}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    #@2f
    .line 481
    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@31
    .line 484
    new-instance v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@33
    const-string/jumbo v1, "SERVER"

    #@36
    .line 486
    new-instance v2, Ljava/util/HashSet;

    #@38
    const/4 v3, 0x4

    #@39
    new-array v3, v3, [Ljava/lang/String;

    #@3b
    .line 487
    const-string/jumbo v4, "2.5.29.37.0"

    #@3e
    aput-object v4, v3, v5

    #@40
    const-string/jumbo v4, "1.3.6.1.5.5.7.3.1"

    #@43
    aput-object v4, v3, v6

    #@45
    const-string/jumbo v4, "2.16.840.1.113730.4.1"

    #@48
    aput-object v4, v3, v7

    #@4a
    .line 488
    const-string/jumbo v4, "1.3.6.1.4.1.311.10.3.3"

    #@4d
    aput-object v4, v3, v8

    #@4f
    .line 486
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@52
    move-result-object v3

    #@53
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@56
    .line 484
    invoke-direct {v0, v1, v7, v2}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    #@59
    .line 486
    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@5b
    .line 474
    new-array v0, v8, [Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@5d
    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->NONE:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@5f
    aput-object v1, v0, v5

    #@61
    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@63
    aput-object v1, v0, v6

    #@65
    sget-object v1, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@67
    aput-object v1, v0, v7

    #@69
    sput-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->$VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@6b
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 493
    .local p3, "validEku":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 494
    iput-object p3, p0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->validEku:Ljava/util/Set;

    #@5
    .line 493
    return-void
.end method

.method private static getBit([ZI)Z
    .locals 1
    .param p0, "keyUsage"    # [Z
    .param p1, "bit"    # I

    #@0
    .prologue
    .line 498
    array-length v0, p0

    #@1
    if-ge p1, v0, :cond_0

    #@3
    aget-boolean v0, p0, p1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lsun/security/ssl/X509KeyManagerImpl$CheckType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 474
    const-class v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@8
    return-object v0
.end method

.method public static values()[Lsun/security/ssl/X509KeyManagerImpl$CheckType;
    .locals 1

    #@0
    .prologue
    .line 474
    sget-object v0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->$VALUES:[Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@2
    return-object v0
.end method


# virtual methods
.method check(Ljava/security/cert/X509Certificate;Ljava/util/Date;)Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    .locals 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 506
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->NONE:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@2
    if-ne p0, v5, :cond_0

    #@4
    .line 507
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@6
    return-object v5

    #@7
    .line 513
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    .line 514
    .local v1, "certEku":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    #@d
    .line 515
    iget-object v5, p0, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->validEku:Ljava/util/Set;

    #@f
    invoke-static {v5, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    #@12
    move-result v5

    #@13
    .line 514
    if-eqz v5, :cond_1

    #@15
    .line 518
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@17
    return-object v5

    #@18
    .line 522
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    #@1b
    move-result-object v3

    #@1c
    .line 523
    .local v3, "ku":[Z
    if-eqz v3, :cond_7

    #@1e
    .line 524
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    #@21
    move-result-object v5

    #@22
    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    .line 525
    .local v0, "algorithm":Ljava/lang/String;
    const/4 v5, 0x0

    #@27
    invoke-static {v3, v5}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    #@2a
    move-result v4

    #@2b
    .line 526
    .local v4, "kuSignature":Z
    const-string/jumbo v5, "RSA"

    #@2e
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_3

    #@34
    .line 529
    if-nez v4, :cond_7

    #@36
    .line 530
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->CLIENT:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@38
    if-eq p0, v5, :cond_2

    #@3a
    const/4 v5, 0x2

    #@3b
    invoke-static {v3, v5}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    #@3e
    move-result v5

    #@3f
    if-nez v5, :cond_7

    #@41
    .line 531
    :cond_2
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@43
    return-object v5

    #@44
    .line 534
    :cond_3
    const-string/jumbo v5, "DSA"

    #@47
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v5

    #@4b
    if-eqz v5, :cond_4

    #@4d
    .line 536
    if-nez v4, :cond_7

    #@4f
    .line 537
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@51
    return-object v5

    #@52
    .line 539
    :cond_4
    const-string/jumbo v5, "DH"

    #@55
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v5

    #@59
    if-eqz v5, :cond_5

    #@5b
    .line 541
    const/4 v5, 0x4

    #@5c
    invoke-static {v3, v5}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    #@5f
    move-result v5

    #@60
    if-nez v5, :cond_7

    #@62
    .line 542
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@64
    return-object v5

    #@65
    .line 544
    :cond_5
    const-string/jumbo v5, "EC"

    #@68
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v5

    #@6c
    if-eqz v5, :cond_7

    #@6e
    .line 546
    if-nez v4, :cond_6

    #@70
    .line 547
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@72
    return-object v5

    #@73
    .line 555
    :cond_6
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->SERVER:Lsun/security/ssl/X509KeyManagerImpl$CheckType;

    #@75
    if-ne p0, v5, :cond_7

    #@77
    const/4 v5, 0x4

    #@78
    invoke-static {v3, v5}, Lsun/security/ssl/X509KeyManagerImpl$CheckType;->getBit([ZI)Z

    #@7b
    move-result v5

    #@7c
    if-nez v5, :cond_7

    #@7e
    .line 556
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    #@80
    return-object v5

    #@81
    .line 560
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "certEku":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "ku":[Z
    .end local v4    # "kuSignature":Z
    :catch_0
    move-exception v2

    #@82
    .line 562
    .local v2, "e":Ljava/security/cert/CertificateException;
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXTENSION_MISMATCH:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@84
    return-object v5

    #@85
    .line 566
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    .restart local v1    # "certEku":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "ku":[Z
    :cond_7
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    #@88
    .line 567
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->OK:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    #@8a
    return-object v5

    #@8b
    .line 568
    :catch_1
    move-exception v2

    #@8c
    .line 569
    .restart local v2    # "e":Ljava/security/cert/CertificateException;
    sget-object v5, Lsun/security/ssl/X509KeyManagerImpl$CheckResult;->EXPIRED:Lsun/security/ssl/X509KeyManagerImpl$CheckResult;

    #@8e
    return-object v5
.end method
