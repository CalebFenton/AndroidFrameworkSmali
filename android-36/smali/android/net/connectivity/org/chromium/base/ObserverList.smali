.class public Landroid/net/connectivity/org/chromium/base/ObserverList;
.super Ljava/lang/Object;
.source "ObserverList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;,
        Landroid/net/connectivity/org/chromium/base/ObserverList$RewindableIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist mCount:I

.field private blacklist mEnableThreadAsserts:Z

.field private blacklist mIterationDepth:I

.field private blacklist mNeedsCompact:Z

.field public final blacklist mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final blacklist mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEnableThreadAsserts(Landroid/net/connectivity/org/chromium/base/ObserverList;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThreadChecker(Landroid/net/connectivity/org/chromium/base/ObserverList;)Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;
    .registers 1

    iget-object p0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcapacity(Landroid/net/connectivity/org/chromium/base/ObserverList;)I
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->capacity()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdecrementIterationDepthAndCompactIfNeeded(Landroid/net/connectivity/org/chromium/base/ObserverList;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->decrementIterationDepthAndCompactIfNeeded()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetObserverAt(Landroid/net/connectivity/org/chromium/base/ObserverList;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/ObserverList;->getObserverAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mincrementIterationDepth(Landroid/net/connectivity/org/chromium/base/ObserverList;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->incrementIterationDepth()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 31
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    .line 52
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    .line 53
    return-void
.end method

.method private blacklist capacity()I
    .registers 2

    .line 208
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private blacklist compact()V
    .registers 3

    .line 182
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    nop

    .line 183
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_1b

    .line 184
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    .line 185
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 183
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 188
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method private blacklist decrementIterationDepthAndCompactIfNeeded()V
    .registers 2

    .line 195
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mIterationDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mIterationDepth:I

    .line 196
    nop

    .line 197
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mIterationDepth:I

    if-lez v0, :cond_c

    return-void

    .line 198
    :cond_c
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mNeedsCompact:Z

    if-nez v0, :cond_11

    return-void

    .line 199
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mNeedsCompact:Z

    .line 200
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/ObserverList;->compact()V

    .line 201
    return-void
.end method

.method private blacklist getObserverAt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 212
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist incrementIterationDepth()V
    .registers 2

    .line 191
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mIterationDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mIterationDepth:I

    .line 192
    return-void
.end method


# virtual methods
.method public blacklist addObserver(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 72
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    .local p1, "obs":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 75
    :cond_9
    if-eqz p1, :cond_22

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_22

    .line 81
    :cond_14
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    .local v0, "result":Z
    nop

    .line 84
    iget v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mCount:I

    .line 85
    return v2

    .line 76
    .end local v0    # "result":Z
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clear()V
    .registers 5

    .line 125
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 127
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mCount:I

    .line 129
    iget v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mIterationDepth:I

    if-nez v1, :cond_16

    .line 130
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    return-void

    .line 134
    :cond_16
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 135
    .local v1, "size":I
    iget-boolean v2, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mNeedsCompact:Z

    if-eqz v1, :cond_21

    const/4 v0, 0x1

    :cond_21
    or-int/2addr v0, v2

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mNeedsCompact:Z

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_25
    if-ge v0, v1, :cond_30

    .line 137
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 139
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method public blacklist disableThreadAsserts()V
    .registers 2

    .line 60
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    .line 61
    return-void
.end method

.method public blacklist hasObserver(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 119
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    .local p1, "obs":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 121
    :cond_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 171
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 173
    :cond_9
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mCount:I

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 143
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 145
    :cond_9
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;-><init>(Landroid/net/connectivity/org/chromium/base/ObserverList;Landroid/net/connectivity/org/chromium/base/ObserverList-IA;)V

    return-object v0
.end method

.method public blacklist removeObserver(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 94
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    .local p1, "obs":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 96
    :cond_9
    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 97
    return v0

    .line 100
    :cond_d
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 101
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    .line 102
    return v0

    .line 105
    :cond_17
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mIterationDepth:I

    const/4 v2, 0x1

    if-nez v0, :cond_22

    .line 107
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2a

    .line 109
    :cond_22
    iput-boolean v2, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mNeedsCompact:Z

    .line 110
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_2a
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mCount:I

    .line 113
    nop

    .line 115
    return v2
.end method

.method public blacklist rewindableIterator()Landroid/net/connectivity/org/chromium/base/ObserverList$RewindableIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/org/chromium/base/ObserverList$RewindableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 154
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 156
    :cond_9
    new-instance v0, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/connectivity/org/chromium/base/ObserverList$ObserverListIterator;-><init>(Landroid/net/connectivity/org/chromium/base/ObserverList;Landroid/net/connectivity/org/chromium/base/ObserverList-IA;)V

    return-object v0
.end method

.method public blacklist size()I
    .registers 2

    .line 164
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/ObserverList;, "Landroid/net/connectivity/org/chromium/base/ObserverList<TE;>;"
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mThreadChecker:Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V

    .line 166
    :cond_9
    iget v0, p0, Landroid/net/connectivity/org/chromium/base/ObserverList;->mCount:I

    return v0
.end method
