.class public final Landroid/net/eap/EapSessionConfig;
.super Ljava/lang/Object;
.source "EapSessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/eap/EapSessionConfig$Builder;,
        Landroid/net/eap/EapSessionConfig$EapMethodConfig;,
        Landroid/net/eap/EapSessionConfig$EapSimConfig;,
        Landroid/net/eap/EapSessionConfig$EapAkaConfig;,
        Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;,
        Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;,
        Landroid/net/eap/EapSessionConfig$EapTtlsConfig;,
        Landroid/net/eap/EapSessionConfig$EapAkaOption;,
        Landroid/net/eap/EapSessionConfig$EapUiccConfig;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_IDENTITY:[B

.field private static final blacklist EAP_ID_KEY:Ljava/lang/String; = "eapIdentity"

.field private static final blacklist EAP_METHOD_CONFIGS_KEY:Ljava/lang/String; = "eapConfigs"


# instance fields
.field private final blacklist mEapConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/eap/EapSessionConfig$EapMethodConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEapIdentity:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_IDENTITY()[B
    .registers 1

    sget-object v0, Landroid/net/eap/EapSessionConfig;->DEFAULT_IDENTITY:[B

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/net/eap/EapSessionConfig;->DEFAULT_IDENTITY:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Map;[B)V
    .registers 4
    .param p2, "eapIdentity"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/eap/EapSessionConfig$EapMethodConfig;",
            ">;[B)V"
        }
    .end annotation

    .line 59
    .local p1, "eapConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/net/eap/EapSessionConfig$EapMethodConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "eapConfigs must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    const-string v0, "eapIdentity must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    .line 64
    iput-object p2, p0, Landroid/net/eap/EapSessionConfig;->mEapIdentity:[B

    .line 65
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;
    .registers 8
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 87
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    new-instance v0, Landroid/net/eap/EapSessionConfig$Builder;

    invoke-direct {v0}, Landroid/net/eap/EapSessionConfig$Builder;-><init>()V

    .line 91
    .local v0, "builder":Landroid/net/eap/EapSessionConfig$Builder;
    const-string v1, "eapIdentity"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 92
    .local v1, "eapIdBundle":Landroid/os/PersistableBundle;
    const-string v2, "EAP ID bundle is null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    invoke-static {v1}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    .line 94
    .local v2, "eapId":[B
    invoke-virtual {v0, v2}, Landroid/net/eap/EapSessionConfig$Builder;->setEapIdentity([B)Landroid/net/eap/EapSessionConfig$Builder;

    .line 96
    const-string v3, "eapConfigs"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 97
    .local v3, "configsBundle":Landroid/os/PersistableBundle;
    const-string v4, "EAP method configs bundle is null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    sget-object v4, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;

    new-instance v5, Landroid/net/eap/EapSessionConfig$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Landroid/net/eap/EapSessionConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 99
    invoke-static {v3, v4, v5}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toMap(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 103
    .local v4, "eapMethodConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/net/eap/EapSessionConfig$EapMethodConfig;>;"
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/eap/EapSessionConfig$EapMethodConfig;

    .line 104
    .local v6, "config":Landroid/net/eap/EapSessionConfig$EapMethodConfig;
    invoke-virtual {v0, v6}, Landroid/net/eap/EapSessionConfig$Builder;->addEapMethodConfig(Landroid/net/eap/EapSessionConfig$EapMethodConfig;)Landroid/net/eap/EapSessionConfig$Builder;

    .line 105
    .end local v6    # "config":Landroid/net/eap/EapSessionConfig$EapMethodConfig;
    goto :goto_3a

    .line 107
    :cond_4a
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$Builder;->build()Landroid/net/eap/EapSessionConfig;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public blacklist areAllMethodsEapOnlySafe()Z
    .registers 4

    .line 1174
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1175
    .local v1, "eapConfigsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/eap/EapSessionConfig$EapMethodConfig;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/eap/EapSessionConfig$EapMethodConfig;

    invoke-virtual {v2}, Landroid/net/eap/EapSessionConfig$EapMethodConfig;->isEapOnlySafeMethod()Z

    move-result v2

    if-nez v2, :cond_24

    .line 1176
    const/4 v0, 0x0

    return v0

    .line 1178
    .end local v1    # "eapConfigsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/net/eap/EapSessionConfig$EapMethodConfig;>;"
    :cond_24
    goto :goto_a

    .line 1180
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 208
    instance-of v0, p1, Landroid/net/eap/EapSessionConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 209
    return v1

    .line 212
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/eap/EapSessionConfig;

    .line 213
    .local v0, "other":Landroid/net/eap/EapSessionConfig;
    iget-object v2, p0, Landroid/net/eap/EapSessionConfig;->mEapIdentity:[B

    iget-object v3, v0, Landroid/net/eap/EapSessionConfig;->mEapIdentity:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    iget-object v3, v0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    .line 214
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 213
    :goto_20
    return v1
.end method

.method public whitelist getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    .registers 3

    .line 152
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    return-object v0
.end method

.method public whitelist getEapAkaPrimeConfig()Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;
    .registers 3

    .line 162
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    return-object v0
.end method

.method public blacklist getEapConfigs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/eap/EapSessionConfig$EapMethodConfig;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getEapIdentity()[B
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig;->mEapIdentity:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getEapMsChapV2Config()Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
    .registers 3

    .line 172
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    return-object v0
.end method

.method public whitelist getEapMsChapV2onfig()Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapMsChapV2Config()Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getEapSimConfig()Landroid/net/eap/EapSessionConfig$EapSimConfig;
    .registers 3

    .line 142
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapSimConfig;

    return-object v0
.end method

.method public whitelist getEapTtlsConfig()Landroid/net/eap/EapSessionConfig$EapTtlsConfig;
    .registers 3

    .line 196
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 202
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig;->mEapIdentity:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 5

    .line 117
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 118
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/eap/EapSessionConfig;->mEapIdentity:[B

    invoke-static {v1}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "eapIdentity"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 120
    iget-object v1, p0, Landroid/net/eap/EapSessionConfig;->mEapConfigs:Ljava/util/Map;

    sget-object v2, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;

    new-instance v3, Landroid/net/eap/EapSessionConfig$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/net/eap/EapSessionConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 121
    invoke-static {v1, v2, v3}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromMap(Ljava/util/Map;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 125
    .local v1, "configsBundle":Landroid/os/PersistableBundle;
    const-string v2, "eapConfigs"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 126
    return-object v0
.end method
