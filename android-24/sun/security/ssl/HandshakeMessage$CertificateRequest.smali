.class final Lsun/security/ssl/HandshakeMessage$CertificateRequest;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CertificateRequest"
.end annotation


# static fields
.field private static final TYPES_ECC:[B

.field private static final TYPES_NO_ECC:[B

.field static final cct_dss_ephemeral_dh:I = 0x6

.field static final cct_dss_fixed_dh:I = 0x4

.field static final cct_dss_sign:I = 0x2

.field static final cct_ecdsa_fixed_ecdh:I = 0x42

.field static final cct_ecdsa_sign:I = 0x40

.field static final cct_rsa_ephemeral_dh:I = 0x5

.field static final cct_rsa_fixed_dh:I = 0x3

.field static final cct_rsa_fixed_ecdh:I = 0x41

.field static final cct_rsa_sign:I = 0x1


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

.field authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field types:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1257
    const/4 v0, 0x2

    #@1
    new-array v0, v0, [B

    #@3
    fill-array-data v0, :array_0

    #@6
    sput-object v0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->TYPES_NO_ECC:[B

    #@8
    .line 1259
    const/4 v0, 0x3

    #@9
    new-array v0, v0, [B

    #@b
    fill-array-data v0, :array_1

    #@e
    .line 1258
    sput-object v0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->TYPES_ECC:[B

    #@10
    .line 1239
    return-void

    #@11
    .line 1257
    nop

    #@12
    :array_0
    .array-data 1
        0x1t
        0x2t
    .end array-data

    #@17
    .line 1259
    nop

    #@18
    :array_1
    .array-data 1
        0x1t
        0x2t
        0x40t
    .end array-data
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;Lsun/security/ssl/ProtocolVersion;)V
    .locals 11
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1308
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@4
    .line 1311
    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@6
    .line 1314
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    #@9
    move-result-object v8

    #@a
    iput-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    #@c
    .line 1317
    iget v8, p2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@e
    sget-object v9, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@10
    iget v9, v9, Lsun/security/ssl/ProtocolVersion;->v:I

    #@12
    if-lt v8, v9, :cond_2

    #@14
    .line 1318
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@17
    move-result v8

    #@18
    iput v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    #@1a
    .line 1319
    iget v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    #@1c
    const/4 v9, 0x2

    #@1d
    if-ge v8, v9, :cond_0

    #@1f
    .line 1320
    new-instance v8, Ljavax/net/ssl/SSLProtocolException;

    #@21
    .line 1321
    const-string/jumbo v9, "Invalid supported_signature_algorithms field"

    #@24
    .line 1320
    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@27
    throw v8

    #@28
    .line 1324
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    #@2a
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@2d
    iput-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    #@2f
    .line 1325
    iget v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    #@31
    .line 1326
    .local v4, "remains":I
    const/4 v5, 0x0

    #@32
    .line 1327
    .local v5, "sequence":I
    :goto_0
    const/4 v8, 0x1

    #@33
    if-le v4, v8, :cond_1

    #@35
    .line 1328
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@38
    move-result v2

    #@39
    .line 1329
    .local v2, "hash":I
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    #@3c
    move-result v6

    #@3d
    .line 1333
    .local v6, "signature":I
    add-int/lit8 v5, v5, 0x1

    #@3f
    .line 1332
    invoke-static {v2, v6, v5}, Lsun/security/ssl/SignatureAndHashAlgorithm;->valueOf(III)Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@42
    move-result-object v0

    #@43
    .line 1334
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    iget-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    #@45
    invoke-interface {v8, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@48
    .line 1335
    add-int/lit8 v4, v4, -0x2

    #@4a
    goto :goto_0

    #@4b
    .line 1338
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v2    # "hash":I
    .end local v6    # "signature":I
    :cond_1
    if-eqz v4, :cond_3

    #@4d
    .line 1339
    new-instance v8, Ljavax/net/ssl/SSLProtocolException;

    #@4f
    .line 1340
    const-string/jumbo v9, "Invalid supported_signature_algorithms field"

    #@52
    .line 1339
    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@55
    throw v8

    #@56
    .line 1343
    .end local v4    # "remains":I
    .end local v5    # "sequence":I
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    #@58
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    #@5b
    iput-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    #@5d
    .line 1344
    iput v10, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    #@5f
    .line 1348
    :cond_3
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@62
    move-result v3

    #@63
    .line 1349
    .local v3, "len":I
    new-instance v7, Ljava/util/ArrayList;

    #@65
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@68
    .line 1350
    .local v7, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsun/security/ssl/HandshakeMessage$DistinguishedName;>;"
    :goto_1
    const/4 v8, 0x3

    #@69
    if-lt v3, v8, :cond_4

    #@6b
    .line 1351
    new-instance v1, Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@6d
    invoke-direct {v1, p1}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    #@70
    .line 1352
    .local v1, "dn":Lsun/security/ssl/HandshakeMessage$DistinguishedName;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@73
    .line 1353
    invoke-virtual {v1}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->length()I

    #@76
    move-result v8

    #@77
    sub-int/2addr v3, v8

    #@78
    goto :goto_1

    #@79
    .line 1356
    .end local v1    # "dn":Lsun/security/ssl/HandshakeMessage$DistinguishedName;
    :cond_4
    if-eqz v3, :cond_5

    #@7b
    .line 1357
    new-instance v8, Ljavax/net/ssl/SSLProtocolException;

    #@7d
    const-string/jumbo v9, "Bad CertificateRequest DN length"

    #@80
    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@83
    throw v8

    #@84
    .line 1360
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@87
    move-result v8

    #@88
    new-array v8, v8, [Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@8a
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@8d
    move-result-object v8

    #@8e
    check-cast v8, [Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@90
    iput-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@92
    .line 1309
    return-void
.end method

.method constructor <init>([Ljava/security/cert/X509Certificate;Lsun/security/ssl/CipherSuite$KeyExchange;Ljava/util/Collection;Lsun/security/ssl/ProtocolVersion;)V
    .locals 4
    .param p1, "ca"    # [Ljava/security/cert/X509Certificate;
    .param p2, "keyExchange"    # Lsun/security/ssl/CipherSuite$KeyExchange;
    .param p4, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Lsun/security/ssl/CipherSuite$KeyExchange;",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;",
            "Lsun/security/ssl/ProtocolVersion;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1274
    .local p3, "signAlgs":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    #@3
    .line 1278
    iput-object p4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@5
    .line 1281
    array-length v2, p1

    #@6
    new-array v2, v2, [Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@8
    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@a
    .line 1282
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    array-length v2, p1

    #@c
    if-ge v0, v2, :cond_0

    #@e
    .line 1283
    aget-object v2, p1, v0

    #@10
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@13
    move-result-object v1

    #@14
    .line 1284
    .local v1, "x500Principal":Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@16
    new-instance v3, Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@18
    invoke-direct {v3, v1}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    #@1b
    aput-object v3, v2, v0

    #@1d
    .line 1282
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1290
    .end local v1    # "x500Principal":Ljavax/security/auth/x500/X500Principal;
    :cond_0
    invoke-static {}, Lsun/security/ssl/JsseJce;->isEcAvailable()Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_2

    #@26
    sget-object v2, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->TYPES_ECC:[B

    #@28
    :goto_1
    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    #@2a
    .line 1293
    iget v2, p4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@2c
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@2e
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@30
    if-lt v2, v3, :cond_4

    #@32
    .line 1294
    if-eqz p3, :cond_1

    #@34
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_3

    #@3a
    .line 1295
    :cond_1
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    #@3c
    .line 1296
    const-string/jumbo v3, "No supported signature algorithms"

    #@3f
    .line 1295
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@42
    throw v2

    #@43
    .line 1290
    :cond_2
    sget-object v2, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->TYPES_NO_ECC:[B

    #@45
    goto :goto_1

    #@46
    .line 1299
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    #@48
    invoke-direct {v2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@4b
    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    #@4d
    .line 1301
    invoke-static {}, Lsun/security/ssl/SignatureAndHashAlgorithm;->sizeInRecord()I

    #@50
    move-result v2

    #@51
    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    #@53
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    #@56
    move-result v3

    #@57
    mul-int/2addr v2, v3

    #@58
    .line 1300
    iput v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    #@5a
    .line 1276
    :goto_2
    return-void

    #@5b
    .line 1303
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    #@5d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@60
    iput-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    #@62
    .line 1304
    const/4 v2, 0x0

    #@63
    iput v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    #@65
    goto :goto_2
.end method


# virtual methods
.method getAuthorities()[Ljavax/security/auth/x500/X500Principal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1364
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@2
    array-length v2, v2

    #@3
    new-array v1, v2, [Ljavax/security/auth/x500/X500Principal;

    #@5
    .line 1365
    .local v1, "ret":[Ljavax/security/auth/x500/X500Principal;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@8
    array-length v2, v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 1366
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@d
    aget-object v2, v2, v0

    #@f
    invoke-virtual {v2}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->getX500Principal()Ljavax/security/auth/x500/X500Principal;

    #@12
    move-result-object v2

    #@13
    aput-object v2, v1, v0

    #@15
    .line 1365
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 1368
    :cond_0
    return-object v1
.end method

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
    .line 1372
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method messageLength()I
    .locals 4

    #@0
    .prologue
    .line 1382
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    #@2
    array-length v2, v2

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    add-int/lit8 v1, v2, 0x2

    #@7
    .line 1384
    .local v1, "len":I
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@9
    iget v2, v2, Lsun/security/ssl/ProtocolVersion;->v:I

    #@b
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@d
    iget v3, v3, Lsun/security/ssl/ProtocolVersion;->v:I

    #@f
    if-lt v2, v3, :cond_0

    #@11
    .line 1385
    iget v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    #@13
    add-int/lit8 v2, v2, 0x2

    #@15
    add-int/2addr v1, v2

    #@16
    .line 1388
    :cond_0
    const/4 v0, 0x0

    #@17
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@19
    array-length v2, v2

    #@1a
    if-ge v0, v2, :cond_1

    #@1c
    .line 1389
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@1e
    aget-object v2, v2, v0

    #@20
    invoke-virtual {v2}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->length()I

    #@23
    move-result v2

    #@24
    add-int/2addr v1, v2

    #@25
    .line 1388
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1392
    :cond_1
    return v1
.end method

.method messageType()I
    .locals 1

    #@0
    .prologue
    .line 1377
    const/16 v0, 0xd

    #@2
    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 7
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1423
    const-string/jumbo v5, "*** CertificateRequest"

    #@3
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6
    .line 1425
    sget-object v5, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->debug:Lsun/security/ssl/Debug;

    #@8
    if-eqz v5, :cond_5

    #@a
    const-string/jumbo v5, "verbose"

    #@d
    invoke-static {v5}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_5

    #@13
    .line 1426
    const-string/jumbo v5, "Cert Types: "

    #@16
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@19
    .line 1427
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    #@1c
    array-length v5, v5

    #@1d
    if-ge v1, v5, :cond_1

    #@1f
    .line 1428
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    #@21
    aget-byte v5, v5, v1

    #@23
    sparse-switch v5, :sswitch_data_0

    #@26
    .line 1448
    new-instance v5, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v6, "Type-"

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    #@34
    aget-byte v6, v6, v1

    #@36
    and-int/lit16 v6, v6, 0xff

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@43
    .line 1450
    :goto_1
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    #@45
    array-length v5, v5

    #@46
    add-int/lit8 v5, v5, -0x1

    #@48
    if-eq v1, v5, :cond_0

    #@4a
    .line 1451
    const-string/jumbo v5, ", "

    #@4d
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@50
    .line 1427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1430
    :sswitch_0
    const-string/jumbo v5, "RSA"

    #@56
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@59
    goto :goto_1

    #@5a
    .line 1432
    :sswitch_1
    const-string/jumbo v5, "DSS"

    #@5d
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@60
    goto :goto_1

    #@61
    .line 1434
    :sswitch_2
    const-string/jumbo v5, "Fixed DH (RSA sig)"

    #@64
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@67
    goto :goto_1

    #@68
    .line 1436
    :sswitch_3
    const-string/jumbo v5, "Fixed DH (DSS sig)"

    #@6b
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@6e
    goto :goto_1

    #@6f
    .line 1438
    :sswitch_4
    const-string/jumbo v5, "Ephemeral DH (RSA sig)"

    #@72
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@75
    goto :goto_1

    #@76
    .line 1440
    :sswitch_5
    const-string/jumbo v5, "Ephemeral DH (DSS sig)"

    #@79
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@7c
    goto :goto_1

    #@7d
    .line 1442
    :sswitch_6
    const-string/jumbo v5, "ECDSA"

    #@80
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@83
    goto :goto_1

    #@84
    .line 1444
    :sswitch_7
    const-string/jumbo v5, "Fixed ECDH (RSA sig)"

    #@87
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@8a
    goto :goto_1

    #@8b
    .line 1446
    :sswitch_8
    const-string/jumbo v5, "Fixed ECDH (ECDSA sig)"

    #@8e
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@91
    goto :goto_1

    #@92
    .line 1454
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    #@95
    .line 1456
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@97
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@99
    sget-object v6, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@9b
    iget v6, v6, Lsun/security/ssl/ProtocolVersion;->v:I

    #@9d
    if-lt v5, v6, :cond_4

    #@9f
    .line 1457
    new-instance v0, Ljava/lang/StringBuffer;

    #@a1
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@a4
    .line 1458
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@a5
    .line 1459
    .local v2, "opened":Z
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    #@a7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@aa
    move-result-object v4

    #@ab
    .local v4, "signAlg$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@ae
    move-result v5

    #@af
    if-eqz v5, :cond_3

    #@b1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b4
    move-result-object v3

    #@b5
    check-cast v3, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@b7
    .line 1460
    .local v3, "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    if-eqz v2, :cond_2

    #@b9
    .line 1461
    new-instance v5, Ljava/lang/StringBuilder;

    #@bb
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@be
    const-string/jumbo v6, ", "

    #@c1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v5

    #@c5
    invoke-virtual {v3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@c8
    move-result-object v6

    #@c9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v5

    #@cd
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v5

    #@d1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@d4
    goto :goto_2

    #@d5
    .line 1463
    :cond_2
    invoke-virtual {v3}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    #@d8
    move-result-object v5

    #@d9
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@dc
    .line 1464
    const/4 v2, 0x1

    #@dd
    goto :goto_2

    #@de
    .line 1467
    .end local v3    # "signAlg":Lsun/security/ssl/SignatureAndHashAlgorithm;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@e0
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e3
    const-string/jumbo v6, "Supported Signature Algorithms: "

    #@e6
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v5

    #@ea
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v5

    #@ee
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v5

    #@f2
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f5
    .line 1470
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v2    # "opened":Z
    .end local v4    # "signAlg$iterator":Ljava/util/Iterator;
    :cond_4
    const-string/jumbo v5, "Cert Authorities:"

    #@f8
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@fb
    .line 1471
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@fd
    array-length v5, v5

    #@fe
    if-nez v5, :cond_6

    #@100
    .line 1472
    const-string/jumbo v5, "<Empty>"

    #@103
    invoke-virtual {p1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@106
    .line 1422
    .end local v1    # "i":I
    :cond_5
    return-void

    #@107
    .line 1474
    .restart local v1    # "i":I
    :cond_6
    const/4 v1, 0x0

    #@108
    :goto_3
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@10a
    array-length v5, v5

    #@10b
    if-ge v1, v5, :cond_5

    #@10d
    .line 1475
    iget-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@10f
    aget-object v5, v5, v1

    #@111
    invoke-virtual {v5, p1}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->print(Ljava/io/PrintStream;)V

    #@114
    .line 1474
    add-int/lit8 v1, v1, 0x1

    #@116
    goto :goto_3

    #@117
    .line 1428
    nop

    #@118
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x40 -> :sswitch_6
        0x41 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 6
    .param p1, "output"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1398
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->types:[B

    #@2
    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    #@5
    .line 1401
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@7
    iget v4, v4, Lsun/security/ssl/ProtocolVersion;->v:I

    #@9
    sget-object v5, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    #@b
    iget v5, v5, Lsun/security/ssl/ProtocolVersion;->v:I

    #@d
    if-lt v4, v5, :cond_0

    #@f
    .line 1402
    iget v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithmsLen:I

    #@11
    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@14
    .line 1403
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->algorithms:Ljava/util/Collection;

    #@16
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@19
    move-result-object v1

    #@1a
    .local v1, "algorithm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lsun/security/ssl/SignatureAndHashAlgorithm;

    #@26
    .line 1404
    .local v0, "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getHashValue()I

    #@29
    move-result v4

    #@2a
    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@2d
    .line 1405
    invoke-virtual {v0}, Lsun/security/ssl/SignatureAndHashAlgorithm;->getSignatureValue()I

    #@30
    move-result v4

    #@31
    invoke-virtual {p1, v4}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    #@34
    goto :goto_0

    #@35
    .line 1410
    .end local v0    # "algorithm":Lsun/security/ssl/SignatureAndHashAlgorithm;
    .end local v1    # "algorithm$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    #@36
    .line 1411
    .local v3, "len":I
    const/4 v2, 0x0

    #@37
    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@39
    array-length v4, v4

    #@3a
    if-ge v2, v4, :cond_1

    #@3c
    .line 1412
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@3e
    aget-object v4, v4, v2

    #@40
    invoke-virtual {v4}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->length()I

    #@43
    move-result v4

    #@44
    add-int/2addr v3, v4

    #@45
    .line 1411
    add-int/lit8 v2, v2, 0x1

    #@47
    goto :goto_1

    #@48
    .line 1415
    :cond_1
    invoke-virtual {p1, v3}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@4b
    .line 1416
    const/4 v2, 0x0

    #@4c
    :goto_2
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@4e
    array-length v4, v4

    #@4f
    if-ge v2, v4, :cond_2

    #@51
    .line 1417
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateRequest;->authorities:[Lsun/security/ssl/HandshakeMessage$DistinguishedName;

    #@53
    aget-object v4, v4, v2

    #@55
    invoke-virtual {v4, p1}, Lsun/security/ssl/HandshakeMessage$DistinguishedName;->send(Lsun/security/ssl/HandshakeOutStream;)V

    #@58
    .line 1416
    add-int/lit8 v2, v2, 0x1

    #@5a
    goto :goto_2

    #@5b
    .line 1396
    :cond_2
    return-void
.end method
