.class final Ljava/util/concurrent/locks/StampedLock$WriterNode;
.super Ljava/util/concurrent/locks/StampedLock$Node;
.source "StampedLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/StampedLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WriterNode"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 383
    invoke-direct {p0}, Ljava/util/concurrent/locks/StampedLock$Node;-><init>()V

    return-void
.end method
