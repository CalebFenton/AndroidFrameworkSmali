.class final Ljavax/crypto/EncryptedPrivateKeyInfo$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "EncryptedPrivateKeyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/EncryptedPrivateKeyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 535
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 540
    const/4 v0, 0x3

    #@4
    invoke-virtual {p0, v0}, Ljavax/crypto/EncryptedPrivateKeyInfo$2;->setOptional(I)V

    #@7
    .line 538
    return-void
.end method
