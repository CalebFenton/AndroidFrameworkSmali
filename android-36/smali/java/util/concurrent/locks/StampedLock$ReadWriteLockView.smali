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
.field final synthetic blacklist this$0:Ljava/util/concurrent/locks/StampedLock;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/locks/StampedLock;)V
    .registers 2
    .param p1, "this$0"    # Ljava/util/concurrent/locks/StampedLock;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1070
    iput-object p1, p0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api readLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .line 1071
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->asReadLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api writeLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .line 1072
    iget-object v0, p0, Ljava/util/concurrent/locks/StampedLock$ReadWriteLockView;->this$0:Ljava/util/concurrent/locks/StampedLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/StampedLock;->asWriteLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method
