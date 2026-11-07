.class public Landroid/widget/SimpleExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SimpleExpandableListAdapter.java"


# instance fields
.field private greylist-max-o mChildData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mChildFrom:[Ljava/lang/String;

.field private greylist-max-o mChildLayout:I

.field private greylist-max-o mChildTo:[I

.field private greylist-max-o mCollapsedGroupLayout:I

.field private greylist-max-o mExpandedGroupLayout:I

.field private greylist-max-o mGroupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mGroupFrom:[Ljava/lang/String;

.field private greylist-max-o mGroupTo:[I

.field private greylist-max-o mInflater:Landroid/view/LayoutInflater;

.field private greylist-max-o mLastChildLayout:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/List;II[Ljava/lang/String;[ILjava/util/List;II[Ljava/lang/String;[I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "expandedGroupLayout"    # I
    .param p4, "collapsedGroupLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p8, "childLayout"    # I
    .param p9, "lastChildLayout"    # I
    .param p10, "childFrom"    # [Ljava/lang/String;
    .param p11, "childTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;II[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;>;II[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 197
    .local p2, "groupData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p7, "childData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 198
    iput-object p2, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupData:Ljava/util/List;

    .line 199
    iput p3, p0, Landroid/widget/SimpleExpandableListAdapter;->mExpandedGroupLayout:I

    .line 200
    iput p4, p0, Landroid/widget/SimpleExpandableListAdapter;->mCollapsedGroupLayout:I

    .line 201
    iput-object p5, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupFrom:[Ljava/lang/String;

    .line 202
    iput-object p6, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupTo:[I

    .line 204
    iput-object p7, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildData:Ljava/util/List;

    .line 205
    iput p8, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildLayout:I

    .line 206
    iput p9, p0, Landroid/widget/SimpleExpandableListAdapter;->mLastChildLayout:I

    .line 207
    iput-object p10, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildFrom:[Ljava/lang/String;

    .line 208
    iput-object p11, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildTo:[I

    .line 210
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/List;II[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "expandedGroupLayout"    # I
    .param p4, "collapsedGroupLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p8, "childLayout"    # I
    .param p9, "childFrom"    # [Ljava/lang/String;
    .param p10, "childTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;II[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 143
    .local p2, "groupData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p7, "childData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;>;"
    move/from16 v9, p8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II[Ljava/lang/String;[ILjava/util/List;II[Ljava/lang/String;[I)V

    .line 146
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I[Ljava/lang/String;[I)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "groupLayout"    # I
    .param p4, "groupFrom"    # [Ljava/lang/String;
    .param p5, "groupTo"    # [I
    .param p7, "childLayout"    # I
    .param p8, "childFrom"    # [Ljava/lang/String;
    .param p9, "childTo"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 95
    .local p2, "groupData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    .local p6, "childData":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;>;"
    move v4, p3

    move/from16 v9, p7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/widget/SimpleExpandableListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;II[Ljava/lang/String;[ILjava/util/List;II[Ljava/lang/String;[I)V

    .line 97
    return-void
.end method

.method private greylist-max-o bindView(Landroid/view/View;Ljava/util/Map;[Ljava/lang/String;[I)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;
    .param p3, "from"    # [Ljava/lang/String;
    .param p4, "to"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 244
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    array-length v0, p4

    .line 246
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_1c

    .line 247
    aget v2, p4, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 248
    .local v2, "v":Landroid/widget/TextView;
    if-eqz v2, :cond_19

    .line 249
    aget-object v3, p3, v1

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .end local v2    # "v":Landroid/widget/TextView;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 252
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method


# virtual methods
.method public whitelist getChild(II)Ljava/lang/Object;
    .registers 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 214
    iget-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChildId(II)J
    .registers 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 218
    int-to-long v0, p2

    return-wide v0
.end method

.method public whitelist getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .line 224
    if-nez p4, :cond_7

    .line 225
    invoke-virtual {p0, p3, p5}, Landroid/widget/SimpleExpandableListAdapter;->newChildView(ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_8

    .line 227
    .end local v0    # "v":Landroid/view/View;
    :cond_7
    move-object v0, p4

    .line 229
    .restart local v0    # "v":Landroid/view/View;
    :goto_8
    iget-object v1, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildFrom:[Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildTo:[I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/SimpleExpandableListAdapter;->bindView(Landroid/view/View;Ljava/util/Map;[Ljava/lang/String;[I)V

    .line 230
    return-object v0
.end method

.method public whitelist getChildrenCount(I)I
    .registers 3
    .param p1, "groupPosition"    # I

    .line 255
    iget-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getGroup(I)Ljava/lang/Object;
    .registers 3
    .param p1, "groupPosition"    # I

    .line 259
    iget-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getGroupCount()I
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getGroupId(I)J
    .registers 4
    .param p1, "groupPosition"    # I

    .line 267
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .line 273
    if-nez p3, :cond_7

    .line 274
    invoke-virtual {p0, p2, p4}, Landroid/widget/SimpleExpandableListAdapter;->newGroupView(ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_8

    .line 276
    .end local v0    # "v":Landroid/view/View;
    :cond_7
    move-object v0, p3

    .line 278
    .restart local v0    # "v":Landroid/view/View;
    :goto_8
    iget-object v1, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupFrom:[Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/SimpleExpandableListAdapter;->mGroupTo:[I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/SimpleExpandableListAdapter;->bindView(Landroid/view/View;Ljava/util/Map;[Ljava/lang/String;[I)V

    .line 279
    return-object v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isChildSelectable(II)Z
    .registers 4
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist newChildView(ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "isLastChild"    # Z
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 240
    iget-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_7

    iget v1, p0, Landroid/widget/SimpleExpandableListAdapter;->mLastChildLayout:I

    goto :goto_9

    :cond_7
    iget v1, p0, Landroid/widget/SimpleExpandableListAdapter;->mChildLayout:I

    :goto_9
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist newGroupView(ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "isExpanded"    # Z
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 289
    iget-object v0, p0, Landroid/widget/SimpleExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_7

    iget v1, p0, Landroid/widget/SimpleExpandableListAdapter;->mExpandedGroupLayout:I

    goto :goto_9

    :cond_7
    iget v1, p0, Landroid/widget/SimpleExpandableListAdapter;->mCollapsedGroupLayout:I

    :goto_9
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
