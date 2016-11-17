.class Ljava/util/jar/JarVerifier$VerifierCodeSource;
.super Ljava/security/CodeSource;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VerifierCodeSource"
.end annotation


# instance fields
.field csdomain:Ljava/lang/Object;

.field vcerts:[Ljava/security/cert/Certificate;

.field vlocation:Ljava/net/URL;

.field vsigners:[Ljava/security/CodeSigner;


# direct methods
.method static synthetic -wrap0(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->getPrivateSigners()[Ljava/security/CodeSigner;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/CodeSigner;)V
    .locals 0
    .param p1, "csdomain"    # Ljava/lang/Object;
    .param p2, "location"    # Ljava/net/URL;
    .param p3, "signers"    # [Ljava/security/CodeSigner;

    #@0
    .prologue
    .line 606
    invoke-direct {p0, p2, p3}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    #@3
    .line 607
    iput-object p1, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    #@5
    .line 608
    iput-object p2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    #@7
    .line 609
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    #@9
    .line 605
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "csdomain"    # Ljava/lang/Object;
    .param p2, "location"    # Ljava/net/URL;
    .param p3, "certs"    # [Ljava/security/cert/Certificate;

    #@0
    .prologue
    .line 613
    invoke-direct {p0, p2, p3}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    #@3
    .line 614
    iput-object p1, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    #@5
    .line 615
    iput-object p2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    #@7
    .line 616
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    #@9
    .line 612
    return-void
.end method

.method private getPrivateCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    #@0
    .prologue
    .line 663
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    #@2
    return-object v0
.end method

.method private getPrivateSigners()[Ljava/security/CodeSigner;
    .locals 1

    #@0
    .prologue
    .line 659
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    #@2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 626
    if-ne p1, p0, :cond_0

    #@3
    .line 627
    return v3

    #@4
    .line 629
    :cond_0
    instance-of v1, p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    #@6
    if-eqz v1, :cond_5

    #@8
    move-object v0, p1

    #@9
    .line 630
    nop

    #@a
    nop

    #@b
    .line 637
    .local v0, "that":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    iget-object v1, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    #@d
    invoke-virtual {p0, v1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->isSameDomain(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_5

    #@13
    .line 638
    iget-object v1, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    #@15
    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    #@17
    if-ne v1, v2, :cond_1

    #@19
    .line 639
    iget-object v1, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    #@1b
    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    #@1d
    if-eq v1, v2, :cond_2

    #@1f
    .line 640
    :cond_1
    const/4 v1, 0x0

    #@20
    return v1

    #@21
    .line 642
    :cond_2
    iget-object v1, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 643
    iget-object v1, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    #@27
    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    #@29
    invoke-virtual {v1, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    return v1

    #@2e
    .line 644
    :cond_3
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    #@30
    if-eqz v1, :cond_4

    #@32
    .line 645
    iget-object v1, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    #@34
    iget-object v2, v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    #@36
    invoke-virtual {v1, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v1

    #@3a
    return v1

    #@3b
    .line 647
    :cond_4
    return v3

    #@3c
    .line 651
    .end local v0    # "that":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    :cond_5
    invoke-super {p0, p1}, Ljava/security/CodeSource;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v1

    #@40
    return v1
.end method

.method isSameDomain(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "csdomain"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
