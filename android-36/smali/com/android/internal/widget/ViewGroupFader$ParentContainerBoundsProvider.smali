.class final Lcom/android/internal/widget/ViewGroupFader$ParentContainerBoundsProvider;
.super Ljava/lang/Object;
.source "ViewGroupFader.java"

# interfaces
.implements Lcom/android/internal/widget/ViewGroupFader$ContainerBoundsProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ViewGroupFader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParentContainerBoundsProvider"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist provideBounds(Landroid/view/ViewGroup;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 135
    return-void
.end method
