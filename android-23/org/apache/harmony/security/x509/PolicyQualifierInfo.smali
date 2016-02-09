.class public final Lorg/apache/harmony/security/x509/PolicyQualifierInfo;
.super Ljava/lang/Object;
.source "PolicyQualifierInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/PolicyQualifierInfo$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 54
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyQualifierInfo$1;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    aput-object v2, v1, v3

    #@c
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyQualifierInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@16
    .line 53
    sput-object v0, Lorg/apache/harmony/security/x509/PolicyQualifierInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    #@18
    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
