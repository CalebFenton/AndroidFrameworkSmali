.class public Lsun/security/x509/ExtendedKeyUsageExtension;
.super Lsun/security/x509/Extension;
.source "ExtendedKeyUsageExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist IDENT:Ljava/lang/String; = "x509.info.extensions.ExtendedKeyUsage"

.field public static final blacklist NAME:Ljava/lang/String; = "ExtendedKeyUsage"

.field private static final blacklist OCSPSigningOidData:[I

.field public static final blacklist USAGES:Ljava/lang/String; = "usages"

.field private static final blacklist anyExtendedKeyUsageOidData:[I

.field private static final blacklist clientAuthOidData:[I

.field private static final blacklist codeSigningOidData:[I

.field private static final blacklist emailProtectionOidData:[I

.field private static final blacklist ipsecEndSystemOidData:[I

.field private static final blacklist ipsecTunnelOidData:[I

.field private static final blacklist ipsecUserOidData:[I

.field private static final blacklist map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsun/security/util/ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist serverAuthOidData:[I

.field private static final blacklist timeStampingOidData:[I


# instance fields
.field private blacklist keyUsages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    .line 102
    const/16 v0, 0x25

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v4, 0x1d

    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->anyExtendedKeyUsageOidData:[I

    .line 103
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_d8

    sput-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->serverAuthOidData:[I

    .line 104
    new-array v1, v0, [I

    fill-array-data v1, :array_ee

    sput-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->clientAuthOidData:[I

    .line 105
    new-array v1, v0, [I

    fill-array-data v1, :array_104

    sput-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->codeSigningOidData:[I

    .line 106
    new-array v1, v0, [I

    fill-array-data v1, :array_11a

    sput-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->emailProtectionOidData:[I

    .line 107
    new-array v1, v0, [I

    fill-array-data v1, :array_130

    sput-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecEndSystemOidData:[I

    .line 108
    new-array v1, v0, [I

    fill-array-data v1, :array_146

    sput-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecTunnelOidData:[I

    .line 109
    new-array v1, v0, [I

    fill-array-data v1, :array_15c

    sput-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecUserOidData:[I

    .line 110
    new-array v1, v0, [I

    fill-array-data v1, :array_172

    sput-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->timeStampingOidData:[I

    .line 111
    new-array v0, v0, [I

    fill-array-data v0, :array_188

    sput-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->OCSPSigningOidData:[I

    .line 114
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->anyExtendedKeyUsageOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "anyExtendedKeyUsage"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->serverAuthOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "serverAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->clientAuthOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "clientAuth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->codeSigningOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "codeSigning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->emailProtectionOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "emailProtection"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecEndSystemOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "ipsecEndSystem"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecTunnelOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "ipsecTunnel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->ipsecUserOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "ipsecUser"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->timeStampingOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "timeStamping"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    sget-object v1, Lsun/security/x509/ExtendedKeyUsageExtension;->OCSPSigningOidData:[I

    invoke-static {v1}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    const-string v2, "OCSPSigning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void

    :array_d8
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

    :array_ee
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

    :array_104
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

    :array_11a
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

    :array_130
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

    :array_146
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

    :array_15c
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

    :array_172
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

    :array_188
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

.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .registers 7
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 184
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 185
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->critical:Z

    .line 186
    move-object v0, p2

    check-cast v0, [B

    iput-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    .line 187
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 188
    .local v0, "val":Lsun/security/util/DerValue;
    iget-byte v1, v0, Lsun/security/util/DerValue;->tag:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_3f

    .line 192
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    .line 193
    :goto_26
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->available()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 194
    iget-object v1, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 195
    .local v1, "seq":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    .line 196
    .local v2, "usage":Lsun/security/util/ObjectIdentifier;
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 197
    .end local v1    # "seq":Lsun/security/util/DerValue;
    .end local v2    # "usage":Lsun/security/util/ObjectIdentifier;
    goto :goto_26

    .line 198
    :cond_3e
    return-void

    .line 189
    :cond_3f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding for ExtendedKeyUsageExtension."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Ljava/lang/Boolean;Ljava/util/Vector;)V
    .registers 4
    .param p1, "critical"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/util/Vector<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    .local p2, "keyUsages":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 168
    iput-object p2, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    .line 169
    sget-object v0, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 170
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->critical:Z

    .line 171
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    .line 172
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Vector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    .local p1, "keyUsages":Ljava/util/Vector;, "Ljava/util/Vector<Lsun/security/util/ObjectIdentifier;>;"
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, p1}, Lsun/security/x509/ExtendedKeyUsageExtension;-><init>(Ljava/lang/Boolean;Ljava/util/Vector;)V

    .line 157
    return-void
.end method

.method private blacklist encodeThis()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3a

    .line 137
    :cond_d
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 138
    .local v0, "os":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 140
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 141
    iget-object v3, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v3}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 144
    .end local v2    # "i":I
    :cond_2e
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 145
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    .line 146
    return-void

    .line 134
    .end local v0    # "os":Lsun/security/util/DerOutputStream;
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    .line 135
    return-void
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    const-string v0, "usages"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    .line 284
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    .line 285
    return-void

    .line 280
    :cond_f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:ExtendedKeyUsageExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api encode(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 232
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionValue:[B

    if-nez v1, :cond_13

    .line 233
    sget-object v1, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->critical:Z

    .line 235
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    .line 237
    :cond_13
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 238
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 239
    return-void
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

    .line 82
    invoke-virtual {p0, p1}, Lsun/security/x509/ExtendedKeyUsageExtension;->get(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/util/Vector;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector<",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    const-string v0, "usages"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    return-object v0

    .line 267
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:ExtendedKeyUsageExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    .line 292
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 293
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string v1, "usages"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getExtendedKeyUsage()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 307
    .local v0, "al":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/util/ObjectIdentifier;

    .line 308
    .local v2, "oid":Lsun/security/util/ObjectIdentifier;
    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v2    # "oid":Lsun/security/util/ObjectIdentifier;
    goto :goto_11

    .line 310
    :cond_25
    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 302
    const-string v0, "ExtendedKeyUsage"

    return-object v0
.end method

.method public blacklist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    const-string v0, "usages"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 247
    instance-of v0, p2, Ljava/util/Vector;

    if-eqz v0, :cond_15

    .line 250
    move-object v0, p2

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    .line 256
    invoke-direct {p0}, Lsun/security/x509/ExtendedKeyUsageExtension;->encodeThis()V

    .line 257
    return-void

    .line 248
    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attribute value should be of type Vector."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not recognized by CertAttrSet:ExtendedKeyUsageExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 204
    iget-object v0, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 205
    :cond_7
    const-string v0, "  "

    .line 206
    .local v0, "usage":Ljava/lang/String;
    const/4 v1, 0x1

    .line 207
    .local v1, "first":Z
    iget-object v2, p0, Lsun/security/x509/ExtendedKeyUsageExtension;->keyUsages:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/util/ObjectIdentifier;

    .line 208
    .local v3, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v1, :cond_31

    .line 209
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_31
    sget-object v4, Lsun/security/x509/ExtendedKeyUsageExtension;->map:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_4d

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    .line 216
    :cond_4d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_62
    const/4 v1, 0x0

    .line 219
    .end local v3    # "oid":Lsun/security/util/ObjectIdentifier;
    .end local v4    # "result":Ljava/lang/String;
    goto :goto_10

    .line 220
    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ExtendedKeyUsages [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
