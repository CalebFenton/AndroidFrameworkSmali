.class Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewInfoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InfoRecord"
.end annotation


# static fields
.field static final blacklist FLAG_APPEAR:I = 0x2

.field static final blacklist FLAG_APPEAR_AND_DISAPPEAR:I = 0x3

.field static final blacklist FLAG_APPEAR_PRE_AND_POST:I = 0xe

.field static final blacklist FLAG_DISAPPEARED:I = 0x1

.field static final blacklist FLAG_POST:I = 0x8

.field static final blacklist FLAG_PRE:I = 0x4

.field static final blacklist FLAG_PRE_AND_POST:I = 0xc

.field static blacklist sPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool<",
            "Lcom/android/internal/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist flags:I

.field blacklist postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

.field blacklist preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 308
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/util/Pools$Pool;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    return-void
.end method

.method static blacklist drainCache()V
    .registers 1

    .line 327
    :goto_0
    sget-object v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_0

    .line 328
    :cond_9
    return-void
.end method

.method static blacklist obtain()Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    .registers 2

    .line 314
    sget-object v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/util/Pools$Pool;

    invoke-interface {v0}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 315
    .local v0, "record":Lcom/android/internal/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_10

    new-instance v1, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    invoke-direct {v1}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;-><init>()V

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method static blacklist recycle(Lcom/android/internal/widget/ViewInfoStore$InfoRecord;)V
    .registers 2
    .param p0, "record"    # Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 321
    iput-object v0, p0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 322
    sget-object v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->sPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method
