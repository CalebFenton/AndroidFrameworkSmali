.class public abstract Landroid/view/ActionMode$Callback2;
.super Ljava/lang/Object;
.source "ActionMode.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback2"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 365
    const/4 v0, 0x0

    if-eqz p2, :cond_f

    .line 366
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p3, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_12

    .line 368
    :cond_f
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    :goto_12
    return-void
.end method
