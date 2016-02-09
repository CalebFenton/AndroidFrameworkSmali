.class public abstract Landroid/widget/SimpleCursorTreeAdapter;
.super Landroid/widget/ResourceCursorTreeAdapter;
.source "SimpleCursorTreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mChildFrom:[I

.field private mChildFromNames:[Ljava/lang/String;

.field private mChildTo:[I

.field private mGroupFrom:[I

.field private mGroupFromNames:[Ljava/lang/String;

.field private mGroupTo:[I

.field private mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[III[Ljava/lang/String;[I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "collapsedGroupLayout"    # I
    .param p4, "expandedGroupLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p7, "childLayout"    # I
    .param p8, "lastChildLayout"    # I
    .param p9, "childFrom"    # [Ljava/lang/String;
    .param p10, "childTo"    # [I

    #@0
    .prologue
    move-object v2, p0

    #@1
    move-object v3, p1

    #@2
    move-object v4, p2

    #@3
    move v5, p3

    #@4
    move v6, p4

    #@5
    move/from16 v7, p7

    #@7
    move/from16 v8, p8

    #@9
    .line 105
    invoke-direct/range {v2 .. v8}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;IIII)V

    #@c
    .line 107
    move-object/from16 v0, p9

    #@e
    move-object/from16 v1, p10

    #@10
    invoke-direct {p0, p5, p6, v0, v1}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    #@13
    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;II[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "collapsedGroupLayout"    # I
    .param p4, "expandedGroupLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p7, "childLayout"    # I
    .param p8, "childFrom"    # [Ljava/lang/String;
    .param p9, "childTo"    # [I

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
    move v5, p7

    #@6
    .line 142
    invoke-direct/range {v0 .. v5}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;III)V

    #@9
    .line 143
    invoke-direct {p0, p5, p6, p8, p9}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    #@c
    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "groupLayout"    # I
    .param p4, "groupFrom"    # [Ljava/lang/String;
    .param p5, "groupTo"    # [I
    .param p6, "childLayout"    # I
    .param p7, "childFrom"    # [Ljava/lang/String;
    .param p8, "childTo"    # [I

    #@0
    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    #@3
    .line 176
    invoke-direct {p0, p4, p5, p7, p8}, Landroid/widget/SimpleCursorTreeAdapter;->init([Ljava/lang/String;[I[Ljava/lang/String;[I)V

    #@6
    .line 174
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "from"    # [I
    .param p5, "to"    # [I

    #@0
    .prologue
    .line 213
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    #@2
    .line 215
    .local v0, "binder":Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;
    const/4 v2, 0x0

    #@3
    .local v2, "i":I
    :goto_0
    array-length v5, p5

    #@4
    if-ge v2, v5, :cond_5

    #@6
    .line 216
    aget v5, p5, v2

    #@8
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@b
    move-result-object v4

    #@c
    .line 217
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    #@e
    .line 218
    const/4 v1, 0x0

    #@f
    .line 219
    .local v1, "bound":Z
    if-eqz v0, :cond_0

    #@11
    .line 220
    aget v5, p4, v2

    #@13
    invoke-interface {v0, v4, p3, v5}, Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    #@16
    move-result v1

    #@17
    .line 223
    .end local v1    # "bound":Z
    :cond_0
    if-nez v1, :cond_2

    #@19
    .line 224
    aget v5, p4, v2

    #@1b
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 225
    .local v3, "text":Ljava/lang/String;
    if-nez v3, :cond_1

    #@21
    .line 226
    const-string/jumbo v3, ""

    #@24
    .line 228
    :cond_1
    instance-of v5, v4, Landroid/widget/TextView;

    #@26
    if-eqz v5, :cond_3

    #@28
    .line 229
    check-cast v4, Landroid/widget/TextView;

    #@2a
    .end local v4    # "v":Landroid/view/View;
    invoke-virtual {p0, v4, v3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    #@2d
    .line 215
    .end local v3    # "text":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 230
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "v":Landroid/view/View;
    :cond_3
    instance-of v5, v4, Landroid/widget/ImageView;

    #@32
    if-eqz v5, :cond_4

    #@34
    .line 231
    check-cast v4, Landroid/widget/ImageView;

    #@36
    .end local v4    # "v":Landroid/view/View;
    invoke-virtual {p0, v4, v3}, Landroid/widget/SimpleCursorTreeAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    #@39
    goto :goto_1

    #@3a
    .line 233
    .restart local v4    # "v":Landroid/view/View;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    #@3c
    const-string/jumbo v6, "SimpleCursorTreeAdapter can bind values only to TextView and ImageView!"

    #@3f
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@42
    throw v5

    #@43
    .line 212
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method private init([Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "groupFromNames"    # [Ljava/lang/String;
    .param p2, "groupTo"    # [I
    .param p3, "childFromNames"    # [Ljava/lang/String;
    .param p4, "childTo"    # [I

    #@0
    .prologue
    .line 182
    iput-object p1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    #@2
    .line 183
    iput-object p2, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupTo:[I

    #@4
    .line 185
    iput-object p3, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    #@6
    .line 186
    iput-object p4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildTo:[I

    #@8
    .line 180
    return-void
.end method

.method private initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "fromColumnNames"    # [Ljava/lang/String;
    .param p3, "fromColumns"    # [I

    #@0
    .prologue
    .line 242
    array-length v1, p2

    #@1
    add-int/lit8 v0, v1, -0x1

    #@3
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@5
    .line 243
    aget-object v1, p2, v0

    #@7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@a
    move-result v1

    #@b
    aput v1, p3, v0

    #@d
    .line 242
    add-int/lit8 v0, v0, -0x1

    #@f
    goto :goto_0

    #@10
    .line 241
    :cond_0
    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isLastChild"    # Z

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 250
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    #@6
    array-length v0, v0

    #@7
    new-array v0, v0, [I

    #@9
    iput-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    #@b
    .line 251
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFromNames:[Ljava/lang/String;

    #@d
    iget-object v1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    #@f
    invoke-direct {p0, p3, v0, v1}, Landroid/widget/SimpleCursorTreeAdapter;->initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    #@12
    .line 254
    :cond_0
    iget-object v4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildFrom:[I

    #@14
    iget-object v5, p0, Landroid/widget/SimpleCursorTreeAdapter;->mChildTo:[I

    #@16
    move-object v0, p0

    #@17
    move-object v1, p1

    #@18
    move-object v2, p2

    #@19
    move-object v3, p3

    #@1a
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorTreeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V

    #@1d
    .line 248
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "isExpanded"    # Z

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 260
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    #@6
    array-length v0, v0

    #@7
    new-array v0, v0, [I

    #@9
    iput-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    #@b
    .line 261
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFromNames:[Ljava/lang/String;

    #@d
    iget-object v1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    #@f
    invoke-direct {p0, p3, v0, v1}, Landroid/widget/SimpleCursorTreeAdapter;->initFromColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V

    #@12
    .line 264
    :cond_0
    iget-object v4, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupFrom:[I

    #@14
    iget-object v5, p0, Landroid/widget/SimpleCursorTreeAdapter;->mGroupTo:[I

    #@16
    move-object v0, p0

    #@17
    move-object v1, p1

    #@18
    move-object v2, p2

    #@19
    move-object v3, p3

    #@1a
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorTreeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;[I[I)V

    #@1d
    .line 258
    return-void
.end method

.method public getViewBinder()Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;
    .locals 1

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    #@2
    return-object v0
.end method

.method public setViewBinder(Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;)V
    .locals 0
    .param p1, "viewBinder"    # Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    #@0
    .prologue
    .line 209
    iput-object p1, p0, Landroid/widget/SimpleCursorTreeAdapter;->mViewBinder:Landroid/widget/SimpleCursorTreeAdapter$ViewBinder;

    #@2
    .line 208
    return-void
.end method

.method protected setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 275
    :goto_0
    return-void

    #@8
    .line 278
    :catch_0
    move-exception v0

    #@9
    .line 279
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    #@10
    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 295
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3
    .line 294
    return-void
.end method
