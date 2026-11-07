.class public Lcom/android/org/bouncycastle/asn1/misc/NetscapeRevocationURL;
.super Lcom/android/org/bouncycastle/asn1/DERIA5String;
.source "NetscapeRevocationURL.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/asn1/ASN1IA5String;)V
    .registers 2

    .line 16
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetscapeRevocationURL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
