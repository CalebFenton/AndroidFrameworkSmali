.class public Lsun/security/x509/CertificateValidity;
.super Ljava/lang/Object;
.source "CertificateValidity.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.validity"

.field public static final NAME:Ljava/lang/String; = "validity"

.field public static final NOT_AFTER:Ljava/lang/String; = "notAfter"

.field public static final NOT_BEFORE:Ljava/lang/String; = "notBefore"

.field private static final YR_2050:J = 0x24bd0146400L


# instance fields
.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .param p1, "notBefore"    # Ljava/util/Date;
    .param p2, "notAfter"    # Ljava/util/Date;

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    iput-object p1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@5
    .line 117
    iput-object p2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@7
    .line 115
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 127
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@6
    move-result-object v0

    #@7
    .line 128
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateValidity;->construct(Lsun/security/util/DerValue;)V

    #@a
    .line 126
    return-void
.end method

.method private construct(Lsun/security/util/DerValue;)V
    .locals 9
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v8, 0x18

    #@2
    const/16 v7, 0x17

    #@4
    const/4 v6, 0x2

    #@5
    const/4 v5, 0x1

    #@6
    const/4 v4, 0x0

    #@7
    .line 72
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    #@9
    const/16 v3, 0x30

    #@b
    if-eq v2, v3, :cond_0

    #@d
    .line 73
    new-instance v2, Ljava/io/IOException;

    #@f
    const-string/jumbo v3, "Invalid encoded CertificateValidity, starting sequence tag missing."

    #@12
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 77
    :cond_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@18
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    #@1b
    move-result v2

    #@1c
    if-nez v2, :cond_1

    #@1e
    .line 78
    new-instance v2, Ljava/io/IOException;

    #@20
    const-string/jumbo v3, "No data encoded for CertificateValidity"

    #@23
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 80
    :cond_1
    new-instance v0, Lsun/security/util/DerInputStream;

    #@29
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v0, v2}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@30
    .line 81
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    invoke-virtual {v0, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@33
    move-result-object v1

    #@34
    .line 82
    .local v1, "seq":[Lsun/security/util/DerValue;
    array-length v2, v1

    #@35
    if-eq v2, v6, :cond_2

    #@37
    .line 83
    new-instance v2, Ljava/io/IOException;

    #@39
    const-string/jumbo v3, "Invalid encoding for CertificateValidity"

    #@3c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2

    #@40
    .line 85
    :cond_2
    aget-object v2, v1, v4

    #@42
    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    #@44
    if-ne v2, v7, :cond_3

    #@46
    .line 86
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@48
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    #@4b
    move-result-object v2

    #@4c
    iput-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@4e
    .line 93
    :goto_0
    aget-object v2, v1, v5

    #@50
    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    #@52
    if-ne v2, v7, :cond_5

    #@54
    .line 94
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@56
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    #@59
    move-result-object v2

    #@5a
    iput-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@5c
    .line 71
    :goto_1
    return-void

    #@5d
    .line 87
    :cond_3
    aget-object v2, v1, v4

    #@5f
    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    #@61
    if-ne v2, v8, :cond_4

    #@63
    .line 88
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@65
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@68
    move-result-object v2

    #@69
    iput-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@6b
    goto :goto_0

    #@6c
    .line 90
    :cond_4
    new-instance v2, Ljava/io/IOException;

    #@6e
    const-string/jumbo v3, "Invalid encoding for CertificateValidity"

    #@71
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@74
    throw v2

    #@75
    .line 95
    :cond_5
    aget-object v2, v1, v5

    #@77
    iget-byte v2, v2, Lsun/security/util/DerValue;->tag:B

    #@79
    if-ne v2, v8, :cond_6

    #@7b
    .line 96
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@7d
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    #@80
    move-result-object v2

    #@81
    iput-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@83
    goto :goto_1

    #@84
    .line 98
    :cond_6
    new-instance v2, Ljava/io/IOException;

    #@86
    const-string/jumbo v3, "Invalid encoding for CertificateValidity"

    #@89
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v2
.end method

.method private getNotAfter()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 67
    new-instance v0, Ljava/util/Date;

    #@2
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@4
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@7
    move-result-wide v2

    #@8
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@b
    return-object v0
.end method

.method private getNotBefore()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 62
    new-instance v0, Ljava/util/Date;

    #@2
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@4
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@7
    move-result-wide v2

    #@8
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@b
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 208
    const-string/jumbo v0, "notBefore"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 209
    iput-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@c
    .line 207
    :goto_0
    return-void

    #@d
    .line 210
    :cond_0
    const-string/jumbo v0, "notAfter"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 211
    iput-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@18
    goto :goto_0

    #@19
    .line 213
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1b
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    #@1e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide v4, 0x24bd0146400L

    #@5
    .line 151
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@7
    if-eqz v2, :cond_0

    #@9
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@b
    if-nez v2, :cond_1

    #@d
    .line 152
    :cond_0
    new-instance v2, Ljava/io/IOException;

    #@f
    const-string/jumbo v3, "CertAttrSet:CertificateValidity: null values to encode.\n"

    #@12
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v2

    #@16
    .line 155
    :cond_1
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@18
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@1b
    .line 157
    .local v0, "pair":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@1d
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@20
    move-result-wide v2

    #@21
    cmp-long v2, v2, v4

    #@23
    if-gez v2, :cond_2

    #@25
    .line 158
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@27
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    #@2a
    .line 162
    :goto_0
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@2c
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    #@2f
    move-result-wide v2

    #@30
    cmp-long v2, v2, v4

    #@32
    if-gez v2, :cond_3

    #@34
    .line 163
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@36
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    #@39
    .line 167
    :goto_1
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@3b
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@3e
    .line 168
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    const/16 v2, 0x30

    #@40
    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@43
    .line 170
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@46
    move-result-object v2

    #@47
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    #@4a
    .line 147
    return-void

    #@4b
    .line 160
    .end local v1    # "seq":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@4d
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    #@50
    goto :goto_0

    #@51
    .line 165
    :cond_3
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@53
    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    #@56
    goto :goto_1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 194
    const-string/jumbo v0, "notBefore"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 195
    invoke-direct {p0}, Lsun/security/x509/CertificateValidity;->getNotBefore()Ljava/util/Date;

    #@c
    move-result-object v0

    #@d
    return-object v0

    #@e
    .line 196
    :cond_0
    const-string/jumbo v0, "notAfter"

    #@11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 197
    invoke-direct {p0}, Lsun/security/x509/CertificateValidity;->getNotAfter()Ljava/util/Date;

    #@1a
    move-result-object v0

    #@1b
    return-object v0

    #@1c
    .line 199
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@1e
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    #@21
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 223
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 224
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "notBefore"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 225
    const-string/jumbo v1, "notAfter"

    #@e
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@11
    .line 227
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 234
    const-string/jumbo v0, "validity"

    #@3
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 177
    instance-of v0, p2, Ljava/util/Date;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 178
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Attribute must be of type Date."

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 180
    :cond_0
    const-string/jumbo v0, "notBefore"

    #@10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 181
    check-cast p2, Ljava/util/Date;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@1a
    .line 176
    :goto_0
    return-void

    #@1b
    .line 182
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "notAfter"

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@21
    move-result v0

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 183
    check-cast p2, Ljava/util/Date;

    #@26
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@28
    goto :goto_0

    #@29
    .line 185
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/io/IOException;

    #@2b
    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    #@2e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@6
    if-nez v0, :cond_1

    #@8
    .line 136
    :cond_0
    const-string/jumbo v0, ""

    #@b
    return-object v0

    #@c
    .line 137
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v1, "Validity: [From: "

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@1a
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 138
    const-string/jumbo v1, ",\n               To: "

    #@25
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    .line 138
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@2b
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 138
    const-string/jumbo v1, "]"

    #@36
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    return-object v0
.end method

.method public valid()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    #@5
    .line 247
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/CertificateValidity;->valid(Ljava/util/Date;)V

    #@8
    .line 245
    return-void
.end method

.method public valid(Ljava/util/Date;)V
    .locals 3
    .param p1, "now"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 269
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "NotBefore: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 270
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    #@18
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 272
    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@2a
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    #@2d
    move-result v0

    #@2e
    if-eqz v0, :cond_1

    #@30
    .line 273
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    #@32
    new-instance v1, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v2, "NotAfter: "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    .line 274
    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    #@40
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v0

    #@50
    .line 262
    :cond_1
    return-void
.end method
