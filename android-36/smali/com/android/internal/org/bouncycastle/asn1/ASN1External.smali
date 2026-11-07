.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1External.java"


# static fields
.field static final blacklist TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field blacklist dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

.field blacklist directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field blacklist encoding:I

.field blacklist externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

.field blacklist indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 15
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External$1;

    const-class v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 7
    .param p1, "directReference"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "encoding"    # I
    .param p5, "externalData"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 114
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 116
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 117
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 118
    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->checkEncoding(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    .line 119
    invoke-static {p4, p5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->checkExternalContent(ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 120
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;)V
    .registers 6
    .param p1, "directReference"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "indirectReference"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .param p3, "dataValueDescriptor"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .param p4, "externalData"    # Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    .line 104
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 106
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 107
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 108
    invoke-virtual {p4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->checkEncoding(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    .line 109
    invoke-static {p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getExternalContent(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 110
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .param p1, "sequence"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 66
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "offset":I
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getObjFromSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 70
    .local v1, "asn1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_17

    .line 72
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getObjFromSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 75
    :cond_17
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_26

    .line 77
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 78
    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getObjFromSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 80
    :cond_26
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_32

    .line 82
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 83
    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getObjFromSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 86
    :cond_32
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_5a

    .line 91
    instance-of v2, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_52

    .line 97
    move-object v2, v1

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 98
    .local v2, "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->checkEncoding(I)I

    move-result v3

    iput v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    .line 99
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->getExternalContent(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 100
    return-void

    .line 93
    .end local v2    # "obj":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No tagged object found in sequence. Structure doesn\'t seem to be of type External"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_5a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "input sequence too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist checkEncoding(I)I
    .registers 4
    .param p0, "encoding"    # I

    .line 240
    if-ltz p0, :cond_6

    const/4 v0, 0x2

    if-gt p0, v0, :cond_6

    .line 245
    return p0

    .line 242
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkExternalContent(ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3
    .param p0, "tagNo"    # I
    .param p1, "externalContent"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 250
    packed-switch p0, :pswitch_data_12

    .line 257
    return-object p1

    .line 255
    :pswitch_4
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 253
    :pswitch_b
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_b
        :pswitch_4
    .end packed-switch
.end method

.method private static blacklist getExternalContent(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p0, "encoding"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    .local v0, "tagClass":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    .line 264
    .local v1, "tagNo":I
    const/16 v2, 0x80

    const-string v3, "invalid tag: "

    if-ne v2, v0, :cond_40

    .line 269
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_5c

    .line 278
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :pswitch_2d
    invoke-static {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    move-result-object v2

    return-object v2

    .line 274
    :pswitch_32
    invoke-static {p0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    return-object v2

    .line 272
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    return-object v2

    .line 266
    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_37
        :pswitch_32
        :pswitch_2d
    .end packed-switch
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 55
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 26
    if-eqz p0, :cond_6a

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    if-eqz v0, :cond_7

    goto :goto_6a

    .line 30
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1b

    .line 32
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 33
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    if-eqz v1, :cond_1a

    .line 35
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    return-object v1

    .line 37
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    goto :goto_49

    .line 38
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_49

    .line 42
    :try_start_1f
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->TYPE:Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-object v1, p0

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_2b

    return-object v0

    .line 44
    :catch_2b
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct external from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_6a
    :goto_6a
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    return-object v0
.end method

.method private static blacklist getObjFromSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4
    .param p0, "sequence"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
    .param p1, "index"    # I

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, p1, :cond_f

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 286
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "too few objects in input sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 7
    .param p1, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 161
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 163
    return v0

    .line 165
    :cond_4
    instance-of v1, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 167
    return v2

    .line 170
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;

    .line 172
    .local v1, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1External;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 173
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 174
    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    iget v4, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    iget-object v4, v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 176
    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 172
    :goto_3d
    return v0
.end method

.method abstract blacklist buildSequence()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
.end method

.method blacklist encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .param p1, "out"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
    .param p2, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    const/16 v0, 0x28

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->buildSequence()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->encode(Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    .line 133
    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 2

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method blacklist encodedLength(Z)I
    .registers 3
    .param p1, "withTag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->buildSequence()Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->encodedLength(Z)I

    move-result v0

    return v0
.end method

.method public blacklist getDataValueDescriptor()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public blacklist getDirectReference()Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public blacklist getEncoding()I
    .registers 2

    .line 208
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    return v0
.end method

.method public blacklist getExternalContent()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method

.method public blacklist getIndirectReference()Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    .line 148
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 149
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 151
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 147
    return v0
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7

    .line 137
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERExternal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7

    .line 142
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->encoding:I

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/asn1/DLExternal;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0
.end method
