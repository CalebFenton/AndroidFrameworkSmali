.class public final Landroid/graphics/pdf/models/FormEditRecord$Builder;
.super Ljava/lang/Object;
.source "FormEditRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/pdf/models/FormEditRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClickPoint:Landroid/graphics/Point;

.field private final blacklist mPageNumber:I

.field private blacklist mSelectedIndices:[I

.field private blacklist mText:Ljava/lang/String;

.field private final blacklist mType:I

.field private final blacklist mWidgetIndex:I


# direct methods
.method public constructor whitelist <init>(III)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "pageNumber"    # I
    .param p3, "widgetIndex"    # I

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mClickPoint:Landroid/graphics/Point;

    .line 223
    iput-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mSelectedIndices:[I

    .line 226
    iput-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mText:Ljava/lang/String;

    .line 241
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    const-string v3, "Invalid pageNumber."

    invoke-static {v2, v3}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 242
    if-ltz p3, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    const-string v1, "Invalid widgetIndex."

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 243
    iput p1, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mType:I

    .line 244
    iput p2, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mPageNumber:I

    .line 245
    iput p3, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mWidgetIndex:I

    .line 246
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/pdf/models/FormEditRecord;
    .registers 11

    .line 258
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mType:I

    packed-switch v0, :pswitch_data_32

    goto :goto_1e

    .line 269
    :pswitch_6
    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mText:Ljava/lang/String;

    const-string v1, "Cannot construct SET_TEXT record without text."

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1e

    .line 264
    :pswitch_e
    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mSelectedIndices:[I

    const-string v1, "Cannot construct SET_INDICES record without selectedIndices."

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 267
    goto :goto_1e

    .line 260
    :pswitch_16
    iget-object v0, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mClickPoint:Landroid/graphics/Point;

    const-string v1, "Cannot construct CLICK record without clickPoint."

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    nop

    .line 273
    :goto_1e
    new-instance v2, Landroid/graphics/pdf/models/FormEditRecord;

    iget v3, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mPageNumber:I

    iget v4, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mWidgetIndex:I

    iget v5, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mType:I

    iget-object v6, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mClickPoint:Landroid/graphics/Point;

    iget-object v7, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mSelectedIndices:[I

    iget-object v8, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mText:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/pdf/models/FormEditRecord;-><init>(IIILandroid/graphics/Point;[ILjava/lang/String;Landroid/graphics/pdf/models/FormEditRecord-IA;)V

    return-object v2

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_16
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist setClickPoint(Landroid/graphics/Point;)Landroid/graphics/pdf/models/FormEditRecord$Builder;
    .registers 4
    .param p1, "clickPoint"    # Landroid/graphics/Point;

    .line 284
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mType:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "Cannot set clickPoint on a record of this type"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 286
    const-string v0, "Click point cannot be null"

    invoke-static {p1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 287
    iput-object p1, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mClickPoint:Landroid/graphics/Point;

    .line 288
    return-object p0
.end method

.method public whitelist setSelectedIndices([I)Landroid/graphics/pdf/models/FormEditRecord$Builder;
    .registers 4
    .param p1, "selectedIndices"    # [I

    .line 298
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    const-string v0, "Cannot set selectedIndices on a record of this type."

    invoke-static {v1, v0}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 301
    iput-object p1, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mSelectedIndices:[I

    .line 302
    return-object p0
.end method

.method public whitelist setText(Ljava/lang/String;)Landroid/graphics/pdf/models/FormEditRecord$Builder;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .line 312
    iget v0, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Cannot set text on a record of this type"

    invoke-static {v0, v1}, Landroid/graphics/pdf/utils/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 314
    iput-object p1, p0, Landroid/graphics/pdf/models/FormEditRecord$Builder;->mText:Ljava/lang/String;

    .line 315
    return-object p0
.end method
