.class public final Landroid/os/CombinedVibration$SequentialCombination;
.super Ljava/lang/Object;
.source "CombinedVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CombinedVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SequentialCombination"
.end annotation


# instance fields
.field private final blacklist mDelays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/CombinedVibration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/CombinedVibration$SequentialCombination;->mEffects:Ljava/util/ArrayList;

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    .line 262
    return-void
.end method


# virtual methods
.method public blacklist addNext(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$SequentialCombination;
    .registers 4
    .param p1, "vibratorId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 277
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(ILandroid/os/VibrationEffect;I)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    return-object v0
.end method

.method public blacklist addNext(ILandroid/os/VibrationEffect;I)Landroid/os/CombinedVibration$SequentialCombination;
    .registers 5
    .param p1, "vibratorId"    # I
    .param p2, "effect"    # Landroid/os/VibrationEffect;
    .param p3, "delay"    # I

    .line 297
    nop

    .line 298
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v0

    .line 297
    invoke-virtual {p0, v0, p3}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;I)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    return-object v0
.end method

.method public blacklist addNext(Landroid/os/CombinedVibration;)Landroid/os/CombinedVibration$SequentialCombination;
    .registers 3
    .param p1, "effect"    # Landroid/os/CombinedVibration;

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(Landroid/os/CombinedVibration;I)Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v0

    return-object v0
.end method

.method public blacklist addNext(Landroid/os/CombinedVibration;I)Landroid/os/CombinedVibration$SequentialCombination;
    .registers 7
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .param p2, "delay"    # I

    .line 333
    instance-of v0, p1, Landroid/os/CombinedVibration$Sequential;

    if-eqz v0, :cond_36

    .line 334
    move-object v0, p1

    check-cast v0, Landroid/os/CombinedVibration$Sequential;

    .line 335
    .local v0, "sequentialEffect":Landroid/os/CombinedVibration$Sequential;
    iget-object v1, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 336
    .local v1, "firstEffectIndex":I
    iget-object v2, p0, Landroid/os/CombinedVibration$SequentialCombination;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getEffects()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    iget-object v2, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/os/CombinedVibration$Sequential;->getDelays()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 338
    iget-object v2, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 339
    .end local v0    # "sequentialEffect":Landroid/os/CombinedVibration$Sequential;
    .end local v1    # "firstEffectIndex":I
    goto :goto_44

    .line 340
    :cond_36
    iget-object v0, p0, Landroid/os/CombinedVibration$SequentialCombination;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v0, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :goto_44
    return-object p0
.end method

.method public blacklist combine()Landroid/os/CombinedVibration;
    .registers 4

    .line 358
    iget-object v0, p0, Landroid/os/CombinedVibration$SequentialCombination;->mEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 362
    new-instance v0, Landroid/os/CombinedVibration$Sequential;

    iget-object v1, p0, Landroid/os/CombinedVibration$SequentialCombination;->mEffects:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/os/CombinedVibration$SequentialCombination;->mDelays:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Landroid/os/CombinedVibration$Sequential;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 363
    .local v0, "combined":Landroid/os/CombinedVibration;
    invoke-virtual {v0}, Landroid/os/CombinedVibration;->validate()V

    .line 364
    return-object v0

    .line 359
    .end local v0    # "combined":Landroid/os/CombinedVibration;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Combination must have at least one element to combine."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
