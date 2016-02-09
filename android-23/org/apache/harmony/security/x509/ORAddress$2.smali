.class final Lorg/apache/harmony/security/x509/ORAddress$2;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "ORAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/ORAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final foo:Ljava/lang/Object;


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .locals 1
    .param p1, "$anonymous0"    # [Lorg/apache/harmony/security/asn1/ASN1Type;

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 75
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Lorg/apache/harmony/security/x509/ORAddress$2;->foo:Ljava/lang/Object;

    #@a
    .line 69
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;

    #@0
    .prologue
    .line 72
    new-instance v0, Lorg/apache/harmony/security/x509/ORAddress;

    #@2
    invoke-direct {v0}, Lorg/apache/harmony/security/x509/ORAddress;-><init>()V

    #@5
    return-object v0
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/security/x509/ORAddress$2;->foo:Ljava/lang/Object;

    #@2
    const/4 v1, 0x0

    #@3
    aput-object v0, p2, v1

    #@5
    .line 77
    return-void
.end method
