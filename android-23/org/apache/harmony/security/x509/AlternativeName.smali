.class public final Lorg/apache/harmony/security/x509/AlternativeName;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "AlternativeName.java"


# static fields
.field public static final ISSUER:Z = false

.field public static final SUBJECT:Z = true


# instance fields
.field private alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

.field private which:Z


# direct methods
.method public constructor <init>(Z[B)V
    .locals 1
    .param p1, "which"    # Z
    .param p2, "encoding"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p2}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    #@3
    .line 48
    iput-boolean p1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->which:Z

    #@5
    .line 49
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@7
    invoke-virtual {v0, p2}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Lorg/apache/harmony/security/x509/GeneralNames;

    #@d
    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    #@f
    .line 46
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 63
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v1

    #@4
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->which:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, "Subject"

    #@b
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, " Alternative Names [\n"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, "  "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v0, p1, v1}, Lorg/apache/harmony/security/x509/GeneralNames;->dumpValue(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    #@2e
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v1, "]\n"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    .line 62
    return-void

    #@39
    .line 63
    :cond_0
    const-string/jumbo v0, "Issuer"

    #@3c
    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 2

    #@0
    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 57
    sget-object v0, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    #@6
    iget-object v1, p0, Lorg/apache/harmony/security/x509/AlternativeName;->alternativeNames:Lorg/apache/harmony/security/x509/GeneralNames;

    #@8
    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    #@e
    .line 59
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlternativeName;->encoding:[B

    #@10
    return-object v0
.end method
