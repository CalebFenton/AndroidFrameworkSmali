.class public Lsun/security/x509/NetscapeCertTypeExtension;
.super Lsun/security/x509/Extension;
.source "NetscapeCertTypeExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist CertType_data:[I

.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.NetscapeCertType"

.field public static final blacklist NAME:Ljava/lang/String; = "NetscapeCertType"

.field public static blacklist NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier; = null

.field public static final blacklist OBJECT_SIGNING:Ljava/lang/String; = "object_signing"

.field public static final blacklist OBJECT_SIGNING_CA:Ljava/lang/String; = "object_signing_ca"

.field public static final blacklist SSL_CA:Ljava/lang/String; = "ssl_ca"

.field public static final blacklist SSL_CLIENT:Ljava/lang/String; = "ssl_client"

.field public static final blacklist SSL_SERVER:Ljava/lang/String; = "ssl_server"

.field public static final blacklist S_MIME:Ljava/lang/String; = "s_mime"

.field public static final blacklist S_MIME_CA:Ljava/lang/String; = "s_mime_ca"

.field private static final blacklist mAttributeNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;


# instance fields
.field private blacklist bitString:[Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 72
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_76

    sput-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->CertType_data:[I

    .line 81
    :try_start_8
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/NetscapeCertTypeExtension;->CertType_data:[I

    invoke-direct {v1, v2}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    sput-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_12

    .line 84
    goto :goto_13

    .line 82
    :catch_12
    move-exception v1

    .line 99
    :goto_13
    new-array v1, v0, [Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "ssl_client"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v4

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "ssl_server"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "s_mime"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "object_signing"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v5}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "ssl_ca"

    const/4 v5, 0x5

    invoke-direct {v2, v3, v5}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "s_mime_ca"

    const/4 v6, 0x6

    invoke-direct {v2, v3, v6}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    const-string v3, "object_signing_ca"

    invoke-direct {v2, v3, v0}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v6

    sput-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    .line 110
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    .line 112
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    array-length v1, v0

    :goto_67
    if-ge v4, v1, :cond_75

    aget-object v2, v0, v4

    .line 113
    .local v2, "entry":Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    sget-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    iget-object v5, v2, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v2    # "entry":Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    .line 115
    :cond_75
    return-void

    :array_76
    .array-data 4
        0x2
        0x10
        0x348
        0x1
        0x1bc42
        0x1
        0x1
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 203
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 204
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 206
    const/4 v0, 0x0

    new-array v0, v0, [Z

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 207
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 193
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 194
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 195
    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    .line 196
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 197
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v1

    invoke-virtual {v1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 198
    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 4
    .param p1, "bitString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 163
    new-instance v0, Lsun/security/util/BitArray;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 164
    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 165
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 167
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 168
    return-void
.end method

.method public constructor blacklist <init>([Z)V
    .registers 3
    .param p1, "bitString"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 177
    iput-object p1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 178
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 180
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 181
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 129
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/BitArray;

    iget-object v2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    .line 130
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    .line 131
    return-void
.end method

.method private static blacklist getPosition(Ljava/lang/String;)I
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 119
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    aget-object v1, v1, v0

    iget-object v1, v1, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 120
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    aget-object v1, v1, v0

    iget v1, v1, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mPosition:I

    return v1

    .line 118
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "i":I
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:NetscapeCertType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist isSet(I)Z
    .registers 3
    .param p1, "position"    # I

    .line 139
    iget-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private blacklist set(IZ)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "val"    # Z

    .line 148
    iget-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    array-length v0, v0

    if-lt p1, v0, :cond_14

    .line 149
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Z

    .line 150
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    iget-object v2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    .line 153
    .end local v0    # "tmp":[Z
    :cond_14
    iget-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    aput-boolean p2, v0, p1

    .line 154
    return-void
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

    .line 232
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->set(IZ)V

    .line 233
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 234
    return-void
.end method

.method public whitelist test-api encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 279
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 280
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 281
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    .line 282
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 284
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 285
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 286
    return-void
.end method

.method public greylist-max-r get(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic greylist-max-r get(Ljava/lang/String;)Ljava/lang/Object;
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

    .line 51
    invoke-virtual {p0, p1}, Lsun/security/x509/NetscapeCertTypeExtension;->get(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getElements()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKeyUsageMappedBits()[Z
    .registers 4

    .line 310
    new-instance v0, Lsun/security/x509/KeyUsageExtension;

    invoke-direct {v0}, Lsun/security/x509/KeyUsageExtension;-><init>()V

    .line 311
    .local v0, "keyUsage":Lsun/security/x509/KeyUsageExtension;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 314
    .local v1, "val":Ljava/lang/Boolean;
    :try_start_7
    const-string v2, "ssl_client"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "s_mime"

    .line 315
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "object_signing"

    .line 316
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 317
    :cond_2b
    const-string v2, "digital_signature"

    invoke-virtual {v0, v2, v1}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 319
    :cond_30
    const-string v2, "ssl_server"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 320
    const-string v2, "key_encipherment"

    invoke-virtual {v0, v2, v1}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    :cond_41
    const-string v2, "ssl_ca"

    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_65

    const-string v2, "s_mime_ca"

    .line 323
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-nez v2, :cond_65

    const-string v2, "object_signing_ca"

    .line 324
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 325
    :cond_65
    const-string v2, "key_certsign"

    invoke-virtual {v0, v2, v1}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_6a} :catch_6b

    goto :goto_6c

    .line 326
    :catch_6b
    move-exception v2

    :cond_6c
    :goto_6c
    nop

    .line 327
    invoke-virtual {v0}, Lsun/security/x509/KeyUsageExtension;->getBits()[Z

    move-result-object v2

    return-object v2
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 300
    const-string v0, "NetscapeCertType"

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

    .line 213
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_16

    .line 216
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 217
    .local v0, "val":Z
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/NetscapeCertTypeExtension;->set(IZ)V

    .line 218
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    .line 219
    return-void

    .line 214
    .end local v0    # "val":Z
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute must be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, "NetscapeCertType [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 245
    const-string v1, "   SSL client\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    :cond_1d
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 248
    const-string v1, "   SSL server\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_29
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 251
    const-string v1, "   S/MIME\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_35
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 254
    const-string v1, "   Object Signing\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_41
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 257
    const-string v1, "   SSL CA\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_4d
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 260
    const-string v1, "   S/MIME CA\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_59
    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 263
    const-string v1, "   Object Signing CA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_65
    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
