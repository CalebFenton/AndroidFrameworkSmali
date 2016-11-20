.class final Ljava/util/concurrent/ForkJoinPool$AuxState;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AuxState"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5349f9cce5385003L


# instance fields
.field indexSeed:J

.field volatile stealCount:J


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 716
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@3
    return-void
.end method
