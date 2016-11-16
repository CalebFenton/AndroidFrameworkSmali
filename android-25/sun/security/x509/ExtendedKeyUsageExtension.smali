.class public Lsun/security/x509/ExtendedKeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "ExtendedKeyUsageExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.ExtendedKeyUsage"

.field public static final NAME:Ljava/lang/String; = "ExtendedKeyUsage"

.field private static final OCSPSigningOidData:[I

.field public static final USAGES:Ljava/lang/String; = "usages"

.field private static final anyExtendedKeyUsageOidData:[I

.field private static final clientAuthOidData:[I

.field private static final codeSigningOidData:[I

.field private static final emailProtectionOidData:[I

.field private static final ipsecEndSystemOidData:[I

.field private static final ipsecTunnelOidData:[I

.field private static final ipsecUserOidData:[I

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serverAuthOidData:[I

.field private static final timeStampingOidData:[I


# instance fields
.field private keyUsages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x9

    #@2
    .line 100
    new-instance v0, Ljava/util/HashMap;

    #@4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@7
    .line 99
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@9
    .line 102
    const/4 v0, 0x2

    #@a
    const/4 v1, 0x5

    #@b
    const/16 v2, 0x1d

    #@d
    const/16 v3, 0x25

    #@f
    const/4 v4, 0x0

    #@10
    filled-new-array {v0, v1, v2, v3, v4}, [I

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->anyExtendedKeyUsageOidData:[I

    #@16
    .line 103
    new-array v0, v5, [I

    #@18
    fill-array-data v0, :array_0

    #@1b
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->serverAuthOidData:[I

    #@1d
    .line 104
    new-array v0, v5, [I

    #@1f
    fill-array-data v0, :array_1

    #@22
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->clientAuthOidData:[I

    #@24
    .line 105
    new-array v0, v5, [I

    #@26
    fill-array-data v0, :array_2

    #@29
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->codeSigningOidData:[I

    #@2b
    .line 106
    new-array v0, v5, [I

    #@2d
    fill-array-data v0, :array_3

    #@30
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->emailProtectionOidData:[I

    #@32
    .line 107
    new-array v0, v5, [I

    #@34
    fill-array-data v0, :array_4

    #@37
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecEndSystemOidData:[I

    #@39
    .line 108
    new-array v0, v5, [I

    #@3b
    fill-array-data v0, :array_5

    #@3e
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecTunnelOidData:[I

    #@40
    .line 109
    new-array v0, v5, [I

    #@42
    fill-array-data v0, :array_6

    #@45
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecUserOidData:[I

    #@47
    .line 110
    new-array v0, v5, [I

    #@49
    fill-array-data v0, :array_7

    #@4c
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->timeStampingOidData:[I

    #@4e
    .line 111
    new-array v0, v5, [I

    #@50
    fill-array-data v0, :array_8

    #@53
    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->OCSPSigningOidData:[I

    #@55
    .line 114
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@57
    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->anyExtendedKeyUsageOidData:[I

    #@59
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@5c
    move-result-object v1

    #@5d
    const-string/jumbo v2, "anyExtendedKeyUsage"

    #@60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@63
    .line 115
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@65
    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->serverAuthOidData:[I

    #@67
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@6a
    move-result-object v1

    #@6b
    const-string/jumbo v2, "serverAuth"

    #@6e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    .line 116
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@73
    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->clientAuthOidData:[I

    #@75
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@78
    move-result-object v1

    #@79
    const-string/jumbo v2, "clientAuth"

    #@7c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    .line 117
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@81
    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->codeSigningOidData:[I

    #@83
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@86
    move-result-object v1

    #@87
    const-string/jumbo v2, "codeSigning"

    #@8a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8d
    .line 118
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@8f
    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->emailProtectionOidData:[I

    #@91
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@94
    move-result-object v1

    #@95
    const-string/jumbo v2, "emailProtection"

    #@98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    .line 119
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@9d
    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecEndSystemOidData:[I

    #@9f
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@a2
    move-result-object v1

    #@a3
    const-string/jumbo v2, "ipsecEndSystem"

    #@a6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    .line 120
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@ab
    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecTunnelOidData:[I

    #@ad
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@b0
    move-result-object v1

    #@b1
    const-string/jumbo v2, "ipsecTunnel"

    #@b4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b7
    .line 121
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@b9
    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecUserOidData:[I

    #@bb
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@be
    move-result-object v1

    #@bf
    const-string/jumbo v2, "ipsecUser"

    #@c2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    .line 122
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@c7
    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->timeStampingOidData:[I

    #@c9
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@cc
    move-result-object v1

    #@cd
    const-string/jumbo v2, "timeStamping"

    #@d0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d3
    .line 123
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@d5
    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->OCSPSigningOidData:[I

    #@d7
    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    #@da
    move-result-object v1

    #@db
    const-string/jumbo v2, "OCSPSigning"

    #@de
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e1
    .line 82
    return-void

    #@e2
    .line 103
    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x1
    .end array-data

    #@f8
    .line 104
    :array_1
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x2
    .end array-data

    #@10e
    .line 105
    :array_2
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x3
    .end array-data

    #@124
    .line 106
    :array_3
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x4
    .end array-data

    #@13a
    .line 107
    :array_4
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x5
    .end array-data

    #@150
    .line 108
    :array_5
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x6
    .end array-data

    #@166
    .line 109
    :array_6
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x7
    .end array-data

    #@17c
    .line 110
    :array_7
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x8
    .end array-data

    #@192
    .line 111
    :array_8
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x3
        0x9
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 5
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 184
    sget-object v3, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@5
    iput-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@7
    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@a
    move-result v3

    #@b
    iput-boolean v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->critical:Z

    #@d
    .line 186
    check-cast p2, [B

    #@f
    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    #@11
    .line 187
    new-instance v2, Lsun/security/util/DerValue;

    #@13
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    #@15
    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    #@18
    .line 188
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    #@1a
    const/16 v4, 0x30

    #@1c
    if-eq v3, v4, :cond_0

    #@1e
    .line 189
    new-instance v3, Ljava/io/IOException;

    #@20
    const-string/jumbo v4, "Invalid encoding for ExtendedKeyUsageExtension."

    #@23
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 192
    :cond_0
    new-instance v3, Ljava/util/Vector;

    #@29
    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    #@2c
    iput-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@2e
    .line 193
    :goto_0
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@30
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    #@33
    move-result v3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 194
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    #@38
    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    #@3b
    move-result-object v0

    #@3c
    .line 195
    .local v0, "seq":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    #@3f
    move-result-object v1

    #@40
    .line 196
    .local v1, "usage":Lsun/security/util/ObjectIdentifier;
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@42
    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@45
    goto :goto_0

    #@46
    .line 183
    .end local v0    # "seq":Lsun/security/util/DerValue;
    .end local v1    # "usage":Lsun/security/util/ObjectIdentifier;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/util/Vector;)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/Vector",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 166
    .local p2, "keyUsages":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    #@3
    .line 168
    iput-object p2, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@5
    .line 169
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@7
    iput-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@9
    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@c
    move-result v0

    #@d
    iput-boolean v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->critical:Z

    #@f
    .line 171
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    #@12
    .line 167
    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    .local p1, "keyUsages":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2
    invoke-direct {p0, v0, p1}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/util/Vector;)V

    #@5
    .line 155
    return-void
.end method

.method private encodeThis()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 133
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@3
    if-eqz v3, :cond_0

    #@5
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@7
    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_1

    #@d
    .line 134
    :cond_0
    iput-object v4, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    #@f
    .line 135
    return-void

    #@10
    .line 137
    :cond_1
    new-instance v1, Lsun/security/util/DerOutputStream;

    #@12
    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    #@15
    .line 138
    .local v1, "os":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    #@17
    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    #@1a
    .line 140
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@1d
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@20
    move-result v3

    #@21
    if-ge v0, v3, :cond_2

    #@23
    .line 141
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@25
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Lsun/security/util/ObjectIdentifier;

    #@2b
    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    #@2e
    .line 140
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_0

    #@31
    .line 144
    :cond_2
    const/16 v3, 0x30

    #@33
    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    #@36
    .line 145
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@39
    move-result-object v3

    #@3a
    iput-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    #@3c
    .line 132
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    const-string/jumbo v0, "usages"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 277
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@c
    .line 283
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    #@f
    .line 275
    return-void

    #@10
    .line 279
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Attribute name ["

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 280
    const-string/jumbo v2, "] not recognized by "

    #@25
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 281
    const-string/jumbo v2, "CertAttrSet:ExtendedKeyUsageExtension."

    #@2c
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0
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
    .line 231
    new-instance v0, Lsun/security/util/DerOutputStream;

    #@2
    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    #@5
    .line 232
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    #@7
    if-nez v1, :cond_0

    #@9
    .line 233
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    #@b
    iput-object v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    #@d
    .line 234
    const/4 v1, 0x0

    #@e
    iput-boolean v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->critical:Z

    #@10
    .line 235
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    #@13
    .line 237
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    #@16
    .line 238
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    #@1d
    .line 230
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    const-string/jumbo v0, "usages"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 264
    iget-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@b
    return-object v0

    #@c
    .line 266
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Attribute name ["

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    .line 267
    const-string/jumbo v2, "] not recognized by "

    #@21
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 268
    const-string/jumbo v2, "CertAttrSet:ExtendedKeyUsageExtension."

    #@28
    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
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
    .line 291
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    #@5
    .line 292
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "usages"

    #@8
    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    #@b
    .line 294
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    #@e
    move-result-object v1

    #@f
    return-object v1
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 305
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@7
    move-result v3

    #@8
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    .line 306
    .local v0, "al":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "oid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lsun/security/util/ObjectIdentifier;

    #@1d
    .line 307
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 309
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 301
    const-string/jumbo v0, "ExtendedKeyUsage"

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
    .line 245
    const-string/jumbo v0, "usages"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 246
    instance-of v0, p2, Ljava/util/Vector;

    #@b
    if-nez v0, :cond_0

    #@d
    .line 247
    new-instance v0, Ljava/io/IOException;

    #@f
    const-string/jumbo v1, "Attribute value should be of type Vector."

    #@12
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 249
    :cond_0
    check-cast p2, Ljava/util/Vector;

    #@18
    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@1a
    .line 255
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    #@1d
    .line 244
    return-void

    #@1e
    .line 251
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@20
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Attribute name ["

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 252
    const-string/jumbo v2, "] not recognized by "

    #@33
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    .line 253
    const-string/jumbo v2, "CertAttrSet:ExtendedKeyUsageExtension."

    #@3a
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 204
    iget-object v5, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@2
    if-nez v5, :cond_0

    #@4
    const-string/jumbo v5, ""

    #@7
    return-object v5

    #@8
    .line 205
    :cond_0
    const-string/jumbo v4, "  "

    #@b
    .line 206
    .local v4, "usage":Ljava/lang/String;
    const/4 v0, 0x1

    #@c
    .line 207
    .local v0, "first":Z
    iget-object v5, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    #@e
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v2

    #@12
    .local v2, "oid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_3

    #@18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lsun/security/util/ObjectIdentifier;

    #@1e
    .line 208
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v0, :cond_1

    #@20
    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v5

    #@29
    const-string/jumbo v6, "\n  "

    #@2c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v4

    #@34
    .line 212
    :cond_1
    sget-object v5, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    #@36
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v3

    #@3a
    check-cast v3, Ljava/lang/String;

    #@3c
    .line 213
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_2

    #@3e
    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v5

    #@47
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    .line 218
    :goto_1
    const/4 v0, 0x0

    #@50
    goto :goto_0

    #@51
    .line 216
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v5

    #@62
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v4

    #@66
    goto :goto_1

    #@67
    .line 220
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    .end local v3    # "result":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v5

    #@74
    const-string/jumbo v6, "ExtendedKeyUsages [\n"

    #@77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v5

    #@7b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v5

    #@7f
    .line 221
    const-string/jumbo v6, "\n]\n"

    #@82
    .line 220
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    return-object v5
.end method
