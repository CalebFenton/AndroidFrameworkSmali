.class final Lcom/android/internal/widget/ViewGroupFader$GlobalVisibleViewBoundsProvider;
.super Ljava/lang/Object;
.source "ViewGroupFader.java"

# interfaces
.implements Lcom/android/internal/widget/ViewGroupFader$ChildViewBoundsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewGroupFader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GlobalVisibleViewBoundsProvider"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideBounds(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 169
    invoke-virtual {p2, p3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 170
    return-void
.end method
