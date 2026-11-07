.class final Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$SharedNode;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;
.source "AbstractQueuedSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SharedNode"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 503
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer$Node;-><init>()V

    return-void
.end method
