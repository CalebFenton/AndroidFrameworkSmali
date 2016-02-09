.class public Landroid/support/v4/widget/SimpleCursorAdapter;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;,
        Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    #@3
    .line 47
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@6
    .line 64
    iput-object p5, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    #@8
    .line 65
    iput-object p4, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    #@a
    .line 66
    invoke-direct {p0, p4}, Landroid/support/v4/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    #@d
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p6}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    #@3
    .line 47
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@6
    .line 90
    iput-object p5, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    #@8
    .line 91
    iput-object p4, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    #@a
    .line 92
    invoke-direct {p0, p4}, Landroid/support/v4/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    #@d
    .line 88
    return-void
.end method

.method private findColumns([Ljava/lang/String;)V
    .locals 5
    .param p1, "from"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 310
    iget-object v2, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    #@3
    if-eqz v2, :cond_2

    #@5
    .line 312
    array-length v0, p1

    #@6
    .line 313
    .local v0, "count":I
    iget-object v2, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-object v2, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    #@c
    array-length v2, v2

    #@d
    if-eq v2, v0, :cond_1

    #@f
    .line 314
    :cond_0
    new-array v2, v0, [I

    #@11
    iput-object v2, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    #@13
    .line 316
    :cond_1
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@16
    .line 317
    iget-object v2, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    #@18
    iget-object v3, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mCursor:Landroid/database/Cursor;

    #@1a
    aget-object v4, p1, v1

    #@1c
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1f
    move-result v3

    #@20
    aput v3, v2, v1

    #@22
    .line 316
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 320
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_2
    iput-object v3, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    #@27
    .line 309
    :cond_3
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mViewBinder:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    #@2
    .line 122
    .local v0, "binder":Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
    iget-object v8, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    #@4
    array-length v2, v8

    #@5
    .line 123
    .local v2, "count":I
    iget-object v3, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mFrom:[I

    #@7
    .line 124
    .local v3, "from":[I
    iget-object v6, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    #@9
    .line 126
    .local v6, "to":[I
    const/4 v4, 0x0

    #@a
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_5

    #@c
    .line 127
    aget v8, v6, v4

    #@e
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@11
    move-result-object v7

    #@12
    .line 128
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_2

    #@14
    .line 129
    const/4 v1, 0x0

    #@15
    .line 130
    .local v1, "bound":Z
    if-eqz v0, :cond_0

    #@17
    .line 131
    aget v8, v3, v4

    #@19
    invoke-interface {v0, v7, p3, v8}, Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    #@1c
    move-result v1

    #@1d
    .line 134
    .end local v1    # "bound":Z
    :cond_0
    if-nez v1, :cond_2

    #@1f
    .line 135
    aget v8, v3, v4

    #@21
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 136
    .local v5, "text":Ljava/lang/String;
    if-nez v5, :cond_1

    #@27
    .line 137
    const-string/jumbo v5, ""

    #@2a
    .line 140
    :cond_1
    instance-of v8, v7, Landroid/widget/TextView;

    #@2c
    if-eqz v8, :cond_3

    #@2e
    .line 141
    check-cast v7, Landroid/widget/TextView;

    #@30
    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {p0, v7, v5}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    #@33
    .line 126
    .end local v5    # "text":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_0

    #@36
    .line 142
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v7    # "v":Landroid/view/View;
    :cond_3
    instance-of v8, v7, Landroid/widget/ImageView;

    #@38
    if-eqz v8, :cond_4

    #@3a
    .line 143
    check-cast v7, Landroid/widget/ImageView;

    #@3c
    .end local v7    # "v":Landroid/view/View;
    invoke-virtual {p0, v7, v5}, Landroid/support/v4/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    #@3f
    goto :goto_1

    #@40
    .line 145
    .restart local v7    # "v":Landroid/view/View;
    :cond_4
    new-instance v8, Ljava/lang/IllegalStateException;

    #@42
    new-instance v9, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    invoke-virtual {v7}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@4a
    move-result-object v10

    #@4b
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4e
    move-result-object v10

    #@4f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v9

    #@53
    const-string/jumbo v10, " is not a "

    #@56
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v9

    #@5a
    .line 146
    const-string/jumbo v10, " view that can be bounds by this SimpleCursorAdapter"

    #@5d
    .line 145
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v9

    #@61
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v9

    #@65
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@68
    throw v8

    #@69
    .line 120
    .end local v5    # "text":Ljava/lang/String;
    .end local v7    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "from"    # [Ljava/lang/String;
    .param p3, "to"    # [I

    #@0
    .prologue
    .line 344
    iput-object p2, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    #@2
    .line 345
    iput-object p3, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mTo:[I

    #@4
    .line 346
    invoke-super {p0, p1}, Landroid/support/v4/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    #@7
    .line 347
    iget-object v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    #@9
    invoke-direct {p0, v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    #@c
    .line 343
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 295
    iget-object v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    #@6
    invoke-interface {v0, p1}, Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 296
    :cond_0
    iget v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@d
    const/4 v1, -0x1

    #@e
    if-le v0, v1, :cond_1

    #@10
    .line 297
    iget v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 300
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    #@1a
    move-result-object v0

    #@1b
    return-object v0
.end method

.method public getCursorToStringConverter()Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    #@2
    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 1

    #@0
    .prologue
    .line 228
    iget v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@2
    return v0
.end method

.method public getViewBinder()Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mViewBinder:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    #@2
    return-object v0
.end method

.method public setCursorToStringConverter(Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .locals 0
    .param p1, "cursorToStringConverter"    # Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    #@0
    .prologue
    .line 278
    iput-object p1, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroid/support/v4/widget/SimpleCursorAdapter$CursorToStringConverter;

    #@2
    .line 277
    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 0
    .param p1, "stringConversionColumn"    # I

    #@0
    .prologue
    .line 246
    iput p1, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@2
    .line 245
    return-void
.end method

.method public setViewBinder(Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;)V
    .locals 0
    .param p1, "viewBinder"    # Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    #@0
    .prologue
    .line 175
    iput-object p1, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mViewBinder:Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;

    #@2
    .line 174
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 195
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v1

    #@4
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 193
    :goto_0
    return-void

    #@8
    .line 196
    :catch_0
    move-exception v0

    #@9
    .line 197
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
    .line 213
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3
    .line 212
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "c"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/support/v4/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    #@3
    move-result-object v0

    #@4
    .line 328
    .local v0, "res":Landroid/database/Cursor;
    iget-object v1, p0, Landroid/support/v4/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    #@6
    invoke-direct {p0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->findColumns([Ljava/lang/String;)V

    #@9
    .line 329
    return-object v0
.end method
