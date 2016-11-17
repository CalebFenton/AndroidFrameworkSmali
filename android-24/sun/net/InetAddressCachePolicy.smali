.class public final Lsun/net/InetAddressCachePolicy;
.super Ljava/lang/Object;
.source "InetAddressCachePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/InetAddressCachePolicy$1;,
        Lsun/net/InetAddressCachePolicy$2;
    }
.end annotation


# static fields
.field public static final DEFAULT_POSITIVE:I = 0x2

.field public static final FOREVER:I = -0x1

.field public static final NEVER:I = 0x0

.field private static cachePolicy:I = 0x0

.field private static final cachePolicyProp:Ljava/lang/String; = "networkaddress.cache.ttl"

.field private static final cachePolicyPropFallback:Ljava/lang/String; = "sun.net.inetaddr.ttl"

.field private static negativeCachePolicy:I = 0x0

.field private static final negativeCachePolicyProp:Ljava/lang/String; = "networkaddress.cache.negative.ttl"

.field private static final negativeCachePolicyPropFallback:Ljava/lang/String; = "sun.net.inetaddr.negative.ttl"

.field private static propertyNegativeSet:Z

.field private static propertySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v5, -0x1

    #@3
    .line 64
    sput v5, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    #@5
    .line 74
    sput v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    #@7
    .line 92
    const/4 v1, 0x0

    #@8
    .line 95
    .local v1, "tmp":Ljava/lang/Integer;
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    #@a
    .line 97
    new-instance v3, Lsun/net/InetAddressCachePolicy$1;

    #@c
    invoke-direct {v3}, Lsun/net/InetAddressCachePolicy$1;-><init>()V

    #@f
    .line 96
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, Ljava/lang/String;

    #@15
    .line 95
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    #@18
    .end local v1    # "tmp":Ljava/lang/Integer;
    .local v2, "tmp":Ljava/lang/Integer;
    move-object v1, v2

    #@19
    .line 105
    .end local v2    # "tmp":Ljava/lang/Integer;
    :goto_0
    if-eqz v1, :cond_3

    #@1b
    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@1e
    move-result v3

    #@1f
    sput v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    #@21
    .line 107
    sget v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    #@23
    if-gez v3, :cond_0

    #@25
    .line 108
    sput v5, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    #@27
    .line 110
    :cond_0
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertySet:Z

    #@29
    move-object v2, v1

    #@2a
    .line 131
    .restart local v2    # "tmp":Ljava/lang/Integer;
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/Integer;

    #@2c
    .line 133
    new-instance v3, Lsun/net/InetAddressCachePolicy$2;

    #@2e
    invoke-direct {v3}, Lsun/net/InetAddressCachePolicy$2;-><init>()V

    #@31
    .line 132
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@34
    move-result-object v3

    #@35
    check-cast v3, Ljava/lang/String;

    #@37
    .line 131
    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@3a
    .line 142
    .end local v2    # "tmp":Ljava/lang/Integer;
    .local v1, "tmp":Ljava/lang/Integer;
    :goto_2
    if-eqz v1, :cond_6

    #@3c
    .line 143
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@3f
    move-result v3

    #@40
    sput v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    #@42
    .line 144
    sget v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    #@44
    if-gez v3, :cond_1

    #@46
    .line 145
    sput v5, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    #@48
    .line 147
    :cond_1
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertyNegativeSet:Z

    #@4a
    .line 32
    :cond_2
    :goto_3
    return-void

    #@4b
    .line 113
    .end local v1    # "tmp":Ljava/lang/Integer;
    :cond_3
    new-instance v3, Lsun/security/action/GetIntegerAction;

    #@4d
    const-string/jumbo v4, "sun.net.inetaddr.ttl"

    #@50
    invoke-direct {v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    #@53
    .line 112
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@56
    move-result-object v1

    #@57
    check-cast v1, Ljava/lang/Integer;

    #@59
    .line 114
    .restart local v1    # "tmp":Ljava/lang/Integer;
    if-eqz v1, :cond_5

    #@5b
    .line 115
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@5e
    move-result v3

    #@5f
    sput v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    #@61
    .line 116
    sget v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    #@63
    if-gez v3, :cond_4

    #@65
    .line 117
    sput v5, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    #@67
    .line 119
    :cond_4
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertySet:Z

    #@69
    move-object v2, v1

    #@6a
    .end local v1    # "tmp":Ljava/lang/Integer;
    .restart local v2    # "tmp":Ljava/lang/Integer;
    goto :goto_1

    #@6b
    .line 124
    .end local v2    # "tmp":Ljava/lang/Integer;
    .restart local v1    # "tmp":Ljava/lang/Integer;
    :cond_5
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@6e
    move-result-object v3

    #@6f
    if-nez v3, :cond_8

    #@71
    .line 125
    const/4 v3, 0x2

    #@72
    sput v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    #@74
    move-object v2, v1

    #@75
    .end local v1    # "tmp":Ljava/lang/Integer;
    .restart local v2    # "tmp":Ljava/lang/Integer;
    goto :goto_1

    #@76
    .line 138
    :catch_0
    move-exception v0

    #@77
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object v1, v2

    #@78
    .end local v2    # "tmp":Ljava/lang/Integer;
    .restart local v1    # "tmp":Ljava/lang/Integer;
    goto :goto_2

    #@79
    .line 150
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    new-instance v3, Lsun/security/action/GetIntegerAction;

    #@7b
    const-string/jumbo v4, "sun.net.inetaddr.negative.ttl"

    #@7e
    invoke-direct {v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    #@81
    .line 149
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@84
    move-result-object v1

    #@85
    .end local v1    # "tmp":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    #@87
    .line 151
    .restart local v1    # "tmp":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    #@89
    .line 152
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@8c
    move-result v3

    #@8d
    sput v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    #@8f
    .line 153
    sget v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    #@91
    if-gez v3, :cond_7

    #@93
    .line 154
    sput v5, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    #@95
    .line 156
    :cond_7
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertyNegativeSet:Z

    #@97
    goto :goto_3

    #@98
    .line 102
    .local v1, "tmp":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    #@99
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    #@9a
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v1, "tmp":Ljava/lang/Integer;
    :cond_8
    move-object v2, v1

    #@9b
    .end local v1    # "tmp":Ljava/lang/Integer;
    .restart local v2    # "tmp":Ljava/lang/Integer;
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static checkValue(II)V
    .locals 2
    .param p0, "newPolicy"    # I
    .param p1, "oldPolicy"    # I

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 215
    if-ne p0, v0, :cond_0

    #@3
    .line 216
    return-void

    #@4
    .line 218
    :cond_0
    if-eq p1, v0, :cond_1

    #@6
    .line 219
    if-ge p0, p1, :cond_2

    #@8
    .line 222
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    #@a
    .line 223
    const-string/jumbo v1, "can\'t make InetAddress cache more lax"

    #@d
    .line 222
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 220
    :cond_2
    if-lt p0, v0, :cond_1

    #@13
    .line 209
    return-void
.end method

.method public static declared-synchronized get()I
    .locals 2

    #@0
    .prologue
    const-class v0, Lsun/net/InetAddressCachePolicy;

    #@2
    monitor-enter v0

    #@3
    .line 162
    :try_start_0
    sget v1, Lsun/net/InetAddressCachePolicy;->cachePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static declared-synchronized getNegative()I
    .locals 2

    #@0
    .prologue
    const-class v0, Lsun/net/InetAddressCachePolicy;

    #@2
    monitor-enter v0

    #@3
    .line 166
    :try_start_0
    sget v1, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public static declared-synchronized setIfNotSet(I)V
    .locals 2
    .param p0, "newPolicy"    # I

    #@0
    .prologue
    const-class v1, Lsun/net/InetAddressCachePolicy;

    #@2
    monitor-enter v1

    #@3
    .line 182
    :try_start_0
    sget-boolean v0, Lsun/net/InetAddressCachePolicy;->propertySet:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 183
    sget v0, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    #@9
    invoke-static {p0, v0}, Lsun/net/InetAddressCachePolicy;->checkValue(II)V

    #@c
    .line 184
    sput p0, Lsun/net/InetAddressCachePolicy;->cachePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v1

    #@f
    .line 176
    return-void

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public static declared-synchronized setNegativeIfNotSet(I)V
    .locals 2
    .param p0, "newPolicy"    # I

    #@0
    .prologue
    const-class v1, Lsun/net/InetAddressCachePolicy;

    #@2
    monitor-enter v1

    #@3
    .line 201
    :try_start_0
    sget-boolean v0, Lsun/net/InetAddressCachePolicy;->propertyNegativeSet:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 205
    sput p0, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :cond_0
    monitor-exit v1

    #@a
    .line 195
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method
