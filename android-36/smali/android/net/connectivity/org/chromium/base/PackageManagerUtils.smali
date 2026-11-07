.class public Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.java"


# static fields
.field public static final blacklist BROWSER_INTENT:Landroid/content/Intent;

.field private static final blacklist TAG:Ljava/lang/String; = "PackageManagerUtils"

.field public static final blacklist XR_IMMERSIVE_FEATURE_NAME:Ljava/lang/String; = "android.software.xr.immersive"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 27
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 28
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 29
    const-string v1, "http"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->BROWSER_INTENT:Landroid/content/Intent;

    .line 25
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist canResolveActivity(Landroid/content/Intent;)Z
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 86
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->canResolveActivity(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static blacklist canResolveActivity(Landroid/content/Intent;I)Z
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flags"    # I

    .line 77
    invoke-static {p0, p1}, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist getQueryInstalledHomeLaunchersIntent()Landroid/content/Intent;
    .registers 2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist handleExpectedExceptionsOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V
    .registers 4
    .param p0, "e"    # Ljava/lang/RuntimeException;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 136
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-nez v0, :cond_e

    .line 137
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v0, :cond_d

    goto :goto_e

    .line 140
    :cond_d
    throw p0

    .line 138
    :cond_e
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not resolve Activity for intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManagerUtils"

    invoke-static {v1, v0, p0}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    return-void
.end method

.method public static blacklist hasSystemFeature(Ljava/lang/String;)Z
    .registers 3
    .param p0, "feature"    # Ljava/lang/String;

    .line 91
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 92
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist queryAllLaunchersInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->getQueryInstalledHomeLaunchersIntent()Landroid/content/Intent;

    move-result-object v0

    .line 130
    const/high16 v1, 0x20000

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist queryAllWebBrowsersInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 118
    const/high16 v0, 0xf0000

    .line 123
    .local v0, "flags":I
    sget-object v1, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->BROWSER_INTENT:Landroid/content/Intent;

    invoke-static {v1, v0}, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskReads()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_22

    .line 63
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_4
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 64
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_16

    .line 65
    if-eqz v0, :cond_15

    :try_start_12
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_22

    .line 64
    :cond_15
    return-object v2

    .line 62
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catchall_16
    move-exception v1

    if-eqz v0, :cond_21

    :try_start_19
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "intent":Landroid/content/Intent;
    .end local p1    # "flags":I
    :cond_21
    :goto_21
    throw v1
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_22} :catch_22

    .line 65
    .end local v0    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    .restart local p0    # "intent":Landroid/content/Intent;
    .restart local p1    # "flags":I
    :catch_22
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->handleExpectedExceptionsOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    .line 68
    .end local v0    # "e":Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flags"    # I

    .line 44
    :try_start_0
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->allowDiskWrites()Landroid/net/connectivity/org/chromium/base/StrictModeContext;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_22

    .line 45
    .local v0, "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    :try_start_4
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 46
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_16

    .line 47
    if-eqz v0, :cond_15

    :try_start_12
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_22

    .line 46
    :cond_15
    return-object v2

    .line 44
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catchall_16
    move-exception v1

    if-eqz v0, :cond_21

    :try_start_19
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/StrictModeContext;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v2

    :try_start_1e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "intent":Landroid/content/Intent;
    .end local p1    # "flags":I
    :cond_21
    :goto_21
    throw v1
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_22} :catch_22

    .line 47
    .end local v0    # "ignored":Landroid/net/connectivity/org/chromium/base/StrictModeContext;
    .restart local p0    # "intent":Landroid/content/Intent;
    .restart local p1    # "flags":I
    :catch_22
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->handleExpectedExceptionsOrRethrow(Ljava/lang/RuntimeException;Landroid/content/Intent;)V

    .line 50
    .end local v0    # "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist resolveDefaultWebBrowserActivity()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 106
    sget-object v0, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->BROWSER_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/PackageManagerUtils;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method
