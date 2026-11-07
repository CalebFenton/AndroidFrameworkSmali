.class public final Lcom/android/net/module/util/NetworkCapabilitiesUtils;
.super Ljava/lang/Object;
.source "NetworkCapabilitiesUtils.java"


# static fields
.field private static final blacklist DISPLAY_TRANSPORT_PRIORITIES:[I

.field private static final blacklist FORCE_RESTRICTED_CAPABILITIES:J = 0x24400000L

.field public static final blacklist RESTRICTED_CAPABILITIES:J = 0x2e88007bcL

.field public static final blacklist UNRESTRICTED_CAPABILITIES:J = 0x1043L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 65
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->DISPLAY_TRANSPORT_PRIORITIES:[I

    return-void

    :array_a
    .array-data 4
        0x4
        0x0
        0x5
        0x2
        0x1
        0x3
        0x8
        0xa
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDisplayTransport([I)I
    .registers 7
    .param p0, "transports"    # [I

    .line 138
    sget-object v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->DISPLAY_TRANSPORT_PRIORITIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget v4, v0, v3

    .line 139
    .local v4, "transport":I
    invoke-static {p0, v4}, Lcom/android/net/module/util/CollectionUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 140
    return v4

    .line 138
    .end local v4    # "transport":I
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 144
    :cond_13
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    .line 150
    aget v0, p0, v2

    return v0

    .line 148
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No transport in the provided array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist inferRestrictedCapability(J)Z
    .registers 9
    .param p0, "capabilities"    # J

    .line 176
    const-wide/32 v0, 0x24400000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 177
    return v1

    .line 182
    :cond_c
    const-wide/16 v4, 0x1043

    and-long/2addr v4, p0

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-eqz v0, :cond_15

    .line 183
    return v4

    .line 187
    :cond_15
    const-wide v5, 0x2e88007bcL

    and-long/2addr v5, p0

    cmp-long v0, v5, v2

    if-eqz v0, :cond_20

    .line 188
    return v1

    .line 190
    :cond_20
    return v4
.end method

.method public static blacklist inferRestrictedCapability(Landroid/net/NetworkCapabilities;)Z
    .registers 3
    .param p0, "nc"    # Landroid/net/NetworkCapabilities;

    .line 163
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/net/module/util/BitUtils;->packBits([I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->inferRestrictedCapability(J)Z

    move-result v0

    return v0
.end method
