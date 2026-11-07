.class public Lorg/apache/xpath/objects/XNumber;
.super Lorg/apache/xpath/objects/XObject;
.source "XNumber.java"


# static fields
.field static final whitelist serialVersionUID:J = -0x25c0ce08378ff1a1L


# instance fields
.field greylist m_val:D


# direct methods
.method public constructor greylist <init>(D)V
    .registers 3

    .line 47
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 49
    iput-wide p1, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/Number;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Lorg/apache/xpath/objects/XObject;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    return-void
.end method

.method private static greylist zeros(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    if-ge p0, v0, :cond_6

    .line 359
    const-string p0, ""

    return-object p0

    .line 361
    :cond_6
    new-array v0, p0, [C

    const/4 v1, 0x0

    :goto_9
    if-ge v1, p0, :cond_12

    const/16 v2, 0x30

    .line 365
    aput-char v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 368
    :cond_12
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public greylist bool()Z
    .registers 5

    .line 118
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_13

    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public greylist callVisitors(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/XPathVisitor;)V
    .registers 3

    .line 433
    invoke-virtual {p2, p1, p0}, Lorg/apache/xpath/XPathVisitor;->visitNumberLiteral(Lorg/apache/xpath/ExpressionOwner;Lorg/apache/xpath/objects/XNumber;)Z

    return-void
.end method

.method public greylist equals(Lorg/apache/xpath/objects/XObject;)Z
    .registers 7

    .line 399
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 403
    :try_start_7
    invoke-virtual {p1, p0}, Lorg/apache/xpath/objects/XObject;->equals(Lorg/apache/xpath/objects/XObject;)Z

    move-result p0

    return p0

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    .line 405
    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z

    move-result p1

    invoke-virtual {p0}, Lorg/apache/xpath/objects/XNumber;->bool()Z

    move-result p0

    if-ne p1, p0, :cond_1b

    return v2

    :cond_1b
    return v1

    .line 407
    :cond_1c
    iget-wide v3, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide p0
    :try_end_22
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_22} :catch_28

    cmpl-double p0, v3, p0

    if-nez p0, :cond_27

    return v2

    :cond_27
    return v1

    :catch_28
    move-exception p0

    .line 411
    new-instance p1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public greylist getType()I
    .registers 1

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public greylist getTypeString()Ljava/lang/String;
    .registers 1

    .line 84
    const-string p0, "#NUMBER"

    return-object p0
.end method

.method public greylist isStableNumber()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public greylist num()D
    .registers 3

    .line 94
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    return-wide v0
.end method

.method public greylist num(Lorg/apache/xpath/XPathContext;)D
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 108
    iget-wide p0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    return-wide p0
.end method

.method public greylist object()Ljava/lang/Object;
    .registers 4

    .line 379
    iget-object v0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    if-nez v0, :cond_e

    .line 380
    new-instance v0, Ljava/lang/Double;

    iget-wide v1, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/apache/xpath/objects/XObject;->setObject(Ljava/lang/Object;)V

    .line 381
    :cond_e
    iget-object p0, p0, Lorg/apache/xpath/objects/XObject;->m_obj:Ljava/lang/Object;

    return-object p0
.end method

.method public greylist str()Ljava/lang/String;
    .registers 9

    .line 280
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 282
    const-string p0, "NaN"

    return-object p0

    .line 284
    :cond_b
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 286
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_1e

    .line 287
    const-string p0, "Infinity"

    return-object p0

    .line 289
    :cond_1e
    const-string p0, "-Infinity"

    return-object p0

    .line 292
    :cond_21
    iget-wide v0, p0, Lorg/apache/xpath/objects/XNumber;->m_val:D

    .line 293
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    .line 296
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    const/16 v4, 0x30

    const/4 v5, 0x0

    if-ne v2, v3, :cond_4f

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_4f

    .line 298
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 300
    const-string v0, "-0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 301
    const-string p0, "0"

    :cond_4e
    return-object p0

    :cond_4f
    const/16 v1, 0x45

    .line 306
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_64

    sub-int/2addr v0, v2

    .line 310
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_63

    .line 311
    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_63
    return-object p0

    :cond_64
    add-int/lit8 v0, v1, 0x1

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 319
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_7f

    .line 322
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, -0x1

    .line 324
    const-string v3, "-"

    goto :goto_81

    .line 327
    :cond_7f
    const-string v3, ""

    :goto_81
    add-int/lit8 v6, v1, -0x2

    const/4 v7, 0x2

    if-lt v0, v6, :cond_a9

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, v6

    .line 333
    invoke-static {v0}, Lorg/apache/xpath/objects/XNumber;->zeros(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a9
    :goto_a9
    add-int/lit8 v6, v1, -0x1

    .line 336
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_b4

    add-int/lit8 v1, v1, -0x1

    goto :goto_a9

    :cond_b4
    if-lez v0, :cond_de

    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v7

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 343
    :cond_de
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lorg/apache/xpath/objects/XNumber;->zeros(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
