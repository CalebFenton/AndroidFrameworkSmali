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
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CertType_data:[I

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.NetscapeCertType"

.field public static final NAME:Ljava/lang/String; = "NetscapeCertType"

.field public static NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier; = null

.field public static final OBJECT_SIGNING:Ljava/lang/String; = "object_signing"

.field public static final OBJECT_SIGNING_CA:Ljava/lang/String; = "object_signing_ca"

.field public static final SSL_CA:Ljava/lang/String; = "ssl_ca"

.field public static final SSL_CLIENT:Ljava/lang/String; = "ssl_client"

.field public static final SSL_SERVER:Ljava/lang/String; = "ssl_server"

.field public static final S_MIME:Ljava/lang/String; = "s_mime"

.field public static final S_MIME_CA:Ljava/lang/String; = "s_mime_ca"

.field private static final mAttributeNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;


# instance fields
.field private bitString:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v7, 0x7

    #@4
    const/4 v2, 0x0

    #@5
    .line 72
    new-array v3, v7, [I

    #@7
    fill-array-data v3, :array_0

    #@a
    sput-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->CertType_data:[I

    #@c
    .line 81
    :try_start_0
    new-instance v3, Lsun/security/util/ObjectIdentifier;

    #@e
    sget-object v4, Lsun/security/x509/NetscapeCertTypeExtension;->CertType_data:[I

    #@10
    invoke-direct {v3, v4}, Lsun/security/util/ObjectIdentifier;-><init>([I)V

    #@13
    sput-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 99
    .local v1, "ioe":Ljava/io/IOException;
    :goto_0
    new-array v3, v7, [Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@17
    .line 100
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@19
    const-string/jumbo v5, "ssl_client"

    #@1c
    invoke-direct {v4, v5, v2}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    #@1f
    aput-object v4, v3, v2

    #@21
    .line 101
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@23
    const-string/jumbo v5, "ssl_server"

    #@26
    invoke-direct {v4, v5, v6}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    #@29
    aput-object v4, v3, v6

    #@2b
    .line 102
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@2d
    const-string/jumbo v5, "s_mime"

    #@30
    invoke-direct {v4, v5, v8}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    #@33
    aput-object v4, v3, v8

    #@35
    .line 103
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@37
    const-string/jumbo v5, "object_signing"

    #@3a
    invoke-direct {v4, v5, v9}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    #@3d
    aput-object v4, v3, v9

    #@3f
    .line 105
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@41
    const-string/jumbo v5, "ssl_ca"

    #@44
    const/4 v6, 0x5

    #@45
    invoke-direct {v4, v5, v6}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    #@48
    const/4 v5, 0x4

    #@49
    aput-object v4, v3, v5

    #@4b
    .line 106
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@4d
    const-string/jumbo v5, "s_mime_ca"

    #@50
    const/4 v6, 0x6

    #@51
    invoke-direct {v4, v5, v6}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    #@54
    const/4 v5, 0x5

    #@55
    aput-object v4, v3, v5

    #@57
    .line 107
    new-instance v4, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@59
    const-string/jumbo v5, "object_signing_ca"

    #@5c
    invoke-direct {v4, v5, v7}, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;-><init>(Ljava/lang/String;I)V

    #@5f
    const/4 v5, 0x6

    #@60
    aput-object v4, v3, v5

    #@62
    .line 99
    sput-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@64
    .line 110
    new-instance v3, Ljava/util/Vector;

    #@66
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@69
    sput-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    #@6b
    .line 112
    sget-object v3, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@6d
    array-length v4, v3

    #@6e
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_1
    if-ge v2, v4, :cond_0

    #@70
    aget-object v0, v3, v2

    #@72
    .line 113
    .local v0, "entry":Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    sget-object v5, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    #@74
    iget-object v6, v0, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    #@76
    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@79
    .line 112
    add-int/lit8 v2, v2, 0x1

    #@7b
    goto :goto_1

    #@7c
    .line 51
    .end local v0    # "entry":Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;
    :cond_0
    return-void

    #@7d
    .line 82
    :catch_0
    move-exception v1

    #@7e
    .restart local v1    # "ioe":Ljava/io/IOException;
    goto :goto_0

    #@7f
    .line 72
    nop

    #@80
    :array_0
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

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 202
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 203
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 204
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    #@a
    .line 205
    const/4 v0, 0x0

    #@b
    new-array v0, v0, [Z

    #@d
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@f
    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 2
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 192
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 193
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v1

    #@b
    iput-boolean v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    #@d
    .line 194
    check-cast p2, [B

    #@f
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    #@11
    .line 195
    new-instance v0, Lsun/security/util/DerValue;

    #@13
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    #@15
    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    #@18
    .line 196
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@1f
    move-result-object v1

    #@20
    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@22
    .line 191
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "bitString"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 163
    new-instance v0, Lsun/security/util/BitArray;

    #@5
    array-length v1, p1

    #@6
    mul-int/lit8 v1, v1, 0x8

    #@8
    invoke-direct {v0, v1, p1}, Lsun/security/util/BitArray;-><init>(I[B)V

    #@b
    invoke-virtual {v0}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    #@e
    move-result-object v0

    #@f
    .line 162
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@11
    .line 164
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    #@13
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@15
    .line 165
    const/4 v0, 0x1

    #@16
    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    #@18
    .line 166
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    #@1b
    .line 161
    return-void
.end method

.method public constructor <init>([Z)V
    .locals 1
    .param p1, "bitString"    # [Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 176
    iput-object p1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@5
    .line 177
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    #@7
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@9
    .line 178
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    #@c
    .line 179
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    #@f
    .line 175
    return-void
.end method

.method private encodeThis()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 129
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/BitArray;

    #@7
    iget-object v2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@9
    invoke-direct {v1, v2}, Lsun/security/util/BitArray;-><init>([Z)V

    #@c
    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    #@f
    .line 130
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    #@15
    .line 127
    return-void
.end method

.method private static getPosition(Ljava/lang/String;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 119
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@8
    aget-object v1, v1, v0

    #@a
    iget-object v1, v1, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mName:Ljava/lang/String;

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 120
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->mMapData:[Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;

    #@14
    aget-object v1, v1, v0

    #@16
    iget v1, v1, Lsun/security/x509/NetscapeCertTypeExtension$MapEntry;->mPosition:I

    #@18
    return v1

    #@19
    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 122
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Attribute name ["

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    .line 123
    const-string/jumbo v3, "] not recognized by CertAttrSet:NetscapeCertType."

    #@31
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v1
.end method

.method private isSet(I)Z
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@2
    aget-boolean v0, v0, p1

    #@4
    return v0
.end method

.method private set(IZ)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "val"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 147
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@3
    array-length v1, v1

    #@4
    if-lt p1, v1, :cond_0

    #@6
    .line 148
    add-int/lit8 v1, p1, 0x1

    #@8
    new-array v0, v1, [Z

    #@a
    .line 149
    .local v0, "tmp":[Z
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@c
    iget-object v2, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@e
    array-length v2, v2

    #@f
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    #@12
    .line 150
    iput-object v0, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@14
    .line 152
    .end local v0    # "tmp":[Z
    :cond_0
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->bitString:[Z

    #@16
    aput-boolean p2, v1, p1

    #@18
    .line 145
    return-void
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
    .line 231
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, v0, v1}, Lsun/security/x509/NetscapeCertTypeExtension;->set(IZ)V

    #@8
    .line 232
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    #@b
    .line 230
    return-void
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 271
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 272
    sget-object v1, Lsun/security/x509/NetscapeCertTypeExtension;->NetscapeCertType_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 273
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Lsun/security/x509/NetscapeCertTypeExtension;->critical:Z

    #@10
    .line 274
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    #@13
    .line 276
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 277
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 268
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 224
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, v0}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 1
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
    .line 285
    sget-object v0, Lsun/security/x509/NetscapeCertTypeExtension;->mAttributeNames:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getKeyUsageMappedBits()[Z
    .locals 4

    #@0
    .prologue
    .line 302
    new-instance v1, Lsun/security/x509/KeyUsageExtension;

    #@2
    invoke-direct {v1}, Lsun/security/x509/KeyUsageExtension;-><init>()V

    #@5
    .line 303
    .local v1, "keyUsage":Lsun/security/x509/KeyUsageExtension;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@7
    .line 306
    .local v2, "val":Ljava/lang/Boolean;
    :try_start_0
    const-string/jumbo v3, "ssl_client"

    #@a
    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@d
    move-result v3

    #@e
    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@11
    move-result v3

    #@12
    if-nez v3, :cond_0

    #@14
    .line 307
    const-string/jumbo v3, "s_mime"

    #@17
    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@1a
    move-result v3

    #@1b
    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@1e
    move-result v3

    #@1f
    .line 306
    if-nez v3, :cond_0

    #@21
    .line 308
    const-string/jumbo v3, "object_signing"

    #@24
    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@27
    move-result v3

    #@28
    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@2b
    move-result v3

    #@2c
    .line 306
    if-eqz v3, :cond_1

    #@2e
    .line 309
    :cond_0
    const-string/jumbo v3, "digital_signature"

    #@31
    invoke-virtual {v1, v3, v2}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@34
    .line 311
    :cond_1
    const-string/jumbo v3, "ssl_server"

    #@37
    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@3a
    move-result v3

    #@3b
    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_2

    #@41
    .line 312
    const-string/jumbo v3, "key_encipherment"

    #@44
    invoke-virtual {v1, v3, v2}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V

    #@47
    .line 314
    :cond_2
    const-string/jumbo v3, "ssl_ca"

    #@4a
    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@4d
    move-result v3

    #@4e
    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@51
    move-result v3

    #@52
    if-nez v3, :cond_3

    #@54
    .line 315
    const-string/jumbo v3, "s_mime_ca"

    #@57
    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@5a
    move-result v3

    #@5b
    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@5e
    move-result v3

    #@5f
    .line 314
    if-nez v3, :cond_3

    #@61
    .line 316
    const-string/jumbo v3, "object_signing_ca"

    #@64
    invoke-static {v3}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@67
    move-result v3

    #@68
    invoke-direct {p0, v3}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@6b
    move-result v3

    #@6c
    .line 314
    if-eqz v3, :cond_4

    #@6e
    .line 317
    :cond_3
    const-string/jumbo v3, "key_certsign"

    #@71
    invoke-virtual {v1, v3, v2}, Lsun/security/x509/KeyUsageExtension;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@74
    .line 319
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lsun/security/x509/KeyUsageExtension;->getBits()[Z

    #@77
    move-result-object v3

    #@78
    return-object v3

    #@79
    .line 318
    :catch_0
    move-exception v0

    #@7a
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 292
    const-string/jumbo v0, "NetscapeCertType"

    #@3
    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 212
    instance-of v1, p2, Ljava/lang/Boolean;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 213
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Attribute must be of type Boolean."

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 215
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    #@f
    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@12
    move-result v0

    #@13
    .line 216
    .local v0, "val":Z
    invoke-static {p1}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v1, v0}, Lsun/security/x509/NetscapeCertTypeExtension;->set(IZ)V

    #@1a
    .line 217
    invoke-direct {p0}, Lsun/security/x509/NetscapeCertTypeExtension;->encodeThis()V

    #@1d
    .line 211
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, "NetscapeCertType [\n"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 242
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "ssl_client"

    #@1b
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@1e
    move-result v2

    #@1f
    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    const-string/jumbo v3, "   SSL client\n"

    #@31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 244
    :cond_0
    const-string/jumbo v2, "ssl_server"

    #@3c
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@3f
    move-result v2

    #@40
    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@43
    move-result v2

    #@44
    if-eqz v2, :cond_1

    #@46
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    const-string/jumbo v3, "   SSL server\n"

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    .line 246
    :cond_1
    const-string/jumbo v2, "s_mime"

    #@5d
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@60
    move-result v2

    #@61
    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@64
    move-result v2

    #@65
    if-eqz v2, :cond_2

    #@67
    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    const-string/jumbo v3, "   S/MIME\n"

    #@73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    .line 248
    :cond_2
    const-string/jumbo v2, "object_signing"

    #@7e
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@81
    move-result v2

    #@82
    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@85
    move-result v2

    #@86
    if-eqz v2, :cond_3

    #@88
    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    const-string/jumbo v3, "   Object Signing\n"

    #@94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    .line 250
    :cond_3
    const-string/jumbo v2, "ssl_ca"

    #@9f
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@a2
    move-result v2

    #@a3
    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@a6
    move-result v2

    #@a7
    if-eqz v2, :cond_4

    #@a9
    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    #@ab
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ae
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    const-string/jumbo v3, "   SSL CA\n"

    #@b5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v2

    #@b9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bc
    move-result-object v1

    #@bd
    .line 252
    :cond_4
    const-string/jumbo v2, "s_mime_ca"

    #@c0
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@c3
    move-result v2

    #@c4
    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@c7
    move-result v2

    #@c8
    if-eqz v2, :cond_5

    #@ca
    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    move-result-object v2

    #@d3
    const-string/jumbo v3, "   S/MIME CA\n"

    #@d6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v2

    #@da
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v1

    #@de
    .line 254
    :cond_5
    const-string/jumbo v2, "object_signing_ca"

    #@e1
    invoke-static {v2}, Lsun/security/x509/NetscapeCertTypeExtension;->getPosition(Ljava/lang/String;)I

    #@e4
    move-result v2

    #@e5
    invoke-direct {p0, v2}, Lsun/security/x509/NetscapeCertTypeExtension;->isSet(I)Z

    #@e8
    move-result v2

    #@e9
    if-eqz v2, :cond_6

    #@eb
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v2

    #@f4
    const-string/jumbo v3, "   Object Signing CA"

    #@f7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v2

    #@fb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@fe
    move-result-object v1

    #@ff
    .line 258
    :cond_6
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@104
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@107
    move-result-object v2

    #@108
    const-string/jumbo v3, "]\n"

    #@10b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v2

    #@10f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@112
    move-result-object v1

    #@113
    .line 259
    return-object v1

    #@114
    .line 256
    :catch_0
    move-exception v0

    #@115
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
