.class public interface abstract Lcom/android/internal/widget/RecyclerView$OnItemTouchListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemTouchListener"
.end annotation


# virtual methods
.method public abstract blacklist onInterceptTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)Z
.end method

.method public abstract blacklist onRequestDisallowInterceptTouchEvent(Z)V
.end method

.method public abstract blacklist onTouchEvent(Lcom/android/internal/widget/RecyclerView;Landroid/view/MotionEvent;)V
.end method
