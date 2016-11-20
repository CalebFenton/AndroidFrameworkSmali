.class final Lsun/security/ssl/ExtensionType;
.super Ljava/lang/Object;
.source "HelloExtensions.java"


# static fields
.field static final EXT_CERT_TYPE:Lsun/security/ssl/ExtensionType;

.field static final EXT_CLIENT_CERTIFICATE_URL:Lsun/security/ssl/ExtensionType;

.field static final EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

.field static final EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

.field static final EXT_MAX_FRAGMENT_LENGTH:Lsun/security/ssl/ExtensionType;

.field static final EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

.field static final EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

.field static final EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

.field static final EXT_SRP:Lsun/security/ssl/ExtensionType;

.field static final EXT_STATUS_REQUEST:Lsun/security/ssl/ExtensionType;

.field static final EXT_TRUNCATED_HMAC:Lsun/security/ssl/ExtensionType;

.field static final EXT_TRUSTED_CA_KEYS:Lsun/security/ssl/ExtensionType;

.field static final EXT_USER_MAPPING:Lsun/security/ssl/ExtensionType;

.field static knownExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/ssl/ExtensionType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final id:I

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x9

    #@2
    .line 172
    new-instance v0, Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@7
    sput-object v0, Lsun/security/ssl/ExtensionType;->knownExtensions:Ljava/util/List;

    #@9
    .line 191
    const-string/jumbo v0, "server_name"

    #@c
    const/4 v1, 0x0

    #@d
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@10
    move-result-object v0

    #@11
    .line 190
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_SERVER_NAME:Lsun/security/ssl/ExtensionType;

    #@13
    .line 193
    const-string/jumbo v0, "max_fragment_length"

    #@16
    const/4 v1, 0x1

    #@17
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@1a
    move-result-object v0

    #@1b
    .line 192
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_MAX_FRAGMENT_LENGTH:Lsun/security/ssl/ExtensionType;

    #@1d
    .line 195
    const-string/jumbo v0, "client_certificate_url"

    #@20
    const/4 v1, 0x2

    #@21
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@24
    move-result-object v0

    #@25
    .line 194
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_CLIENT_CERTIFICATE_URL:Lsun/security/ssl/ExtensionType;

    #@27
    .line 197
    const-string/jumbo v0, "trusted_ca_keys"

    #@2a
    const/4 v1, 0x3

    #@2b
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@2e
    move-result-object v0

    #@2f
    .line 196
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_TRUSTED_CA_KEYS:Lsun/security/ssl/ExtensionType;

    #@31
    .line 199
    const-string/jumbo v0, "truncated_hmac"

    #@34
    const/4 v1, 0x4

    #@35
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@38
    move-result-object v0

    #@39
    .line 198
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_TRUNCATED_HMAC:Lsun/security/ssl/ExtensionType;

    #@3b
    .line 201
    const-string/jumbo v0, "status_request"

    #@3e
    const/4 v1, 0x5

    #@3f
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@42
    move-result-object v0

    #@43
    .line 200
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_STATUS_REQUEST:Lsun/security/ssl/ExtensionType;

    #@45
    .line 205
    const-string/jumbo v0, "user_mapping"

    #@48
    const/4 v1, 0x6

    #@49
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@4c
    move-result-object v0

    #@4d
    .line 204
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_USER_MAPPING:Lsun/security/ssl/ExtensionType;

    #@4f
    .line 209
    const-string/jumbo v0, "cert_type"

    #@52
    invoke-static {v2, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@55
    move-result-object v0

    #@56
    .line 208
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_CERT_TYPE:Lsun/security/ssl/ExtensionType;

    #@58
    .line 213
    const-string/jumbo v0, "elliptic_curves"

    #@5b
    const/16 v1, 0xa

    #@5d
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@60
    move-result-object v0

    #@61
    .line 212
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_ELLIPTIC_CURVES:Lsun/security/ssl/ExtensionType;

    #@63
    .line 215
    const-string/jumbo v0, "ec_point_formats"

    #@66
    const/16 v1, 0xb

    #@68
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@6b
    move-result-object v0

    #@6c
    .line 214
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_EC_POINT_FORMATS:Lsun/security/ssl/ExtensionType;

    #@6e
    .line 219
    const-string/jumbo v0, "srp"

    #@71
    const/16 v1, 0xc

    #@73
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@76
    move-result-object v0

    #@77
    .line 218
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_SRP:Lsun/security/ssl/ExtensionType;

    #@79
    .line 223
    const-string/jumbo v0, "signature_algorithms"

    #@7c
    const/16 v1, 0xd

    #@7e
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@81
    move-result-object v0

    #@82
    .line 222
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_SIGNATURE_ALGORITHMS:Lsun/security/ssl/ExtensionType;

    #@84
    .line 227
    const-string/jumbo v0, "renegotiation_info"

    #@87
    const v1, 0xff01

    #@8a
    invoke-static {v1, v0}, Lsun/security/ssl/ExtensionType;->e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;

    #@8d
    move-result-object v0

    #@8e
    .line 226
    sput-object v0, Lsun/security/ssl/ExtensionType;->EXT_RENEGOTIATION_INFO:Lsun/security/ssl/ExtensionType;

    #@90
    .line 158
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 164
    iput p1, p0, Lsun/security/ssl/ExtensionType;->id:I

    #@5
    .line 165
    iput-object p2, p0, Lsun/security/ssl/ExtensionType;->name:Ljava/lang/String;

    #@7
    .line 163
    return-void
.end method

.method private static e(ILjava/lang/String;)Lsun/security/ssl/ExtensionType;
    .locals 2
    .param p0, "id"    # I
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 184
    new-instance v0, Lsun/security/ssl/ExtensionType;

    #@2
    invoke-direct {v0, p0, p1}, Lsun/security/ssl/ExtensionType;-><init>(ILjava/lang/String;)V

    #@5
    .line 185
    .local v0, "ext":Lsun/security/ssl/ExtensionType;
    sget-object v1, Lsun/security/ssl/ExtensionType;->knownExtensions:Ljava/util/List;

    #@7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    .line 186
    return-object v0
.end method

.method static get(I)Lsun/security/ssl/ExtensionType;
    .locals 5
    .param p0, "id"    # I

    #@0
    .prologue
    .line 175
    sget-object v2, Lsun/security/ssl/ExtensionType;->knownExtensions:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v1

    #@6
    .local v1, "ext$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lsun/security/ssl/ExtensionType;

    #@12
    .line 176
    .local v0, "ext":Lsun/security/ssl/ExtensionType;
    iget v2, v0, Lsun/security/ssl/ExtensionType;->id:I

    #@14
    if-ne v2, p0, :cond_0

    #@16
    .line 177
    return-object v0

    #@17
    .line 180
    .end local v0    # "ext":Lsun/security/ssl/ExtensionType;
    :cond_1
    new-instance v2, Lsun/security/ssl/ExtensionType;

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "type_"

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v2, p0, v3}, Lsun/security/ssl/ExtensionType;-><init>(ILjava/lang/String;)V

    #@30
    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/ssl/ExtensionType;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
