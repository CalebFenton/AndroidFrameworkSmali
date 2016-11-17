.class public abstract Landroid/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/Animator$AnimatorConstantState;,
        Landroid/animation/Animator$AnimatorListener;,
        Landroid/animation/Animator$AnimatorPauseListener;
    }
.end annotation


# static fields
.field public static final DURATION_INFINITE:J = -0x1L


# instance fields
.field mChangingConfigurations:I

.field private mConstantState:Landroid/animation/Animator$AnimatorConstantState;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPauseListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorPauseListener;",
            ">;"
        }
    .end annotation
.end field

.field mPaused:Z


# direct methods
.method static synthetic -set0(Landroid/animation/Animator;Landroid/animation/Animator$AnimatorConstantState;)Landroid/animation/Animator$AnimatorConstantState;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/animation/Animator;->mConstantState:Landroid/animation/Animator$AnimatorConstantState;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 38
    iput-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@7
    .line 44
    iput-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@9
    .line 49
    iput-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    #@b
    .line 55
    iput v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    #@d
    .line 29
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@b
    .line 265
    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 261
    return-void
.end method

.method public addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 302
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@b
    .line 304
    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 300
    return-void
.end method

.method public appendChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    #@0
    .prologue
    .line 374
    iget v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    #@2
    or-int/2addr v0, p1

    #@3
    iput v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    #@5
    .line 373
    return-void
.end method

.method public canReverse()Z
    .locals 1

    #@0
    .prologue
    .line 457
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public cancel()V
    .locals 0

    #@0
    .prologue
    .line 88
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 4

    #@0
    .prologue
    .line 398
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/animation/Animator;

    #@6
    .line 399
    .local v0, "anim":Landroid/animation/Animator;
    iget-object v2, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 400
    new-instance v2, Ljava/util/ArrayList;

    #@c
    iget-object v3, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@e
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@11
    iput-object v2, v0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@13
    .line 402
    :cond_0
    iget-object v2, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 403
    new-instance v2, Ljava/util/ArrayList;

    #@19
    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@1b
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1e
    iput-object v2, v0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 405
    :cond_1
    return-object v0

    #@21
    .line 406
    .end local v0    # "anim":Landroid/animation/Animator;
    :catch_0
    move-exception v1

    #@22
    .line 407
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@24
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@27
    throw v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 392
    new-instance v0, Landroid/animation/Animator$AnimatorConstantState;

    #@2
    invoke-direct {v0, p0}, Landroid/animation/Animator$AnimatorConstantState;-><init>(Landroid/animation/Animator;)V

    #@5
    return-object v0
.end method

.method public end()V
    .locals 0

    #@0
    .prologue
    .line 99
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 350
    iget v0, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method public abstract getDuration()J
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    #@0
    .prologue
    .line 225
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public abstract getStartDelay()J
.end method

.method public getTotalDuration()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 201
    invoke-virtual {p0}, Landroid/animation/Animator;->getDuration()J

    #@5
    move-result-wide v0

    #@6
    .line 202
    .local v0, "duration":J
    cmp-long v2, v0, v4

    #@8
    if-nez v2, :cond_0

    #@a
    .line 203
    return-wide v4

    #@b
    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->getStartDelay()J

    #@e
    move-result-wide v2

    #@f
    add-long/2addr v2, v0

    #@10
    return-wide v2
.end method

.method public isPaused()Z
    .locals 1

    #@0
    .prologue
    .line 159
    iget-boolean v0, p0, Landroid/animation/Animator;->mPaused:Z

    #@2
    return v0
.end method

.method public abstract isRunning()Z
.end method

.method public isStarted()Z
    .locals 1

    #@0
    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public pause()V
    .locals 4

    #@0
    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    iget-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 112
    :cond_0
    return-void

    #@b
    .line 114
    :cond_1
    const/4 v3, 0x1

    #@c
    iput-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    #@e
    .line 115
    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@10
    if-eqz v3, :cond_0

    #@12
    .line 117
    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/util/ArrayList;

    #@1a
    .line 118
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@1d
    move-result v1

    #@1e
    .line 119
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@21
    .line 120
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    #@27
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationPause(Landroid/animation/Animator;)V

    #@2a
    .line 119
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0
.end method

.method public removeAllListeners()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 329
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 330
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 331
    iput-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@c
    .line 333
    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 334
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@15
    .line 335
    iput-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@17
    .line 328
    :cond_1
    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 275
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 276
    return-void

    #@6
    .line 278
    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    .line 279
    iget-object v0, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 280
    iput-object v1, p0, Landroid/animation/Animator;->mListeners:Ljava/util/ArrayList;

    #@15
    .line 274
    :cond_1
    return-void
.end method

.method public removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorPauseListener;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 314
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 315
    return-void

    #@6
    .line 317
    :cond_0
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b
    .line 318
    iget-object v0, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 319
    iput-object v1, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@15
    .line 313
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 4

    #@0
    .prologue
    .line 137
    iget-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 138
    const/4 v3, 0x0

    #@5
    iput-boolean v3, p0, Landroid/animation/Animator;->mPaused:Z

    #@7
    .line 139
    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 141
    iget-object v3, p0, Landroid/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Ljava/util/ArrayList;

    #@13
    .line 142
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v1

    #@17
    .line 143
    .local v1, "numListeners":I
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@1a
    .line 144
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Landroid/animation/Animator$AnimatorPauseListener;

    #@20
    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorPauseListener;->onAnimationResume(Landroid/animation/Animator;)V

    #@23
    .line 143
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 136
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorPauseListener;>;"
    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 2

    #@0
    .prologue
    .line 464
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "Reverse is not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 0
    .param p1, "mayRunAsync"    # Z

    #@0
    .prologue
    .line 560
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    #@0
    .prologue
    .line 364
    iput p1, p0, Landroid/animation/Animator;->mChangingConfigurations:I

    #@2
    .line 363
    return-void
.end method

.method public abstract setDuration(J)Landroid/animation/Animator;
.end method

.method public abstract setInterpolator(Landroid/animation/TimeInterpolator;)V
.end method

.method public abstract setStartDelay(J)V
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 447
    return-void
.end method

.method public setupEndValues()V
    .locals 0

    #@0
    .prologue
    .line 432
    return-void
.end method

.method public setupStartValues()V
    .locals 0

    #@0
    .prologue
    .line 420
    return-void
.end method

.method public start()V
    .locals 0

    #@0
    .prologue
    .line 76
    return-void
.end method
