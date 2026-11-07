.class public final Lsun/security/jca/JCAUtil;
.super Ljava/lang/Object;
.source "JCAUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/jca/JCAUtil$CachedSecureRandomHolder;
    }
.end annotation


# static fields
.field private static final blacklist ARRAY_SIZE:I = 0x1000

.field private static volatile blacklist def:Ljava/security/SecureRandom;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lsun/security/jca/JCAUtil;->def:Ljava/security/SecureRandom;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static blacklist clearDefSecureRandom()V
    .registers 1

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lsun/security/jca/JCAUtil;->def:Ljava/security/SecureRandom;

    .line 76
    return-void
.end method

.method public static blacklist getDefSecureRandom()Ljava/security/SecureRandom;
    .registers 3

    .line 84
    sget-object v0, Lsun/security/jca/JCAUtil;->def:Ljava/security/SecureRandom;

    .line 85
    .local v0, "result":Ljava/security/SecureRandom;
    if-nez v0, :cond_19

    .line 86
    const-class v1, Lsun/security/jca/JCAUtil;

    monitor-enter v1

    .line 87
    :try_start_7
    sget-object v2, Lsun/security/jca/JCAUtil;->def:Ljava/security/SecureRandom;

    move-object v0, v2

    .line 88
    if-nez v0, :cond_14

    .line 89
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    move-object v0, v2

    sput-object v2, Lsun/security/jca/JCAUtil;->def:Ljava/security/SecureRandom;

    .line 91
    :cond_14
    monitor-exit v1

    goto :goto_19

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v2

    .line 93
    :cond_19
    :goto_19
    return-object v0
.end method

.method public static greylist-max-r getSecureRandom()Ljava/security/SecureRandom;
    .registers 1

    .line 70
    sget-object v0, Lsun/security/jca/JCAUtil$CachedSecureRandomHolder;->instance:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static blacklist getTempArraySize(I)I
    .registers 2
    .param p0, "totalSize"    # I

    .line 53
    const/16 v0, 0x1000

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
