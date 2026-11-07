.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CertStatus.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private blacklist tagNo:I

.field private blacklist value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 30
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "tagNo"    # I
    .param p2, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 43
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 45
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 46
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 6
    .param p1, "choice"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 50
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    .line 53
    .local v0, "tagNo":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_40

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Util;->getTagText(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :pswitch_28
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 64
    goto :goto_3d

    .line 59
    :pswitch_2f
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 60
    goto :goto_3d

    .line 56
    :pswitch_36
    invoke-static {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ASN1Null;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 57
    nop

    .line 69
    :goto_3d
    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 70
    return-void

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_36
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    .line 35
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 37
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 38
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 75
    if-eqz p0, :cond_36

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    if-eqz v0, :cond_7

    goto :goto_36

    .line 79
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_14

    .line 81
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 84
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_36
    :goto_36
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    return-object v0
.end method


# virtual methods
.method public blacklist getStatus()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist getTagNo()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 115
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
