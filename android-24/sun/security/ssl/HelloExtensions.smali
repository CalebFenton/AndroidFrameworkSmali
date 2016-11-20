.class final Lsun/security/ssl/HelloExtensions;
.super Ljava/lang/Object;
.source "HelloExtensions.java"


# instance fields
.field private encodedLength:I

.field private extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/HelloExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@9
    .line 67
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 7
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@6
    move-result v3

    #@7
    .line 73
    .local v3, "len":I
    new-instance v5, Ljava/util/ArrayList;

    #@9
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v5, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@e
    .line 74
    add-int/lit8 v5, v3, 0x2

    #@10
    iput v5, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    #@12
    .line 75
    :goto_0
    if-lez v3, :cond_5

    #@14
    .line 76
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@17
    move-result v4

    #@18
    .line 77
    .local v4, "type":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@1b
    move-result v2

    #@1c
    .line 78
    .local v2, "extlen":I
    invoke-static {v4}, Lsun/security/ssl/ExtensionType;->get(I)Lsun/security/ssl/ExtensionType;

    #@1f
    move-result-object v0

    #@20
    .line 80
    .local v0, "extType":Lsun/security/ssl/ExtensionType;
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    #@22
    if-ne v0, v5, :cond_0

    #@24
    .line 81
    new-instance v1, Lsun/security/ssl/ServerNameExtension;

    #@26
    invoke-direct {v1, p1, v2}, Lsun/security/ssl/ServerNameExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    #@29
    .line 94
    .local v1, "extension":Lsun/security/ssl/HelloExtension;
    :goto_1
    iget-object v5, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@2b
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 95
    add-int/lit8 v5, v2, 0x4

    #@30
    sub-int/2addr v3, v5

    #@31
    goto :goto_0

    #@32
    .line 82
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    :cond_0
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    #@34
    if-ne v0, v5, :cond_1

    #@36
    .line 83
    new-instance v1, Lsun/security/ssl/SignatureAlgorithmsExtension;

    #@38
    invoke-direct {v1, p1, v2}, Lsun/security/ssl/SignatureAlgorithmsExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    #@3b
    .restart local v1    # "extension":Lsun/security/ssl/HelloExtension;
    goto :goto_1

    #@3c
    .line 84
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    :cond_1
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    #@3e
    if-ne v0, v5, :cond_2

    #@40
    .line 85
    new-instance v1, Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@42
    invoke-direct {v1, p1, v2}, Lsun/security/ssl/SupportedEllipticCurvesExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    #@45
    .restart local v1    # "extension":Lsun/security/ssl/HelloExtension;
    goto :goto_1

    #@46
    .line 86
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    :cond_2
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    #@48
    if-ne v0, v5, :cond_3

    #@4a
    .line 88
    new-instance v1, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;

    #@4c
    invoke-direct {v1, p1, v2}, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    #@4f
    .line 87
    .restart local v1    # "extension":Lsun/security/ssl/HelloExtension;
    goto :goto_1

    #@50
    .line 89
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    :cond_3
    sget-object v5, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    #@52
    if-ne v0, v5, :cond_4

    #@54
    .line 90
    new-instance v1, Lsun/security/ssl/RenegotiationInfoExtension;

    #@56
    invoke-direct {v1, p1, v2}, Lsun/security/ssl/RenegotiationInfoExtension;-><init>(Lsun/security/ssl/HandshakeInStream;I)V

    #@59
    .restart local v1    # "extension":Lsun/security/ssl/HelloExtension;
    goto :goto_1

    #@5a
    .line 92
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    :cond_4
    new-instance v1, Lsun/security/ssl/UnknownExtension;

    #@5c
    invoke-direct {v1, p1, v2, v0}, Lsun/security/ssl/UnknownExtension;-><init>(Lsun/security/ssl/HandshakeInStream;ILsun/security/ssl/ExtensionType;)V

    #@5f
    .restart local v1    # "extension":Lsun/security/ssl/HelloExtension;
    goto :goto_1

    #@60
    .line 97
    .end local v0    # "extType":Lsun/security/ssl/ExtensionType;
    .end local v1    # "extension":Lsun/security/ssl/HelloExtension;
    .end local v2    # "extlen":I
    .end local v4    # "type":I
    :cond_5
    if-eqz v3, :cond_6

    #@62
    .line 98
    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    #@64
    .line 99
    const-string/jumbo v6, "Error parsing extensions: extra data"

    #@67
    .line 98
    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v5

    #@6b
    .line 71
    :cond_6
    return-void
.end method


# virtual methods
.method add(Lsun/security/ssl/HelloExtension;)V
    .locals 1
    .param p1, "ext"    # Lsun/security/ssl/HelloExtension;

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    #@a
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@f
    .line 112
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 113
    const/4 v0, -0x1

    #@15
    iput v0, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    #@17
    .line 108
    return-void
.end method

.method get(Lsun/security/ssl/ExtensionType;)Lsun/security/ssl/HelloExtension;
    .locals 3
    .param p1, "type"    # Lsun/security/ssl/ExtensionType;

    #@0
    .prologue
    .line 117
    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "ext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lsun/security/ssl/HelloExtension;

    #@12
    .line 118
    .local v0, "ext":Lsun/security/ssl/HelloExtension;
    iget-object v2, v0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 119
    return-object v0

    #@17
    .line 122
    .end local v0    # "ext":Lsun/security/ssl/HelloExtension;
    :cond_1
    const/4 v2, 0x0

    #@18
    return-object v2
.end method

.method length()I
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 126
    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    #@3
    if-ltz v2, :cond_0

    #@5
    .line 127
    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    #@7
    return v2

    #@8
    .line 129
    :cond_0
    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_2

    #@10
    .line 130
    iput v3, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    #@12
    .line 137
    :cond_1
    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    #@14
    return v2

    #@15
    .line 132
    :cond_2
    const/4 v2, 0x2

    #@16
    iput v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    #@18
    .line 133
    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@1a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "ext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_1

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lsun/security/ssl/HelloExtension;

    #@2a
    .line 134
    .local v0, "ext":Lsun/security/ssl/HelloExtension;
    iget v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    #@2c
    invoke-virtual {v0}, Lsun/security/ssl/HelloExtension;->length()I

    #@2f
    move-result v3

    #@30
    add-int/2addr v2, v3

    #@31
    iput v2, p0, Lsun/security/ssl/HelloExtensions;->encodedLength:I

    #@33
    goto :goto_0
.end method

.method list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/HelloExtension;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@2
    return-object v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    iget-object v2, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "ext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lsun/security/ssl/HelloExtension;

    #@12
    .line 153
    .local v0, "ext":Lsun/security/ssl/HelloExtension;
    invoke-virtual {v0}, Lsun/security/ssl/HelloExtension;->toString()Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19
    goto :goto_0

    #@1a
    .line 151
    .end local v0    # "ext":Lsun/security/ssl/HelloExtension;
    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 4
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Lsun/security/ssl/HelloExtensions;->length()I

    #@3
    move-result v2

    #@4
    .line 142
    .local v2, "length":I
    if-nez v2, :cond_0

    #@6
    .line 143
    return-void

    #@7
    .line 145
    :cond_0
    add-int/lit8 v3, v2, -0x2

    #@9
    invoke-virtual {p1, v3}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@c
    .line 146
    iget-object v3, p0, Lsun/security/ssl/HelloExtensions;->extensions:Ljava/util/List;

    #@e
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "ext$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Lsun/security/ssl/HelloExtension;

    #@1e
    .line 147
    .local v0, "ext":Lsun/security/ssl/HelloExtension;
    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtension;->send(Lsun/security/ssl/HandshakeOutStream;)V

    #@21
    goto :goto_0

    #@22
    .line 140
    .end local v0    # "ext":Lsun/security/ssl/HelloExtension;
    :cond_1
    return-void
.end method
