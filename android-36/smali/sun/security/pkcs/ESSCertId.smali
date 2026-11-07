.class Lsun/security/pkcs/ESSCertId;
.super Ljava/lang/Object;
.source "SigningCertificateInfo.java"


# static fields
.field private static volatile blacklist hexDumper:Lsun/misc/HexDumpEncoder;


# instance fields
.field private blacklist certHash:[B

.field private blacklist issuer:Lsun/security/x509/GeneralNames;

.field private blacklist serialNumber:Lsun/security/x509/SerialNumber;


# direct methods
.method constructor blacklist <init>(Lsun/security/util/DerValue;)V
    .registers 5
    .param p1, "certId"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/ESSCertId;->certHash:[B

    .line 144
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-lez v0, :cond_37

    .line 145
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 147
    .local v0, "issuerSerial":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/GeneralNames;

    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/pkcs/ESSCertId;->issuer:Lsun/security/x509/GeneralNames;

    .line 149
    new-instance v1, Lsun/security/x509/SerialNumber;

    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/SerialNumber;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/pkcs/ESSCertId;->serialNumber:Lsun/security/x509/SerialNumber;

    .line 151
    .end local v0    # "issuerSerial":Lsun/security/util/DerValue;
    :cond_37
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "[\n\tCertificate hash (SHA-1):\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    sget-object v1, Lsun/security/pkcs/ESSCertId;->hexDumper:Lsun/misc/HexDumpEncoder;

    if-nez v1, :cond_15

    .line 157
    new-instance v1, Lsun/misc/HexDumpEncoder;

    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    sput-object v1, Lsun/security/pkcs/ESSCertId;->hexDumper:Lsun/misc/HexDumpEncoder;

    .line 159
    :cond_15
    sget-object v1, Lsun/security/pkcs/ESSCertId;->hexDumper:Lsun/misc/HexDumpEncoder;

    iget-object v2, p0, Lsun/security/pkcs/ESSCertId;->certHash:[B

    invoke-virtual {v1, v2}, Lsun/misc/HexDumpEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v1, p0, Lsun/security/pkcs/ESSCertId;->issuer:Lsun/security/x509/GeneralNames;

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lsun/security/pkcs/ESSCertId;->serialNumber:Lsun/security/x509/SerialNumber;

    if-eqz v1, :cond_5e

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\tIssuer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/ESSCertId;->issuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/ESSCertId;->serialNumber:Lsun/security/x509/SerialNumber;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :cond_5e
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
