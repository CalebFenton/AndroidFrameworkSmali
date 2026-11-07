.class public abstract Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.super Ljava/lang/Object;
.source "AbstractOwnableSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x33dfafb9ad6d6fa9L


# instance fields
.field private transient greylist-max-o exclusiveOwnerThread:Ljava/lang/Thread;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final whitelist test-api getExclusiveOwnerThread()Ljava/lang/Thread;
    .registers 2

    .line 84
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->exclusiveOwnerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method protected final whitelist test-api setExclusiveOwnerThread(Ljava/lang/Thread;)V
    .registers 2
    .param p1, "thread"    # Ljava/lang/Thread;

    .line 74
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->exclusiveOwnerThread:Ljava/lang/Thread;

    .line 75
    return-void
.end method
