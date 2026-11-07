.class public final Landroid/graphics/pdf/models/FormWidgetInfo$Builder;
.super Ljava/lang/Object;
.source "FormWidgetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/models/FormWidgetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAccessibilityLabel:Ljava/lang/String;

.field private blacklist mEditableText:Z

.field private blacklist mFontSize:F

.field private blacklist mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxLength:I

.field private blacklist mMultiLineText:Z

.field private blacklist mMultiSelect:Z

.field private blacklist mReadOnly:Z

.field private final blacklist mTextValue:Ljava/lang/String;

.field private final blacklist mWidgetIndex:I

.field private final blacklist mWidgetRect:Landroid/graphics/Rect;

.field private final blacklist mWidgetType:I


# direct methods
.method public constructor whitelist <init>(IILandroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "widgetType"    # I
    .param p2, "widgetIndex"    # I
    .param p3, "widgetRect"    # Landroid/graphics/Rect;
    .param p4, "textValue"    # Ljava/lang/String;
    .param p5, "accessibilityLabel"    # Ljava/lang/String;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mReadOnly:Z

    .line 333
    iput-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mEditableText:Z

    .line 334
    iput-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mMultiSelect:Z

    .line 335
    iput-boolean v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mMultiLineText:Z

    .line 336
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mMaxLength:I

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mFontSize:F

    .line 338
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mListItems:Ljava/util/List;

    .line 357
    iput p1, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    .line 358
    iput p2, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetIndex:I

    .line 359
    const-string v0, "widgetRect cannot be null"

    invoke-static {p3, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetRect:Landroid/graphics/Rect;

    .line 360
    const-string v0, "textValue cannot be null"

    invoke-static {p4, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mTextValue:Ljava/lang/String;

    .line 361
    const-string v0, "accessibilityLabel cannot be null"

    invoke-static {p5, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mAccessibilityLabel:Ljava/lang/String;

    .line 363
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/pdf/models/FormWidgetInfo;
    .registers 14

    .line 465
    new-instance v0, Landroid/graphics/pdf/models/FormWidgetInfo;

    iget v1, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    iget v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetIndex:I

    iget-object v3, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetRect:Landroid/graphics/Rect;

    iget-boolean v4, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mReadOnly:Z

    iget-object v5, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mTextValue:Ljava/lang/String;

    iget-object v6, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mAccessibilityLabel:Ljava/lang/String;

    iget-boolean v7, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mEditableText:Z

    iget-boolean v8, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mMultiSelect:Z

    iget-boolean v9, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mMultiLineText:Z

    iget v10, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mMaxLength:I

    iget v11, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mFontSize:F

    iget-object v12, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mListItems:Ljava/util/List;

    invoke-direct/range {v0 .. v12}, Landroid/graphics/pdf/models/FormWidgetInfo;-><init>(IILandroid/graphics/Rect;ZLjava/lang/String;Ljava/lang/String;ZZZIFLjava/util/List;)V

    return-object v0
.end method

.method public whitelist setEditableText(Z)Landroid/graphics/pdf/models/FormWidgetInfo$Builder;
    .registers 4
    .param p1, "editableText"    # Z

    .line 380
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    const-string v1, "Editable text is only supported on comboboxes and text fields"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 383
    iput-boolean p1, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mEditableText:Z

    .line 384
    return-object p0
.end method

.method public whitelist setFontSize(F)Landroid/graphics/pdf/models/FormWidgetInfo$Builder;
    .registers 6
    .param p1, "fontSize"    # F

    .line 438
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    :goto_a
    const-string v3, "Invalid font size"

    invoke-static {v0, v3}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 439
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1b

    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :cond_1b
    :goto_1b
    const-string v0, "Font size is only supported on comboboxes and text fields"

    invoke-static {v1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 442
    iput p1, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mFontSize:F

    .line 443
    return-object p0
.end method

.method public whitelist setListItems(Ljava/util/List;)Landroid/graphics/pdf/models/FormWidgetInfo$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/pdf/models/ListItem;",
            ">;)",
            "Landroid/graphics/pdf/models/FormWidgetInfo$Builder;"
        }
    .end annotation

    .line 454
    .local p1, "listItems":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/pdf/models/ListItem;>;"
    const-string v0, "choiceOptions cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    const-string v1, "Choice options are only supported on comboboxes and list boxes"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 458
    iput-object p1, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mListItems:Ljava/util/List;

    .line 459
    return-object p0
.end method

.method public whitelist setMaxLength(I)Landroid/graphics/pdf/models/FormWidgetInfo$Builder;
    .registers 6
    .param p1, "maxLength"    # I

    .line 423
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "Invalid max length"

    invoke-static {v2, v3}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 424
    iget v2, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    const-string v1, "Max length is only supported on text fields"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 426
    iput p1, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mMaxLength:I

    .line 427
    return-object p0
.end method

.method public whitelist setMultiLineText(Z)Landroid/graphics/pdf/models/FormWidgetInfo$Builder;
    .registers 4
    .param p1, "multiLineText"    # Z

    .line 408
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Multiline text is only supported on text fields"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 410
    iput-boolean p1, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mMultiLineText:Z

    .line 411
    return-object p0
.end method

.method public whitelist setMultiSelect(Z)Landroid/graphics/pdf/models/FormWidgetInfo$Builder;
    .registers 4
    .param p1, "multiSelect"    # Z

    .line 395
    iget v0, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mWidgetType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Multi-select is only supported on list boxes"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 397
    iput-boolean p1, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mMultiSelect:Z

    .line 398
    return-object p0
.end method

.method public whitelist setReadOnly(Z)Landroid/graphics/pdf/models/FormWidgetInfo$Builder;
    .registers 2
    .param p1, "readOnly"    # Z

    .line 368
    iput-boolean p1, p0, Landroid/graphics/pdf/models/FormWidgetInfo$Builder;->mReadOnly:Z

    .line 369
    return-object p0
.end method
