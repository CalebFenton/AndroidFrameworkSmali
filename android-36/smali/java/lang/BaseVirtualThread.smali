.class abstract Ljava/lang/BaseVirtualThread;
.super Ljava/lang/Thread;
.source "BaseVirtualThread.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "characteristics"    # I
    .param p3, "bound"    # Z

    .line 42
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;IZ)V

    .line 43
    return-void
.end method


# virtual methods
.method abstract blacklist park()V
.end method

.method abstract blacklist parkNanos(J)V
.end method

.method abstract blacklist unpark()V
.end method
