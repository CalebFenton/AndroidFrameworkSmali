.class public Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "GeneralSubtree.java"


# static fields
.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

.field private maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

.field private minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 34
    const-wide/16 v0, 0x0

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    #@8
    .line 31
    return-void
.end method

.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@5
    .line 45
    invoke-virtual {p1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@8
    move-result-object v3

    #@9
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@c
    move-result-object v3

    #@d
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@f
    .line 47
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@12
    move-result v3

    #@13
    packed-switch v3, :pswitch_data_0

    #@16
    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Bad sequence size: "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 90
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    #@27
    move-result v5

    #@28
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 52
    :pswitch_0
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@37
    move-result-object v3

    #@38
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@3b
    move-result-object v0

    #@3c
    .line 53
    .local v0, "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@3f
    move-result v3

    #@40
    packed-switch v3, :pswitch_data_1

    #@43
    .line 62
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v5, "Bad tag number: "

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    .line 63
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@54
    move-result v5

    #@55
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@60
    throw v3

    #@61
    .line 56
    :pswitch_1
    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@64
    move-result-object v3

    #@65
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@67
    .line 43
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :goto_0
    :pswitch_2
    return-void

    #@68
    .line 59
    .restart local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_3
    invoke-static {v0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6b
    move-result-object v3

    #@6c
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@6e
    goto :goto_0

    #@6f
    .line 69
    .end local v0    # "o":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_4
    invoke-virtual {p1, v5}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@72
    move-result-object v3

    #@73
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@76
    move-result-object v2

    #@77
    .line 70
    .local v2, "oMin":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@7a
    move-result v3

    #@7b
    if-eqz v3, :cond_0

    #@7d
    .line 72
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@7f
    new-instance v4, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v5, "Bad tag number for \'minimum\': "

    #@87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@8e
    move-result v5

    #@8f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v4

    #@93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v4

    #@97
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v3

    #@9b
    .line 74
    :cond_0
    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@9e
    move-result-object v3

    #@9f
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@a1
    .line 78
    const/4 v3, 0x2

    #@a2
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    #@a5
    move-result-object v3

    #@a6
    invoke-static {v3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    #@a9
    move-result-object v1

    #@aa
    .line 79
    .local v1, "oMax":Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@ad
    move-result v3

    #@ae
    if-eq v3, v5, :cond_1

    #@b0
    .line 81
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b2
    new-instance v4, Ljava/lang/StringBuilder;

    #@b4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b7
    const-string/jumbo v5, "Bad tag number for \'maximum\': "

    #@ba
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v4

    #@be
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    #@c1
    move-result v5

    #@c2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v4

    #@c6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v4

    #@ca
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cd
    throw v3

    #@ce
    .line 83
    :cond_1
    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d1
    move-result-object v3

    #@d2
    iput-object v3, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d4
    goto :goto_0

    #@d5
    .line 47
    nop

    #@d6
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch

    #@e0
    .line 53
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1
    .param p1, "base"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 133
    invoke-direct {p0, p1, v0, v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@4
    .line 131
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralName;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "base"    # Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .param p2, "minimum"    # Ljava/math/BigInteger;
    .param p3, "maximum"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 111
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@4
    .line 116
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@6
    .line 117
    if-eqz p3, :cond_0

    #@8
    .line 119
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@a
    invoke-direct {v0, p3}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@f
    .line 121
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 123
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@13
    .line 114
    :goto_0
    return-void

    #@14
    .line 127
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@16
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    #@19
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1b
    goto :goto_0
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 2
    .param p0, "o"    # Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    #@0
    .prologue
    .line 140
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@2
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@9
    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 146
    if-nez p0, :cond_0

    #@3
    .line 148
    return-object v0

    #@4
    .line 151
    :cond_0
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 153
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@a
    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    #@b
    .line 156
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;

    #@d
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    #@10
    move-result-object v1

    #@11
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    #@14
    return-object v0
.end method


# virtual methods
.method public getBase()Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    #@0
    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@2
    return-object v0
.end method

.method public getMaximum()Ljava/math/BigInteger;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 178
    return-object v1

    #@6
    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getMinimum()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 168
    sget-object v0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    #@6
    return-object v0

    #@7
    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@9
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 202
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    #@3
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    #@6
    .line 204
    .local v0, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->base:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@b
    .line 206
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@d
    if-eqz v1, :cond_0

    #@f
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@11
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    #@14
    move-result-object v1

    #@15
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->ZERO:Ljava/math/BigInteger;

    #@17
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 211
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 213
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@23
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->maximum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@25
    const/4 v3, 0x1

    #@26
    invoke-direct {v1, v4, v3, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@29
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@2c
    .line 216
    :cond_1
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    #@2e
    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    #@31
    return-object v1

    #@32
    .line 208
    :cond_2
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    #@34
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/GeneralSubtree;->minimum:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    #@36
    invoke-direct {v1, v4, v4, v2}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@39
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    #@3c
    goto :goto_0
.end method
