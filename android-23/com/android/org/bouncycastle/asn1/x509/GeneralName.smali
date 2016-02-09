.class public Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "GeneralName.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final dNSName:I = 0x2

.field public static final directoryName:I = 0x4

.field public static final ediPartyName:I = 0x5

.field public static final iPAddress:I = 0x7

.field public static final otherName:I = 0x0

.field public static final registeredID:I = 0x8

.field public static final rfc822Name:I = 0x1

.field public static final uniformResourceIdentifier:I = 0x6

.field public static final x400Address:I = 0x3


# instance fields
.field private obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field private tag:I


# direct methods
.method public constructor <init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "name"    # Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 111
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    .line 112
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    #@7
    .line 109
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "tag"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 142
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    #@5
    .line 144
    const/4 v1, 0x1

    #@6
    if-eq p1, v1, :cond_0

    #@8
    const/4 v1, 0x2

    #@9
    if-ne p1, v1, :cond_1

    #@b
    .line 146
    :cond_0
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@d
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    #@10
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@12
    .line 140
    :goto_0
    return-void

    #@13
    .line 144
    :cond_1
    const/4 v1, 0x6

    #@14
    if-eq p1, v1, :cond_0

    #@16
    .line 148
    const/16 v1, 0x8

    #@18
    if-ne p1, v1, :cond_2

    #@1a
    .line 150
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1c
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    #@1f
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@21
    goto :goto_0

    #@22
    .line 152
    :cond_2
    const/4 v1, 0x4

    #@23
    if-ne p1, v1, :cond_3

    #@25
    .line 154
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@27
    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    #@2a
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2c
    goto :goto_0

    #@2d
    .line 156
    :cond_3
    const/4 v1, 0x7

    #@2e
    if-ne p1, v1, :cond_5

    #@30
    .line 158
    invoke-direct {p0, p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->toGeneralNameEncoding(Ljava/lang/String;)[B

    #@33
    move-result-object v0

    #@34
    .line 159
    .local v0, "enc":[B
    if-eqz v0, :cond_4

    #@36
    .line 161
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    #@38
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    #@3b
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@3d
    goto :goto_0

    #@3e
    .line 165
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@40
    const-string/jumbo v2, "IP Address is invalid"

    #@43
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@46
    throw v1

    #@47
    .line 170
    .end local v0    # "enc":[B
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@49
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v3, "can\'t process String for tag: "

    #@51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v2

    #@5d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v1
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .locals 1
    .param p1, "dirName"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@5
    .line 77
    const/4 v0, 0x4

    #@6
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    #@8
    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "dirName"    # Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 69
    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@9
    .line 70
    const/4 v0, 0x4

    #@a
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    #@c
    .line 67
    return-void
.end method

.method private copyInts([I[BI)V
    .locals 3
    .param p1, "parsedIp"    # [I
    .param p2, "addr"    # [B
    .param p3, "offSet"    # I

    #@0
    .prologue
    .line 367
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-eq v0, v1, :cond_0

    #@4
    .line 369
    mul-int/lit8 v1, v0, 0x2

    #@6
    add-int/2addr v1, p3

    #@7
    aget v2, p1, v0

    #@9
    shr-int/lit8 v2, v2, 0x8

    #@b
    int-to-byte v2, v2

    #@c
    aput-byte v2, p2, v1

    #@e
    .line 370
    mul-int/lit8 v1, v0, 0x2

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    add-int/2addr v1, p3

    #@13
    aget v2, p1, v0

    #@15
    int-to-byte v2, v2

    #@16
    aput-byte v2, p2, v1

    #@18
    .line 367
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 365
    :cond_0
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .locals 1
    .param p0, "tagObj"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 229
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@4
    move-result-object v0

    #@5
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 177
    if-eqz p0, :cond_0

    #@3
    instance-of v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@5
    if-eqz v3, :cond_1

    #@7
    .line 179
    :cond_0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@9
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@a
    .line 182
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@c
    if-eqz v3, :cond_2

    #@e
    move-object v2, p0

    #@f
    .line 184
    check-cast v2, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@11
    .line 185
    .local v2, "tagObj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@14
    move-result v1

    #@15
    .line 187
    .local v1, "tag":I
    packed-switch v1, :pswitch_data_0

    #@18
    .line 210
    .end local v1    # "tag":I
    .end local v2    # "tagObj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2
    instance-of v3, p0, [B

    #@1a
    if-eqz v3, :cond_3

    #@1c
    .line 214
    :try_start_0
    check-cast p0, [B

    #@1e
    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    #@21
    move-result-object v3

    #@22
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result-object v3

    #@26
    return-object v3

    #@27
    .line 190
    .restart local v1    # "tag":I
    .restart local v2    # "tagObj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .restart local p0    # "obj":Ljava/lang/Object;
    :pswitch_0
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@29
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@2c
    move-result-object v4

    #@2d
    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@30
    return-object v3

    #@31
    .line 192
    :pswitch_1
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@33
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@36
    move-result-object v4

    #@37
    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3a
    return-object v3

    #@3b
    .line 194
    :pswitch_2
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@3d
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@40
    move-result-object v4

    #@41
    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@44
    return-object v3

    #@45
    .line 196
    :pswitch_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@47
    new-instance v4, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v5, "unknown tag: "

    #@4f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v4

    #@53
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v3

    #@5f
    .line 198
    :pswitch_4
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@61
    const/4 v4, 0x1

    #@62
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@65
    move-result-object v4

    #@66
    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@69
    return-object v3

    #@6a
    .line 200
    :pswitch_5
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@6c
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@6f
    move-result-object v4

    #@70
    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@73
    return-object v3

    #@74
    .line 202
    :pswitch_6
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@76
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@79
    move-result-object v4

    #@7a
    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@7d
    return-object v3

    #@7e
    .line 204
    :pswitch_7
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@80
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    #@83
    move-result-object v4

    #@84
    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@87
    return-object v3

    #@88
    .line 206
    :pswitch_8
    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@8a
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@8d
    move-result-object v4

    #@8e
    invoke-direct {v3, v1, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(ILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@91
    return-object v3

    #@92
    .line 217
    .end local v1    # "tag":I
    .end local v2    # "tagObj":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .end local p0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@93
    .line 218
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@95
    const-string/jumbo v4, "unable to parse encoded general name"

    #@98
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v3

    #@9c
    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9e
    new-instance v4, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v5, "unknown object in getInstance: "

    #@a6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@ad
    move-result-object v5

    #@ae
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b1
    move-result-object v5

    #@b2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v4

    #@b6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v4

    #@ba
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@bd
    throw v3

    #@be
    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private parseIPv4(Ljava/lang/String;[BI)V
    .locals 5
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 344
    new-instance v2, Ljava/util/StringTokenizer;

    #@2
    const-string/jumbo v3, "./"

    #@5
    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 345
    .local v2, "sTok":Ljava/util/StringTokenizer;
    const/4 v0, 0x0

    #@9
    .line 347
    .local v0, "index":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 349
    add-int/lit8 v1, v0, 0x1

    #@11
    .end local v0    # "index":I
    .local v1, "index":I
    add-int v3, p3, v0

    #@13
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v4

    #@1b
    int-to-byte v4, v4

    #@1c
    aput-byte v4, p2, v3

    #@1e
    move v0, v1

    #@1f
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    #@20
    .line 342
    :cond_0
    return-void
.end method

.method private parseIPv4Mask(Ljava/lang/String;[BI)V
    .locals 6
    .param p1, "mask"    # Ljava/lang/String;
    .param p2, "addr"    # [B
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 334
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v1

    #@4
    .line 336
    .local v1, "maskVal":I
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-eq v0, v1, :cond_0

    #@7
    .line 338
    div-int/lit8 v2, v0, 0x8

    #@9
    add-int/2addr v2, p3

    #@a
    aget-byte v3, p2, v2

    #@c
    rem-int/lit8 v4, v0, 0x8

    #@e
    rsub-int/lit8 v4, v4, 0x7

    #@10
    const/4 v5, 0x1

    #@11
    shl-int v4, v5, v4

    #@13
    or-int/2addr v3, v4

    #@14
    int-to-byte v3, v3

    #@15
    aput-byte v3, p2, v2

    #@17
    .line 336
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 332
    :cond_0
    return-void
.end method

.method private parseIPv6(Ljava/lang/String;)[I
    .locals 12
    .param p1, "ip"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v11, 0x3a

    #@2
    const/4 v9, 0x1

    #@3
    const/4 v10, 0x0

    #@4
    .line 376
    new-instance v6, Ljava/util/StringTokenizer;

    #@6
    const-string/jumbo v8, ":"

    #@9
    invoke-direct {v6, p1, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    #@c
    .line 377
    .local v6, "sTok":Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    #@d
    .line 378
    .local v4, "index":I
    const/16 v8, 0x8

    #@f
    new-array v7, v8, [I

    #@11
    .line 380
    .local v7, "val":[I
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v8

    #@15
    if-ne v8, v11, :cond_0

    #@17
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v8

    #@1b
    if-ne v8, v11, :cond_0

    #@1d
    .line 382
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@20
    .line 385
    :cond_0
    const/4 v0, -0x1

    #@21
    .line 387
    .local v0, "doubleColon":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_3

    #@27
    .line 389
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    .line 391
    .local v1, "e":Ljava/lang/String;
    const-string/jumbo v8, ":"

    #@2e
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_1

    #@34
    .line 393
    move v0, v4

    #@35
    .line 394
    add-int/lit8 v5, v4, 0x1

    #@37
    .end local v4    # "index":I
    .local v5, "index":I
    aput v10, v7, v4

    #@39
    move v4, v5

    #@3a
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    #@3b
    .line 398
    :cond_1
    const/16 v8, 0x2e

    #@3d
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    #@40
    move-result v8

    #@41
    if-gez v8, :cond_2

    #@43
    .line 400
    add-int/lit8 v5, v4, 0x1

    #@45
    .end local v4    # "index":I
    .restart local v5    # "index":I
    const/16 v8, 0x10

    #@47
    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    #@4a
    move-result v8

    #@4b
    aput v8, v7, v4

    #@4d
    .line 401
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    #@50
    move-result v8

    #@51
    if-eqz v8, :cond_5

    #@53
    .line 403
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@56
    move v4, v5

    #@57
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto :goto_0

    #@58
    .line 408
    :cond_2
    new-instance v2, Ljava/util/StringTokenizer;

    #@5a
    const-string/jumbo v8, "."

    #@5d
    invoke-direct {v2, v1, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@60
    .line 410
    .local v2, "eTok":Ljava/util/StringTokenizer;
    add-int/lit8 v5, v4, 0x1

    #@62
    .end local v4    # "index":I
    .restart local v5    # "index":I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@65
    move-result-object v8

    #@66
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@69
    move-result v8

    #@6a
    shl-int/lit8 v8, v8, 0x8

    #@6c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@6f
    move-result-object v9

    #@70
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@73
    move-result v9

    #@74
    or-int/2addr v8, v9

    #@75
    aput v8, v7, v4

    #@77
    .line 411
    add-int/lit8 v4, v5, 0x1

    #@79
    .end local v5    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@7c
    move-result-object v8

    #@7d
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@80
    move-result v8

    #@81
    shl-int/lit8 v8, v8, 0x8

    #@83
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@86
    move-result-object v9

    #@87
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@8a
    move-result v9

    #@8b
    or-int/2addr v8, v9

    #@8c
    aput v8, v7, v5

    #@8e
    goto :goto_0

    #@8f
    .line 416
    .end local v1    # "e":Ljava/lang/String;
    .end local v2    # "eTok":Ljava/util/StringTokenizer;
    :cond_3
    array-length v8, v7

    #@90
    if-eq v4, v8, :cond_4

    #@92
    .line 418
    array-length v8, v7

    #@93
    sub-int v9, v4, v0

    #@95
    sub-int/2addr v8, v9

    #@96
    sub-int v9, v4, v0

    #@98
    invoke-static {v7, v0, v7, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@9b
    .line 419
    move v3, v0

    #@9c
    .local v3, "i":I
    :goto_1
    array-length v8, v7

    #@9d
    sub-int v9, v4, v0

    #@9f
    sub-int/2addr v8, v9

    #@a0
    if-eq v3, v8, :cond_4

    #@a2
    .line 421
    aput v10, v7, v3

    #@a4
    .line 419
    add-int/lit8 v3, v3, 0x1

    #@a6
    goto :goto_1

    #@a7
    .line 425
    .end local v3    # "i":I
    :cond_4
    return-object v7

    #@a8
    .end local v4    # "index":I
    .restart local v1    # "e":Ljava/lang/String;
    .restart local v5    # "index":I
    :cond_5
    move v4, v5

    #@a9
    .end local v5    # "index":I
    .restart local v4    # "index":I
    goto/16 :goto_0
.end method

.method private parseMask(Ljava/lang/String;)[I
    .locals 7
    .param p1, "mask"    # Ljava/lang/String;

    #@0
    .prologue
    .line 355
    const/16 v3, 0x8

    #@2
    new-array v2, v3, [I

    #@4
    .line 356
    .local v2, "res":[I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    .line 358
    .local v1, "maskVal":I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-eq v0, v1, :cond_0

    #@b
    .line 360
    div-int/lit8 v3, v0, 0x10

    #@d
    aget v4, v2, v3

    #@f
    rem-int/lit8 v5, v0, 0x10

    #@11
    rsub-int/lit8 v5, v5, 0xf

    #@13
    const/4 v6, 0x1

    #@14
    shl-int v5, v6, v5

    #@16
    or-int/2addr v4, v5

    #@17
    aput v4, v2, v3

    #@19
    .line 358
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 362
    :cond_0
    return-object v2
.end method

.method private toGeneralNameEncoding(Ljava/lang/String;)[B
    .locals 9
    .param p1, "ip"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0x2f

    #@2
    const/16 v7, 0x10

    #@4
    const/4 v6, 0x4

    #@5
    const/4 v5, 0x0

    #@6
    .line 266
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_0

    #@c
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_3

    #@12
    .line 268
    :cond_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    #@15
    move-result v3

    #@16
    .line 270
    .local v3, "slashIndex":I
    if-gez v3, :cond_1

    #@18
    .line 272
    new-array v0, v7, [B

    #@1a
    .line 273
    .local v0, "addr":[B
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    #@1d
    move-result-object v2

    #@1e
    .line 274
    .local v2, "parsedIp":[I
    invoke-direct {p0, v2, v0, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    #@21
    .line 276
    return-object v0

    #@22
    .line 280
    .end local v0    # "addr":[B
    .end local v2    # "parsedIp":[I
    :cond_1
    const/16 v4, 0x20

    #@24
    new-array v0, v4, [B

    #@26
    .line 281
    .restart local v0    # "addr":[B
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    #@2d
    move-result-object v2

    #@2e
    .line 282
    .restart local v2    # "parsedIp":[I
    invoke-direct {p0, v2, v0, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    #@31
    .line 283
    add-int/lit8 v4, v3, 0x1

    #@33
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    .line 284
    .local v1, "mask":Ljava/lang/String;
    const/16 v4, 0x3a

    #@39
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    #@3c
    move-result v4

    #@3d
    if-lez v4, :cond_2

    #@3f
    .line 286
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv6(Ljava/lang/String;)[I

    #@42
    move-result-object v2

    #@43
    .line 292
    :goto_0
    invoke-direct {p0, v2, v0, v7}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->copyInts([I[BI)V

    #@46
    .line 294
    return-object v0

    #@47
    .line 290
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseMask(Ljava/lang/String;)[I

    #@4a
    move-result-object v2

    #@4b
    goto :goto_0

    #@4c
    .line 297
    .end local v0    # "addr":[B
    .end local v1    # "mask":Ljava/lang/String;
    .end local v2    # "parsedIp":[I
    .end local v3    # "slashIndex":I
    :cond_3
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    #@4f
    move-result v4

    #@50
    if-nez v4, :cond_4

    #@52
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    #@55
    move-result v4

    #@56
    if-eqz v4, :cond_7

    #@58
    .line 299
    :cond_4
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    #@5b
    move-result v3

    #@5c
    .line 301
    .restart local v3    # "slashIndex":I
    if-gez v3, :cond_5

    #@5e
    .line 303
    new-array v0, v6, [B

    #@60
    .line 305
    .restart local v0    # "addr":[B
    invoke-direct {p0, p1, v0, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    #@63
    .line 307
    return-object v0

    #@64
    .line 311
    .end local v0    # "addr":[B
    :cond_5
    const/16 v4, 0x8

    #@66
    new-array v0, v4, [B

    #@68
    .line 313
    .restart local v0    # "addr":[B
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6b
    move-result-object v4

    #@6c
    invoke-direct {p0, v4, v0, v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    #@6f
    .line 315
    add-int/lit8 v4, v3, 0x1

    #@71
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    .line 316
    .restart local v1    # "mask":Ljava/lang/String;
    const/16 v4, 0x2e

    #@77
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    #@7a
    move-result v4

    #@7b
    if-lez v4, :cond_6

    #@7d
    .line 318
    invoke-direct {p0, v1, v0, v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4(Ljava/lang/String;[BI)V

    #@80
    .line 325
    :goto_1
    return-object v0

    #@81
    .line 322
    :cond_6
    invoke-direct {p0, v1, v0, v6}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->parseIPv4Mask(Ljava/lang/String;[BI)V

    #@84
    goto :goto_1

    #@85
    .line 329
    .end local v0    # "addr":[B
    .end local v1    # "mask":Ljava/lang/String;
    .end local v3    # "slashIndex":I
    :cond_7
    const/4 v4, 0x0

    #@86
    return-object v4
.end method


# virtual methods
.method public getName()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@2
    return-object v0
.end method

.method public getTagNo()I
    .locals 1

    #@0
    .prologue
    .line 234
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    #@2
    return v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    #@0
    .prologue
    .line 430
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    #@2
    const/4 v1, 0x4

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 432
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@7
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    #@9
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@b
    const/4 v3, 0x1

    #@c
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@f
    return-object v0

    #@10
    .line 436
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@12
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    #@14
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@16
    const/4 v3, 0x0

    #@17
    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@1a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 246
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@a
    .line 247
    const-string/jumbo v1, ": "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 248
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->tag:I

    #@12
    packed-switch v1, :pswitch_data_0

    #@15
    .line 259
    :pswitch_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@17
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    .line 261
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 253
    :pswitch_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@25
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERIA5String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    goto :goto_0

    #@31
    .line 256
    :pswitch_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@33
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3e
    goto :goto_0

    #@3f
    .line 248
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
