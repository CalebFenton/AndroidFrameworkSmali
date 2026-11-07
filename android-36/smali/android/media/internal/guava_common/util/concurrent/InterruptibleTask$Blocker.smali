.class final Landroid/media/internal/guava_common/util/concurrent/InterruptibleTask$Blocker;
.super Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/util/concurrent/InterruptibleTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Blocker"
.end annotation


# instance fields
.field private final blacklist task:Landroid/media/internal/guava_common/util/concurrent/InterruptibleTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/util/concurrent/InterruptibleTask<",
            "*>;"
        }
    .end annotation
.end field


# virtual methods
.method blacklist getOwner()Ljava/lang/Thread;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 240
    invoke-super {p0}, Ljava/util/concurrent/locks/AbstractOwnableSynchronizer;->getExclusiveOwnerThread()Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api run()V
    .registers 1

    .line 0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    .line 245
    throw p0
.end method
