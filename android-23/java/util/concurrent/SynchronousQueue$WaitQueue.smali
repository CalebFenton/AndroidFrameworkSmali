.class Ljava/util/concurrent/SynchronousQueue$WaitQueue;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaitQueue"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1121
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$WaitQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.WaitQueue;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
