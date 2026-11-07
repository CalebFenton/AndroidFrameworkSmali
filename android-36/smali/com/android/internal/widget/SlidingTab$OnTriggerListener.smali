.class public interface abstract Lcom/android/internal/widget/SlidingTab$OnTriggerListener;
.super Ljava/lang/Object;
.source "SlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTriggerListener"
.end annotation


# static fields
.field public static final blacklist LEFT_HANDLE:I = 0x1

.field public static final blacklist NO_HANDLE:I = 0x0

.field public static final blacklist RIGHT_HANDLE:I = 0x2


# virtual methods
.method public abstract blacklist onGrabbedStateChange(Landroid/view/View;I)V
.end method

.method public abstract blacklist onTrigger(Landroid/view/View;I)V
.end method
