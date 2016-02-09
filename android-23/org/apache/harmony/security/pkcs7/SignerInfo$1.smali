.class final Lorg/apache/harmony/security/pkcs7/SignerInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SignerInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/SignerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 0
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 159
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 162
    return-void
.end method


# virtual methods
.method public getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    move-object v0, p1

    #@3
    .line 166
    check-cast v0, [Ljava/lang/Object;

    #@5
    .line 167
    .local v0, "issAndSerial":[Ljava/lang/Object;
    aget-object v1, v0, v2

    #@7
    aput-object v1, p2, v2

    #@9
    .line 168
    aget-object v1, v0, v3

    #@b
    aput-object v1, p2, v3

    #@d
    .line 165
    return-void
.end method
