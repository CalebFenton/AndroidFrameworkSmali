.class public final Lsun/security/jca/JCAUtil;
.super Ljava/lang/Object;
.source "JCAUtil.java"


# static fields
.field private static final ARRAY_SIZE:I = 0x1000

.field private static final LOCK:Ljava/lang/Object;

.field private static volatile secureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 45
    const-class v0, Lsun/security/jca/JCAUtil;

    #@2
    sput-object v0, Lsun/security/jca/JCAUtil;->LOCK:Ljava/lang/Object;

    #@4
    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getSecureRandom()Ljava/security/SecureRandom;
    .locals 4

    #@0
    .prologue
    .line 72
    sget-object v0, Lsun/security/jca/JCAUtil;->secureRandom:Ljava/security/SecureRandom;

    #@2
    .line 73
    .local v0, "r":Ljava/security/SecureRandom;
    if-nez v0, :cond_1

    #@4
    .line 74
    sget-object v3, Lsun/security/jca/JCAUtil;->LOCK:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 75
    :try_start_0
    sget-object v0, Lsun/security/jca/JCAUtil;->secureRandom:Ljava/security/SecureRandom;

    #@9
    .line 76
    if-nez v0, :cond_0

    #@b
    .line 77
    new-instance v1, Ljava/security/SecureRandom;

    #@d
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 78
    .end local v0    # "r":Ljava/security/SecureRandom;
    .local v1, "r":Ljava/security/SecureRandom;
    :try_start_1
    sput-object v1, Lsun/security/jca/JCAUtil;->secureRandom:Ljava/security/SecureRandom;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@12
    move-object v0, v1

    #@13
    .end local v1    # "r":Ljava/security/SecureRandom;
    .restart local v0    # "r":Ljava/security/SecureRandom;
    :cond_0
    monitor-exit v3

    #@14
    .line 82
    :cond_1
    return-object v0

    #@15
    .line 74
    :catchall_0
    move-exception v2

    #@16
    :goto_0
    monitor-exit v3

    #@17
    throw v2

    #@18
    .end local v0    # "r":Ljava/security/SecureRandom;
    .restart local v1    # "r":Ljava/security/SecureRandom;
    :catchall_1
    move-exception v2

    #@19
    move-object v0, v1

    #@1a
    .end local v1    # "r":Ljava/security/SecureRandom;
    .restart local v0    # "r":Ljava/security/SecureRandom;
    goto :goto_0
.end method

.method public static getTempArraySize(I)I
    .locals 1
    .param p0, "totalSize"    # I

    #@0
    .prologue
    .line 60
    const/16 v0, 0x1000

    #@2
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    return v0
.end method
