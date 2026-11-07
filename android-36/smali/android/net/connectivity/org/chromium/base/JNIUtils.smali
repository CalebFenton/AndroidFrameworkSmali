.class public Landroid/net/connectivity/org/chromium/base/JNIUtils;
.super Ljava/lang/Object;
.source "JNIUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "JNIUtils"

.field private static blacklist sJniClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 5
    .param p0, "splitName"    # Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 22
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->isIsolatedSplitInstalled(Ljava/lang/String;)Z

    move-result v0

    .line 23
    .local v0, "isInstalled":Z
    const-string v1, "Init JNI Classloader for %s. isInstalled=%b"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "JNIUtils"

    invoke-static {v3, v1, p0, v2}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    if-eqz v0, :cond_1c

    .line 26
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/BundleUtils;->getOrCreateSplitClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1

    .line 35
    .end local v0    # "isInstalled":Z
    :cond_1c
    sget-object v0, Landroid/net/connectivity/org/chromium/base/JNIUtils;->sJniClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_23

    sget-object v0, Landroid/net/connectivity/org/chromium/base/JNIUtils;->sJniClassLoader:Ljava/lang/ClassLoader;

    goto :goto_29

    :cond_23
    const-class v0, Landroid/net/connectivity/org/chromium/base/JNIUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_29
    return-object v0
.end method

.method public static blacklist setClassLoader(Ljava/lang/ClassLoader;)V
    .registers 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;

    .line 44
    sput-object p0, Landroid/net/connectivity/org/chromium/base/JNIUtils;->sJniClassLoader:Ljava/lang/ClassLoader;

    .line 45
    return-void
.end method
