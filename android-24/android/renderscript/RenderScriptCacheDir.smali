.class public Landroid/renderscript/RenderScriptCacheDir;
.super Ljava/lang/Object;
.source "RenderScriptCacheDir.java"


# static fields
.field static mCacheDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 0
    .param p0, "cacheDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 35
    sput-object p0, Landroid/renderscript/RenderScriptCacheDir;->mCacheDir:Ljava/io/File;

    #@2
    .line 33
    return-void
.end method
