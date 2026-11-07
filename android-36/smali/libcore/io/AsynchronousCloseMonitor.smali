.class public final Llibcore/io/AsynchronousCloseMonitor;
.super Ljava/lang/Object;
.source "AsynchronousCloseMonitor.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static native greylist signalBlockedThreads(Ljava/io/FileDescriptor;)V
.end method
