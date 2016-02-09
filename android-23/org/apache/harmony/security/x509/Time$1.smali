.class final Lorg/apache/harmony/security/x509/Time$1;
.super Lorg/apache/harmony/security/asn1/ASN1Choice;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/Time;
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
    .line 47
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Choice;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    #@3
    .line 48
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 52
    check-cast p1, Ljava/util/Date;

    #@2
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@5
    move-result-wide v0

    #@6
    const-wide v2, 0x24bce5cf000L

    #@b
    cmp-long v0, v0, v2

    #@d
    if-gez v0, :cond_0

    #@f
    .line 53
    const/4 v0, 0x1

    #@10
    return v0

    #@11
    .line 55
    :cond_0
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method public getObjectToEncode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 60
    return-object p1
.end method
