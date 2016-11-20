.class public abstract Landroid/widget/ResourceCursorTreeAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "ResourceCursorTreeAdapter.java"


# instance fields
.field private mChildLayout:I

.field private mCollapsedGroupLayout:I

.field private mExpandedGroupLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastChildLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "groupLayout"    # I
    .param p4, "childLayout"    # I

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move-object v2, p2

    #@3
    move v3, p3

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    move v6, p4

    #@7
    .line 94
    invoke-direct/range {v0 .. v6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V

    #@a
    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "collapsedGroupLayout"    # I
    .param p4, "expandedGroupLayout"    # I
    .param p5, "childLayout"    # I

    #@0
    .prologue
    move-object v0, p0

    #@1
    move-object v1, p1

    #@2
    move-object v2, p2

    #@3
    move v3, p3

    #@4
    move v4, p4

    #@5
    move v5, p5

    #@6
    move v6, p5

    #@7
    .line 78
    invoke-direct/range {v0 .. v6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V

    #@a
    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "collapsedGroupLayout"    # I
    .param p4, "expandedGroupLayout"    # I
    .param p5, "childLayout"    # I
    .param p6, "lastChildLayout"    # I

    #@0
    .prologue
    .line 53
    invoke-direct {p0, p2, p1}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    #@3
    .line 55
    iput p3, p0, Landroid/widget/ResourceCursorTreeAdapter;->mCollapsedGroupLayout:I

    #@5
    .line 56
    iput p4, p0, Landroid/widget/ResourceCursorTreeAdapter;->mExpandedGroupLayout:I

    #@7
    .line 57
    iput p5, p0, Landroid/widget/ResourceCursorTreeAdapter;->mChildLayout:I

    #@9
    .line 58
    iput p6, p0, Landroid/widget/ResourceCursorTreeAdapter;->mLastChildLayout:I

    #@b
    .line 60
    const-string/jumbo v0, "layout_inflater"

    #@e
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/view/LayoutInflater;

    #@14
    iput-object v0, p0, Landroid/widget/ResourceCursorTreeAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@16
    .line 52
    return-void
.end method


# virtual methods
.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isLastChild"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 100
    iget-object v1, p0, Landroid/widget/ResourceCursorTreeAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    if-eqz p3, :cond_0

    #@4
    iget v0, p0, Landroid/widget/ResourceCursorTreeAdapter;->mLastChildLayout:I

    #@6
    :goto_0
    const/4 v2, 0x0

    #@7
    invoke-virtual {v1, v0, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    :cond_0
    iget v0, p0, Landroid/widget/ResourceCursorTreeAdapter;->mChildLayout:I

    #@e
    goto :goto_0
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "isExpanded"    # Z
    .param p4, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 105
    iget-object v1, p0, Landroid/widget/ResourceCursorTreeAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    if-eqz p3, :cond_0

    #@4
    iget v0, p0, Landroid/widget/ResourceCursorTreeAdapter;->mExpandedGroupLayout:I

    #@6
    .line 106
    :goto_0
    const/4 v2, 0x0

    #@7
    .line 105
    invoke-virtual {v1, v0, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    :cond_0
    iget v0, p0, Landroid/widget/ResourceCursorTreeAdapter;->mCollapsedGroupLayout:I

    #@e
    goto :goto_0
.end method
