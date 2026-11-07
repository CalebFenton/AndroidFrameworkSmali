.class public Landroid/renderscript/RenderScriptCacheDir;
.super Ljava/lang/Object;
.source "RenderScriptCacheDir.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static greylist mCacheDir:Ljava/io/File;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist setupDiskCache(Ljava/io/File;)V
    .registers 1
    .param p0, "cacheDir"    # Ljava/io/File;

    .line 42
    sput-object p0, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    .line 43
    return-void
.end method
