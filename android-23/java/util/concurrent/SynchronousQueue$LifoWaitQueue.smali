.class Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;
.super Ljava/util/concurrent/SynchronousQueue$WaitQueue;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LifoWaitQueue"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x326b6965c68cc166L


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1122
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.LifoWaitQueue;"
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;-><init>()V

    #@3
    return-void
.end method
