.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1External;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1External.java"


# static fields
.field static final blacklist TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field blacklist dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field blacklist directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

.field blacklist encoding:I

.field blacklist externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

.field blacklist indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 15
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1External$1;

    const-class v1, Lcom/android/org/bouncycastle/asn1/ASN1External;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1External$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lcom/android/org/bouncycastle/asn1/ASN1External;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V
    .registers 6

    .line 114
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 116
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 117
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 118
    invoke-static {p4}, Lcom/android/org/bouncycastle/asn1/ASN1External;->checkEncoding(I)I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    .line 119
    invoke-static {p4, p5}, Lcom/android/org/bouncycastle/asn1/ASN1External;->checkExternalContent(ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6

    .line 66
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    const/4 v0, 0x0

    .line 69
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->getObjFromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 70
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    .line 72
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 73
    invoke-static {p1, v3}, Lcom/android/org/bouncycastle/asn1/ASN1External;->getObjFromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    move v0, v3

    .line 75
    :cond_16
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_24

    .line 77
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    add-int/lit8 v0, v0, 0x1

    .line 78
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->getObjFromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 80
    :cond_24
    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_30

    .line 82
    iput-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    add-int/lit8 v0, v0, 0x1

    .line 83
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->getObjFromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 86
    :cond_30
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    add-int/2addr v0, v3

    if-ne p1, v0, :cond_56

    .line 91
    instance-of p1, v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz p1, :cond_4e

    .line 97
    check-cast v1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 98
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/asn1/ASN1External;->checkEncoding(I)I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    .line 99
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/ASN1External;->getExternalContent(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-void

    .line 93
    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No tagged object found in sequence. Structure doesn\'t seem to be of type External"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input sequence too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist checkEncoding(I)I
    .registers 4

    if-ltz p0, :cond_6

    const/4 v0, 0x2

    if-gt p0, v0, :cond_6

    return p0

    .line 242
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid encoding value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkExternalContent(ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    return-object p1

    .line 255
    :cond_7
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 253
    :cond_e
    sget-object p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->TYPE:Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getExternalContent(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 263
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    const/16 v2, 0x80

    .line 264
    const-string v3, "invalid tag: "

    if-ne v2, v0, :cond_43

    if-eqz v1, :cond_3a

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_35

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1c

    .line 276
    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    return-object p0

    .line 278
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :cond_35
    invoke-static {p0, v4}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0

    .line 272
    :cond_3a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 266
    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getObjFromSequence(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;I)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    .line 284
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, p1, :cond_f

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 286
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too few objects in input sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 165
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1External;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 170
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1External;

    .line 172
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 173
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    iget-object v3, p1, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 174
    invoke-static {v1, v3}, Lcom/android/org/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    iget v3, p1, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    if-ne v1, v3, :cond_3b

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    iget-object p1, p1, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_3b

    return v0

    :cond_3b
    return v2
.end method

.method abstract blacklist buildSequence()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.end method

.method blacklist encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 4

    const/16 v0, 0x28

    .line 131
    invoke-virtual {p1, p2, v0}, Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    .line 132
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->buildSequence()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/android/org/bouncycastle/asn1/ASN1OutputStream;Z)V

    return-void
.end method

.method blacklist encodeConstructed()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method blacklist encodedLength(Z)I
    .registers 2

    .line 126
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1External;->buildSequence()Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result p0

    return p0
.end method

.method public blacklist getDataValueDescriptor()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object p0
.end method

.method public blacklist getDirectReference()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object p0
.end method

.method public blacklist getEncoding()I
    .registers 1

    .line 208
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    return p0
.end method

.method public blacklist getExternalContent()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    return-object p0
.end method

.method public blacklist getIndirectReference()Lcom/android/org/bouncycastle/asn1/ASN1Integer;
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    .line 148
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 149
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    .line 151
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7

    .line 137
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERExternal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->directReference:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->indirectReference:Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->dataValueDescriptor:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    iget v4, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->encoding:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/asn1/ASN1External;->externalContent:Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Integer;Lcom/android/org/bouncycastle/asn1/ASN1Primitive;ILcom/android/org/bouncycastle/asn1/ASN1Primitive;)V

    return-object v0
.end method
