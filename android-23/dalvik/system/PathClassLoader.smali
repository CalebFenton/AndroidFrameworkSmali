.class public Ldalvik/system/PathClassLoader;
.super Ldalvik/system/BaseDexClassLoader;
.source "PathClassLoader.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 38
    invoke-direct {p0, p1, v0, v0, p2}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@4
    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "libraryPath"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0, p2, p3}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    #@4
    .line 64
    return-void
.end method
