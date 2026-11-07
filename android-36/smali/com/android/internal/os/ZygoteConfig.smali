.class public Lcom/android/internal/os/ZygoteConfig;
.super Ljava/lang/Object;
.source "ZygoteConfig.java"


# static fields
.field public static final blacklist PROPERTY_PREFIX_DEVICE_CONFIG:Ljava/lang/String; = "persist.device_config"

.field public static final blacklist PROPERTY_PREFIX_SYSTEM:Ljava/lang/String; = "dalvik.vm."

.field public static final blacklist USAP_POOL_ENABLED:Ljava/lang/String; = "usap_pool_enabled"

.field public static final blacklist USAP_POOL_ENABLED_DEFAULT:Z = false

.field public static final blacklist USAP_POOL_REFILL_DELAY_MS:Ljava/lang/String; = "usap_pool_refill_delay_ms"

.field public static final blacklist USAP_POOL_REFILL_DELAY_MS_DEFAULT:I = 0xbb8

.field public static final blacklist USAP_POOL_REFILL_THRESHOLD:Ljava/lang/String; = "usap_refill_threshold"

.field public static final blacklist USAP_POOL_REFILL_THRESHOLD_DEFAULT:I = 0x1

.field public static final blacklist USAP_POOL_SIZE_MAX:Ljava/lang/String; = "usap_pool_size_max"

.field public static final blacklist USAP_POOL_SIZE_MAX_DEFAULT:I = 0x3

.field public static final blacklist USAP_POOL_SIZE_MAX_LIMIT:I = 0x64

.field public static final blacklist USAP_POOL_SIZE_MIN:Ljava/lang/String; = "usap_pool_size_min"

.field public static final blacklist USAP_POOL_SIZE_MIN_DEFAULT:I = 0x1

.field public static final blacklist USAP_POOL_SIZE_MIN_LIMIT:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBool(Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .line 107
    invoke-static {p0}, Lcom/android/internal/os/ZygoteConfig;->getDeviceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "propString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 110
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 112
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dalvik.vm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static blacklist getDeviceConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string/jumbo v2, "persist.device_config"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "runtime_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    .line 83
    const-string v1, "."

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInt(Ljava/lang/String;I)I
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 94
    invoke-static {p0}, Lcom/android/internal/os/ZygoteConfig;->getDeviceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "propString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 97
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 99
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dalvik.vm."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method
