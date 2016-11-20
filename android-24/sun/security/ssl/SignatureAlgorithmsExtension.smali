.class final Lsun/security/ssl/SignatureAlgorithmsExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


# instance fields
.field private algorithms:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private algorithmsLen:I


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 796
    .local p1, "signAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    sget-object v0, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    #@2
    invoke-direct {p0, v0}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    #@5
    .line 798
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@a
    iput-object v0, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    #@c
    .line 800
    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    #@f
    move-result v0

    #@10
    iget-object v1, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    #@12
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    #@15
    move-result v1

    #@16
    mul-int/2addr v0, v1

    #@17
    .line 799
    iput v0, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    #@19
    .line 794
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 8
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 805
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    #@2
    invoke-direct {p0, v5}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    #@5
    .line 807
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@8
    move-result v5

    #@9
    iput v5, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    #@b
    .line 808
    iget v5, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    #@d
    if-eqz v5, :cond_0

    #@f
    iget v5, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    #@11
    add-int/lit8 v5, v5, 0x2

    #@13
    if-eq v5, p2, :cond_1

    #@15
    .line 809
    :cond_0
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@17
    new-instance v6, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v7, "Invalid "

    #@1f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v6

    #@23
    iget-object v7, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v6

    #@29
    const-string/jumbo v7, " extension"

    #@2c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@37
    throw v5

    #@38
    .line 812
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    #@3a
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@3d
    iput-object v5, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    #@3f
    .line 813
    iget v2, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    #@41
    .line 814
    .local v2, "remains":I
    const/4 v3, 0x0

    #@42
    .line 815
    .local v3, "sequence":I
    :goto_0
    const/4 v5, 0x1

    #@43
    if-le v2, v5, :cond_2

    #@45
    .line 816
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@48
    move-result v1

    #@49
    .line 817
    .local v1, "hash":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@4c
    move-result v4

    #@4d
    .line 820
    .local v4, "signature":I
    add-int/lit8 v3, v3, 0x1

    #@4f
    invoke-static {v1, v4, v3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@52
    move-result-object v0

    #@53
    .line 821
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget-object v5, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    #@55
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@58
    .line 822
    add-int/lit8 v2, v2, -0x2

    #@5a
    goto :goto_0

    #@5b
    .line 825
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v1    # "hash":I
    .end local v4    # "signature":I
    :cond_2
    if-eqz v2, :cond_3

    #@5d
    .line 826
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@5f
    const-string/jumbo v6, "Invalid server_name extension"

    #@62
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@65
    throw v5

    #@66
    .line 804
    :cond_3
    return-void
.end method


# virtual methods
.method getSignAlgorithms()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 831
    iget-object v0, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method length()I
    .locals 1

    #@0
    .prologue
    .line 836
    iget v0, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    #@2
    add-int/lit8 v0, v0, 0x6

    #@4
    return v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 3
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 841
    iget-object v2, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@2
    iget v2, v2, Lsun/security/ssl/ExtensionType;->id:I

    #@4
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@7
    .line 842
    iget v2, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    #@9
    add-int/lit8 v2, v2, 0x2

    #@b
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@e
    .line 843
    iget v2, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithmsLen:I

    #@10
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@13
    .line 845
    iget-object v2, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    #@15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "algorithm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@25
    .line 846
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    #@28
    move-result v2

    #@29
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@2c
    .line 847
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    #@2f
    move-result v2

    #@30
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@33
    goto :goto_0

    #@34
    .line 840
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 853
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 854
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    #@6
    .line 855
    .local v1, "opened":Z
    iget-object v4, p0, Lsun/security/ssl/SignatureAlgorithmsExtension;->algorithms:Ljava/util/Collection;

    #@8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v3

    #@c
    .local v3, "signAlg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@18
    .line 856
    .local v2, "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    if-eqz v1, :cond_0

    #@1a
    .line 857
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, ", "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v2}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@35
    goto :goto_0

    #@36
    .line 859
    :cond_0
    invoke-virtual {v2}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 860
    const/4 v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 864
    .end local v2    # "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v5, "Extension "

    #@47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    iget-object v5, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    const-string/jumbo v5, ", signature_algorithms: "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    return-object v4
.end method
