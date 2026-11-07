.class public Lsun/util/logging/LoggingSupport;
.super Ljava/lang/Object;
.source "LoggingSupport.java"


# static fields
.field private static final blacklist DEFAULT_FORMAT:Ljava/lang/String; = "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

.field private static final blacklist FORMAT_PROP_KEY:Ljava/lang/String; = "java.util.logging.SimpleFormatter.format"

.field private static final blacklist proxy:Lsun/util/logging/LoggingProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 48
    new-instance v0, Lsun/util/logging/LoggingSupport$1;

    invoke-direct {v0}, Lsun/util/logging/LoggingSupport$1;-><init>()V

    .line 49
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/logging/LoggingProxy;

    sput-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    .line 48
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist ensureAvailable()V
    .registers 2

    .line 75
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    if-eqz v0, :cond_5

    .line 77
    return-void

    .line 76
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should not here"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static blacklist getLevel(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "logger"    # Ljava/lang/Object;

    .line 104
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 105
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLevel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLevelName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "level"    # Ljava/lang/Object;

    .line 139
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 140
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLevelName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLevelValue(Ljava/lang/Object;)I
    .registers 2
    .param p0, "level"    # Ljava/lang/Object;

    .line 144
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 145
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLevelValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static blacklist getLogger(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 99
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 100
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLogger(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "loggerName"    # Ljava/lang/String;

    .line 84
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 85
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLoggerNames()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 81
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0}, Lsun/util/logging/LoggingProxy;->getLoggerNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "loggerName"    # Ljava/lang/String;

    .line 94
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 95
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSimpleFormat()Ljava/lang/String;
    .registers 1

    .line 153
    const/4 v0, 0x1

    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getSimpleFormat(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getSimpleFormat(Z)Ljava/lang/String;
    .registers 9
    .param p0, "useProxy"    # Z

    .line 159
    new-instance v0, Lsun/util/logging/LoggingSupport$2;

    invoke-direct {v0}, Lsun/util/logging/LoggingSupport$2;-><init>()V

    .line 160
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "format":Ljava/lang/String;
    if-eqz p0, :cond_1d

    sget-object v1, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    if-eqz v1, :cond_1d

    if-nez v0, :cond_1d

    .line 168
    sget-object v1, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    const-string v2, "java.util.logging.SimpleFormatter.format"

    invoke-interface {v1, v2}, Lsun/util/logging/LoggingProxy;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1e

    .line 171
    :cond_1d
    move-object v1, v0

    .end local v0    # "format":Ljava/lang/String;
    .local v1, "format":Ljava/lang/String;
    :goto_1e
    if-eqz v1, :cond_3b

    .line 174
    :try_start_20
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_36} :catch_37

    goto :goto_3a

    .line 175
    :catch_37
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

    .line 178
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3a
    goto :goto_3d

    .line 180
    :cond_3b
    const-string v1, "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

    .line 182
    :goto_3d
    return-object v1
.end method

.method public static blacklist isAvailable()Z
    .registers 1

    .line 71
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static blacklist isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "logger"    # Ljava/lang/Object;
    .param p1, "level"    # Ljava/lang/Object;

    .line 114
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 115
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1}, Lsun/util/logging/LoggingProxy;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p0, "logger"    # Ljava/lang/Object;
    .param p1, "level"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .line 119
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 120
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1, p2}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static blacklist log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "logger"    # Ljava/lang/Object;
    .param p1, "level"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .line 124
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 125
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public static varargs blacklist log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "logger"    # Ljava/lang/Object;
    .param p1, "level"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    .line 129
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 130
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1, p2, p3}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public static blacklist parseLevel(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .param p0, "levelName"    # Ljava/lang/String;

    .line 134
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 135
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->parseLevel(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "logger"    # Ljava/lang/Object;
    .param p1, "newLevel"    # Ljava/lang/Object;

    .line 109
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 110
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1}, Lsun/util/logging/LoggingProxy;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public static blacklist setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "loggerName"    # Ljava/lang/String;
    .param p1, "levelName"    # Ljava/lang/String;

    .line 89
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    .line 90
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    invoke-interface {v0, p0, p1}, Lsun/util/logging/LoggingProxy;->setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
