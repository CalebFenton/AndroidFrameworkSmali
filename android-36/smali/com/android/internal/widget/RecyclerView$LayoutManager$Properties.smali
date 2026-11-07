.class public Lcom/android/internal/widget/RecyclerView$LayoutManager$Properties;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# instance fields
.field public blacklist orientation:I

.field public blacklist reverseLayout:Z

.field public blacklist spanCount:I

.field public blacklist stackFromEnd:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
