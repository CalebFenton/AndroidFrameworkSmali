.class public Lorg/apache/xpath/objects/XNumber;
.super Lorg/apache/xpath/objects/XObject;
.source "XNumber.java"


# static fields
.field static final serialVersionUID:J = -0x25c0ce08378ff1a1L


# instance fields
.field m_val:D


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "d"    # D

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    #@3
    .line 49
    iput-wide p1, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@5
    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 2
    .param p1, "num"    # Ljava/lang/Number;

    #@0
    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    #@3
    .line 62
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    #@6
    move-result-wide v0

    #@7
    iput-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@9
    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XNumber;->setObject(Ljava/lang/Object;)V

    #@c
    .line 57
    return-void
.end method

.method private static zeros(I)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # I

    #@0
    .prologue
    .line 358
    const/4 v2, 0x1

    #@1
    if-ge p0, v2, :cond_0

    #@3
    .line 359
    const-string/jumbo v2, ""

    #@6
    return-object v2

    #@7
    .line 361
    :cond_0
    new-array v0, p0, [C

    #@9
    .line 363
    .local v0, "buf":[C
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_1

    #@c
    .line 365
    const/16 v2, 0x30

    #@e
    aput-char v2, v0, v1

    #@10
    .line 363
    add-int/lit8 v1, v1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 368
    :cond_1
    new-instance v2, Ljava/lang/String;

    #@15
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    #@18
    return-object v2
.end method


# virtual methods
.method public bool()Z
    .locals 4

    #@0
    .prologue
    .line 118
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@a
    const-wide/16 v2, 0x0

    #@c
    cmpl-double v0, v0, v2

    #@e
    if-nez v0, :cond_1

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    :goto_0
    return v0

    #@12
    :cond_1
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method

.method public callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .locals 0
    .param p1, "owner"    # Lorg/apache/xpath/ExpressionOwner;
    .param p2, "visitor"    # Lorg/apache/xpath/XPathVisitor;

    #@0
    .prologue
    .line 433
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitNumberLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XNumber;)Z

    #@3
    .line 431
    return-void
.end method

.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 8
    .param p1, "obj2"    # Lorg/apache/xpath/objects/XObject;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 399
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    #@5
    move-result v0

    #@6
    .line 402
    .local v0, "t":I
    const/4 v4, 0x4

    #@7
    if-ne v0, v4, :cond_0

    #@9
    .line 403
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    #@c
    move-result v2

    #@d
    return v2

    #@e
    .line 404
    :cond_0
    if-ne v0, v2, :cond_2

    #@10
    .line 405
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    #@13
    move-result v4

    #@14
    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNumber;->bool()Z

    #@17
    move-result v5

    #@18
    if-ne v4, v5, :cond_1

    #@1a
    :goto_0
    return v2

    #@1b
    :cond_1
    move v2, v3

    #@1c
    goto :goto_0

    #@1d
    .line 407
    :cond_2
    iget-wide v4, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@1f
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-wide v6

    #@23
    cmpl-double v4, v4, v6

    #@25
    if-nez v4, :cond_3

    #@27
    :goto_1
    return v2

    #@28
    :cond_3
    move v2, v3

    #@29
    goto :goto_1

    #@2a
    .line 410
    :catch_0
    move-exception v1

    #@2b
    .line 411
    .local v1, "te":Ljavax/xml/transform/TransformerException;
    new-instance v2, Lorg/apache/xml/utils/WrappedRuntimeException;

    #@2d
    invoke-direct {v2, v1}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    #@30
    throw v2
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 73
    const/4 v0, 0x2

    #@1
    return v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 84
    const-string/jumbo v0, "#NUMBER"

    #@3
    return-object v0
.end method

.method public isStableNumber()Z
    .locals 1

    #@0
    .prologue
    .line 425
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public num()D
    .locals 2

    #@0
    .prologue
    .line 94
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@2
    return-wide v0
.end method

.method public num(Lorg/apache/xpath/XPathContext;)D
    .locals 2
    .param p1, "xctxt"    # Lorg/apache/xpath/XPathContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@2
    return-wide v0
.end method

.method public object()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 379
    iget-object v0, p0, Lorg/apache/xpath/objects/XNumber;->m_obj:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 380
    new-instance v0, Ljava/lang/Double;

    #@6
    iget-wide v2, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@8
    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    #@b
    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XNumber;->setObject(Ljava/lang/Object;)V

    #@e
    .line 381
    :cond_0
    iget-object v0, p0, Lorg/apache/xpath/objects/XNumber;->m_obj:Ljava/lang/Object;

    #@10
    return-object v0
.end method

.method public str()Ljava/lang/String;
    .locals 14

    #@0
    .prologue
    const/16 v13, 0x30

    #@2
    const/4 v12, 0x1

    #@3
    const/4 v11, 0x2

    #@4
    const/4 v10, 0x0

    #@5
    .line 280
    iget-wide v8, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@7
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    #@a
    move-result v8

    #@b
    if-eqz v8, :cond_0

    #@d
    .line 282
    const-string/jumbo v8, "NaN"

    #@10
    return-object v8

    #@11
    .line 284
    :cond_0
    iget-wide v8, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@13
    invoke-static {v8, v9}, Ljava/lang/Double;->isInfinite(D)Z

    #@16
    move-result v8

    #@17
    if-eqz v8, :cond_2

    #@19
    .line 286
    iget-wide v8, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@1b
    const-wide/16 v10, 0x0

    #@1d
    cmpl-double v8, v8, v10

    #@1f
    if-lez v8, :cond_1

    #@21
    .line 287
    const-string/jumbo v8, "Infinity"

    #@24
    return-object v8

    #@25
    .line 289
    :cond_1
    const-string/jumbo v8, "-Infinity"

    #@28
    return-object v8

    #@29
    .line 292
    :cond_2
    iget-wide v4, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    #@2b
    .line 293
    .local v4, "num":D
    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@2e
    move-result-object v6

    #@2f
    .line 294
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@32
    move-result v2

    #@33
    .line 296
    .local v2, "len":I
    add-int/lit8 v8, v2, -0x2

    #@35
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v8

    #@39
    const/16 v9, 0x2e

    #@3b
    if-ne v8, v9, :cond_4

    #@3d
    add-int/lit8 v8, v2, -0x1

    #@3f
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v8

    #@43
    if-ne v8, v13, :cond_4

    #@45
    .line 298
    add-int/lit8 v8, v2, -0x2

    #@47
    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4a
    move-result-object v6

    #@4b
    .line 300
    const-string/jumbo v8, "-0"

    #@4e
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@51
    move-result v8

    #@52
    if-eqz v8, :cond_3

    #@54
    .line 301
    const-string/jumbo v8, "0"

    #@57
    return-object v8

    #@58
    .line 303
    :cond_3
    return-object v6

    #@59
    .line 306
    :cond_4
    const/16 v8, 0x45

    #@5b
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    #@5e
    move-result v0

    #@5f
    .line 308
    .local v0, "e":I
    if-gez v0, :cond_6

    #@61
    .line 310
    add-int/lit8 v8, v2, -0x1

    #@63
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@66
    move-result v8

    #@67
    if-ne v8, v13, :cond_5

    #@69
    .line 311
    add-int/lit8 v8, v2, -0x1

    #@6b
    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    return-object v8

    #@70
    .line 313
    :cond_5
    return-object v6

    #@71
    .line 316
    :cond_6
    add-int/lit8 v8, v0, 0x1

    #@73
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@76
    move-result-object v8

    #@77
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7a
    move-result v1

    #@7b
    .line 319
    .local v1, "exp":I
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    #@7e
    move-result v8

    #@7f
    const/16 v9, 0x2d

    #@81
    if-ne v8, v9, :cond_7

    #@83
    .line 321
    const-string/jumbo v7, "-"

    #@86
    .line 322
    .local v7, "sign":Ljava/lang/String;
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@89
    move-result-object v6

    #@8a
    .line 324
    add-int/lit8 v0, v0, -0x1

    #@8c
    .line 329
    :goto_0
    add-int/lit8 v3, v0, -0x2

    #@8e
    .line 331
    .local v3, "nDigits":I
    if-lt v1, v3, :cond_8

    #@90
    .line 332
    new-instance v8, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v8

    #@99
    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9c
    move-result-object v9

    #@9d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v8

    #@a1
    invoke-virtual {v6, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a4
    move-result-object v9

    #@a5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v8

    #@a9
    .line 333
    sub-int v9, v1, v3

    #@ab
    invoke-static {v9}, Lorg/apache/xpath/objects/XNumber;->zeros(I)Ljava/lang/String;

    #@ae
    move-result-object v9

    #@af
    .line 332
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v8

    #@b3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v8

    #@b7
    return-object v8

    #@b8
    .line 327
    .end local v3    # "nDigits":I
    .end local v7    # "sign":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, ""

    #@bb
    .restart local v7    # "sign":Ljava/lang/String;
    goto :goto_0

    #@bc
    .line 336
    .restart local v3    # "nDigits":I
    :cond_8
    :goto_1
    add-int/lit8 v8, v0, -0x1

    #@be
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    #@c1
    move-result v8

    #@c2
    if-ne v8, v13, :cond_9

    #@c4
    .line 337
    add-int/lit8 v0, v0, -0x1

    #@c6
    goto :goto_1

    #@c7
    .line 339
    :cond_9
    if-lez v1, :cond_a

    #@c9
    .line 340
    new-instance v8, Ljava/lang/StringBuilder;

    #@cb
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ce
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v8

    #@d2
    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d5
    move-result-object v9

    #@d6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v8

    #@da
    add-int/lit8 v9, v1, 0x2

    #@dc
    invoke-virtual {v6, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@df
    move-result-object v9

    #@e0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v8

    #@e4
    const-string/jumbo v9, "."

    #@e7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v8

    #@eb
    .line 341
    add-int/lit8 v9, v1, 0x2

    #@ed
    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f0
    move-result-object v9

    #@f1
    .line 340
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v8

    #@f5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v8

    #@f9
    return-object v8

    #@fa
    .line 343
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v8

    #@103
    const-string/jumbo v9, "0."

    #@106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v8

    #@10a
    rsub-int/lit8 v9, v1, -0x1

    #@10c
    invoke-static {v9}, Lorg/apache/xpath/objects/XNumber;->zeros(I)Ljava/lang/String;

    #@10f
    move-result-object v9

    #@110
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v8

    #@114
    invoke-virtual {v6, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@117
    move-result-object v9

    #@118
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v8

    #@11c
    .line 344
    invoke-virtual {v6, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@11f
    move-result-object v9

    #@120
    .line 343
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v8

    #@124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v8

    #@128
    return-object v8
.end method
