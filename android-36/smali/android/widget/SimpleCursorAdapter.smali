.class public Landroid/widget/SimpleCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleCursorAdapter$ViewBinder;,
        Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;
    }
.end annotation


# instance fields
.field private greylist-max-o mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected greylist-max-p mFrom:[I

.field greylist-max-o mOriginalFrom:[Ljava/lang/String;

.field private greylist-max-o mStringConversionColumn:I

.field protected greylist mTo:[I

.field private greylist-max-o mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 83
    iput-object p5, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 84
    iput-object p4, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 85
    invoke-direct {p0, p3, p4}, Landroid/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "flags"    # I

    .line 108
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 109
    iput-object p5, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 110
    iput-object p4, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 111
    invoke-direct {p0, p3, p4}, Landroid/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private greylist-max-o findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;

    .line 330
    if-eqz p1, :cond_21

    .line 332
    array-length v0, p2

    .line 333
    .local v0, "count":I
    iget-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    array-length v1, v1

    if-eq v1, v0, :cond_10

    .line 334
    :cond_c
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 336
    :cond_10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_20

    .line 337
    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    aget-object v3, p2, v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 339
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_20
    goto :goto_24

    .line 340
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 342
    :goto_24
    return-void
.end method


# virtual methods
.method public whitelist bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 140
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 141
    .local v0, "binder":Landroid/widget/SimpleCursorAdapter$ViewBinder;
    iget-object v1, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    array-length v1, v1

    .line 142
    .local v1, "count":I
    iget-object v2, p0, Landroid/widget/SimpleCursorAdapter;->mFrom:[I

    .line 143
    .local v2, "from":[I
    iget-object v3, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 145
    .local v3, "to":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_a
    if-ge v4, v1, :cond_63

    .line 146
    aget v5, v3, v4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 147
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_60

    .line 148
    const/4 v6, 0x0

    .line 149
    .local v6, "bound":Z
    if-eqz v0, :cond_1d

    .line 150
    aget v7, v2, v4

    invoke-interface {v0, v5, p3, v7}, Landroid/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v6

    .line 153
    :cond_1d
    if-nez v6, :cond_60

    .line 154
    aget v7, v2, v4

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "text":Ljava/lang/String;
    if-nez v7, :cond_29

    .line 156
    const-string v7, ""

    .line 159
    :cond_29
    instance-of v8, v5, Landroid/widget/TextView;

    if-eqz v8, :cond_34

    .line 160
    move-object v8, v5

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {p0, v8, v7}, Landroid/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_60

    .line 161
    :cond_34
    instance-of v8, v5, Landroid/widget/ImageView;

    if-eqz v8, :cond_3f

    .line 162
    move-object v8, v5

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {p0, v8, v7}, Landroid/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_60

    .line 164
    :cond_3f
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not a  view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 145
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "bound":Z
    .end local v7    # "text":Ljava/lang/String;
    :cond_60
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 170
    .end local v4    # "i":I
    :cond_63
    return-void
.end method

.method public whitelist changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 5
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;
    .param p3, "to"    # [I

    .line 365
    iput-object p2, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 366
    iput-object p3, p0, Landroid/widget/SimpleCursorAdapter;->mTo:[I

    .line 370
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 371
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 372
    return-void
.end method

.method public whitelist convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 313
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    if-eqz v0, :cond_b

    .line 314
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    invoke-interface {v0, p1}, Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 315
    :cond_b
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_17

    .line 316
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 319
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCursorToStringConverter()Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;
    .registers 2

    .line 281
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    return-object v0
.end method

.method public whitelist getStringConversionColumn()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    return v0
.end method

.method public whitelist getViewBinder()Landroid/widget/SimpleCursorAdapter$ViewBinder;
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    return-object v0
.end method

.method public whitelist setCursorToStringConverter(Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .registers 2
    .param p1, "cursorToStringConverter"    # Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    .line 297
    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;

    .line 298
    return-void
.end method

.method public whitelist setStringConversionColumn(I)V
    .registers 2
    .param p1, "stringConversionColumn"    # I

    .line 265
    iput p1, p0, Landroid/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 266
    return-void
.end method

.method public whitelist setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V
    .registers 2
    .param p1, "viewBinder"    # Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 194
    iput-object p1, p0, Landroid/widget/SimpleCursorAdapter;->mViewBinder:Landroid/widget/SimpleCursorAdapter$ViewBinder;

    .line 195
    return-void
.end method

.method public whitelist setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 5
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .line 214
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    .line 217
    goto :goto_10

    .line 215
    :catch_8
    move-exception v0

    .line 216
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 218
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :goto_10
    return-void
.end method

.method public whitelist setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;

    .line 232
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method public whitelist swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3
    .param p1, "c"    # Landroid/database/Cursor;

    .line 349
    iget-object v0, p0, Landroid/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 350
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
