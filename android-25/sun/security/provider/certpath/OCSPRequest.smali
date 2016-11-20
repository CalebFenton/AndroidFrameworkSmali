.class Lsun/security/provider/certpath/OCSPRequest;
.super Ljava/lang/Object;
.source "OCSPRequest.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;

.field private static final dump:Z


# instance fields
.field private final certIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;"
        }
    .end annotation
.end field

.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private nonce:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 79
    const-string/jumbo v0, "certpath"

    #@3
    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/provider/certpath/OCSPRequest;->debug:Lsun/security/util/Debug;

    #@9
    .line 80
    sget-object v0, Lsun/security/provider/certpath/OCSPRequest;->debug:Lsun/security/util/Debug;

    #@b
    if-eqz v0, :cond_0

    #@d
    const-string/jumbo v0, "ocsp"

    #@10
    invoke-static {v0}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    :goto_0
    sput-boolean v0, Lsun/security/provider/certpath/OCSPRequest;->dump:Z

    #@16
    .line 77
    return-void

    #@17
    .line 80
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 95
    .local p1, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    iput-object p1, p0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    #@5
    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    #@b
    .line 95
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p1, "certIds":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/CertId;>;"
    .local p2, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 101
    iput-object p1, p0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    #@5
    .line 102
    iput-object p2, p0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    #@7
    .line 100
    return-void
.end method

.method constructor <init>(Lsun/security/provider/certpath/CertId;)V
    .locals 1
    .param p1, "certId"    # Lsun/security/provider/certpath/CertId;

    #@0
    .prologue
    .line 92
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lsun/security/provider/certpath/OCSPRequest;-><init>(Ljava/util/List;)V

    #@7
    .line 91
    return-void
.end method


# virtual methods
.method encodeBytes()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    new-instance v13, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v13}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 109
    .local v13, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v11, Lsun/security/util/DerOutputStream;

    #@7
    invoke-direct {v11}, Lsun/security/util/DerOutputStream;-><init>()V

    #@a
    .line 110
    .local v11, "requestsOut":Lsun/security/util/DerOutputStream;
    move-object/from16 v0, p0

    #@c
    iget-object v14, v0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    #@e
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v3

    #@12
    .local v3, "certId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v14

    #@16
    if-eqz v14, :cond_0

    #@18
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Lsun/security/provider/certpath/CertId;

    #@1e
    .line 111
    .local v2, "certId":Lsun/security/provider/certpath/CertId;
    new-instance v4, Lsun/security/util/DerOutputStream;

    #@20
    invoke-direct {v4}, Lsun/security/util/DerOutputStream;-><init>()V

    #@23
    .line 112
    .local v4, "certIdOut":Lsun/security/util/DerOutputStream;
    invoke-virtual {v2, v4}, Lsun/security/provider/certpath/CertId;->encode(Lsun/security/util/DerOutputStream;)V

    #@26
    .line 113
    const/16 v14, 0x30

    #@28
    invoke-virtual {v11, v14, v4}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@2b
    goto :goto_0

    #@2c
    .line 116
    .end local v2    # "certId":Lsun/security/provider/certpath/CertId;
    .end local v4    # "certIdOut":Lsun/security/util/DerOutputStream;
    :cond_0
    const/16 v14, 0x30

    #@2e
    invoke-virtual {v13, v14, v11}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@31
    .line 117
    move-object/from16 v0, p0

    #@33
    iget-object v14, v0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    #@35
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    #@38
    move-result v14

    #@39
    if-nez v14, :cond_3

    #@3b
    .line 118
    new-instance v7, Lsun/security/util/DerOutputStream;

    #@3d
    invoke-direct {v7}, Lsun/security/util/DerOutputStream;-><init>()V

    #@40
    .line 119
    .local v7, "extOut":Lsun/security/util/DerOutputStream;
    move-object/from16 v0, p0

    #@42
    iget-object v14, v0, Lsun/security/provider/certpath/OCSPRequest;->extensions:Ljava/util/List;

    #@44
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v6

    #@48
    .local v6, "ext$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v14

    #@4c
    if-eqz v14, :cond_2

    #@4e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v5

    #@52
    check-cast v5, Ljava/security/cert/Extension;

    #@54
    .line 120
    .local v5, "ext":Ljava/security/cert/Extension;
    invoke-interface {v5, v7}, Ljava/security/cert/Extension;->encode(Ljava/io/OutputStream;)V

    #@57
    .line 121
    invoke-interface {v5}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    #@5a
    move-result-object v14

    #@5b
    sget-object v15, Lsun/security/provider/certpath/OCSP;->NONCE_EXTENSION_OID:Lsun/security/util/ObjectIdentifier;

    #@5d
    invoke-virtual {v15}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@60
    move-result-object v15

    #@61
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v14

    #@65
    if-eqz v14, :cond_1

    #@67
    .line 122
    invoke-interface {v5}, Ljava/security/cert/Extension;->getValue()[B

    #@6a
    move-result-object v14

    #@6b
    move-object/from16 v0, p0

    #@6d
    iput-object v14, v0, Lsun/security/provider/certpath/OCSPRequest;->nonce:[B

    #@6f
    goto :goto_1

    #@70
    .line 125
    .end local v5    # "ext":Ljava/security/cert/Extension;
    :cond_2
    new-instance v8, Lsun/security/util/DerOutputStream;

    #@72
    invoke-direct {v8}, Lsun/security/util/DerOutputStream;-><init>()V

    #@75
    .line 126
    .local v8, "extsOut":Lsun/security/util/DerOutputStream;
    const/16 v14, 0x30

    #@77
    invoke-virtual {v8, v14, v7}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@7a
    .line 127
    const/16 v14, -0x80

    #@7c
    .line 128
    const/4 v15, 0x1

    #@7d
    const/16 v16, 0x2

    #@7f
    .line 127
    invoke-static/range {v14 .. v16}, Lsun/security/util/DerValue;->createTag(BZB)B

    #@82
    move-result v14

    #@83
    invoke-virtual {v13, v14, v8}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@86
    .line 131
    .end local v6    # "ext$iterator":Ljava/util/Iterator;
    .end local v7    # "extOut":Lsun/security/util/DerOutputStream;
    .end local v8    # "extsOut":Lsun/security/util/DerOutputStream;
    :cond_3
    new-instance v12, Lsun/security/util/DerOutputStream;

    #@88
    invoke-direct {v12}, Lsun/security/util/DerOutputStream;-><init>()V

    #@8b
    .line 132
    .local v12, "tbsRequest":Lsun/security/util/DerOutputStream;
    const/16 v14, 0x30

    #@8d
    invoke-virtual {v12, v14, v13}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@90
    .line 135
    new-instance v10, Lsun/security/util/DerOutputStream;

    #@92
    invoke-direct {v10}, Lsun/security/util/DerOutputStream;-><init>()V

    #@95
    .line 136
    .local v10, "ocspRequest":Lsun/security/util/DerOutputStream;
    const/16 v14, 0x30

    #@97
    invoke-virtual {v10, v14, v12}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@9a
    .line 138
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@9d
    move-result-object v1

    #@9e
    .line 140
    .local v1, "bytes":[B
    sget-boolean v14, Lsun/security/provider/certpath/OCSPRequest;->dump:Z

    #@a0
    if-eqz v14, :cond_4

    #@a2
    .line 141
    new-instance v9, Lsun/misc/HexDumpEncoder;

    #@a4
    invoke-direct {v9}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@a7
    .line 142
    .local v9, "hexEnc":Lsun/misc/HexDumpEncoder;
    sget-object v14, Lsun/security/provider/certpath/OCSPRequest;->debug:Lsun/security/util/Debug;

    #@a9
    new-instance v15, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    const-string/jumbo v16, "OCSPRequest bytes...\n\n"

    #@b1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v15

    #@b5
    .line 143
    invoke-virtual {v9, v1}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    #@b8
    move-result-object v16

    #@b9
    .line 142
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v15

    #@bd
    .line 143
    const-string/jumbo v16, "\n"

    #@c0
    .line 142
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v15

    #@c4
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v15

    #@c8
    invoke-virtual {v14, v15}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    #@cb
    .line 146
    .end local v9    # "hexEnc":Lsun/misc/HexDumpEncoder;
    :cond_4
    return-object v1
.end method

.method getCertIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/CertId;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPRequest;->certIds:Ljava/util/List;

    #@2
    return-object v0
.end method

.method getNonce()[B
    .locals 1

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lsun/security/provider/certpath/OCSPRequest;->nonce:[B

    #@2
    return-object v0
.end method
