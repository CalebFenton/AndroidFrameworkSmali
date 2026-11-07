.class public Lcom/android/internal/org/bouncycastle/its/asn1/IssuerIdentifier;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "IssuerIdentifier.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method
