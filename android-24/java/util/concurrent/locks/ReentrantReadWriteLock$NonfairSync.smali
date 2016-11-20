.class final Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x713cd03170e2fc9dL


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 642
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method final readerShouldBlock()Z
    .locals 1

    #@0
    .prologue
    .line 655
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$NonfairSync;->apparentlyFirstQueuedIsExclusive()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method final writerShouldBlock()Z
    .locals 1

    #@0
    .prologue
    .line 645
    const/4 v0, 0x0

    #@1
    return v0
.end method
