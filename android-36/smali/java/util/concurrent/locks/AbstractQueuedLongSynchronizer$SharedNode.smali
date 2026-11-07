.class final Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$SharedNode;
.super Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
.source "AbstractQueuedLongSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SharedNode"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 125
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>()V

    return-void
.end method
