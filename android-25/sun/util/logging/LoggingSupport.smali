.class public Lsun/util/logging/LoggingSupport;
.super Ljava/lang/Object;
.source "LoggingSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/logging/LoggingSupport$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_FORMAT:Ljava/lang/String; = "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

.field private static final FORMAT_PROP_KEY:Ljava/lang/String; = "java.util.logging.SimpleFormatter.format"

.field private static final proxy:Lsun/util/logging/LoggingProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 49
    new-instance v0, Lsun/util/logging/LoggingSupport$1;

    #@2
    invoke-direct {v0}, Lsun/util/logging/LoggingSupport$1;-><init>()V

    #@5
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lsun/util/logging/LoggingProxy;

    #@b
    .line 48
    sput-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@d
    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static ensureAvailable()V
    .locals 2

    #@0
    .prologue
    .line 75
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 76
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "Should not here"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 74
    :cond_0
    return-void
.end method

.method public static getLevel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "logger"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 104
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 105
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLevel(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getLevelName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "level"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 139
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 140
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLevelName(Ljava/lang/Object;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getLevelValue(Ljava/lang/Object;)I
    .locals 1
    .param p0, "level"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 144
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 145
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLevelValue(Ljava/lang/Object;)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public static getLogger(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 100
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLogger(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "loggerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 85
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getLoggerLevel(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getLoggerNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 80
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 81
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0}, Lsun/util/logging/LoggingProxy;->getLoggerNames()Ljava/util/List;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "loggerName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 94
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 95
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->getParentLoggerName(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getSimpleFormat()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 153
    const/4 v0, 0x1

    #@1
    invoke-static {v0}, Lsun/util/logging/LoggingSupport;->getSimpleFormat(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static getSimpleFormat(Z)Ljava/lang/String;
    .locals 5
    .param p0, "useProxy"    # Z

    #@0
    .prologue
    .line 161
    new-instance v2, Lsun/util/logging/LoggingSupport$2;

    #@2
    invoke-direct {v2}, Lsun/util/logging/LoggingSupport$2;-><init>()V

    #@5
    .line 160
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Ljava/lang/String;

    #@b
    .line 167
    .local v1, "format":Ljava/lang/String;
    if-eqz p0, :cond_0

    #@d
    sget-object v2, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@f
    if-eqz v2, :cond_0

    #@11
    if-nez v1, :cond_0

    #@13
    .line 168
    sget-object v2, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@15
    const-string/jumbo v3, "java.util.logging.SimpleFormatter.format"

    #@18
    invoke-interface {v2, v3}, Lsun/util/logging/LoggingProxy;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 171
    :cond_0
    if-eqz v1, :cond_1

    #@1e
    .line 174
    const/4 v2, 0x6

    #@1f
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    #@21
    new-instance v3, Ljava/util/Date;

    #@23
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    #@26
    const/4 v4, 0x0

    #@27
    aput-object v3, v2, v4

    #@29
    const-string/jumbo v3, ""

    #@2c
    const/4 v4, 0x1

    #@2d
    aput-object v3, v2, v4

    #@2f
    const-string/jumbo v3, ""

    #@32
    const/4 v4, 0x2

    #@33
    aput-object v3, v2, v4

    #@35
    const-string/jumbo v3, ""

    #@38
    const/4 v4, 0x3

    #@39
    aput-object v3, v2, v4

    #@3b
    const-string/jumbo v3, ""

    #@3e
    const/4 v4, 0x4

    #@3f
    aput-object v3, v2, v4

    #@41
    const-string/jumbo v3, ""

    #@44
    const/4 v4, 0x5

    #@45
    aput-object v3, v2, v4

    #@47
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@4a
    .line 182
    :goto_0
    return-object v1

    #@4b
    .line 175
    :catch_0
    move-exception v0

    #@4c
    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

    #@4f
    goto :goto_0

    #@50
    .line 180
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string/jumbo v1, "%1$tb %1$td, %1$tY %1$tl:%1$tM:%1$tS %1$Tp %2$s%n%4$s: %5$s%6$s%n"

    #@53
    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 1

    #@0
    .prologue
    .line 71
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public static isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "logger"    # Ljava/lang/Object;
    .param p1, "level"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 114
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 115
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0, p1}, Lsun/util/logging/LoggingProxy;->isLoggable(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public static log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "logger"    # Ljava/lang/Object;
    .param p1, "level"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 119
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 120
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0, p1, p2}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    #@8
    .line 118
    return-void
.end method

.method public static log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "logger"    # Ljava/lang/Object;
    .param p1, "level"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 124
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 125
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0, p1, p2, p3}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8
    .line 123
    return-void
.end method

.method public static varargs log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Ljava/lang/Object;
    .param p1, "level"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 129
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 130
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0, p1, p2, p3}, Lsun/util/logging/LoggingProxy;->log(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    #@8
    .line 128
    return-void
.end method

.method public static parseLevel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "levelName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 134
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 135
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0}, Lsun/util/logging/LoggingProxy;->parseLevel(Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static setLevel(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "logger"    # Ljava/lang/Object;
    .param p1, "newLevel"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 109
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 110
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0, p1}, Lsun/util/logging/LoggingProxy;->setLevel(Ljava/lang/Object;Ljava/lang/Object;)V

    #@8
    .line 108
    return-void
.end method

.method public static setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "loggerName"    # Ljava/lang/String;
    .param p1, "levelName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 89
    invoke-static {}, Lsun/util/logging/LoggingSupport;->ensureAvailable()V

    #@3
    .line 90
    sget-object v0, Lsun/util/logging/LoggingSupport;->proxy:Lsun/util/logging/LoggingProxy;

    #@5
    invoke-interface {v0, p0, p1}, Lsun/util/logging/LoggingProxy;->setLoggerLevel(Ljava/lang/String;Ljava/lang/String;)V

    #@8
    .line 88
    return-void
.end method
