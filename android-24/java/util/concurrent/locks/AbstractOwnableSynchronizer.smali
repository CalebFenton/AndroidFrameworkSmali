.class public abstract Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.super Ljava/lang/Object;
.source "AbstractOwnableSynchronizer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x33dfafb9ad6d6fa9L


# instance fields
.field private transient exclusiveOwnerThread:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected final getExclusiveOwnerThread()Ljava/lang/Thread;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->exclusiveOwnerThread:Ljava/lang/Thread;

    #@2
    return-object v0
.end method

.method protected final setExclusiveOwnerThread(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;

    #@0
    .prologue
    .line 45
    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->exclusiveOwnerThread:Ljava/lang/Thread;

    #@2
    .line 44
    return-void
.end method
