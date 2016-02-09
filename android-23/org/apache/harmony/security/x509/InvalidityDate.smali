.class public final Lorg/apache/harmony/security/x509/InvalidityDate;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "InvalidityDate.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private final date:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 77
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;->getInstance()Lorg/apache/harmony/security/asn1/ASN1GeneralizedTime;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lorg/apache/harmony/security/x509/InvalidityDate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    #@3
    .line 50
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/util/Date;

    #@9
    iput-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    #@b
    .line 49
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    #@3
    .line 43
    sget-object v0, Lorg/apache/harmony/security/x509/InvalidityDate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@5
    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/Date;

    #@b
    iput-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    #@d
    .line 41
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "Invalidity Date: [ "

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, " ]\n"

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 70
    return-void
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    #@2
    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    #@0
    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 65
    sget-object v0, Lorg/apache/harmony/security/x509/InvalidityDate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    iget-object v1, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->date:Ljava/util/Date;

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->encoding:[B

    #@e
    .line 67
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/InvalidityDate;->encoding:[B

    #@10
    return-object v0
.end method
