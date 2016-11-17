.class Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;
.super Ljava/lang/Object;
.source "ASN1ObjectIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OidHandle"
.end annotation


# instance fields
.field private final enc:[B

.field private key:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "enc"    # [B

    #@0
    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 461
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->key:I

    #@9
    .line 462
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->enc:[B

    #@b
    .line 459
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 472
    instance-of v0, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 474
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->enc:[B

    #@6
    check-cast p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;

    #@8
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->enc:[B

    #@a
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 477
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 467
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier$OidHandle;->key:I

    #@2
    return v0
.end method
