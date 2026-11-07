.class public Lcom/android/internal/org/bouncycastle/asn1/DERSequenceParser;
.super Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;
.source "DERSequenceParser.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2
    .param p1, "parser"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;

    .line 16
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1StreamParser;)V

    .line 17
    return-void
.end method
