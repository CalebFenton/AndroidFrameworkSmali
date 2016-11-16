.class final Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;
.super Ljava/lang/Object;
.source "StampedLock.java"

# interfaces
.implements Ljava/util/concurrent/locks/ReadWriteLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/StampedLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ReadWriteLockView"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/StampedLock;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/concurrent/locks/StampedLock;

    #@0
    .prologue
    .line 882
    iput-object p1, p0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public readLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    #@0
    .prologue
    .line 883
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->asReadLock()Ljava/util/concurrent/locks/Lock;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    #@0
    .prologue
    .line 884
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->asWriteLock()Ljava/util/concurrent/locks/Lock;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
