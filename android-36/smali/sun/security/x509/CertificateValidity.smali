.class public Lsun/security/x509/CertificateValidity;
.super Ljava/lang/Object;
.source "CertificateValidity.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.validity"

.field public static final blacklist NAME:Ljava/lang/String; = "validity"

.field public static final blacklist NOT_AFTER:Ljava/lang/String; = "notAfter"

.field public static final blacklist NOT_BEFORE:Ljava/lang/String; = "notBefore"

.field private static final blacklist YR_2050:J = 0x24bd0146400L


# instance fields
.field private blacklist notAfter:Ljava/util/Date;

.field private blacklist notBefore:Ljava/util/Date;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(Ljava/util/Date;Ljava/util/Date;)V
    .registers 3
    .param p1, "notBefore"    # Ljava/util/Date;
    .param p2, "notAfter"    # Ljava/util/Date;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    .line 117
    iput-object p2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    .line 118
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 128
    .local v0, "derVal":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/CertificateValidity;->construct(Lsun/security/util/DerValue;)V

    .line 129
    return-void
.end method

.method private blacklist construct(Lsun/security/util/DerValue;)V
    .registers 9
    .param p1, "derVal"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_7c

    .line 77
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_74

    .line 80
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 81
    .local v0, "derIn":Lsun/security/util/DerInputStream;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v2

    .line 82
    .local v2, "seq":[Lsun/security/util/DerValue;
    array-length v3, v2

    const-string v4, "Invalid encoding for CertificateValidity"

    if-ne v3, v1, :cond_6e

    .line 85
    const/4 v1, 0x0

    aget-object v3, v2, v1

    iget-byte v3, v3, Lsun/security/util/DerValue;->tag:B

    const/16 v5, 0x18

    const/16 v6, 0x17

    if-ne v3, v6, :cond_35

    .line 86
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    goto :goto_43

    .line 87
    :cond_35
    aget-object v1, v2, v1

    iget-byte v1, v1, Lsun/security/util/DerValue;->tag:B

    if-ne v1, v5, :cond_68

    .line 88
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    .line 93
    :goto_43
    const/4 v1, 0x1

    aget-object v3, v2, v1

    iget-byte v3, v3, Lsun/security/util/DerValue;->tag:B

    if-ne v3, v6, :cond_53

    .line 94
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getUTCTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    goto :goto_61

    .line 95
    :cond_53
    aget-object v1, v2, v1

    iget-byte v1, v1, Lsun/security/util/DerValue;->tag:B

    if-ne v1, v5, :cond_62

    .line 96
    iget-object v1, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    .line 100
    :goto_61
    return-void

    .line 98
    :cond_62
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_68
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_6e
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "derIn":Lsun/security/util/DerInputStream;
    .end local v2    # "seq":[Lsun/security/util/DerValue;
    :cond_74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No data encoded for CertificateValidity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_7c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoded CertificateValidity, starting sequence tag missing."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getNotAfter()Ljava/util/Date;
    .registers 4

    .line 67
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private blacklist getNotBefore()Ljava/util/Date;
    .registers 4

    .line 62
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    const-string v0, "notBefore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 209
    iput-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    goto :goto_16

    .line 210
    :cond_c
    const-string v0, "notAfter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 211
    iput-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    .line 216
    :goto_16
    return-void

    .line 213
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist encode(Ljava/io/OutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    if-eqz v0, :cond_4e

    .line 155
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 157
    .local v0, "pair":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide v3, 0x24bd0146400L

    cmp-long v1, v1, v3

    if-gez v1, :cond_22

    .line 158
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    goto :goto_27

    .line 160
    :cond_22
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    .line 162
    :goto_27
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_37

    .line 163
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putUTCTime(Ljava/util/Date;)V

    goto :goto_3c

    .line 165
    :cond_37
    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    .line 167
    :goto_3c
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 168
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 170
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 171
    return-void

    .line 152
    .end local v0    # "pair":Lsun/security/util/DerOutputStream;
    .end local v1    # "seq":Lsun/security/util/DerOutputStream;
    :cond_4e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CertAttrSet:CertificateValidity: null values to encode.\n"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lsun/security/x509/CertificateValidity;->get(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const-string v0, "notBefore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 195
    invoke-direct {p0}, Lsun/security/x509/CertificateValidity;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 196
    :cond_d
    const-string v0, "notAfter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 197
    invoke-direct {p0}, Lsun/security/x509/CertificateValidity;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 199
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 224
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "notBefore"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 225
    const-string v1, "notAfter"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 234
    const-string v0, "validity"

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_28

    .line 180
    const-string v0, "notBefore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 181
    move-object v0, p2

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    goto :goto_1f

    .line 182
    :cond_12
    const-string v0, "notAfter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 183
    move-object v0, p2

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    .line 188
    :goto_1f
    return-void

    .line 185
    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_28
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type Date."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 135
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    if-nez v0, :cond_9

    goto :goto_39

    .line 137
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validity: [From: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n               To: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    .line 138
    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0

    .line 136
    :cond_39
    :goto_39
    const-string v0, ""

    return-object v0
.end method

.method public blacklist valid()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 247
    .local v0, "now":Ljava/util/Date;
    invoke-virtual {p0, v0}, Lsun/security/x509/CertificateValidity;->valid(Ljava/util/Date;)V

    .line 248
    return-void
.end method

.method public blacklist valid(Ljava/util/Date;)V
    .registers 5
    .param p1, "now"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateNotYetValidException;,
            Ljava/security/cert/CertificateExpiredException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 272
    iget-object v0, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 276
    return-void

    .line 273
    :cond_11
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotAfter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    .line 274
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_30
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotBefore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    .line 270
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
