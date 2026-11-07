.class public Lcom/android/internal/org/bouncycastle/asn1/DERObjectIdentifier;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.source "DERObjectIdentifier.java"


# direct methods
.method constructor blacklist <init>([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 17
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method
