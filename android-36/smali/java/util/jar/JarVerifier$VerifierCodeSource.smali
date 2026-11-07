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


# static fields
.field private static final whitelist serialVersionUID:J = -0x7d8eb393234dc4f9L


# instance fields
.field greylist-max-o csdomain:Ljava/lang/Object;

.field greylist-max-o vcerts:[Ljava/security/cert/Certificate;

.field greylist-max-o vlocation:Ljava/net/URL;

.field greylist-max-o vsigners:[Ljava/security/CodeSigner;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetPrivateSigners(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;
    .registers 1

    invoke-direct {p0}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->getPrivateSigners()[Ljava/security/CodeSigner;

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/CodeSigner;)V
    .registers 4
    .param p1, "csdomain"    # Ljava/lang/Object;
    .param p2, "location"    # Ljava/net/URL;
    .param p3, "signers"    # [Ljava/security/CodeSigner;

    .line 625
    invoke-direct {p0, p2, p3}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/CodeSigner;)V

    .line 626
    iput-object p1, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    .line 627
    iput-object p2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    .line 628
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    .line 629
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/cert/Certificate;)V
    .registers 4
    .param p1, "csdomain"    # Ljava/lang/Object;
    .param p2, "location"    # Ljava/net/URL;
    .param p3, "certs"    # [Ljava/security/cert/Certificate;

    .line 632
    invoke-direct {p0, p2, p3}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    .line 633
    iput-object p1, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    .line 634
    iput-object p2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    .line 635
    iput-object p3, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    .line 636
    return-void
.end method

.method private greylist-max-o getPrivateCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .line 682
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method private greylist-max-o getPrivateSigners()[Ljava/security/CodeSigner;
    .registers 2

    .line 678
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 645
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 646
    return v0

    .line 648
    :cond_4
    instance-of v1, p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    if-eqz v1, :cond_3d

    .line 649
    move-object v1, p1

    check-cast v1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    .line 656
    .local v1, "that":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    iget-object v2, v1, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->isSameDomain(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 657
    iget-object v2, v1, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    iget-object v3, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vsigners:[Ljava/security/CodeSigner;

    if-ne v2, v3, :cond_3b

    iget-object v2, v1, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    iget-object v3, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vcerts:[Ljava/security/cert/Certificate;

    if-eq v2, v3, :cond_20

    goto :goto_3b

    .line 661
    :cond_20
    iget-object v2, v1, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    if-eqz v2, :cond_2d

    .line 662
    iget-object v0, v1, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    invoke-virtual {v0, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 663
    :cond_2d
    iget-object v2, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    if-eqz v2, :cond_3a

    .line 664
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    iget-object v2, v1, Ljava/util/jar/JarVerifier$VerifierCodeSource;->vlocation:Ljava/net/URL;

    invoke-virtual {v0, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 666
    :cond_3a
    return v0

    .line 659
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    return v0

    .line 670
    .end local v1    # "that":Ljava/util/jar/JarVerifier$VerifierCodeSource;
    :cond_3d
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method greylist-max-o isSameDomain(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "csdomain"    # Ljava/lang/Object;

    .line 674
    iget-object v0, p0, Ljava/util/jar/JarVerifier$VerifierCodeSource;->csdomain:Ljava/lang/Object;

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
