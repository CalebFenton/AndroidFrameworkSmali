.class public Ljavax/xml/namespace/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final compatibilitySerialVersionUID:J = 0x3d521a30bc76fdffL

.field private static final defaultSerialVersionUID:J = -0x7e9257d203c42294L

.field private static final serialVersionUID:J


# instance fields
.field private final localPart:Ljava/lang/String;

.field private final namespaceURI:Ljava/lang/String;

.field private prefix:Ljava/lang/String;

.field private transient qNameAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 89
    const-string/jumbo v1, "org.apache.xml.namespace.QName.useCompatibleSerialVersionUID"

    #@3
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 91
    .local v0, "compatPropValue":Ljava/lang/String;
    const-string/jumbo v1, "1.0"

    #@a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_0

    #@10
    const-wide v2, -0x7e9257d203c42294L

    #@15
    :goto_0
    sput-wide v2, Ljavax/xml/namespace/QName;->serialVersionUID:J

    #@17
    .line 65
    return-void

    #@18
    .line 91
    :cond_0
    const-wide v2, 0x3d521a30bc76fdffL    # 2.572492427824108E-13

    #@1d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "localPart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 252
    const-string/jumbo v0, ""

    #@3
    .line 254
    const-string/jumbo v1, ""

    #@6
    .line 251
    invoke-direct {p0, v0, p1, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    #@0
    .prologue
    .line 153
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, p1, p2, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 196
    if-nez p1, :cond_0

    #@5
    .line 197
    const-string/jumbo v0, ""

    #@8
    iput-object v0, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    #@a
    .line 203
    :goto_0
    if-nez p2, :cond_1

    #@c
    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "local part cannot be \"null\" when creating a QName"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 199
    :cond_0
    iput-object p1, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    #@17
    goto :goto_0

    #@18
    .line 206
    :cond_1
    iput-object p2, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    #@1a
    .line 209
    if-nez p3, :cond_2

    #@1c
    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v1, "prefix cannot be \"null\" when creating a QName"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 212
    :cond_2
    iput-object p3, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    #@27
    .line 193
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 479
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 480
    iget-object v0, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 481
    const-string/jumbo v0, ""

    #@a
    iput-object v0, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    #@c
    .line 478
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 5
    .param p0, "qNameAsString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 426
    if-nez p0, :cond_0

    #@3
    .line 427
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v2, "cannot create QName from \"null\" or \"\" String"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 431
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_1

    #@12
    .line 432
    new-instance v1, Ljavax/xml/namespace/QName;

    #@14
    .line 433
    const-string/jumbo v2, ""

    #@17
    .line 435
    const-string/jumbo v3, ""

    #@1a
    .line 432
    invoke-direct {v1, v2, p0, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1d
    return-object v1

    #@1e
    .line 439
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    #@21
    move-result v1

    #@22
    const/16 v2, 0x7b

    #@24
    if-eq v1, v2, :cond_2

    #@26
    .line 440
    new-instance v1, Ljavax/xml/namespace/QName;

    #@28
    .line 441
    const-string/jumbo v2, ""

    #@2b
    .line 443
    const-string/jumbo v3, ""

    #@2e
    .line 440
    invoke-direct {v1, v2, p0, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@31
    return-object v1

    #@32
    .line 447
    :cond_2
    const-string/jumbo v1, "{}"

    #@35
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@38
    move-result v1

    #@39
    if-eqz v1, :cond_3

    #@3b
    .line 448
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@3d
    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v3, "Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \""

    #@45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    .line 452
    const-string/jumbo v3, ""

    #@4c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@4f
    move-result v3

    #@50
    add-int/lit8 v3, v3, 0x2

    #@52
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@55
    move-result-object v3

    #@56
    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    .line 452
    const-string/jumbo v3, "\", "

    #@5d
    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    .line 453
    const-string/jumbo v3, "should be provided."

    #@64
    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    .line 448
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6f
    throw v1

    #@70
    .line 457
    :cond_3
    const/16 v1, 0x7d

    #@72
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@75
    move-result v0

    #@76
    .line 458
    .local v0, "endOfNamespaceURI":I
    const/4 v1, -0x1

    #@77
    if-ne v0, v1, :cond_4

    #@79
    .line 459
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7b
    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v3, "cannot create QName from \""

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    .line 462
    const-string/jumbo v3, "\", missing closing \"}\""

    #@8e
    .line 460
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    .line 459
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@99
    throw v1

    #@9a
    .line 464
    :cond_4
    new-instance v1, Ljavax/xml/namespace/QName;

    #@9c
    .line 465
    const/4 v2, 0x1

    #@9d
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@a0
    move-result-object v2

    #@a1
    .line 466
    add-int/lit8 v3, v0, 0x1

    #@a3
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@a6
    move-result-object v3

    #@a7
    .line 467
    const-string/jumbo v4, ""

    #@aa
    .line 464
    invoke-direct {v1, v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@ad
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "objectToTest"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 314
    if-ne p1, p0, :cond_0

    #@3
    .line 315
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 318
    :cond_0
    instance-of v2, p1, Ljavax/xml/namespace/QName;

    #@7
    if-eqz v2, :cond_2

    #@9
    move-object v0, p1

    #@a
    .line 319
    check-cast v0, Ljavax/xml/namespace/QName;

    #@c
    .line 320
    .local v0, "qName":Ljavax/xml/namespace/QName;
    iget-object v2, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    #@e
    iget-object v3, v0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_1

    #@16
    iget-object v1, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    #@18
    iget-object v2, v0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    :cond_1
    return v1

    #@1f
    .line 322
    .end local v0    # "qName":Ljavax/xml/namespace/QName;
    :cond_2
    return v1
.end method

.method public getLocalPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    xor-int/2addr v0, v1

    #@d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 365
    iget-object v0, p0, Ljavax/xml/namespace/QName;->qNameAsString:Ljava/lang/String;

    #@2
    .line 366
    .local v0, "_qNameAsString":Ljava/lang/String;
    if-nez v0, :cond_0

    #@4
    .line 367
    iget-object v3, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    #@6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@9
    move-result v2

    #@a
    .line 368
    .local v2, "nsLength":I
    if-nez v2, :cond_1

    #@c
    .line 369
    iget-object v0, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    #@e
    .line 379
    :goto_0
    iput-object v0, p0, Ljavax/xml/namespace/QName;->qNameAsString:Ljava/lang/String;

    #@10
    .line 381
    .end local v2    # "nsLength":I
    :cond_0
    return-object v0

    #@11
    .line 372
    .restart local v2    # "nsLength":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    iget-object v3, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    #@15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@18
    move-result v3

    #@19
    add-int/2addr v3, v2

    #@1a
    add-int/lit8 v3, v3, 0x2

    #@1c
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1f
    .line 373
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    #@21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 374
    iget-object v3, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    #@26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 375
    const/16 v3, 0x7d

    #@2b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    .line 376
    iget-object v3, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    #@30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    goto :goto_0
.end method
