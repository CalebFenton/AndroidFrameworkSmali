.class public abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;
.super Ljava/lang/Object;
.source "ASN1Util.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 8
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    return-object p0

    .line 15
    :cond_7
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "expected":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "found":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static blacklist checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 8
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 24
    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    return-object p0

    .line 26
    :cond_7
    invoke-static {p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "expected":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "found":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tag but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist getBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "declaredExplicit"    # Z
    .param p4, "baseTagNo"    # I

    .line 170
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .param p2, "declaredExplicit"    # Z
    .param p3, "baseTagNo"    # I

    .line 176
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 4
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 75
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 105
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I

    .line 80
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I

    .line 110
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 6
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "baseTagClass"    # I
    .param p4, "baseTagNo"    # I

    .line 136
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .param p2, "baseTagClass"    # I
    .param p3, "baseTagNo"    # I

    .line 142
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTagText(II)Ljava/lang/String;
    .registers 5
    .param p0, "tagClass"    # I
    .param p1, "tagNo"    # I

    .line 55
    const-string v0, "]"

    sparse-switch p0, :sswitch_data_66

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UNIVERSAL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :sswitch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PRIVATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :sswitch_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CONTEXT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :sswitch_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[APPLICATION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_66
    .sparse-switch
        0x40 -> :sswitch_4d
        0x80 -> :sswitch_35
        0xc0 -> :sswitch_1d
    .end sparse-switch
.end method

.method static blacklist getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;)Ljava/lang/String;
    .registers 3
    .param p0, "tag"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Tag;->getTagNumber()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;
    .registers 3
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    .line 50
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagClass()I

    move-result v0

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 6
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "declaredExplicit"    # Z
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .param p2, "declaredExplicit"    # Z
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 4
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 3
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 6
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "baseTagClass"    # I
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-static {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->checkTag(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 5
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .param p2, "baseTagClass"    # I
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->parseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryGetBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "declaredExplicit"    # Z
    .param p4, "baseTagNo"    # I

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 184
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_8
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryGetContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .param p2, "declaredExplicit"    # Z
    .param p3, "baseTagNo"    # I

    .line 193
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryGetExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 4
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryGetExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 4
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I

    .line 115
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 120
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryGetExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I

    .line 95
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryGetExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 3
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I

    .line 125
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryGetImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 6
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "baseTagClass"    # I
    .param p4, "baseTagNo"    # I

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_8
    invoke-virtual {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryGetImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .registers 5
    .param p0, "taggedObject"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "tagNo"    # I
    .param p2, "baseTagClass"    # I
    .param p3, "baseTagNo"    # I

    .line 159
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryGetImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryParseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 6
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "declaredExplicit"    # Z
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 286
    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_8
    invoke-interface {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryParseContextBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .param p2, "declaredExplicit"    # Z
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseBaseUniversal(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryParseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 4
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 320
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_8
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryParseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 4
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 218
    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_8
    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryParseExplicitContextBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 3
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseObject(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryParseExplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 3
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryParseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 6
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagClass"    # I
    .param p2, "tagNo"    # I
    .param p3, "baseTagClass"    # I
    .param p4, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-interface {p0, p1, p2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 252
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_8
    invoke-interface {p0, p3, p4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tryParseImplicitContextBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .registers 5
    .param p0, "taggedObjectParser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .param p1, "tagNo"    # I
    .param p2, "baseTagClass"    # I
    .param p3, "baseTagNo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->tryParseImplicitBaseTagged(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method
