.class public Ldalvik/system/TemporaryDirectory;
.super Ljava/lang/Object;
.source "TemporaryDirectory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized setUpDirectory(Ljava/io/File;)V
    .locals 1
    .param p0, "baseDir"    # Ljava/io/File;

    #@0
    .prologue
    const-class v0, Ldalvik/system/TemporaryDirectory;

    #@2
    monitor-enter v0

    #@3
    monitor-exit v0

    #@4
    .line 36
    return-void
.end method

.method public static setUpDirectory(Ljava/lang/String;)V
    .locals 0
    .param p0, "baseDir"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    return-void
.end method
