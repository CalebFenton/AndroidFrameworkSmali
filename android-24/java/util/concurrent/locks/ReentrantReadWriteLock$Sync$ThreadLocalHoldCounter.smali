.class final Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;
.super Ljava/lang/ThreadLocal;
.source "ReentrantReadWriteLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ThreadLocalHoldCounter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$ThreadLocalHoldCounter;->initialValue()Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public initialValue()Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;
    .locals 1

    #@0
    .prologue
    .line 262
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;

    #@2
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$Sync$HoldCounter;-><init>()V

    #@5
    return-object v0
.end method
