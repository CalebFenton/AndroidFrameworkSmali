.class public abstract Landroid/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/CursorFilter$CursorFilterClient;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorAdapter$ChangeObserver;,
        Landroid/widget/CursorAdapter$MyDataSetObserver;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Landroid/widget/CursorFilter;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mDropDownContext:Landroid/content/Context;

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 128
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    #@7
    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 156
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 157
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    #@6
    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 144
    if-eqz p3, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    #@9
    .line 143
    return-void

    #@a
    .line 144
    :cond_0
    const/4 v0, 0x2

    #@b
    goto :goto_0
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 349
    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    #@3
    move-result-object v0

    #@4
    .line 350
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    #@6
    .line 351
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    #@9
    .line 348
    :cond_0
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 401
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    #@0
    .prologue
    .line 234
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 235
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@a
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 237
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@2
    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 295
    iget-boolean v2, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    #@3
    if-eqz v2, :cond_2

    #@5
    .line 296
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    #@7
    if-nez v2, :cond_0

    #@9
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@b
    .line 297
    .local v0, "context":Landroid/content/Context;
    :goto_0
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@d
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@10
    .line 299
    if-nez p2, :cond_1

    #@12
    .line 300
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@14
    invoke-virtual {p0, v0, v2, p3}, Landroid/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@17
    move-result-object v1

    #@18
    .line 304
    .local v1, "v":Landroid/view/View;
    :goto_1
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@1a
    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    #@1d
    .line 305
    return-object v1

    #@1e
    .line 296
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    #@20
    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0

    #@21
    .line 302
    :cond_1
    move-object v1, p2

    #@22
    .restart local v1    # "v":Landroid/view/View;
    goto :goto_1

    #@23
    .line 307
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    return-object v3
.end method

.method public getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 219
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    #@3
    if-nez v1, :cond_0

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@b
    move-result-object v0

    #@c
    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 440
    new-instance v0, Landroid/widget/CursorFilter;

    #@6
    invoke-direct {v0, p0}, Landroid/widget/CursorFilter;-><init>(Landroid/widget/CursorFilter$CursorFilterClient;)V

    #@9
    iput-object v0, p0, Landroid/widget/CursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    #@b
    .line 442
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    #@d
    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 1

    #@0
    .prologue
    .line 455
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@2
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 245
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 246
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@b
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@e
    .line 247
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@10
    return-object v0

    #@11
    .line 249
    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 257
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 258
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@c
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 259
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@14
    iget v1, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    #@16
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    #@19
    move-result-wide v0

    #@1a
    return-wide v0

    #@1b
    .line 261
    :cond_0
    return-wide v2

    #@1c
    .line 264
    :cond_1
    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 277
    iget-boolean v1, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 278
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "this should only be called when the cursor is valid"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 280
    :cond_0
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@f
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 281
    new-instance v1, Ljava/lang/IllegalStateException;

    #@17
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "couldn\'t move cursor to position "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 284
    :cond_1
    if-nez p2, :cond_2

    #@31
    .line 285
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@33
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@35
    invoke-virtual {p0, v1, v2, p3}, Landroid/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@38
    move-result-object v0

    #@39
    .line 289
    .local v0, "v":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@3b
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@3d
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    #@40
    .line 290
    return-object v0

    #@41
    .line 287
    .end local v0    # "v":Landroid/view/View;
    :cond_2
    move-object v0, p2

    #@42
    .restart local v0    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    #@0
    .prologue
    .line 270
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 170
    and-int/lit8 v1, p3, 0x1

    #@4
    if-ne v1, v2, :cond_2

    #@6
    .line 171
    or-int/lit8 p3, p3, 0x2

    #@8
    .line 172
    iput-boolean v2, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    #@a
    .line 176
    :goto_0
    if-eqz p2, :cond_3

    #@c
    const/4 v0, 0x1

    #@d
    .line 177
    .local v0, "cursorPresent":Z
    :goto_1
    iput-object p2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@f
    .line 178
    iput-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    #@11
    .line 179
    iput-object p1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@13
    .line 180
    if-eqz v0, :cond_4

    #@15
    const-string/jumbo v1, "_id"

    #@18
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1b
    move-result v1

    #@1c
    :goto_2
    iput v1, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    #@1e
    .line 181
    and-int/lit8 v1, p3, 0x2

    #@20
    const/4 v2, 0x2

    #@21
    if-ne v1, v2, :cond_5

    #@23
    .line 182
    new-instance v1, Landroid/widget/CursorAdapter$ChangeObserver;

    #@25
    invoke-direct {v1, p0}, Landroid/widget/CursorAdapter$ChangeObserver;-><init>(Landroid/widget/CursorAdapter;)V

    #@28
    iput-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    #@2a
    .line 183
    new-instance v1, Landroid/widget/CursorAdapter$MyDataSetObserver;

    #@2c
    invoke-direct {v1, p0, v3}, Landroid/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/widget/CursorAdapter;Landroid/widget/CursorAdapter$MyDataSetObserver;)V

    #@2f
    iput-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@31
    .line 189
    :goto_3
    if-eqz v0, :cond_1

    #@33
    .line 190
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    #@35
    if-eqz v1, :cond_0

    #@37
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    #@39
    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    #@3c
    .line 191
    :cond_0
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@3e
    if-eqz v1, :cond_1

    #@40
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@42
    invoke-interface {p2, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@45
    .line 169
    :cond_1
    return-void

    #@46
    .line 174
    .end local v0    # "cursorPresent":Z
    :cond_2
    const/4 v1, 0x0

    #@47
    iput-boolean v1, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    #@49
    goto :goto_0

    #@4a
    .line 176
    :cond_3
    const/4 v0, 0x0

    #@4b
    .restart local v0    # "cursorPresent":Z
    goto :goto_1

    #@4c
    .line 180
    :cond_4
    const/4 v1, -0x1

    #@4d
    goto :goto_2

    #@4e
    .line 185
    :cond_5
    iput-object v3, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    #@50
    .line 186
    iput-object v3, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@52
    goto :goto_3
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 166
    if-eqz p3, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    #@6
    .line 165
    return-void

    #@7
    .line 166
    :cond_0
    const/4 v0, 0x2

    #@8
    goto :goto_0
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 330
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .locals 1

    #@0
    .prologue
    .line 482
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@a
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 481
    :cond_0
    :goto_0
    return-void

    #@11
    .line 484
    :cond_1
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@13
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    #@16
    move-result v0

    #@17
    iput-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    #@19
    goto :goto_0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 431
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 432
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@6
    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 435
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@d
    return-object v0
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 208
    if-nez p1, :cond_0

    #@3
    .line 209
    iput-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    #@5
    .line 207
    :goto_0
    return-void

    #@6
    .line 210
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@b
    move-result-object v0

    #@c
    if-ne p1, v0, :cond_1

    #@e
    .line 211
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@10
    iput-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    #@12
    goto :goto_0

    #@13
    .line 213
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@15
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@17
    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    #@1a
    iput-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    #@1c
    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 0
    .param p1, "filterQueryProvider"    # Landroid/widget/FilterQueryProvider;

    #@0
    .prologue
    .line 471
    iput-object p1, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@2
    .line 470
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3
    .param p1, "newCursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 366
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 367
    return-object v2

    #@6
    .line 369
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@8
    .line 370
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    #@a
    .line 371
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    #@c
    if-eqz v1, :cond_1

    #@e
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    #@10
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@13
    .line 372
    :cond_1
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@15
    if-eqz v1, :cond_2

    #@17
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@19
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@1c
    .line 374
    :cond_2
    iput-object p1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@1e
    .line 375
    if-eqz p1, :cond_5

    #@20
    .line 376
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    #@22
    if-eqz v1, :cond_3

    #@24
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    #@26
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    #@29
    .line 377
    :cond_3
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@2b
    if-eqz v1, :cond_4

    #@2d
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@2f
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@32
    .line 378
    :cond_4
    const-string/jumbo v1, "_id"

    #@35
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@38
    move-result v1

    #@39
    iput v1, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    #@3b
    .line 379
    const/4 v1, 0x1

    #@3c
    iput-boolean v1, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    #@3e
    .line 381
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    #@41
    .line 388
    :goto_0
    return-object v0

    #@42
    .line 383
    :cond_5
    const/4 v1, -0x1

    #@43
    iput v1, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    #@45
    .line 384
    const/4 v1, 0x0

    #@46
    iput-boolean v1, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    #@48
    .line 386
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    #@4b
    goto :goto_0
.end method
