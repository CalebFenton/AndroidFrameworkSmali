.class Lcom/android/internal/widget/GapWorker$Task;
.super Ljava/lang/Object;
.source "GapWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field public blacklist distanceToItem:I

.field public blacklist immediate:Z

.field public blacklist position:I

.field public blacklist view:Lcom/android/internal/widget/RecyclerView;

.field public blacklist viewVelocity:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 3

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    .line 46
    iput v0, p0, Lcom/android/internal/widget/GapWorker$Task;->viewVelocity:I

    .line 47
    iput v0, p0, Lcom/android/internal/widget/GapWorker$Task;->distanceToItem:I

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    .line 49
    iput v0, p0, Lcom/android/internal/widget/GapWorker$Task;->position:I

    .line 50
    return-void
.end method
