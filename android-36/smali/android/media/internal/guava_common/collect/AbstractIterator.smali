.class public abstract Landroid/media/internal/guava_common/collect/AbstractIterator;
.super Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private blacklist next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private blacklist state:Landroid/media/internal/guava_common/collect/AbstractIterator$State;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/UnmodifiableIterator;-><init>()V

    .line 68
    sget-object v0, Landroid/media/internal/guava_common/collect/AbstractIterator$State;->NOT_READY:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->state:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    return-void
.end method

.method private blacklist tryToComputeNext()Z
    .registers 3

    .line 144
    sget-object v0, Landroid/media/internal/guava_common/collect/AbstractIterator$State;->FAILED:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->state:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    .line 145
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->state:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    sget-object v1, Landroid/media/internal/guava_common/collect/AbstractIterator$State;->DONE:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    if-eq v0, v1, :cond_16

    .line 147
    sget-object v0, Landroid/media/internal/guava_common/collect/AbstractIterator$State;->READY:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->state:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract blacklist computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected final blacklist endOfData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 126
    sget-object v0, Landroid/media/internal/guava_common/collect/AbstractIterator$State;->DONE:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->state:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api hasNext()Z
    .registers 5

    .line 132
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->state:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    sget-object v1, Landroid/media/internal/guava_common/collect/AbstractIterator$State;->FAILED:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    move v0, v3

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    invoke-static {v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(Z)V

    .line 133
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->state:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 140
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/AbstractIterator;->tryToComputeNext()Z

    move-result p0

    return p0

    :cond_1e
    return v2

    :cond_1f
    return v3
.end method

.method public final whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 160
    sget-object v0, Landroid/media/internal/guava_common/collect/AbstractIterator$State;->NOT_READY:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->state:Landroid/media/internal/guava_common/collect/AbstractIterator$State;

    .line 162
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->next:Ljava/lang/Object;

    invoke-static {v0}, Landroid/media/internal/guava_common/collect/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 163
    iput-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 158
    :cond_14
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
