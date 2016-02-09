.class public interface abstract Lcom/android/org/bouncycastle/asn1/ASN1TaggedObjectParser;
.super Ljava/lang/Object;
.source "ASN1TaggedObjectParser.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.implements Lcom/android/org/bouncycastle/asn1/InMemoryRepresentable;


# virtual methods
.method public abstract getObjectParser(IZ)Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTagNo()I
.end method
