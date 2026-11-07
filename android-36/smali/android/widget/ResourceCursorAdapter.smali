.class public abstract Landroid/widget/ResourceCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "ResourceCursorAdapter.java"


# instance fields
.field private greylist-max-o mDropDownInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mDropDownLayout:I

.field private greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mLayout:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    invoke-direct {p0, p1, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 56
    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    .line 57
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    iget-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "flags"    # I

    .line 96
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 97
    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    .line 98
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 99
    iget-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 100
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "autoRequery"    # Z

    .line 78
    invoke-direct {p0, p1, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 79
    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput p2, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    .line 80
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 81
    iget-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 82
    return-void
.end method


# virtual methods
.method public whitelist newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 140
    iget-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 135
    iget-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDropDownViewResource(I)V
    .registers 2
    .param p1, "dropDownLayout"    # I

    .line 158
    iput p1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownLayout:I

    .line 159
    return-void
.end method

.method public whitelist setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 115
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V

    .line 117
    if-nez p1, :cond_9

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_27

    .line 119
    :cond_9
    iget-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_1a

    .line 120
    iget-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_27

    .line 122
    :cond_1a
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/ResourceCursorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 123
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ResourceCursorAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    .line 125
    .end local v0    # "context":Landroid/content/Context;
    :goto_27
    return-void
.end method

.method public whitelist setViewResource(I)V
    .registers 2
    .param p1, "layout"    # I

    .line 149
    iput p1, p0, Landroid/widget/ResourceCursorAdapter;->mLayout:I

    .line 150
    return-void
.end method
