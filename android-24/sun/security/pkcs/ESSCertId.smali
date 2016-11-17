.class Lsun/security/pkcs/ESSCertId;
.super Ljava/lang/Object;
.source "SigningCertificateInfo.java"


# static fields
.field private static volatile hexDumper:Lsun/misc/HexDumpEncoder;


# instance fields
.field private certHash:[B

.field private issuer:Lsun/security/x509/GeneralNames;

.field private serialNumber:Lsun/security/x509/SerialNumber;


# direct methods
.method constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "certId"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 141
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@5
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Lsun/security/pkcs/ESSCertId;->certHash:[B

    #@f
    .line 144
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@11
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    #@14
    move-result v1

    #@15
    if-lez v1, :cond_0

    #@17
    .line 145
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@19
    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@1c
    move-result-object v0

    #@1d
    .line 147
    .local v0, "issuerSerial":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralNames;

    #@1f
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@21
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    #@28
    iput-object v1, p0, Lsun/security/pkcs/ESSCertId;->issuer:Lsun/security/x509/GeneralNames;

    #@2a
    .line 149
    new-instance v1, Lsun/security/x509/SerialNumber;

    #@2c
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@2e
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, v2}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    #@35
    iput-object v1, p0, Lsun/security/pkcs/ESSCertId;->serialNumber:Lsun/security/x509/SerialNumber;

    #@37
    .line 139
    .end local v0    # "issuerSerial":Lsun/security/util/DerValue;
    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 155
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "[\n\tCertificate hash (SHA-1):\n"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b
    .line 156
    sget-object v1, Lsun/security/pkcs/ESSCertId;->hexDumper:Lsun/misc/HexDumpEncoder;

    #@d
    if-nez v1, :cond_0

    #@f
    .line 157
    new-instance v1, Lsun/misc/HexDumpEncoder;

    #@11
    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@14
    sput-object v1, Lsun/security/pkcs/ESSCertId;->hexDumper:Lsun/misc/HexDumpEncoder;

    #@16
    .line 159
    :cond_0
    sget-object v1, Lsun/security/pkcs/ESSCertId;->hexDumper:Lsun/misc/HexDumpEncoder;

    #@18
    iget-object v2, p0, Lsun/security/pkcs/ESSCertId;->certHash:[B

    #@1a
    invoke-virtual {v1, v2}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 160
    iget-object v1, p0, Lsun/security/pkcs/ESSCertId;->issuer:Lsun/security/x509/GeneralNames;

    #@23
    if-eqz v1, :cond_1

    #@25
    iget-object v1, p0, Lsun/security/pkcs/ESSCertId;->serialNumber:Lsun/security/x509/SerialNumber;

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v2, "\n\tIssuer: "

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget-object v2, p0, Lsun/security/pkcs/ESSCertId;->issuer:Lsun/security/x509/GeneralNames;

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    const-string/jumbo v2, "\n"

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@49
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v2, "\t"

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    iget-object v2, p0, Lsun/security/pkcs/ESSCertId;->serialNumber:Lsun/security/x509/SerialNumber;

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@62
    .line 164
    :cond_1
    const-string/jumbo v1, "\n]"

    #@65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@68
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@6b
    move-result-object v1

    #@6c
    return-object v1
.end method
