.class public abstract Landroid/net/connectivity/org/chromium/base/FileProviderUtils;
.super Ljava/lang/Object;
.source "FileProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/FileProviderUtils$FileProviderUtil;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FileProviderUtils"

.field private static blacklist sFileProviderUtil:Landroid/net/connectivity/org/chromium/base/FileProviderUtils$FileProviderUtil;

.field private static final blacklist sLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/FileProviderUtils;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getContentUriFromFile(Ljava/io/File;)Landroid/net/Uri;
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .line 51
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FileProviderUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Landroid/net/connectivity/org/chromium/base/FileProviderUtils;->sFileProviderUtil:Landroid/net/connectivity/org/chromium/base/FileProviderUtils$FileProviderUtil;

    if-eqz v1, :cond_f

    .line 53
    sget-object v1, Landroid/net/connectivity/org/chromium/base/FileProviderUtils;->sFileProviderUtil:Landroid/net/connectivity/org/chromium/base/FileProviderUtils$FileProviderUtil;

    invoke-interface {v1, p0}, Landroid/net/connectivity/org/chromium/base/FileProviderUtils$FileProviderUtil;->getContentUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 55
    :cond_f
    monitor-exit v0

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 55
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static blacklist setFileProviderUtil(Landroid/net/connectivity/org/chromium/base/FileProviderUtils$FileProviderUtil;)V
    .registers 3
    .param p0, "util"    # Landroid/net/connectivity/org/chromium/base/FileProviderUtils$FileProviderUtil;

    .line 36
    sget-object v0, Landroid/net/connectivity/org/chromium/base/FileProviderUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_3
    sput-object p0, Landroid/net/connectivity/org/chromium/base/FileProviderUtils;->sFileProviderUtil:Landroid/net/connectivity/org/chromium/base/FileProviderUtils$FileProviderUtil;

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 38
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method
