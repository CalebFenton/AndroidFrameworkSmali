.class abstract Landroid/media/internal/guava_common/base/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/base/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
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

.field private blacklist state:Landroid/media/internal/guava_common/base/AbstractIterator$State;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->NOT_READY:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    iput-object v0, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->state:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    return-void
.end method

.method private blacklist tryToComputeNext()Z
    .registers 3

    .line 71
    sget-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->FAILED:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    iput-object v0, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->state:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    .line 72
    invoke-virtual {p0}, Landroid/media/internal/guava_common/base/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->next:Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->state:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    sget-object v1, Landroid/media/internal/guava_common/base/AbstractIterator$State;->DONE:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    if-eq v0, v1, :cond_16

    .line 74
    sget-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->READY:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    iput-object v0, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->state:Landroid/media/internal/guava_common/base/AbstractIterator$State;

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

    .line 53
    sget-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->DONE:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    iput-object v0, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->state:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist test-api hasNext()Z
    .registers 5

    .line 59
    iget-object v0, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->state:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    sget-object v1, Landroid/media/internal/guava_common/base/AbstractIterator$State;->FAILED:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_a

    move v0, v3

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    invoke-static {v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(Z)V

    .line 60
    iget-object v0, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->state:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    .line 67
    invoke-direct {p0}, Landroid/media/internal/guava_common/base/AbstractIterator;->tryToComputeNext()Z

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

    .line 83
    invoke-virtual {p0}, Landroid/media/internal/guava_common/base/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 86
    sget-object v0, Landroid/media/internal/guava_common/base/AbstractIterator$State;->NOT_READY:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    iput-object v0, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->state:Landroid/media/internal/guava_common/base/AbstractIterator$State;

    .line 88
    iget-object v0, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->next:Ljava/lang/Object;

    invoke-static {v0}, Landroid/media/internal/guava_common/base/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 89
    iput-object v1, p0, Landroid/media/internal/guava_common/base/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 84
    :cond_14
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api remove()V
    .registers 1

    .line 95
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
