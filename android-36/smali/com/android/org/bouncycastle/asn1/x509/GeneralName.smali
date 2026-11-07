.class public Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "GeneralName.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private blacklist obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field private blacklist tag:I


# direct methods
.method public constructor blacklist <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3

    .line 113
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 115
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4

    .line 144
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 145
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_56

    const/4 v0, 0x2

    if-eq p1, v0, :cond_56

    const/4 v0, 0x6

    if-ne p1, v0, :cond_f

    goto :goto_56

    :cond_f
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1b

    .line 153
    new-instance p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_1b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_26

    .line 157
    new-instance p1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_26
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3f

    .line 161
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->toGeneralNameEncoding(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_37

    .line 164
    new-instance p2, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {p2, p1}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void

    .line 168
    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IP Address is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t process String for tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_56
    :goto_56
    new-instance p1, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {p1, p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 2

    .line 78
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    const/4 p1, 0x4

    .line 80
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    return-void
.end method

.method private blacklist copyInts([I[BI)V
    .registers 8

    const/4 p0, 0x0

    .line 376
    :goto_1
    array-length v0, p1

    if-eq p0, v0, :cond_18

    mul-int/lit8 v0, p0, 0x2

    add-int v1, v0, p3

    .line 378
    aget v2, p1, p0

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p3

    int-to-byte v1, v2

    .line 379
    aput-byte v1, p2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_18
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .registers 4

    if-eqz p0, :cond_96

    .line 180
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    if-eqz v0, :cond_8

    goto/16 :goto_96

    .line 185
    :cond_8
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_60

    .line 187
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 188
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_9a

    .line 210
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :pswitch_2d
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 205
    :pswitch_37
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 203
    :pswitch_41
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    .line 200
    :pswitch_4c
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 195
    :pswitch_56
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2

    .line 214
    :cond_60
    instance-of v0, p0, [B

    if-eqz v0, :cond_77

    .line 218
    :try_start_64
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object p0
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6e} :catch_6f

    return-object p0

    .line 222
    :catch_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse encoded general name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_96
    :goto_96
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    return-object p0

    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_56
        :pswitch_4c
        :pswitch_4c
        :pswitch_56
        :pswitch_41
        :pswitch_56
        :pswitch_4c
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method

.method private blacklist parseIPv4(Ljava/lang/String;[BI)V
    .registers 6

    .line 353
    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, "./"

    invoke-direct {p0, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 356
    :goto_8
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1e

    add-int/lit8 v0, p1, 0x1

    add-int/2addr p1, p3

    .line 358
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    move p1, v0

    goto :goto_8

    :cond_1e
    return-void
.end method

.method private blacklist parseIPv4Mask(Ljava/lang/String;[BI)V
    .registers 8

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    :goto_5
    if-eq p1, p0, :cond_1a

    .line 347
    div-int/lit8 v0, p1, 0x8

    add-int/2addr v0, p3

    aget-byte v1, p2, v0

    rem-int/lit8 v2, p1, 0x8

    rsub-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    shl-int v2, v3, v2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_1a
    return-void
.end method

.method private blacklist parseIPv6(Ljava/lang/String;)[I
    .registers 12

    .line 385
    new-instance p0, Ljava/util/StringTokenizer;

    const-string v0, ":"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v2, 0x8

    .line 387
    new-array v3, v2, [I

    const/4 v4, 0x0

    .line 389
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_1e

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v6, :cond_1e

    .line 391
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_1e
    const/4 p1, -0x1

    move v1, v4

    .line 396
    :goto_20
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 398
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 400
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    add-int/lit8 p1, v1, 0x1

    .line 403
    aput v4, v3, v1

    move v9, v1

    move v1, p1

    move p1, v9

    goto :goto_20

    :cond_38
    const/16 v6, 0x2e

    .line 407
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_55

    add-int/lit8 v6, v1, 0x1

    const/16 v7, 0x10

    .line 409
    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v1

    .line 410
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 412
    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    :cond_53
    move v1, v6

    goto :goto_20

    .line 417
    :cond_55
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "."

    invoke-direct {v6, v5, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v1, 0x1

    .line 419
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/2addr v7, v2

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v7, v8

    aput v7, v3, v1

    add-int/lit8 v1, v1, 0x2

    .line 420
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/2addr v7, v2

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    or-int/2addr v6, v7

    aput v6, v3, v5

    goto :goto_20

    :cond_89
    if-eq v1, v2, :cond_98

    sub-int/2addr v1, p1

    rsub-int/lit8 p0, v1, 0x8

    .line 427
    invoke-static {v3, p1, v3, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_91
    if-eq p1, p0, :cond_98

    .line 430
    aput v4, v3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_91

    :cond_98
    return-object v3
.end method

.method private blacklist parseMask(Ljava/lang/String;)[I
    .registers 7

    const/16 p0, 0x8

    .line 364
    new-array p0, p0, [I

    .line 365
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    :goto_9
    if-eq v0, p1, :cond_1c

    .line 369
    div-int/lit8 v1, v0, 0x10

    aget v2, p0, v1

    rem-int/lit8 v3, v0, 0x10

    rsub-int/lit8 v3, v3, 0xf

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1c
    return-object p0
.end method

.method private blacklist toGeneralNameEncoding(Ljava/lang/String;)[B
    .registers 7

    .line 275
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-nez v0, :cond_4d

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4d

    .line 306
    :cond_10
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return-object p0

    .line 308
    :cond_1f
    :goto_1f
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x4

    if-gez v0, :cond_2c

    .line 312
    new-array v0, v1, [B

    .line 314
    invoke-direct {p0, p1, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    return-object v0

    :cond_2c
    const/16 v3, 0x8

    .line 320
    new-array v3, v3, [B

    .line 322
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    add-int/lit8 v0, v0, 0x1

    .line 324
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 325
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_49

    .line 327
    invoke-direct {p0, p1, v3, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    return-object v3

    .line 331
    :cond_49
    invoke-direct {p0, p1, v3, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4Mask(Ljava/lang/String;[BI)V

    return-object v3

    .line 277
    :cond_4d
    :goto_4d
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x10

    if-gez v0, :cond_5f

    .line 281
    new-array v0, v1, [B

    .line 282
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object p1

    .line 283
    invoke-direct {p0, p1, v0, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    return-object v0

    :cond_5f
    const/16 v3, 0x20

    .line 289
    new-array v3, v3, [B

    .line 290
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object v4

    .line 291
    invoke-direct {p0, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    add-int/lit8 v0, v0, 0x1

    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3a

    .line 293
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_81

    .line 295
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    move-result-object p1

    goto :goto_85

    .line 299
    :cond_81
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseMask(Ljava/lang/String;)[I

    move-result-object p1

    .line 301
    :goto_85
    invoke-direct {p0, p1, v3, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    return-object v3
.end method


# virtual methods
.method public blacklist getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1

    .line 248
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-object p0
.end method

.method public blacklist getTagNo()I
    .registers 1

    .line 243
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    return p0
.end method

.method public blacklist toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 440
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 442
    :goto_8
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v2, v1, v0, p0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 253
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 256
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_35

    const/4 v2, 0x2

    if-eq v1, v2, :cond_35

    const/4 v2, 0x4

    if-eq v1, v2, :cond_27

    const/4 v2, 0x6

    if-eq v1, v2, :cond_35

    .line 268
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 265
    :cond_27
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 262
    :cond_35
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1IA5String;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    :goto_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
