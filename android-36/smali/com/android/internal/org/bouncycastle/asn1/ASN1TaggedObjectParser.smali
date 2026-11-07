.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
.super Ljava/lang/Object;
.source "ASN1TaggedObjectParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
.implements Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;


# virtual methods
.method public abstract blacklist getTagClass()I
.end method

.method public abstract blacklist getTagNo()I
.end method

.method public abstract blacklist hasContextTag()Z
.end method

.method public abstract blacklist hasContextTag(I)Z
.end method

.method public abstract blacklist hasTag(II)Z
.end method

.method public abstract blacklist hasTagClass(I)Z
.end method

.method public abstract blacklist parseBaseUniversal(ZI)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist parseExplicitBaseObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist parseExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist parseImplicitBaseTagged(II)Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObjectParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
