.class public abstract Landroid/debug/AdbManagerInternal;
.super Ljava/lang/Object;
.source "AdbManagerInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getAdbKeysFile()Ljava/io/File;
.end method

.method public abstract blacklist getAdbTempKeysFile()Ljava/io/File;
.end method

.method public abstract blacklist isAdbEnabled(B)Z
.end method

.method public abstract blacklist notifyKeyFilesUpdated()V
.end method

.method public abstract blacklist registerTransport(Landroid/debug/IAdbTransport;)V
.end method

.method public abstract blacklist startAdbdForTransport(B)V
.end method

.method public abstract blacklist stopAdbdForTransport(B)V
.end method

.method public abstract blacklist unregisterTransport(Landroid/debug/IAdbTransport;)V
.end method
