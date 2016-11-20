.class public Lsun/security/pkcs/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# static fields
.field public static DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static DIGESTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static ENCRYPTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

.field private static final OLD_DATA:[I

.field public static OLD_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field private static final OLD_SDATA:[I

.field public static OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static PKCS7_OID:Lsun/security/util/ObjectIdentifier;

.field public static SIGNED_AND_ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

.field public static TIMESTAMP_TOKEN_INFO_OID:Lsun/security/util/ObjectIdentifier;

.field private static crdata:[I

.field private static data:[I

.field private static ddata:[I

.field private static edata:[I

.field private static nsdata:[I

.field private static pkcs7:[I

.field private static sdata:[I

.field private static sedata:[I

.field private static tstInfo:[I


# instance fields
.field content:Lsun/security/util/DerValue;

.field contentType:Lsun/security/util/ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x7

    #@1
    .line 41
    const/4 v0, 0x6

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lsun/security/pkcs/ContentInfo;->pkcs7:[I

    #@9
    .line 42
    new-array v0, v1, [I

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Lsun/security/pkcs/ContentInfo;->data:[I

    #@10
    .line 43
    new-array v0, v1, [I

    #@12
    fill-array-data v0, :array_2

    #@15
    sput-object v0, Lsun/security/pkcs/ContentInfo;->sdata:[I

    #@17
    .line 44
    new-array v0, v1, [I

    #@19
    fill-array-data v0, :array_3

    #@1c
    sput-object v0, Lsun/security/pkcs/ContentInfo;->edata:[I

    #@1e
    .line 45
    new-array v0, v1, [I

    #@20
    fill-array-data v0, :array_4

    #@23
    sput-object v0, Lsun/security/pkcs/ContentInfo;->sedata:[I

    #@25
    .line 46
    new-array v0, v1, [I

    #@27
    fill-array-data v0, :array_5

    #@2a
    sput-object v0, Lsun/security/pkcs/ContentInfo;->ddata:[I

    #@2c
    .line 47
    new-array v0, v1, [I

    #@2e
    fill-array-data v0, :array_6

    #@31
    sput-object v0, Lsun/security/pkcs/ContentInfo;->crdata:[I

    #@33
    .line 48
    new-array v0, v1, [I

    #@35
    fill-array-data v0, :array_7

    #@38
    sput-object v0, Lsun/security/pkcs/ContentInfo;->nsdata:[I

    #@3a
    .line 50
    const/16 v0, 0x9

    #@3c
    new-array v0, v0, [I

    #@3e
    fill-array-data v0, :array_8

    #@41
    sput-object v0, Lsun/security/pkcs/ContentInfo;->tstInfo:[I

    #@43
    .line 52
    new-array v0, v1, [I

    #@45
    fill-array-data v0, :array_9

    #@48
    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_SDATA:[I

    #@4a
    .line 53
    new-array v0, v1, [I

    #@4c
    fill-array-data v0, :array_a

    #@4f
    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_DATA:[I

    #@51
    .line 67
    sget-object v0, Lsun/security/pkcs/ContentInfo;->pkcs7:[I

    #@53
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@56
    move-result-object v0

    #@57
    sput-object v0, Lsun/security/pkcs/ContentInfo;->PKCS7_OID:Lsun/security/util/ObjectIdentifier;

    #@59
    .line 68
    sget-object v0, Lsun/security/pkcs/ContentInfo;->data:[I

    #@5b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@5e
    move-result-object v0

    #@5f
    sput-object v0, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@61
    .line 69
    sget-object v0, Lsun/security/pkcs/ContentInfo;->sdata:[I

    #@63
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@66
    move-result-object v0

    #@67
    sput-object v0, Lsun/security/pkcs/ContentInfo;->SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@69
    .line 70
    sget-object v0, Lsun/security/pkcs/ContentInfo;->edata:[I

    #@6b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@6e
    move-result-object v0

    #@6f
    sput-object v0, Lsun/security/pkcs/ContentInfo;->ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@71
    .line 71
    sget-object v0, Lsun/security/pkcs/ContentInfo;->sedata:[I

    #@73
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@76
    move-result-object v0

    #@77
    sput-object v0, Lsun/security/pkcs/ContentInfo;->SIGNED_AND_ENVELOPED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@79
    .line 72
    sget-object v0, Lsun/security/pkcs/ContentInfo;->ddata:[I

    #@7b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@7e
    move-result-object v0

    #@7f
    sput-object v0, Lsun/security/pkcs/ContentInfo;->DIGESTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@81
    .line 73
    sget-object v0, Lsun/security/pkcs/ContentInfo;->crdata:[I

    #@83
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@86
    move-result-object v0

    #@87
    sput-object v0, Lsun/security/pkcs/ContentInfo;->ENCRYPTED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@89
    .line 74
    sget-object v0, Lsun/security/pkcs/ContentInfo;->OLD_SDATA:[I

    #@8b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@8e
    move-result-object v0

    #@8f
    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_SIGNED_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@91
    .line 75
    sget-object v0, Lsun/security/pkcs/ContentInfo;->OLD_DATA:[I

    #@93
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@96
    move-result-object v0

    #@97
    sput-object v0, Lsun/security/pkcs/ContentInfo;->OLD_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@99
    .line 82
    sget-object v0, Lsun/security/pkcs/ContentInfo;->nsdata:[I

    #@9b
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@9e
    move-result-object v0

    #@9f
    sput-object v0, Lsun/security/pkcs/ContentInfo;->NETSCAPE_CERT_SEQUENCE_OID:Lsun/security/util/ObjectIdentifier;

    #@a1
    .line 83
    sget-object v0, Lsun/security/pkcs/ContentInfo;->tstInfo:[I

    #@a3
    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@a6
    move-result-object v0

    #@a7
    sput-object v0, Lsun/security/pkcs/ContentInfo;->TIMESTAMP_TOKEN_INFO_OID:Lsun/security/util/ObjectIdentifier;

    #@a9
    .line 38
    return-void

    #@aa
    .line 41
    :array_0
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
    .end array-data

    #@ba
    .line 42
    :array_1
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x1
    .end array-data

    #@cc
    .line 43
    :array_2
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x2
    .end array-data

    #@de
    .line 44
    :array_3
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x3
    .end array-data

    #@f0
    .line 45
    :array_4
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x4
    .end array-data

    #@102
    .line 46
    :array_5
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x5
    .end array-data

    #@114
    .line 47
    :array_6
    .array-data 4
        0x1
        0x2
        0x348
        0x1bb8d
        0x1
        0x7
        0x6
    .end array-data

    #@126
    .line 48
    :array_7
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x2
        0x5
    .end array-data

    #@138
    .line 50
    :array_8
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

    #@14e
    .line 52
    :array_9
    .array-data 4
        0x1
        0x2
        0x348
        0x10fdcd
        0x1
        0x7
        0x2
    .end array-data

    #@160
    .line 53
    :array_a
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

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/ContentInfo;-><init>(Lsun/security/util/DerInputStream;Z)V

    #@4
    .line 107
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;Z)V
    .locals 9
    .param p1, "derin"    # Lsun/security/util/DerInputStream;
    .param p2, "oldStyle"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lsun/security/pkcs/ParsingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 132
    const/4 v6, 0x2

    #@6
    invoke-virtual {p1, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    #@9
    move-result-object v5

    #@a
    .line 135
    .local v5, "typeAndContent":[Lsun/security/util/DerValue;
    aget-object v4, v5, v8

    #@c
    .line 136
    .local v4, "type":Lsun/security/util/DerValue;
    new-instance v2, Lsun/security/util/DerInputStream;

    #@e
    invoke-virtual {v4}, Lsun/security/util/DerValue;->toByteArray()[B

    #@11
    move-result-object v6

    #@12
    invoke-direct {v2, v6}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@15
    .line 137
    .local v2, "disType":Lsun/security/util/DerInputStream;
    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    #@18
    move-result-object v6

    #@19
    iput-object v6, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@1b
    .line 139
    if-eqz p2, :cond_1

    #@1d
    .line 141
    aget-object v6, v5, v7

    #@1f
    iput-object v6, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@21
    .line 123
    :cond_0
    :goto_0
    return-void

    #@22
    .line 147
    :cond_1
    array-length v6, v5

    #@23
    if-le v6, v7, :cond_0

    #@25
    .line 148
    aget-object v3, v5, v7

    #@27
    .line 150
    .local v3, "taggedContent":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/util/DerInputStream;

    #@29
    invoke-virtual {v3}, Lsun/security/util/DerValue;->toByteArray()[B

    #@2c
    move-result-object v6

    #@2d
    invoke-direct {v1, v6}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@30
    .line 151
    .local v1, "disTaggedContent":Lsun/security/util/DerInputStream;
    invoke-virtual {v1, v7, v7}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    #@33
    move-result-object v0

    #@34
    .line 152
    .local v0, "contents":[Lsun/security/util/DerValue;
    aget-object v6, v0, v8

    #@36
    iput-object v6, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@38
    goto :goto_0
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 0
    .param p1, "contentType"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "content"    # Lsun/security/util/DerValue;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    iput-object p1, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@5
    .line 91
    iput-object p2, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@7
    .line 89
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    new-instance v0, Lsun/security/util/DerValue;

    #@5
    const/4 v1, 0x4

    #@6
    invoke-direct {v0, v1, p1}, Lsun/security/util/DerValue;-><init>(B[B)V

    #@9
    .line 99
    .local v0, "octetString":Lsun/security/util/DerValue;
    sget-object v1, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 100
    iput-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@f
    .line 97
    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 5
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 181
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 182
    .local v1, "seq":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@7
    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@a
    .line 185
    iget-object v3, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 186
    const/4 v2, 0x0

    #@f
    .line 187
    .local v2, "taggedContent":Lsun/security/util/DerValue;
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@11
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@14
    .line 188
    .local v0, "contentDerCode":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@16
    invoke-virtual {v3, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    #@19
    .line 191
    new-instance v2, Lsun/security/util/DerValue;

    #@1b
    .line 192
    .end local v2    # "taggedContent":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@1e
    move-result-object v3

    #@1f
    .line 191
    const/16 v4, -0x60

    #@21
    invoke-direct {v2, v4, v3}, Lsun/security/util/DerValue;-><init>(B[B)V

    #@24
    .line 193
    .local v2, "taggedContent":Lsun/security/util/DerValue;
    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    #@27
    .line 196
    .end local v0    # "contentDerCode":Lsun/security/util/DerOutputStream;
    .end local v2    # "taggedContent":Lsun/security/util/DerValue;
    :cond_0
    const/16 v3, 0x30

    #@29
    invoke-virtual {p1, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@2c
    .line 177
    return-void
.end method

.method public getContent()Lsun/security/util/DerValue;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@2
    return-object v0
.end method

.method public getContentBytes()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 204
    iget-object v1, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 205
    return-object v2

    #@6
    .line 207
    :cond_0
    new-instance v0, Lsun/security/util/DerInputStream;

    #@8
    iget-object v1, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@a
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    #@d
    move-result-object v1

    #@e
    invoke-direct {v0, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    #@11
    .line 208
    .local v0, "dis":Lsun/security/util/DerInputStream;
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOctetString()[B

    #@14
    move-result-object v1

    #@15
    return-object v1
.end method

.method public getContentType()Lsun/security/util/ObjectIdentifier;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@2
    return-object v0
.end method

.method public getData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 166
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@3
    sget-object v1, Lsun/security/pkcs/ContentInfo;->DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@5
    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 167
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@d
    sget-object v1, Lsun/security/pkcs/ContentInfo;->OLD_DATA_OID:Lsun/security/util/ObjectIdentifier;

    #@f
    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@12
    move-result v0

    #@13
    .line 166
    if-nez v0, :cond_0

    #@15
    .line 168
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@17
    sget-object v1, Lsun/security/pkcs/ContentInfo;->TIMESTAMP_TOKEN_INFO_OID:Lsun/security/util/ObjectIdentifier;

    #@19
    invoke-virtual {v0, v1}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    #@1c
    move-result v0

    #@1d
    .line 166
    if-eqz v0, :cond_2

    #@1f
    .line 169
    :cond_0
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@21
    if-nez v0, :cond_1

    #@23
    .line 170
    return-object v2

    #@24
    .line 172
    :cond_1
    iget-object v0, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@26
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOctetString()[B

    #@29
    move-result-object v0

    #@2a
    return-object v0

    #@2b
    .line 174
    :cond_2
    new-instance v0, Ljava/io/IOException;

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "content type is not DATA: "

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@46
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 212
    const-string/jumbo v0, ""

    #@3
    .line 214
    .local v0, "out":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    const-string/jumbo v2, "Content Info Sequence\n\tContent type: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p0, Lsun/security/pkcs/ContentInfo;->contentType:Lsun/security/util/ObjectIdentifier;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "\n"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    const-string/jumbo v2, "\tContent: "

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget-object v2, p0, Lsun/security/pkcs/ContentInfo;->content:Lsun/security/util/DerValue;

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v0

    #@3e
    .line 216
    return-object v0
.end method
