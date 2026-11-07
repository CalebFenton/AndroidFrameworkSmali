.class Lcom/android/internal/org/bouncycastle/asn1/BEROutputStream;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;
.source "BEROutputStream.java"


# direct methods
.method constructor blacklist <init>(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 21
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 22
    return-void
.end method
