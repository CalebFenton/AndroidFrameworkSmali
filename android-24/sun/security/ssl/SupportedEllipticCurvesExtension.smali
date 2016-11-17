.class final Lsun/security/ssl/SupportedEllipticCurvesExtension;
.super Lsun/security/ssl/HelloExtension;
.source "HelloExtensions.java"


# static fields
.field private static final ARBITRARY_CHAR2:I = 0xff02

.field private static final ARBITRARY_PRIME:I = 0xff01

.field static final DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

.field private static final NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

.field private static final curveIndices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final fips:Z


# instance fields
.field private final curveIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x19

    #@2
    const/16 v5, 0xf

    #@4
    .line 442
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    #@7
    move-result v2

    #@8
    sput-boolean v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->fips:Z

    #@a
    .line 443
    sget-boolean v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->fips:Z

    #@c
    if-nez v2, :cond_0

    #@e
    .line 444
    new-array v1, v6, [I

    #@10
    .local v1, "ids":[I
    fill-array-data v1, :array_0

    #@13
    .line 457
    :goto_0
    new-instance v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@15
    invoke-direct {v2, v1}, Lsun/security/ssl/SupportedEllipticCurvesExtension;-><init>([I)V

    #@18
    sput-object v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@1a
    .line 575
    const/16 v2, 0x1a

    #@1c
    new-array v2, v2, [Ljava/lang/String;

    #@1e
    .line 576
    const/4 v3, 0x0

    #@1f
    const/4 v4, 0x0

    #@20
    aput-object v3, v2, v4

    #@22
    .line 577
    const-string/jumbo v3, "1.3.132.0.1"

    #@25
    const/4 v4, 0x1

    #@26
    aput-object v3, v2, v4

    #@28
    .line 578
    const-string/jumbo v3, "1.3.132.0.2"

    #@2b
    const/4 v4, 0x2

    #@2c
    aput-object v3, v2, v4

    #@2e
    .line 579
    const-string/jumbo v3, "1.3.132.0.15"

    #@31
    const/4 v4, 0x3

    #@32
    aput-object v3, v2, v4

    #@34
    .line 580
    const-string/jumbo v3, "1.3.132.0.24"

    #@37
    const/4 v4, 0x4

    #@38
    aput-object v3, v2, v4

    #@3a
    .line 581
    const-string/jumbo v3, "1.3.132.0.25"

    #@3d
    const/4 v4, 0x5

    #@3e
    aput-object v3, v2, v4

    #@40
    .line 582
    const-string/jumbo v3, "1.3.132.0.26"

    #@43
    const/4 v4, 0x6

    #@44
    aput-object v3, v2, v4

    #@46
    .line 583
    const-string/jumbo v3, "1.3.132.0.27"

    #@49
    const/4 v4, 0x7

    #@4a
    aput-object v3, v2, v4

    #@4c
    .line 584
    const-string/jumbo v3, "1.3.132.0.3"

    #@4f
    const/16 v4, 0x8

    #@51
    aput-object v3, v2, v4

    #@53
    .line 585
    const-string/jumbo v3, "1.3.132.0.16"

    #@56
    const/16 v4, 0x9

    #@58
    aput-object v3, v2, v4

    #@5a
    .line 586
    const-string/jumbo v3, "1.3.132.0.17"

    #@5d
    const/16 v4, 0xa

    #@5f
    aput-object v3, v2, v4

    #@61
    .line 587
    const-string/jumbo v3, "1.3.132.0.36"

    #@64
    const/16 v4, 0xb

    #@66
    aput-object v3, v2, v4

    #@68
    .line 588
    const-string/jumbo v3, "1.3.132.0.37"

    #@6b
    const/16 v4, 0xc

    #@6d
    aput-object v3, v2, v4

    #@6f
    .line 589
    const-string/jumbo v3, "1.3.132.0.38"

    #@72
    const/16 v4, 0xd

    #@74
    aput-object v3, v2, v4

    #@76
    .line 590
    const-string/jumbo v3, "1.3.132.0.39"

    #@79
    const/16 v4, 0xe

    #@7b
    aput-object v3, v2, v4

    #@7d
    .line 591
    const-string/jumbo v3, "1.3.132.0.9"

    #@80
    aput-object v3, v2, v5

    #@82
    .line 592
    const-string/jumbo v3, "1.3.132.0.8"

    #@85
    const/16 v4, 0x10

    #@87
    aput-object v3, v2, v4

    #@89
    .line 593
    const-string/jumbo v3, "1.3.132.0.30"

    #@8c
    const/16 v4, 0x11

    #@8e
    aput-object v3, v2, v4

    #@90
    .line 594
    const-string/jumbo v3, "1.3.132.0.31"

    #@93
    const/16 v4, 0x12

    #@95
    aput-object v3, v2, v4

    #@97
    .line 595
    const-string/jumbo v3, "1.2.840.10045.3.1.1"

    #@9a
    const/16 v4, 0x13

    #@9c
    aput-object v3, v2, v4

    #@9e
    .line 596
    const-string/jumbo v3, "1.3.132.0.32"

    #@a1
    const/16 v4, 0x14

    #@a3
    aput-object v3, v2, v4

    #@a5
    .line 597
    const-string/jumbo v3, "1.3.132.0.33"

    #@a8
    const/16 v4, 0x15

    #@aa
    aput-object v3, v2, v4

    #@ac
    .line 598
    const-string/jumbo v3, "1.3.132.0.10"

    #@af
    const/16 v4, 0x16

    #@b1
    aput-object v3, v2, v4

    #@b3
    .line 599
    const-string/jumbo v3, "1.2.840.10045.3.1.7"

    #@b6
    const/16 v4, 0x17

    #@b8
    aput-object v3, v2, v4

    #@ba
    .line 600
    const-string/jumbo v3, "1.3.132.0.34"

    #@bd
    const/16 v4, 0x18

    #@bf
    aput-object v3, v2, v4

    #@c1
    .line 601
    const-string/jumbo v3, "1.3.132.0.35"

    #@c4
    aput-object v3, v2, v6

    #@c6
    .line 575
    sput-object v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    #@c8
    .line 607
    new-instance v2, Ljava/util/HashMap;

    #@ca
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@cd
    sput-object v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIndices:Ljava/util/Map;

    #@cf
    .line 608
    const/4 v0, 0x1

    #@d0
    .local v0, "i":I
    :goto_1
    sget-object v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    #@d2
    array-length v2, v2

    #@d3
    if-ge v0, v2, :cond_1

    #@d5
    .line 609
    sget-object v2, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIndices:Ljava/util/Map;

    #@d7
    sget-object v3, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    #@d9
    aget-object v3, v3, v0

    #@db
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@de
    move-result-object v4

    #@df
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e2
    .line 608
    add-int/lit8 v0, v0, 0x1

    #@e4
    goto :goto_1

    #@e5
    .line 452
    .end local v0    # "i":I
    .end local v1    # "ids":[I
    :cond_0
    new-array v1, v5, [I

    #@e7
    .restart local v1    # "ids":[I
    fill-array-data v1, :array_1

    #@ea
    goto/16 :goto_0

    #@ec
    .line 433
    .restart local v0    # "i":I
    :cond_1
    return-void

    #@ed
    .line 444
    nop

    #@ee
    :array_0
    .array-data 4
        0x17
        0x1
        0x3
        0x13
        0x15
        0x6
        0x7
        0x9
        0xa
        0x18
        0xb
        0xc
        0x19
        0xd
        0xe
        0xf
        0x10
        0x11
        0x2
        0x12
        0x4
        0x5
        0x14
        0x8
        0x16
    .end array-data

    #@124
    .line 452
    :array_1
    .array-data 4
        0x17
        0x1
        0x3
        0x13
        0x15
        0x6
        0x7
        0x9
        0xa
        0x18
        0xb
        0xc
        0x19
        0xd
        0xe
    .end array-data
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 5
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    sget-object v2, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    #@2
    invoke-direct {p0, v2}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    #@5
    .line 470
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@8
    move-result v1

    #@9
    .line 471
    .local v1, "k":I
    and-int/lit8 v2, p2, 0x1

    #@b
    if-nez v2, :cond_0

    #@d
    add-int/lit8 v2, v1, 0x2

    #@f
    if-eq v2, p2, :cond_1

    #@11
    .line 472
    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    #@13
    new-instance v3, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v4, "Invalid "

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    iget-object v4, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    const-string/jumbo v4, " extension"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 474
    :cond_1
    shr-int/lit8 v2, v1, 0x1

    #@36
    new-array v2, v2, [I

    #@38
    iput-object v2, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    #@3a
    .line 475
    const/4 v0, 0x0

    #@3b
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    #@3d
    array-length v2, v2

    #@3e
    if-ge v0, v2, :cond_2

    #@40
    .line 476
    iget-object v2, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    #@42
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt16()I

    #@45
    move-result v3

    #@46
    aput v3, v2, v0

    #@48
    .line 475
    add-int/lit8 v0, v0, 0x1

    #@4a
    goto :goto_0

    #@4b
    .line 468
    :cond_2
    return-void
.end method

.method private constructor <init>([I)V
    .locals 1
    .param p1, "curveIds"    # [I

    #@0
    .prologue
    .line 463
    sget-object v0, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    #@2
    invoke-direct {p0, v0}, Lsun/security/ssl/HelloExtension;-><init>(Lsun/security/ssl/ExtensionType;)V

    #@5
    .line 464
    iput-object p1, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    #@7
    .line 462
    return-void
.end method

.method static getCurveIndex(Ljava/security/spec/ECParameterSpec;)I
    .locals 4
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 556
    invoke-static {p0}, Lsun/security/ssl/JsseJce;->getNamedCurveOid(Ljava/security/spec/ECParameterSpec;)Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    .line 557
    .local v1, "oid":Ljava/lang/String;
    if-nez v1, :cond_0

    #@7
    .line 558
    return v2

    #@8
    .line 560
    :cond_0
    sget-object v3, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIndices:Ljava/util/Map;

    #@a
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Integer;

    #@10
    .line 561
    .local v0, "n":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@12
    :goto_0
    return v2

    #@13
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v2

    #@17
    goto :goto_0
.end method

.method static getCurveOid(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    #@0
    .prologue
    .line 565
    if-lez p0, :cond_0

    #@2
    sget-object v0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    #@4
    array-length v0, v0

    #@5
    if-ge p0, v0, :cond_0

    #@7
    .line 566
    sget-object v0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    #@9
    aget-object v0, v0, p0

    #@b
    return-object v0

    #@c
    .line 568
    :cond_0
    const/4 v0, 0x0

    #@d
    return-object v0
.end method

.method static isSupported(I)Z
    .locals 2
    .param p0, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 545
    if-lez p0, :cond_0

    #@3
    sget-object v0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->NAMED_CURVE_OID_TABLE:[Ljava/lang/String;

    #@5
    array-length v0, v0

    #@6
    if-lt p0, v0, :cond_1

    #@8
    .line 546
    :cond_0
    return v1

    #@9
    .line 548
    :cond_1
    sget-boolean v0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->fips:Z

    #@b
    if-nez v0, :cond_2

    #@d
    .line 550
    const/4 v0, 0x1

    #@e
    return v0

    #@f
    .line 552
    :cond_2
    sget-object v0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    #@11
    invoke-virtual {v0, p0}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->contains(I)Z

    #@14
    move-result v0

    #@15
    return v0
.end method


# virtual methods
.method contains(I)Z
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 481
    iget-object v3, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    #@3
    array-length v4, v3

    #@4
    move v1, v2

    #@5
    :goto_0
    if-ge v1, v4, :cond_1

    #@7
    aget v0, v3, v1

    #@9
    .line 482
    .local v0, "curveId":I
    if-ne p1, v0, :cond_0

    #@b
    .line 483
    const/4 v1, 0x1

    #@c
    return v1

    #@d
    .line 481
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@f
    goto :goto_0

    #@10
    .line 486
    .end local v0    # "curveId":I
    :cond_1
    return v2
.end method

.method curveIds()[I
    .locals 1

    #@0
    .prologue
    .line 492
    iget-object v0, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    #@2
    return-object v0
.end method

.method length()I
    .locals 1

    #@0
    .prologue
    .line 496
    iget-object v0, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    #@2
    array-length v0, v0

    #@3
    shl-int/lit8 v0, v0, 0x1

    #@5
    add-int/lit8 v0, v0, 0x6

    #@7
    return v0
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 5
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    iget-object v2, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@2
    iget v2, v2, Lsun/security/ssl/ExtensionType;->id:I

    #@4
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@7
    .line 501
    iget-object v2, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    #@9
    array-length v2, v2

    #@a
    shl-int/lit8 v1, v2, 0x1

    #@c
    .line 502
    .local v1, "k":I
    add-int/lit8 v2, v1, 0x2

    #@e
    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@11
    .line 503
    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@14
    .line 504
    iget-object v3, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    #@16
    const/4 v2, 0x0

    #@17
    array-length v4, v3

    #@18
    :goto_0
    if-ge v2, v4, :cond_0

    #@1a
    aget v0, v3, v2

    #@1c
    .line 505
    .local v0, "curveId":I
    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt16(I)V

    #@1f
    .line 504
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 499
    .end local v0    # "curveId":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 511
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "Extension "

    #@9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v5

    #@d
    iget-object v7, p0, Lsun/security/ssl/HelloExtension;->type:Lsun/security/ssl/ExtensionType;

    #@f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    const-string/jumbo v7, ", curve names: {"

    #@16
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 512
    const/4 v1, 0x1

    #@1a
    .line 513
    .local v1, "first":Z
    iget-object v7, p0, Lsun/security/ssl/SupportedEllipticCurvesExtension;->curveIds:[I

    #@1c
    array-length v8, v7

    #@1d
    move v5, v6

    #@1e
    :goto_0
    if-ge v5, v8, :cond_5

    #@20
    aget v0, v7, v5

    #@22
    .line 514
    .local v0, "curveId":I
    if-eqz v1, :cond_0

    #@24
    .line 515
    const/4 v1, 0x0

    #@25
    .line 520
    :goto_1
    invoke-static {v0}, Lsun/security/ssl/SupportedEllipticCurvesExtension;->getCurveOid(I)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 521
    .local v2, "oid":Ljava/lang/String;
    if-eqz v2, :cond_2

    #@2b
    .line 522
    invoke-static {v2}, Lsun/security/ssl/JsseJce;->getECParameterSpec(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    #@2e
    move-result-object v4

    #@2f
    .line 526
    .local v4, "spec":Ljava/security/spec/ECParameterSpec;
    if-eqz v4, :cond_1

    #@31
    .line 527
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@34
    move-result-object v9

    #@35
    const-string/jumbo v10, " "

    #@38
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@3b
    move-result-object v9

    #@3c
    aget-object v9, v9, v6

    #@3e
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    .line 513
    .end local v4    # "spec":Ljava/security/spec/ECParameterSpec;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@43
    goto :goto_0

    #@44
    .line 517
    .end local v2    # "oid":Ljava/lang/String;
    :cond_0
    const-string/jumbo v9, ", "

    #@47
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    goto :goto_1

    #@4b
    .line 529
    .restart local v2    # "oid":Ljava/lang/String;
    .restart local v4    # "spec":Ljava/security/spec/ECParameterSpec;
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    goto :goto_2

    #@4f
    .line 531
    .end local v4    # "spec":Ljava/security/spec/ECParameterSpec;
    :cond_2
    const v9, 0xff01

    #@52
    if-ne v0, v9, :cond_3

    #@54
    .line 532
    const-string/jumbo v9, "arbitrary_explicit_prime_curves"

    #@57
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    goto :goto_2

    #@5b
    .line 533
    :cond_3
    const v9, 0xff02

    #@5e
    if-ne v0, v9, :cond_4

    #@60
    .line 534
    const-string/jumbo v9, "arbitrary_explicit_char2_curves"

    #@63
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    goto :goto_2

    #@67
    .line 536
    :cond_4
    const-string/jumbo v9, "unknown curve "

    #@6a
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v9

    #@6e
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    goto :goto_2

    #@72
    .line 539
    .end local v0    # "curveId":I
    .end local v2    # "oid":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, "}"

    #@75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    .line 540
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v5

    #@7c
    return-object v5
.end method
