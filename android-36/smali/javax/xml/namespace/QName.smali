.class public Ljavax/xml/namespace/QName;
.super Ljava/lang/Object;
.source "QName.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final greylist-max-o compatibilitySerialVersionUID:J = 0x3d521a30bc76fdffL

.field private static final greylist-max-o defaultSerialVersionUID:J = -0x7e9257d203c42294L

.field private static final whitelist serialVersionUID:J


# instance fields
.field private final greylist-max-o localPart:Ljava/lang/String;

.field private final greylist-max-o namespaceURI:Ljava/lang/String;

.field private greylist-max-o prefix:Ljava/lang/String;

.field private transient greylist-max-o qNameAsString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 89
    const-string v0, "org.apache.xml.namespace.QName.useCompatibleSerialVersionUID"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "compatPropValue":Ljava/lang/String;
    const-string v1, "1.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-wide v1, -0x7e9257d203c42294L

    goto :goto_19

    :cond_14
    const-wide v1, 0x3d521a30bc76fdffL    # 2.572492427824108E-13

    :goto_19
    sput-wide v1, Ljavax/xml/namespace/QName;->serialVersionUID:J

    .line 92
    .end local v0    # "compatPropValue":Ljava/lang/String;
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "localPart"    # Ljava/lang/String;

    .line 251
    const-string v0, ""

    invoke-direct {p0, v0, p1, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;

    .line 153
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localPart"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    if-nez p1, :cond_a

    .line 197
    const-string v0, ""

    iput-object v0, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    goto :goto_c

    .line 199
    :cond_a
    iput-object p1, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    .line 203
    :goto_c
    if-eqz p2, :cond_1d

    .line 206
    iput-object p2, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    .line 209
    if-eqz p3, :cond_15

    .line 212
    iput-object p3, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    .line 213
    return-void

    .line 210
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "prefix cannot be \"null\" when creating a QName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "local part cannot be \"null\" when creating a QName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 479
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 480
    iget-object v0, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 481
    const-string v0, ""

    iput-object v0, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    .line 483
    :cond_b
    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .registers 6
    .param p0, "qNameAsString"    # Ljava/lang/String;

    .line 426
    if-eqz p0, :cond_89

    .line 431
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_10

    .line 432
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, v1, p0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 439
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_1f

    .line 440
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, v1, p0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 447
    :cond_1f
    const-string v0, "{}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 457
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 458
    .local v0, "endOfNamespaceURI":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_41

    .line 464
    new-instance v2, Ljavax/xml/namespace/QName;

    .line 465
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .line 466
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-object v2

    .line 459
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create QName from \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", missing closing \"}\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 448
    .end local v0    # "endOfNamespaceURI":I
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 452
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", should be provided."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create QName from \"null\" or \"\" String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "objectToTest"    # Ljava/lang/Object;

    .line 314
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 315
    return v0

    .line 318
    :cond_4
    instance-of v1, p1, Ljavax/xml/namespace/QName;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    .line 319
    move-object v1, p1

    check-cast v1, Ljavax/xml/namespace/QName;

    .line 320
    .local v1, "qName":Ljavax/xml/namespace/QName;
    iget-object v3, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    iget-object v4, v1, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    iget-object v4, v1, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0

    .line 322
    .end local v1    # "qName":Ljavax/xml/namespace/QName;
    :cond_23
    return v2
.end method

.method public whitelist test-api getLocalPart()Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getNamespaceURI()Ljava/lang/String;
    .registers 2

    .line 263
    iget-object v0, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getPrefix()Ljava/lang/String;
    .registers 2

    .line 287
    iget-object v0, p0, Ljavax/xml/namespace/QName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 339
    iget-object v0, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 365
    iget-object v0, p0, Ljavax/xml/namespace/QName;->qNameAsString:Ljava/lang/String;

    .line 366
    .local v0, "_qNameAsString":Ljava/lang/String;
    if-nez v0, :cond_37

    .line 367
    iget-object v1, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 368
    .local v1, "nsLength":I
    if-nez v1, :cond_f

    .line 369
    iget-object v0, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    goto :goto_35

    .line 372
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    iget-object v3, p0, Ljavax/xml/namespace/QName;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    iget-object v3, p0, Ljavax/xml/namespace/QName;->localPart:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    .end local v2    # "buffer":Ljava/lang/StringBuilder;
    :goto_35
    iput-object v0, p0, Ljavax/xml/namespace/QName;->qNameAsString:Ljava/lang/String;

    .line 381
    .end local v1    # "nsLength":I
    :cond_37
    return-object v0
.end method
