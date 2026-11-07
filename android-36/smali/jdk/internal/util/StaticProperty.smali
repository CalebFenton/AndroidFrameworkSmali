.class public final Ljdk/internal/util/StaticProperty;
.super Ljava/lang/Object;
.source "StaticProperty.java"


# static fields
.field private static final blacklist JAVA_HOME:Ljava/lang/String;

.field private static final blacklist JAVA_IO_TMPDIR:Ljava/lang/String;

.field private static final blacklist JAVA_LIBRARY_PATH:Ljava/lang/String;

.field private static final blacklist USER_DIR:Ljava/lang/String;

.field private static final blacklist USER_HOME:Ljava/lang/String;

.field private static final blacklist USER_NAME:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 58
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 59
    .local v0, "props":Ljava/util/Properties;
    const-string v1, "java.home"

    invoke-static {v0, v1}, Ljdk/internal/util/StaticProperty;->getProperty(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljdk/internal/util/StaticProperty;->JAVA_HOME:Ljava/lang/String;

    .line 60
    const-string v1, "user.home"

    invoke-static {v0, v1}, Ljdk/internal/util/StaticProperty;->getProperty(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljdk/internal/util/StaticProperty;->USER_HOME:Ljava/lang/String;

    .line 61
    const-string v1, "user.dir"

    invoke-static {v0, v1}, Ljdk/internal/util/StaticProperty;->getProperty(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljdk/internal/util/StaticProperty;->USER_DIR:Ljava/lang/String;

    .line 62
    const-string v1, "user.name"

    invoke-static {v0, v1}, Ljdk/internal/util/StaticProperty;->getProperty(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljdk/internal/util/StaticProperty;->USER_NAME:Ljava/lang/String;

    .line 63
    const-string v1, "java.io.tmpdir"

    invoke-static {v0, v1}, Ljdk/internal/util/StaticProperty;->getProperty(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljdk/internal/util/StaticProperty;->JAVA_IO_TMPDIR:Ljava/lang/String;

    .line 64
    const-string v1, "java.library.path"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Ljdk/internal/util/StaticProperty;->getProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ljdk/internal/util/StaticProperty;->JAVA_LIBRARY_PATH:Ljava/lang/String;

    .line 70
    .end local v0    # "props":Ljava/util/Properties;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getProperty(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 77
    return-object v0

    .line 75
    :cond_7
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "props"    # Ljava/util/Properties;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 82
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "v":Ljava/lang/String;
    if-nez v0, :cond_8

    move-object v1, p2

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    return-object v1
.end method

.method public static blacklist javaHome()Ljava/lang/String;
    .registers 1

    .line 96
    sget-object v0, Ljdk/internal/util/StaticProperty;->JAVA_HOME:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist javaIoTmpDir()Ljava/lang/String;
    .registers 1

    .line 161
    sget-object v0, Ljdk/internal/util/StaticProperty;->JAVA_IO_TMPDIR:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist javaLibraryPath()Ljava/lang/String;
    .registers 1

    .line 148
    sget-object v0, Ljdk/internal/util/StaticProperty;->JAVA_LIBRARY_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist userDir()Ljava/lang/String;
    .registers 1

    .line 122
    sget-object v0, Ljdk/internal/util/StaticProperty;->USER_DIR:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist userHome()Ljava/lang/String;
    .registers 1

    .line 109
    sget-object v0, Ljdk/internal/util/StaticProperty;->USER_HOME:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist userName()Ljava/lang/String;
    .registers 1

    .line 135
    sget-object v0, Ljdk/internal/util/StaticProperty;->USER_NAME:Ljava/lang/String;

    return-object v0
.end method
