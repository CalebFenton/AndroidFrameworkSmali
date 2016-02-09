.class public final Lorg/apache/harmony/security/x509/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/x509/Time$1;
    }
.end annotation


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

.field private static final JAN_01_2050:J = 0x24bce5cf000L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 47
    new-instance v0, Lorg/apache/harmony/security/x509/Time$1;

    #@2
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    .line 48
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    #@8
    move-result-object v2

    #@9
    const/4 v3, 0x0

    #@a
    aput-object v2, v1, v3

    #@c
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1UTCTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1UTCTime;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x1

    #@11
    aput-object v2, v1, v3

    #@13
    .line 47
    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Time$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@16
    sput-object v0, Lorg/apache/harmony/security/x509/Time;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Choice;

    #@18
    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
