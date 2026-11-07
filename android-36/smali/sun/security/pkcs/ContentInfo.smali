.class public Lsun/security/pkcs/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# static fields
.field public static greylist DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static blacklist DIGESTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static blacklist ENCRYPTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static blacklist ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static blacklist NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o OLD_DATA:[I

.field public static blacklist OLD_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field private static final greylist-max-o OLD_SDATA:[I

.field public static blacklist OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static blacklist PKCS7_OID:Lsun/security/util/ObjectIdentifier;

.field public static blacklist SIGNED_AND_ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static blacklist SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static blacklist TIMESTAMP_TOKEN_INFO_OID:Lsun/security/util/ObjectIdentifier;

.field private static greylist-max-o crdata:[I

.field private static greylist-max-o data:[I

.field private static greylist-max-o ddata:[I

.field private static greylist-max-o edata:[I

.field private static greylist-max-o nsdata:[I

.field private static greylist-max-o pkcs7:[I

.field private static greylist-max-o sdata:[I

.field private static greylist-max-o sedata:[I

.field private static greylist-max-o tstInfo:[I


# instance fields
.field greylist-max-o content:Lsun/security/util/DerValue;

.field greylist-max-o contentType:Lsun/security/util/ObjectIdentifier;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_aa

    sput-object v0, Lsun/security/pkcs/ContentInfo;->pkcs7:[I

    .line 41
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_ba

    sput-object v1, Lsun/security/pkcs/ContentInfo;->data:[I

    .line 42
    new-array v1, v0, [I

    fill-array-data v1, :array_cc

    sput-object v1, Lsun/security/pkcs/ContentInfo;->sdata:[I

    .line 43
    new-array v1, v0, [I

    fill-array-data v1, :array_de

    sput-object v1, Lsun/security/pkcs/ContentInfo;->edata:[I

    .line 44
    new-array v1, v0, [I

    fill-array-data v1, :array_f0

    sput-object v1, Lsun/security/pkcs/ContentInfo;->sedata:[I

    .line 45
    new-array v1, v0, [I

    fill-array-data v1, :array_102

    sput-object v1, Lsun/security/pkcs/ContentInfo;->ddata:[I

    .line 46
    new-array v1, v0, [I

    fill-array-data v1, :array_114

    sput-object v1, Lsun/security/pkcs/ContentInfo;->crdata:[I

    .line 47
    new-array v1, v0, [I

    fill-array-data v1, :array_126

    sput-object v1, Lsun/security/pkcs/ContentInfo;->nsdata:[I

    .line 49
    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_138

    sput-object v1, Lsun/security/pkcs/ContentInfo;->tstInfo:[I

    .line 51
    new-array v1, v0, [I

    fill-array-data v1, :array_14e

    sput-object v1, Lsun/security/pkcs/ContentInfo;->OLD_SDATA:[I

    .line 52
    new-array v0, v0, [I

    fill-array-data v0, :array_160

    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_DATA:[I

    .line 66
    sget-object v0, Lsun/security/pkcs/ContentInfo;->pkcs7:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->PKCS7_OID:Lsun/security/util/ObjectIdentifier;

    .line 67
    sget-object v0, Lsun/security/pkcs/ContentInfo;->data:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 68
    sget-object v0, Lsun/security/pkcs/ContentInfo;->sdata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 69
    sget-object v0, Lsun/security/pkcs/ContentInfo;->edata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 70
    sget-object v0, Lsun/security/pkcs/ContentInfo;->sedata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->SIGNED_AND_ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 71
    sget-object v0, Lsun/security/pkcs/ContentInfo;->ddata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->DIGESTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 72
    sget-object v0, Lsun/security/pkcs/ContentInfo;->crdata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->ENCRYPTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 73
    sget-object v0, Lsun/security/pkcs/ContentInfo;->OLD_SDATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 74
    sget-object v0, Lsun/security/pkcs/ContentInfo;->OLD_DATA:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 81
    sget-object v0, Lsun/security/pkcs/ContentInfo;->nsdata:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

    .line 82
    sget-object v0, Lsun/security/pkcs/ContentInfo;->tstInfo:[I

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/pkcs/ContentInfo;->TIMESTAMP_TOKEN_INFO_OID:Lsun/security/util/ObjectIdentifier;

    .line 83
    return-void

    :array_aa
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
    .end array-data

    :array_ba
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x1
    .end array-data

    :array_cc
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x2
    .end array-data

    :array_de
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x3
    .end array-data

    :array_f0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x4
    .end array-data

    :array_102
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x5
    .end array-data

    :array_114
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x6
    .end array-data

    :array_126
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x2
        0x5
    .end array-data

    :array_138
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x9
        0x10
        0x1
        0x4
    .end array-data

    :array_14e
    .array-data 4
        0x1
        0x2
        0x348
        0x10fdcd
        0x1
        0x7
        0x2
    .end array-data

    :array_160
    .array-data 4
        0x1
        0x2
        0x348
        0x10fdcd
        0x1
        0x7
        0x1
    .end array-data
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;)V
    .registers 3
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(Lsun/security/util/DerInputStream;Z)V
    .registers 11
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v0

    .line 134
    .local v0, "typeAndContent":[Lsun/security/util/DerValue;
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 135
    .local v2, "type":Lsun/security/util/DerValue;
    new-instance v3, Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 136
    .local v3, "disType":Lsun/security/util/DerInputStream;
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    iput-object v4, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 138
    const/4 v4, 0x1

    if-eqz p2, :cond_22

    .line 140
    aget-object v1, v0, v4

    iput-object v1, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    goto :goto_38

    .line 146
    :cond_22
    array-length v5, v0

    if-le v5, v4, :cond_38

    .line 147
    aget-object v5, v0, v4

    .line 148
    .local v5, "taggedContent":Lsun/security/util/DerValue;
    new-instance v6, Lsun/security/util/DerInputStream;

    .line 149
    invoke-virtual {v5}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 150
    .local v6, "disTaggedContent":Lsun/security/util/DerInputStream;
    invoke-virtual {v6, v4, v4}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v4

    .line 151
    .local v4, "contents":[Lsun/security/util/DerValue;
    aget-object v1, v4, v1

    iput-object v1, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    .line 154
    .end local v4    # "contents":[Lsun/security/util/DerValue;
    .end local v5    # "taggedContent":Lsun/security/util/DerValue;
    .end local v6    # "disTaggedContent":Lsun/security/util/DerInputStream;
    :cond_38
    :goto_38
    return-void
.end method

.method public constructor greylist <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .registers 3
    .param p1, "contentType"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "content"    # Lsun/security/util/DerValue;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 90
    iput-object p2, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    .line 91
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Lsun/security/util/DerValue;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 98
    .local v0, "octetString":Lsun/security/util/DerValue;
    sget-object v1, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    .line 99
    iput-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    .line 100
    return-void
.end method


# virtual methods
.method public greylist encode(Lsun/security/util/DerOutputStream;)V
    .registers 8
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 181
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 184
    iget-object v1, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    if-eqz v1, :cond_27

    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "taggedContent":Lsun/security/util/DerValue;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 187
    .local v2, "contentDerCode":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    invoke-virtual {v3, v2}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 190
    new-instance v3, Lsun/security/util/DerValue;

    .line 191
    invoke-virtual {v2}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, -0x60

    invoke-direct {v3, v5, v4}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 192
    .end local v1    # "taggedContent":Lsun/security/util/DerValue;
    .local v3, "taggedContent":Lsun/security/util/DerValue;
    invoke-virtual {v0, v3}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 195
    .end local v2    # "contentDerCode":Lsun/security/util/DerOutputStream;
    .end local v3    # "taggedContent":Lsun/security/util/DerValue;
    :cond_27
    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 196
    return-void
.end method

.method public blacklist getContent()Lsun/security/util/DerValue;
    .registers 2

    .line 157
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    return-object v0
.end method

.method public blacklist getContentBytes()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    if-nez v0, :cond_6

    .line 206
    const/4 v0, 0x0

    return-object v0

    .line 208
    :cond_6
    new-instance v0, Lsun/security/util/DerInputStream;

    iget-object v1, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 209
    .local v0, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOctetString()[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist getContentType()Lsun/security/util/ObjectIdentifier;
    .registers 2

    .line 161
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public greylist getData()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/pkcs/ContentInfo;->OLD_DATA_OID:Lsun/security/util/ObjectIdentifier;

    .line 166
    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    sget-object v1, Lsun/security/pkcs/ContentInfo;->TIMESTAMP_TOKEN_INFO_OID:Lsun/security/util/ObjectIdentifier;

    .line 167
    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_3a

    .line 173
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content type is not DATA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    if-nez v0, :cond_40

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_40
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOctetString()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 213
    const-string v0, ""

    .line 215
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content Info Sequence\n\tContent type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\tContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    return-object v0
.end method
