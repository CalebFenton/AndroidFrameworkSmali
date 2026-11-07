.class public Ldalvik/system/TemporaryDirectory;
.super Ljava/lang/Object;
.source "TemporaryDirectory.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized greylist-max-o setUpDirectory(Ljava/io/File;)V
    .registers 2
    .param p0, "baseDir"    # Ljava/io/File;

    const-class v0, Ldalvik/system/TemporaryDirectory;

    monitor-enter v0

    .line 37
    monitor-exit v0

    return-void
.end method

.method public static greylist-max-o setUpDirectory(Ljava/lang/String;)V
    .registers 1
    .param p0, "baseDir"    # Ljava/lang/String;

    .line 31
    return-void
.end method
