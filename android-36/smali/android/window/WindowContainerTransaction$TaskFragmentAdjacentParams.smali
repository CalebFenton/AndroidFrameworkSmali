.class public Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;
.super Ljava/lang/Object;
.source "WindowContainerTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowContainerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskFragmentAdjacentParams"
.end annotation


# static fields
.field private static final blacklist DELAY_PRIMARY_LAST_ACTIVITY_REMOVAL:Ljava/lang/String; = "android:transaction.adjacent.option.delay_primary_removal"

.field private static final blacklist DELAY_SECONDARY_LAST_ACTIVITY_REMOVAL:Ljava/lang/String; = "android:transaction.adjacent.option.delay_secondary_removal"


# instance fields
.field private blacklist mDelayPrimaryLastActivityRemoval:Z

.field private blacklist mDelaySecondaryLastActivityRemoval:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2554
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 2556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2557
    const-string v0, "android:transaction.adjacent.option.delay_primary_removal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    .line 2559
    const-string v0, "android:transaction.adjacent.option.delay_secondary_removal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    .line 2561
    return-void
.end method


# virtual methods
.method public blacklist setShouldDelayPrimaryLastActivityRemoval(Z)V
    .registers 2
    .param p1, "delay"    # Z

    .line 2565
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    .line 2566
    return-void
.end method

.method public blacklist setShouldDelaySecondaryLastActivityRemoval(Z)V
    .registers 2
    .param p1, "delay"    # Z

    .line 2570
    iput-boolean p1, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    .line 2571
    return-void
.end method

.method public blacklist shouldDelayPrimaryLastActivityRemoval()Z
    .registers 2

    .line 2582
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    return v0
.end method

.method public blacklist shouldDelaySecondaryLastActivityRemoval()Z
    .registers 2

    .line 2590
    iget-boolean v0, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    return v0
.end method

.method blacklist toBundle()Landroid/os/Bundle;
    .registers 4

    .line 2595
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2596
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "android:transaction.adjacent.option.delay_primary_removal"

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelayPrimaryLastActivityRemoval:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2597
    const-string v1, "android:transaction.adjacent.option.delay_secondary_removal"

    iget-boolean v2, p0, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->mDelaySecondaryLastActivityRemoval:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2598
    return-object v0
.end method
