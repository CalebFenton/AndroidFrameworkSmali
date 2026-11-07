.class public final Landroid/net/connectivity/org/chromium/base/CommandLineInitUtil;
.super Ljava/lang/Object;
.source "CommandLineInitUtil.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist COMMAND_LINE_FILE_PATH:Ljava/lang/String; = "/data/local"

.field private static final blacklist COMMAND_LINE_FILE_PATH_DEBUG_APP:Ljava/lang/String; = "/data/local/tmp"

.field private static blacklist sFilenameOverrideForTesting:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 17
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getDebugApp(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 82
    nop

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    move v2, v1

    .line 85
    .local v2, "adbEnabled":Z
    :cond_10
    if-eqz v2, :cond_1e

    .line 86
    nop

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    const-string v1, "debug_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 89
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist initCommandLine(Ljava/lang/String;Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)V
    .registers 6
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p1, "shouldUseDebugFlags":Landroid/net/connectivity/org/chromium/base/supplier/Supplier;, "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<Ljava/lang/Boolean;>;"
    sget-object v0, Landroid/net/connectivity/org/chromium/base/CommandLineInitUtil;->sFilenameOverrideForTesting:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 54
    sget-object p0, Landroid/net/connectivity/org/chromium/base/CommandLineInitUtil;->sFilenameOverrideForTesting:Ljava/lang/String;

    .line 56
    :cond_6
    nop

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v0, "commandLineFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 60
    .local v1, "debugFlagsExist":Z
    if-eqz v1, :cond_1a

    invoke-static {p1}, Landroid/net/connectivity/org/chromium/base/CommandLineInitUtil;->shouldUseDebugCommandLine(Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 61
    :cond_1a
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local"

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 63
    :cond_22
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/base/CommandLine;->initFromFile(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist setFilenameOverrideForTesting(Ljava/lang/String;)V
    .registers 1
    .param p0, "value"    # Ljava/lang/String;

    .line 42
    sput-object p0, Landroid/net/connectivity/org/chromium/base/CommandLineInitUtil;->sFilenameOverrideForTesting:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private static blacklist shouldUseDebugCommandLine(Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 75
    .local p0, "shouldUseDebugFlags":Landroid/net/connectivity/org/chromium/base/supplier/Supplier;, "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    if-eqz p0, :cond_10

    invoke-interface {p0}, Landroid/net/connectivity/org/chromium/base/supplier/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    return v0

    .line 76
    :cond_10
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 78
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/CommandLineInitUtil;->getDebugApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-static {}, Landroid/net/connectivity/org/chromium/base/BuildInfo;->isDebugAndroid()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :cond_2a
    :goto_2a
    return v0
.end method
