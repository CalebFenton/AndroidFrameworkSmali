.class public Ldalvik/system/DexClassLoader;
.super Ldalvik/system/BaseDexClassLoader;
.source "DexClassLoader.java"


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "optimizedDirectory"    # Ljava/lang/String;
    .param p3, "librarySearchPath"    # Ljava/lang/String;
    .param p4, "parent"    # Ljava/lang/ClassLoader;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Ldalvik/system/BaseDexClassLoader;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 56
    return-void
.end method
