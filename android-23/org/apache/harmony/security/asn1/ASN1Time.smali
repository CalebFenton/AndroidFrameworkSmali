.class public abstract Lorg/apache/harmony/security/asn1/ASN1Time;
.super Lorg/apache/harmony/security/asn1/ASN1StringType;
.source "ASN1Time.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "tagNumber"    # I

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1StringType;-><init>(I)V

    #@3
    .line 39
    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .locals 6
    .param p1, "in"    # Lorg/apache/harmony/security/asn1/BerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    .line 44
    new-instance v0, Ljava/util/GregorianCalendar;

    #@5
    const-string/jumbo v1, "GMT"

    #@8
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    #@f
    .line 45
    .local v0, "c":Ljava/util/GregorianCalendar;
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@11
    const/4 v2, 0x0

    #@12
    aget v1, v1, v2

    #@14
    invoke-virtual {v0, v3, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@17
    .line 46
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@19
    aget v1, v1, v3

    #@1b
    add-int/lit8 v1, v1, -0x1

    #@1d
    invoke-virtual {v0, v4, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@20
    .line 47
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@22
    aget v1, v1, v4

    #@24
    invoke-virtual {v0, v5, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@27
    .line 48
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@29
    const/4 v2, 0x3

    #@2a
    aget v1, v1, v2

    #@2c
    const/16 v2, 0xb

    #@2e
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@31
    .line 49
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@33
    const/4 v2, 0x4

    #@34
    aget v1, v1, v2

    #@36
    const/16 v2, 0xc

    #@38
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@3b
    .line 50
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@3d
    aget v1, v1, v5

    #@3f
    const/16 v2, 0xd

    #@41
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@44
    .line 51
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->times:[I

    #@46
    const/4 v2, 0x6

    #@47
    aget v1, v1, v2

    #@49
    const/16 v2, 0xe

    #@4b
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@4e
    .line 52
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    #@51
    move-result-object v1

    #@52
    return-object v1
.end method
