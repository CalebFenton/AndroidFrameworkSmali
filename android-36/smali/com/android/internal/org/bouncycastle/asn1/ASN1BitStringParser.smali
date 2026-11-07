.class public interface abstract Lcom/android/internal/org/bouncycastle/asn1/ASN1BitStringParser;
.super Ljava/lang/Object;
.source "ASN1BitStringParser.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
.implements Lcom/android/internal/org/bouncycastle/asn1/InMemoryRepresentable;


# virtual methods
.method public abstract blacklist getBitStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getOctetStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist getPadBits()I
.end method
