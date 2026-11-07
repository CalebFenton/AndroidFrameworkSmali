.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
.source "ASN1TaggedObject.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# static fields
.field private static final blacklist DECLARED_EXPLICIT:I = 0x1

.field private static final blacklist DECLARED_IMPLICIT:I = 0x2

.field private static final blacklist PARSED_EXPLICIT:I = 0x3

.field private static final blacklist PARSED_IMPLICIT:I = 0x4


# instance fields
.field final blacklist explicitness:I

.field final blacklist obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

.field final blacklist tagClass:I

.field final blacklist tagNo:I


# direct methods
.method constructor blacklist <init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 8
    .param p1, "explicitness"    # I
    .param p2, "tagClass"    # I
    .param p3, "tagNo"    # I
    .param p4, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 127
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;-><init>()V

    .line 128
    if-eqz p4, :cond_34

    .line 132
    if-eqz p2, :cond_1b

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, p2, :cond_1b

    .line 137
    instance-of v0, p4, Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, p1

    :goto_12
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    .line 138
    iput p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    .line 139
    iput p3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 140
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 141
    return-void

    .line 134
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid tag class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'obj\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>(ZIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 6
    .param p1, "explicit"    # Z
    .param p2, "tagClass"    # I
    .param p3, "tagNo"    # I
    .param p4, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 123
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 124
    return-void
.end method

.method protected constructor blacklist <init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 5
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 118
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;-><init>(ZIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 119
    return-void
.end method

.method private static blacklist checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4
    .param p0, "primitive"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 484
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_8

    .line 486
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0

    .line 489
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected object: "

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

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist createConstructedDL(IILcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7
    .param p0, "tagClass"    # I
    .param p1, "tagNo"    # I
    .param p2, "contentsElements"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 460
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    move v2, v1

    .line 462
    .local v2, "maybeExplicit":Z
    :goto_a
    if-eqz v2, :cond_17

    .line 463
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    const/4 v3, 0x3

    invoke-virtual {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v3, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_21

    .line 464
    :cond_17
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    const/4 v1, 0x4

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/DLFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/DLSequence;

    move-result-object v3

    invoke-direct {v0, v1, p0, p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 462
    :goto_21
    return-object v0
.end method

.method static blacklist createConstructedIL(IILcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7
    .param p0, "tagClass"    # I
    .param p1, "tagNo"    # I
    .param p2, "contentsElements"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;

    .line 469
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    goto :goto_a

    :cond_9
    move v2, v1

    .line 471
    .local v2, "maybeExplicit":Z
    :goto_a
    if-eqz v2, :cond_17

    .line 472
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v3, 0x3

    invoke-virtual {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v3, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_21

    .line 473
    :cond_17
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;

    const/4 v1, 0x4

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/android/internal/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/android/internal/org/bouncycastle/asn1/BERSequence;

    move-result-object v3

    invoke-direct {v0, v1, p0, p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/BERTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 471
    :goto_21
    return-object v0
.end method

.method static blacklist createPrimitive(II[B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p0, "tagClass"    # I
    .param p1, "tagNo"    # I
    .param p2, "contentsOctets"    # [B

    .line 479
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x4

    invoke-direct {v0, v2, p0, p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "declaredExplicit"    # Z

    .line 88
    const/16 v0, 0x80

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 93
    if-eqz p1, :cond_f

    .line 95
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0

    .line 98
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "this method not valid for implicitly tagged tagged objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this method only valid for CONTEXT_SPECIFIC tags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5
    .param p0, "obj"    # Ljava/lang/Object;

    .line 26
    if-eqz p0, :cond_6b

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_7

    goto :goto_6b

    .line 31
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1b

    .line 33
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 34
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_1a

    .line 36
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object v1

    .line 38
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_1a
    goto :goto_49

    .line 39
    :cond_1b
    instance-of v0, p0, [B

    if-eqz v0, :cond_49

    .line 43
    :try_start_1f
    move-object v0, p0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->fromByteArray([B)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_2b

    return-object v0

    .line 45
    :catch_2b
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct tagged object from byte[]: "

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

    .line 51
    .end local v0    # "e":Ljava/io/IOException;
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in getInstance: "

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
    :cond_6b
    :goto_6b
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "tagClass"    # I

    .line 56
    if-eqz p0, :cond_2b

    .line 61
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 62
    .local v0, "taggedObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v1

    if-ne p1, v1, :cond_d

    .line 67
    return-object v0

    .line 64
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected tag in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    .end local v0    # "taggedObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'obj\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 7
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 72
    if-eqz p0, :cond_2b

    .line 77
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 78
    .local v0, "taggedObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 83
    return-object v0

    .line 80
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected tag in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    .end local v0    # "taggedObject":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'obj\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final blacklist asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z
    .registers 8
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 145
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 147
    return v1

    .line 150
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 152
    .local v0, "that":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v2, v3, :cond_51

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-eq v2, v3, :cond_16

    goto :goto_51

    .line 158
    :cond_16
    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    if-eq v2, v3, :cond_27

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v3

    if-eq v2, v3, :cond_27

    .line 166
    return v1

    .line 170
    :cond_27
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 171
    .local v2, "p1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 173
    .local v3, "p2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    if-ne v2, v3, :cond_37

    .line 175
    const/4 v1, 0x1

    return v1

    .line 178
    :cond_37
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 182
    :try_start_3d
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getEncoded()[B

    move-result-object v4

    .line 183
    .local v4, "d1":[B
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getEncoded()[B

    move-result-object v5

    .line 185
    .local v5, "d2":[B
    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_49} :catch_4a

    return v1

    .line 187
    .end local v4    # "d1":[B
    .end local v5    # "d2":[B
    :catch_4a
    move-exception v4

    .line 189
    .local v4, "e":Ljava/io/IOException;
    return v1

    .line 193
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4c
    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    return v1

    .line 155
    .end local v2    # "p1":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .end local v3    # "p2":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_51
    :goto_51
    return v1
.end method

.method public blacklist getBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method public blacklist getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 7
    .param p1, "declaredExplicit"    # Z
    .param p2, "tagNo"    # I

    .line 356
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalTypes;->get(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    move-result-object v0

    .line 357
    .local v0, "universalType":Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;
    if-eqz v0, :cond_b

    .line 362
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZLcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1

    .line 359
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported UNIVERSAL tag number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist getBaseUniversal(ZLcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p1, "declaredExplicit"    # Z
    .param p2, "universalType"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;

    .line 367
    const-string v0, "object explicit - implicit expected."

    if-eqz p1, :cond_1b

    .line 369
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 374
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 371
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_1b
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    if-eq v1, v2, :cond_4d

    .line 382
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 383
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    packed-switch v1, :pswitch_data_54

    .line 396
    invoke-virtual {p2, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1

    .line 389
    :pswitch_30
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_3c

    .line 391
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1

    .line 393
    :cond_3c
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitPrimitive(Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1

    .line 386
    :pswitch_44
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->rebuildConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1

    .line 379
    .end local v0    # "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    :cond_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_54
    .packed-switch 0x3
        :pswitch_44
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 3

    .line 301
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 306
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    goto :goto_17

    :cond_11
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_17
    return-object v0

    .line 303
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 3

    .line 311
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 316
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0

    .line 313
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 6
    .param p1, "baseTagClass"    # I
    .param p2, "baseTagNo"    # I

    .line 321
    if-eqz p1, :cond_27

    and-int/lit16 v0, p1, 0xc0

    if-ne v0, p1, :cond_27

    .line 326
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    packed-switch v0, :pswitch_data_40

    .line 339
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->replaceTag(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0

    .line 333
    :pswitch_10
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->checkedCast(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    .line 334
    .local v0, "declared":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    invoke-static {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    return-object v1

    .line 329
    .end local v0    # "declared":Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object explicit - implicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid base tag class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_10
    .end packed-switch
.end method

.method public final blacklist getLoadedObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 1

    .line 436
    return-object p0
.end method

.method public blacklist getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTagClass()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    return v0
.end method

.method public blacklist getTagNo()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    return v0
.end method

.method public blacklist hasContextTag()Z
    .registers 3

    .line 218
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasContextTag(I)Z
    .registers 4
    .param p1, "tagNo"    # I

    .line 223
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v0, p1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist hasTag(II)Z
    .registers 4
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 228
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist hasTagClass(I)Z
    .registers 3
    .param p1, "tagClass"    # I

    .line 233
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 198
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    mul-int/lit16 v0, v0, 0x1eef

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xf

    goto :goto_12

    :cond_10
    const/16 v1, 0xf0

    :goto_12
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist isExplicit()Z
    .registers 2

    .line 260
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    packed-switch v0, :pswitch_data_a

    .line 266
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 264
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method blacklist isParsed()Z
    .registers 2

    .line 272
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    packed-switch v0, :pswitch_data_a

    .line 278
    const/4 v0, 0x0

    return v0

    .line 276
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p1, "declaredExplicit"    # Z
    .param p2, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 404
    .local v0, "primitive":Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    sparse-switch p2, :sswitch_data_28

    .line 416
    return-object v0

    .line 413
    :sswitch_8
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1SetParser;

    move-result-object v1

    return-object v1

    .line 411
    :sswitch_10
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v1

    return-object v1

    .line 409
    :sswitch_18
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v1

    return-object v1

    .line 407
    :sswitch_20
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1BitString;->parser()Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v1

    return-object v1

    :sswitch_data_28
    .sparse-switch
        0x3 -> :sswitch_20
        0x4 -> :sswitch_18
        0x10 -> :sswitch_10
        0x11 -> :sswitch_8
    .end sparse-switch
.end method

.method public blacklist parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public blacklist parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 4
    .param p1, "baseTagClass"    # I
    .param p2, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist rebuildConstructed(Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;
.end method

.method abstract blacklist replaceTag(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
.end method

.method blacklist toDERObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 445
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method blacklist toDLObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6

    .line 450
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->explicitness:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/asn1/DLTaggedObject;-><init>(IIILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagClass:I

    iget v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
