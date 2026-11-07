.class public Landroid/net/connectivity/org/chromium/net/ThreadStatsUid;
.super Ljava/lang/Object;
.source "ThreadStatsUid.java"


# static fields
.field private static final blacklist sClearThreadStatsUid:Ljava/lang/reflect/Method;

.field private static final blacklist sSetThreadStatsUid:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 26
    :try_start_0
    const-class v0, Landroid/net/TrafficStats;

    const-string v1, "setThreadStatsUid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/ThreadStatsUid;->sSetThreadStatsUid:Ljava/lang/reflect/Method;

    .line 27
    const-class v0, Landroid/net/TrafficStats;

    const-string v1, "clearThreadStatsUid"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/ThreadStatsUid;->sClearThreadStatsUid:Ljava/lang/reflect/Method;
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1e} :catch_20
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_1e} :catch_20

    .line 30
    nop

    .line 31
    return-void

    .line 28
    :catch_20
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to get TrafficStats methods"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clear()V
    .registers 4

    .line 47
    const-string v0, "TrafficStats.clearThreadStatsUid failed"

    :try_start_2
    sget-object v1, Landroid/net/connectivity/org/chromium/net/ThreadStatsUid;->sClearThreadStatsUid:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_b} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_b} :catch_d

    .line 52
    nop

    .line 53
    return-void

    .line 50
    :catch_d
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 48
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_14
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist set(I)V
    .registers 5
    .param p0, "uid"    # I

    .line 36
    const-string v0, "TrafficStats.setThreadStatsUid failed"

    :try_start_2
    sget-object v1, Landroid/net/connectivity/org/chromium/net/ThreadStatsUid;->sSetThreadStatsUid:Ljava/lang/reflect/Method;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_10} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_10} :catch_12

    .line 41
    nop

    .line 42
    return-void

    .line 39
    :catch_12
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 37
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_19
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
