.class public Lcom/android/internal/widget/RecyclerView$SimpleOnItemTouchListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnItemTouchListener"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 9926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "rv"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 9929
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .line 9938
    return-void
.end method

.method public blacklist onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "rv"    # Lcom/android/internal/widget/RecyclerView;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 9934
    return-void
.end method
