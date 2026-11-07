.class public abstract Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.super Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1TaggedObject.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field final blacklist explicitness:I

.field final blacklist obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

.field final blacklist tagClass:I

.field final blacklist tagNo:I


# direct methods
.method constructor blacklist <init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6

    .line 127
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p4, :cond_30

    if-eqz p2, :cond_19

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, p2, :cond_19

    .line 137
    instance-of v0, p4, Lcom/android/org/bouncycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    iput p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    .line 138
    iput p2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    .line 139
    iput p3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 140
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    return-void

    .line 134
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid tag class: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_30
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'obj\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected constructor blacklist <init>(ZIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    .line 123
    :goto_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method protected constructor blacklist <init>(ZILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5

    const/16 v0, 0x80

    .line 118
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method private static blacklist checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4

    .line 484
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_7

    .line 486
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object p0

    .line 489
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist createConstructedDL(IILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 460
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 463
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 464
    :cond_13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    const/4 v1, 0x4

    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/DLSequence;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method static blacklist createConstructedIL(IILcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 469
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 472
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    .line 473
    :cond_13
    new-instance v0, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v1, 0x4

    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/org/bouncycastle/asn1/BERSequence;

    move-result-object p2

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/BERTaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method static blacklist createPrimitive(II[B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 479
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lcom/android/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 p2, 0x4

    invoke-direct {v0, p2, p0, p1, v1}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4

    .line 88
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    const/16 v1, 0x80

    if-ne v1, v0, :cond_17

    if-eqz p1, :cond_f

    .line 95
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0

    .line 98
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this method not valid for implicitly tagged tagged objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 90
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4

    if-eqz p0, :cond_63

    .line 26
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_7

    goto :goto_63

    .line 31
    :cond_7
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_19

    .line 33
    move-object v0, p0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 34
    instance-of v1, v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_44

    .line 36
    check-cast v0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0

    .line 39
    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_44

    .line 43
    :try_start_1d
    check-cast p0, [B

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_44
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

    .line 28
    :cond_63
    :goto_63
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;I)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4

    if-eqz p0, :cond_28

    .line 61
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    if-ne p1, v0, :cond_d

    return-object p0

    .line 64
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected tag in getInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_28
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'obj\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;II)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4

    if-eqz p0, :cond_28

    .line 77
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result p1

    if-eqz p1, :cond_d

    return-object p0

    .line 80
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected tag in getInstance: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_28
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'obj\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 6

    .line 145
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 150
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 152
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v0, v2, :cond_4f

    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-eq v0, v2, :cond_15

    goto :goto_4f

    .line 158
    :cond_15
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    if-eq v0, v2, :cond_26

    .line 164
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    if-eq v0, v2, :cond_26

    return v1

    .line 170
    :cond_26
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 171
    iget-object v2, p1, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    if-ne v0, v2, :cond_36

    const/4 p0, 0x1

    return p0

    .line 178
    :cond_36
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v3

    if-nez v3, :cond_4a

    .line 182
    :try_start_3c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    .line 183
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    .line 185
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_48} :catch_49

    return p0

    :catch_49
    return v1

    .line 193
    :cond_4a
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    return p0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public blacklist getBaseObject()Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .registers 2

    .line 290
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    return-object p0

    :cond_9
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBaseUniversal(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    .line 356
    invoke-static {p2}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalTypes;->get(I)Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZLcom/android/org/bouncycastle/asn1/ASN1UniversalType;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 359
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported UNIVERSAL tag number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist getBaseUniversal(ZLcom/android/org/bouncycastle/asn1/ASN1UniversalType;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 367
    const-string v0, "object explicit - implicit expected."

    if-eqz p1, :cond_1b

    .line 369
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 374
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 371
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    const/4 p1, 0x1

    .line 377
    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    if-eq p1, v1, :cond_4e

    .line 382
    iget-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 383
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_45

    const/4 p0, 0x4

    if-eq v0, p0, :cond_33

    .line 396
    invoke-virtual {p2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 389
    :cond_33
    instance-of p0, p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz p0, :cond_3e

    .line 391
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 393
    :cond_3e
    check-cast p1, Lcom/android/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p2, p1}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitPrimitive(Lcom/android/org/bouncycastle/asn1/DEROctetString;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 386
    :cond_45
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->rebuildConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 379
    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getExplicitBaseObject()Lcom/android/org/bouncycastle/asn1/ASN1Object;
    .registers 2

    .line 301
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 306
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    if-eqz v0, :cond_f

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Object;

    return-object p0

    :cond_f
    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    .line 303
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "object implicit - explicit expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getExplicitBaseTagged()Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 2

    .line 311
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 316
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0

    .line 313
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "object implicit - explicit expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getImplicitBaseTagged(II)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5

    if-eqz p1, :cond_2a

    and-int/lit16 v0, p1, 0xc0

    if-ne v0, p1, :cond_2a

    .line 326
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->replaceTag(II)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0

    .line 333
    :cond_13
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    .line 334
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0

    .line 329
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object explicit - implicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 323
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid base tag class: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final blacklist getLoadedObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 0
    return-object p0
.end method

.method public blacklist getObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 245
    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTagClass()I
    .registers 1

    .line 203
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    return p0
.end method

.method public blacklist getTagNo()I
    .registers 1

    .line 213
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    return p0
.end method

.method public blacklist hasContextTag()Z
    .registers 2

    .line 218
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    const/16 v0, 0x80

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasContextTag(I)Z
    .registers 4

    .line 223
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne p0, p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasTag(II)Z
    .registers 4

    .line 228
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-ne v0, p1, :cond_a

    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne p0, p2, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasTagClass(I)Z
    .registers 2

    .line 233
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 198
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    mul-int/lit16 v0, v0, 0x1eef

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xf

    goto :goto_12

    :cond_10
    const/16 v1, 0xf0

    :goto_12
    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public blacklist isExplicit()Z
    .registers 3

    .line 260
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method blacklist isParsed()Z
    .registers 2

    .line 272
    iget p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist parseBaseUniversal(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_28

    const/4 p1, 0x4

    if-eq p2, p1, :cond_21

    const/16 p1, 0x10

    if-eq p2, p1, :cond_1a

    const/16 p1, 0x11

    if-eq p2, p1, :cond_13

    return-object p0

    .line 413
    :cond_13
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SetParser;

    move-result-object p0

    return-object p0

    .line 411
    :cond_1a
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/org/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object p0

    return-object p0

    .line 409
    :cond_21
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1OctetString;->parser()Lcom/android/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object p0

    return-object p0

    .line 407
    :cond_28
    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1BitString;->parser()Lcom/android/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object p0

    return-object p0
.end method

.method public blacklist parseExplicitBaseObject()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/org/bouncycastle/asn1/ASN1Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist parseExplicitBaseTagged()Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method public blacklist parseImplicitBaseTagged(II)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    return-object p0
.end method

.method abstract blacklist rebuildConstructed(Lcom/android/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;
.end method

.method abstract blacklist replaceTag(II)Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;
.end method

.method blacklist toDERObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 445
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 450
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v3, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v2, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
