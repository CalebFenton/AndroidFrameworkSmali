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
.field broken:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 120
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/concurrent/CyclicBarrier$Generation;->broken:Z

    #@6
    .line 119
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/CyclicBarrier$Generation;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Ljava/util/concurrent/CyclicBarrier$Generation;-><init>()V

    #@3
    return-void
.end method
