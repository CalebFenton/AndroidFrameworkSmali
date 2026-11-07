.class public Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LayoutChunkResult"
.end annotation


# instance fields
.field public blacklist mConsumed:I

.field public blacklist mFinished:Z

.field public blacklist mFocusable:Z

.field public blacklist mIgnoreConsumed:Z


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 2381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist resetInternal()V
    .registers 2

    .line 2388
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 2389
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 2390
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 2391
    iput-boolean v0, p0, Lcom/android/internal/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 2392
    return-void
.end method
