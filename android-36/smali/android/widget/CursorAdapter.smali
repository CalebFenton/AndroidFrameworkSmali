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
.field public static final whitelist FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected greylist-max-o mAutoRequery:Z

.field protected greylist mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

.field protected greylist mContext:Landroid/content/Context;

.field protected greylist mCursor:Landroid/database/Cursor;

.field protected greylist-max-o mCursorFilter:Landroid/widget/CursorFilter;

.field protected greylist mDataSetObserver:Landroid/database/DataSetObserver;

.field protected greylist mDataValid:Z

.field protected greylist-max-o mDropDownContext:Landroid/content/Context;

.field protected greylist-max-o mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected greylist mRowIDColumn:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 135
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 136
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .line 163
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 164
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 165
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z

    .line 150
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 151
    if-eqz p3, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x2

    :goto_8
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 152
    return-void
.end method


# virtual methods
.method public abstract whitelist bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public whitelist changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 356
    invoke-virtual {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 357
    .local v0, "old":Landroid/database/Cursor;
    if-eqz v0, :cond_9

    .line 358
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_9
    return-void
.end method

.method public whitelist convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 408
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public whitelist getCount()I
    .registers 2

    .line 241
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 242
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    .line 244
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCursor()Landroid/database/Cursor;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public whitelist getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 302
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_22

    .line 303
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    .line 304
    .local v0, "context":Landroid/content/Context;
    :goto_d
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 306
    if-nez p2, :cond_1b

    .line 307
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "v":Landroid/view/View;
    goto :goto_1c

    .line 309
    .end local v1    # "v":Landroid/view/View;
    :cond_1b
    move-object v1, p2

    .line 311
    .restart local v1    # "v":Landroid/view/View;
    :goto_1c
    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, v2}, Landroid/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 312
    return-object v1

    .line 314
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "v":Landroid/view/View;
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .registers 2

    .line 446
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    if-nez v0, :cond_b

    .line 447
    new-instance v0, Landroid/widget/CursorFilter;

    invoke-direct {v0, p0}, Landroid/widget/CursorFilter;-><init>(Landroid/widget/CursorFilter$CursorFilterClient;)V

    iput-object v0, p0, Landroid/widget/CursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    .line 449
    :cond_b
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursorFilter:Landroid/widget/CursorFilter;

    return-object v0
.end method

.method public whitelist getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .registers 2

    .line 462
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    return-object v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 252
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_10

    .line 253
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 254
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 256
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getItemId(I)J
    .registers 5
    .param p1, "position"    # I

    .line 264
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1c

    .line 265
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 266
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 268
    :cond_1b
    return-wide v1

    .line 271
    :cond_1c
    return-wide v1
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 284
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v0, :cond_39

    .line 287
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 291
    if-nez p2, :cond_17

    .line 292
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Landroid/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    goto :goto_18

    .line 294
    .end local v0    # "v":Landroid/view/View;
    :cond_17
    move-object v0, p2

    .line 296
    .restart local v0    # "v":Landroid/view/View;
    :goto_18
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 297
    return-object v0

    .line 288
    .end local v0    # "v":Landroid/view/View;
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method greylist-max-o init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "flags"    # I

    .line 177
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    .line 178
    or-int/lit8 p3, p3, 0x2

    .line 179
    iput-boolean v2, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    goto :goto_d

    .line 181
    :cond_b
    iput-boolean v1, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    .line 183
    :goto_d
    if-eqz p2, :cond_10

    move v1, v2

    .line 184
    .local v1, "cursorPresent":Z
    :cond_10
    iput-object p2, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 185
    iput-boolean v1, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 186
    iput-object p1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    .line 187
    if-eqz v1, :cond_1f

    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_20

    :cond_1f
    const/4 v0, -0x1

    :goto_20
    iput v0, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    .line 188
    and-int/lit8 v0, p3, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_37

    .line 189
    new-instance v0, Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Landroid/widget/CursorAdapter$ChangeObserver;-><init>(Landroid/widget/CursorAdapter;)V

    iput-object v0, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    .line 190
    new-instance v0, Landroid/widget/CursorAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v2}, Landroid/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/widget/CursorAdapter;Landroid/widget/CursorAdapter-IA;)V

    iput-object v0, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_3b

    .line 192
    :cond_37
    iput-object v2, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    .line 193
    iput-object v2, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 196
    :goto_3b
    if-eqz v1, :cond_4f

    .line 197
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    :cond_46
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 200
    :cond_4f
    return-void
.end method

.method protected whitelist init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "autoRequery"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    if-eqz p3, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x2

    :goto_5
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 174
    return-void
.end method

.method public whitelist newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 337
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected whitelist onContentChanged()V
    .registers 2

    .line 489
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_18

    .line 491
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 493
    :cond_18
    return-void
.end method

.method public whitelist runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .line 438
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v0, :cond_b

    .line 439
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 442
    :cond_b
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public whitelist setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .registers 4
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;

    .line 215
    if-nez p1, :cond_6

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    goto :goto_1c

    .line 217
    :cond_6
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_13

    .line 218
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    goto :goto_1c

    .line 220
    :cond_13
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v0, p0, Landroid/widget/CursorAdapter;->mDropDownContext:Landroid/content/Context;

    .line 222
    :goto_1c
    return-void
.end method

.method public whitelist setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .registers 2
    .param p1, "filterQueryProvider"    # Landroid/widget/FilterQueryProvider;

    .line 478
    iput-object p1, p0, Landroid/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 479
    return-void
.end method

.method public whitelist swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .line 373
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_6

    .line 374
    const/4 v0, 0x0

    return-object v0

    .line 376
    :cond_6
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 377
    .local v0, "oldCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1c

    .line 378
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 379
    :cond_13
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 381
    :cond_1c
    iput-object p1, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 382
    if-eqz p1, :cond_41

    .line 383
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    if-eqz v1, :cond_29

    iget-object v1, p0, Landroid/widget/CursorAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 384
    :cond_29
    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 385
    :cond_32
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    .line 386
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 388
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_4a

    .line 390
    :cond_41
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/CursorAdapter;->mRowIDColumn:I

    .line 391
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    .line 393
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->notifyDataSetInvalidated()V

    .line 395
    :goto_4a
    return-object v0
.end method
