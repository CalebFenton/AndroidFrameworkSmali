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
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
