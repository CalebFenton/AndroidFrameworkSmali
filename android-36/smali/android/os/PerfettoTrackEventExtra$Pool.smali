.class final Landroid/os/PerfettoTrackEventExtra$Pool;
.super Ljava/lang/Object;
.source "PerfettoTrackEventExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PerfettoTrackEventExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mCapacity:I

.field private blacklist mIdx:I

.field private final blacklist mValueArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 121
    .local p0, "this":Landroid/os/PerfettoTrackEventExtra$Pool;, "Landroid/os/PerfettoTrackEventExtra$Pool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    .line 122
    iput p1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mCapacity:I

    .line 123
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mValueArray:[Ljava/lang/Object;

    .line 124
    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 131
    .local p0, "this":Landroid/os/PerfettoTrackEventExtra$Pool;, "Landroid/os/PerfettoTrackEventExtra$Pool<TT;>;"
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    iget v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mCapacity:I

    if-lt v0, v1, :cond_b

    .line 132
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 134
    :cond_b
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mValueArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1d

    .line 135
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mValueArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 137
    :cond_1d
    iget-object v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mValueArray:[Ljava/lang/Object;

    iget v1, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 127
    .local p0, "this":Landroid/os/PerfettoTrackEventExtra$Pool;, "Landroid/os/PerfettoTrackEventExtra$Pool<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/PerfettoTrackEventExtra$Pool;->mIdx:I

    .line 128
    return-void
.end method
