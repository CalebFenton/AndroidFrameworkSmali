.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "TextLayout.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist OVERFLOW_CLIP:I = 0x1

.field public static final blacklist OVERFLOW_ELLIPSIS:I = 0x3

.field public static final blacklist OVERFLOW_MIDDLE_ELLIPSIS:I = 0x5

.field public static final blacklist OVERFLOW_START_ELLIPSIS:I = 0x4

.field public static final blacklist OVERFLOW_VISIBLE:I = 0x2

.field public static final blacklist TEXT_ALIGN_CENTER:I = 0x3

.field public static final blacklist TEXT_ALIGN_END:I = 0x6

.field public static final blacklist TEXT_ALIGN_JUSTIFY:I = 0x4

.field public static final blacklist TEXT_ALIGN_LEFT:I = 0x1

.field public static final blacklist TEXT_ALIGN_RIGHT:I = 0x2

.field public static final blacklist TEXT_ALIGN_START:I = 0x5


# instance fields
.field private final blacklist mCachedSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

.field private blacklist mCachedString:Ljava/lang/String;

.field private blacklist mColor:I

.field blacklist mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

.field private blacklist mFontFamilyId:I

.field private blacklist mFontSize:F

.field private blacklist mFontStyle:I

.field private blacklist mFontWeight:F

.field private blacklist mMaxLines:I

.field private blacklist mNewString:Ljava/lang/String;

.field private blacklist mOverflow:I

.field public blacklist mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

.field private blacklist mTextAlign:I

.field private blacklist mTextH:F

.field private blacklist mTextId:I

.field private blacklist mTextW:F

.field private blacklist mTextX:F

.field private blacklist mTextY:F

.field private blacklist mType:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIFIFIIII)V
    .registers 26
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "textId"    # I
    .param p9, "color"    # I
    .param p10, "fontSize"    # F
    .param p11, "fontStyle"    # I
    .param p12, "fontWeight"    # F
    .param p13, "fontFamilyId"    # I
    .param p14, "textAlign"    # I
    .param p15, "overflow"    # I
    .param p16, "maxLines"    # I

    .line 150
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    .line 63
    const/high16 v2, 0x41800000    # 16.0f

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    .line 64
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    .line 65
    const/high16 v1, 0x43c80000    # 400.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    .line 66
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    .line 67
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    .line 68
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    .line 69
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    .line 71
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    .line 74
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    .line 75
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextH:F

    .line 77
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;-><init>(FF)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    .line 194
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    .line 151
    move/from16 v0, p8

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    .line 152
    move/from16 v1, p9

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    .line 153
    move/from16 v2, p10

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    .line 154
    move/from16 v3, p11

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    .line 155
    move/from16 v4, p12

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    .line 156
    move/from16 v5, p13

    iput v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    .line 157
    move/from16 v6, p14

    iput v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    .line 158
    move/from16 v7, p15

    iput v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    .line 159
    move/from16 v8, p16

    iput v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    .line 160
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIFIFIIII)V
    .registers 30
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "textId"    # I
    .param p5, "color"    # I
    .param p6, "fontSize"    # F
    .param p7, "fontStyle"    # I
    .param p8, "fontWeight"    # F
    .param p9, "fontFamilyId"    # I
    .param p10, "textAlign"    # I
    .param p11, "overflow"    # I
    .param p12, "maxLines"    # I

    .line 175
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    invoke-direct/range {v0 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIFIFIIII)V

    .line 192
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFIFIIII)V
    .registers 13
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "textId"    # I
    .param p4, "color"    # I
    .param p5, "fontSize"    # F
    .param p6, "fontStyle"    # I
    .param p7, "fontWeight"    # F
    .param p8, "fontFamilyId"    # I
    .param p9, "textAlign"    # I
    .param p10, "overflow"    # I
    .param p11, "maxLines"    # I

    .line 485
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 487
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 488
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 489
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 490
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 491
    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 492
    invoke-virtual {p0, p7}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 493
    invoke-virtual {p0, p8}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 494
    invoke-virtual {p0, p9}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 495
    invoke-virtual {p0, p10}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 496
    invoke-virtual {p0, p11}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 497
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 539
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 540
    const-string v1, "Text layout implementation.\n\n"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 541
    const/4 v1, 0x0

    const-string v2, "COMPONENT_ID"

    const-string/jumbo v3, "unique id for this component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 542
    const-string v2, "ANIMATION_ID"

    const-string v3, "id used to match components, for animation purposes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 546
    const-string v2, "COLOR"

    const-string/jumbo v3, "text color"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 547
    const/4 v2, 0x1

    const-string v3, "FONT_SIZE"

    const-string v4, "font size"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 548
    const-string v3, "FONT_STYLE"

    const-string v4, "font style (0 = normal, 1 = italic)"

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 549
    const-string v3, "FONT_WEIGHT"

    const-string v4, "font weight (1-1000, normal = 400)"

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 550
    const-string v2, "FONT_FAMILY_ID"

    const-string v3, "font family id"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 551
    return-void
.end method

.method public static blacklist id()I
    .registers 1

    .line 453
    const/16 v0, 0xd0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 444
    const-string v0, "TextLayout"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 15
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 507
    .local v2, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 508
    .local v3, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 509
    .local v4, "textId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 510
    .local v5, "color":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 511
    .local v6, "fontSize":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v7

    .line 512
    .local v7, "fontStyle":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v8

    .line 513
    .local v8, "fontWeight":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v9

    .line 514
    .local v9, "fontFamilyId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v10

    .line 515
    .local v10, "textAlign":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v11

    .line 516
    .local v11, "overflow":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v12

    .line 517
    .local v12, "maxLines":I
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIFIFIIII)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 15
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 345
    invoke-super/range {p0 .. p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 346
    move-object v0, p0

    const/4 v5, 0x1

    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    const/4 v4, 0x1

    move-object v1, p1

    move v2, p3

    move v3, p5

    move-object v6, p6

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local p3    # "maxWidth":F
    .end local p5    # "maxHeight":F
    .end local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local v1, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v2, "maxWidth":F
    .local v3, "maxHeight":F
    .local v6, "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V

    .line 347
    .end local v1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local v2    # "maxWidth":F
    .end local v3    # "maxHeight":F
    .end local v6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local p3    # "maxWidth":F
    .restart local p5    # "maxHeight":F
    .restart local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    invoke-virtual {p6, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v1

    .line 348
    .local v1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 349
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedSize:Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 350
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 26
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 361
    move-object/from16 v0, p0

    move-object/from16 v10, p7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 362
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 363
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextSize(F)V

    .line 364
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    float-to-int v3, v3

    iget v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v4, v12, :cond_22

    move v4, v12

    goto :goto_23

    :cond_22
    move v4, v11

    :goto_23
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextStyle(IIZ)V

    .line 365
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 366
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 367
    const/4 v1, 0x4

    new-array v7, v1, [F

    .line 368
    .local v7, "bounds":[F
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mNewString:Ljava/lang/String;

    if-eqz v3, :cond_49

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mNewString:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 369
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mNewString:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    .line 371
    :cond_49
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    if-nez v3, :cond_4e

    .line 372
    return-void

    .line 375
    :cond_4e
    const/4 v3, 0x0

    .line 376
    .local v3, "forceComplex":Z
    const/4 v4, 0x6

    .line 377
    .local v4, "flags":I
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    const/4 v13, 0x3

    if-ne v5, v12, :cond_64

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    if-eq v5, v1, :cond_62

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    const/4 v5, 0x5

    if-eq v1, v5, :cond_62

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    if-ne v1, v13, :cond_64

    .line 381
    :cond_62
    or-int/lit8 v4, v4, 0x8

    .line 383
    :cond_64
    and-int/lit8 v1, v4, 0x8

    const/16 v5, 0x8

    if-eq v1, v5, :cond_8b

    .line 384
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6b
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_8b

    .line 385
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 386
    .local v5, "c":C
    const/16 v6, 0xa

    if-eq v5, v6, :cond_85

    const/16 v6, 0x9

    if-ne v5, v6, :cond_82

    goto :goto_85

    .line 384
    .end local v5    # "c":C
    :cond_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 387
    .restart local v5    # "c":C
    :cond_85
    :goto_85
    or-int/lit8 v4, v4, 0x8

    .line 388
    const/4 v3, 0x1

    .line 389
    move v14, v3

    move v9, v4

    goto :goto_8d

    .line 393
    .end local v1    # "i":I
    .end local v5    # "c":C
    :cond_8b
    move v14, v3

    move v9, v4

    .end local v3    # "forceComplex":Z
    .end local v4    # "flags":I
    .local v9, "flags":I
    .local v14, "forceComplex":Z
    :goto_8d
    if-nez v14, :cond_9e

    .line 394
    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v4, 0x0

    move v6, v9

    .end local v9    # "flags":I
    .local v6, "flags":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getTextBounds(IIII[F)V

    move-object v15, v7

    .end local v6    # "flags":I
    .end local v7    # "bounds":[F
    .restart local v9    # "flags":I
    .local v15, "bounds":[F
    goto :goto_9f

    .line 393
    .end local v15    # "bounds":[F
    .restart local v7    # "bounds":[F
    :cond_9e
    move-object v15, v7

    .line 396
    .end local v7    # "bounds":[F
    .restart local v15    # "bounds":[F
    :goto_9f
    const/16 v16, 0x0

    const/16 v17, 0x2

    if-nez v14, :cond_bd

    aget v1, v15, v17

    aget v2, v15, v12

    sub-float/2addr v1, v2

    cmpl-float v1, v1, p2

    if-lez v1, :cond_b7

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    if-le v1, v12, :cond_b7

    cmpl-float v1, p2, v16

    if-lez v1, :cond_b7

    goto :goto_bd

    .line 414
    :cond_b7
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    move/from16 v8, p2

    goto :goto_ee

    .line 397
    :cond_bd
    :goto_bd
    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    .line 401
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    iget v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    .line 398
    const/4 v3, 0x0

    move-object/from16 v1, p1

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->layoutComplexText(IIIIIIFI)Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    .line 407
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    if-eqz v1, :cond_ee

    .line 408
    aput v16, v15, v11

    .line 409
    aput v16, v15, v12

    .line 410
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;->getWidth()F

    move-result v1

    aput v1, v15, v17

    .line 411
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;->getHeight()F

    move-result v1

    aput v1, v15, v13

    .line 416
    :cond_ee
    :goto_ee
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 417
    aget v1, v15, v17

    aget v2, v15, v11

    sub-float/2addr v1, v2

    .line 418
    .local v1, "w":F
    aget v2, v15, v13

    aget v3, v15, v12

    sub-float/2addr v2, v3

    .line 419
    .local v2, "h":F
    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v10, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 420
    aget v3, v15, v11

    neg-float v3, v3

    iput v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextX:F

    .line 421
    move/from16 v3, p3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {v10, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 422
    aget v4, v15, v12

    neg-float v4, v4

    iput v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextY:F

    .line 423
    iput v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    .line 424
    iput v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextH:F

    .line 425
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 307
    const-string v0, "TEXT_LAYOUT"

    return-object v0
.end method

.method public blacklist getTextId()Ljava/lang/Integer;
    .registers 2

    .line 87
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 429
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextH:F

    return v0
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 3
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 434
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    return v0
.end method

.method public blacklist paintingComponent(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V
    .registers 16
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;

    .line 198
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 199
    .local v0, "prev":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    .line 200
    .local v1, "remoteContext":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    iput-object p0, v1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 202
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 203
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mX:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mY:F

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 204
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz v2, :cond_38

    .line 205
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getWidth()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getHeight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->startGraphicsLayer(II)V

    .line 206
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 207
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;->fillInAttributes(Ljava/util/HashMap;)V

    .line 208
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedAttributes:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->setGraphicsLayer(Ljava/util/HashMap;)V

    .line 210
    :cond_38
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->paint(Lcom/android/internal/widget/remotecompose/core/PaintContext;)V

    .line 211
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    .line 212
    .local v2, "tx":F
    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingTop:F

    .line 213
    .local v3, "ty":F
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 218
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->savePaint()V

    .line 219
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->reset()V

    .line 220
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setStyle(I)V

    .line 221
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setColor(I)V

    .line 222
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextSize(F)V

    .line 223
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    float-to-int v7, v7

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6d

    move v5, v9

    :cond_6d
    invoke-virtual {v4, v6, v7, v5}, Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;->setTextStyle(IIZ)V

    .line 224
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaint:Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V

    .line 225
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    if-nez v4, :cond_7a

    .line 226
    return-void

    .line 228
    :cond_7a
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    .line 229
    .local v8, "length":I
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    if-eqz v4, :cond_8c

    .line 230
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComputedTextLayout:Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawComplexText(Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;)V

    move-object v5, p1

    goto/16 :goto_ff

    .line 232
    :cond_8c
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextX:F

    .line 233
    .local v4, "px":F
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    packed-switch v5, :pswitch_data_118

    :pswitch_93
    move v11, v4

    goto :goto_b3

    .line 235
    :pswitch_95
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, v5, v6

    .line 236
    move v11, v4

    goto :goto_b3

    .line 239
    :pswitch_a6
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    sub-float v4, v5, v6

    .line 240
    move v11, v4

    .line 246
    .end local v4    # "px":F
    .local v11, "px":F
    :goto_b3
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextW:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f3

    .line 247
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->save()V

    .line 248
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingLeft:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingRight:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHeight:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingTop:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mPaddingBottom:F

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {p1, v6, v6, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->clipRect(FFFF)V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getScrollX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getScrollY()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 254
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextY:F

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v5, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    .line 255
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    goto :goto_ff

    .line 257
    .end local v5    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    :cond_f3
    move-object v5, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local v5    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextY:F

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v13}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->drawTextRun(IIIIIFFZ)V

    .line 273
    .end local v11    # "px":F
    :goto_ff
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restorePaint()V

    .line 276
    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mGraphicsLayerModifier:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/GraphicsLayerModifierOperation;

    if-eqz p1, :cond_109

    .line 277
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->endGraphicsLayer()V

    .line 280
    :cond_109
    neg-float p1, v2

    neg-float v4, v3

    invoke-virtual {v5, p1, v4}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    .line 281
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->restore()V

    .line 282
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object p1

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mLastComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 283
    return-void

    :pswitch_data_118
    .packed-switch 0x2
        :pswitch_a6
        :pswitch_95
        :pswitch_93
        :pswitch_93
        :pswitch_a6
    .end packed-switch
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 4
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 92
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 93
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 95
    :cond_a
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 572
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 573
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 574
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->colorInt(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 575
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "fontSize"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 576
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fontStyle"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 577
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "fontWeight"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 578
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "fontFamilyId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 579
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "textAlign"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 580
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVisibility:I

    .line 329
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 335
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TEXT_LAYOUT ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVisibility:I

    .line 301
    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    return-object v0
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 6
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 99
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "cachedString":Ljava/lang/String;
    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mCachedString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 101
    return-void

    .line 103
    :cond_11
    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mNewString:Ljava/lang/String;

    .line 104
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5a

    .line 105
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_58

    .line 106
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "fontFamily":Ljava/lang/String;
    if-eqz v1, :cond_57

    .line 108
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    .line 109
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 110
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    goto :goto_57

    .line 111
    :cond_32
    const-string/jumbo v2, "sans-serif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 112
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    goto :goto_57

    .line 113
    :cond_3f
    const-string/jumbo v2, "serif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 114
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    goto :goto_57

    .line 115
    :cond_4c
    const-string v2, "monospace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 116
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    .line 119
    .end local v1    # "fontFamily":Ljava/lang/String;
    :cond_57
    :goto_57
    goto :goto_5a

    .line 120
    :cond_58
    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mType:I

    .line 124
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v1, :cond_63

    .line 125
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->reset()V

    .line 127
    :cond_63
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    if-eqz v1, :cond_6c

    .line 128
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;->reset()V

    .line 130
    :cond_6c
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->invalidateMeasure()V

    .line 131
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 14
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 555
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mAnimationId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextId:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mColor:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontSize:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontStyle:I

    iget v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontWeight:F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mFontFamilyId:I

    iget v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mTextAlign:I

    iget v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mOverflow:I

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->mMaxLines:I

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/TextLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIFIFIIII)V

    .line 568
    return-void
.end method
