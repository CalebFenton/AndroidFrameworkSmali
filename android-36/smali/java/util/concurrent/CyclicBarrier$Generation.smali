.class Ljava/util/concurrent/CyclicBarrier$Generation;
.super Ljava/lang/Object;
.source "CyclicBarrier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CyclicBarrier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generation"
.end annotation


# instance fields
.field greylist-max-o broken:Z


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
