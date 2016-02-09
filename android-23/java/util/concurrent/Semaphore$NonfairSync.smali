.class final Ljava/util/concurrent/Semaphore$NonfairSync;
.super Ljava/util/concurrent/Semaphore$Sync;
.source "Semaphore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Semaphore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonfairSync"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2563a9c95ee9771aL


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "permits"    # I

    #@0
    .prologue
    .line 197
    invoke-direct {p0, p1}, Ljava/util/concurrent/Semaphore$Sync;-><init>(I)V

    #@3
    .line 196
    return-void
.end method


# virtual methods
.method protected tryAcquireShared(I)I
    .locals 1
    .param p1, "acquires"    # I

    #@0
    .prologue
    .line 201
    invoke-virtual {p0, p1}, Ljava/util/concurrent/Semaphore$NonfairSync;->nonfairTryAcquireShared(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
