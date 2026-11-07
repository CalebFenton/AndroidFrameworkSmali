.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "RowLayout.java"


# static fields
.field public static final blacklist BOTTOM:I = 0x5

.field public static final blacklist CENTER:I = 0x2

.field public static final blacklist END:I = 0x3

.field public static final blacklist SPACE_AROUND:I = 0x8

.field public static final blacklist SPACE_BETWEEN:I = 0x6

.field public static final blacklist SPACE_EVENLY:I = 0x7

.field public static final blacklist START:I = 0x1

.field public static final blacklist TOP:I = 0x4


# instance fields
.field blacklist mHorizontalPositioning:I

.field blacklist mSpacedBy:F

.field blacklist mVerticalPositioning:I


# direct methods
.method public static synthetic blacklist $r8$lambda$64J4s4Oep66P8Sy3oJaihuIzSn8(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->lambda$computeSize$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$JIhwghNOcmC4N2CaFmzO0szeTRU(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->lambda$computeWrapSize$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$swmWPQdAR9my1vBMbCJXW5AM1FM(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->lambda$internalLayoutMeasure$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V
    .registers 13
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # F
    .param p7, "height"    # F
    .param p8, "horizontalPositioning"    # I
    .param p9, "verticalPositioning"    # I
    .param p10, "spacedBy"    # F

    .line 68
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 55
    move v0, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local v0, "height":F
    .local p2, "parent":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .local p3, "componentId":I
    .local p4, "animationId":I
    .local p5, "x":F
    .local p6, "y":F
    .local p7, "width":F
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    .line 69
    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    .line 70
    iput p9, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mVerticalPositioning:I

    .line 71
    iput p10, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V
    .registers 18
    .param p1, "parent"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .param p2, "componentId"    # I
    .param p3, "animationId"    # I
    .param p4, "horizontalPositioning"    # I
    .param p5, "verticalPositioning"    # I
    .param p6, "spacedBy"    # F

    .line 81
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V

    .line 92
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V
    .registers 7
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "componentId"    # I
    .param p2, "animationId"    # I
    .param p3, "horizontalPositioning"    # I
    .param p4, "verticalPositioning"    # I
    .param p5, "spacedBy"    # F

    .line 437
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 439
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 440
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 441
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 442
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 443
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 8
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 473
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 474
    const-string v1, "Row layout implementation, positioning components one after the other horizontally.\n\nIt supports weight and horizontal/vertical positioning."

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 478
    const/16 v1, 0x190

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 479
    const-string v1, "Start"

    const-string v2, "layout-RowLayout-start-top.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 480
    const-string v1, "Center"

    const-string v2, "layout-RowLayout-center-top.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 481
    const-string v1, "End"

    const-string v2, "layout-RowLayout-end-top.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 482
    const-string v1, "SpaceEvenly"

    const-string v2, "layout-RowLayout-space-evenly-top.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 483
    const-string v1, "SpaceAround"

    const-string v2, "layout-RowLayout-space-around-top.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 484
    const-string v1, "SpaceBetween"

    const-string v2, "layout-RowLayout-space-between-top.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 485
    const/4 v1, 0x0

    const-string v2, "COMPONENT_ID"

    const-string/jumbo v3, "unique id for this component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 486
    const-string v2, "ANIMATION_ID"

    const-string v3, "id used to match components, for animation purposes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 490
    const-string v2, "HORIZONTAL_POSITIONING"

    const-string v3, "horizontal positioning value"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 491
    const-string v2, "START"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 492
    const-string v2, "CENTER"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 493
    const-string v5, "END"

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 494
    const-string v5, "SPACE_BETWEEN"

    const/4 v6, 0x6

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 495
    const-string v5, "SPACE_EVENLY"

    const/4 v6, 0x7

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 496
    const-string v5, "SPACE_AROUND"

    const/16 v6, 0x8

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 497
    const-string v5, "VERTICAL_POSITIONING"

    const-string/jumbo v6, "vertical positioning value"

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 498
    const-string v1, "TOP"

    const/4 v5, 0x4

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 499
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 500
    const-string v1, "BOTTOM"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 501
    const-string v1, "SPACED_BY"

    const-string v2, "Horizontal spacing between components"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 502
    return-void
.end method

.method private blacklist getPositioningString(I)Ljava/lang/String;
    .registers 3
    .param p1, "pos"    # I

    .line 524
    packed-switch p1, :pswitch_data_1e

    .line 542
    const-string v0, "NONE"

    return-object v0

    .line 540
    :pswitch_6
    const-string v0, "SPACE_AROUND"

    return-object v0

    .line 538
    :pswitch_9
    const-string v0, "SPACE_EVENLY"

    return-object v0

    .line 536
    :pswitch_c
    const-string v0, "SPACE_BETWEEN"

    return-object v0

    .line 534
    :pswitch_f
    const-string v0, "BOTTOM"

    return-object v0

    .line 532
    :pswitch_12
    const-string v0, "TOP"

    return-object v0

    .line 530
    :pswitch_15
    const-string v0, "END"

    return-object v0

    .line 528
    :pswitch_18
    const-string v0, "CENTER"

    return-object v0

    .line 526
    :pswitch_1b
    const-string v0, "START"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist id()I
    .registers 1

    .line 417
    const/16 v0, 0xcb

    return v0
.end method

.method private synthetic blacklist lambda$computeSize$1()Ljava/lang/String;
    .registers 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPUTE SIZE in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$computeWrapSize$0()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COMPUTE WRAP SIZE in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$internalLayoutMeasure$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;
    .registers 4
    .param p1, "selfMeasure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNAL LAYOUT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 203
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    return-object v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 408
    const-string v0, "RowLayout"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 9
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

    .line 452
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 453
    .local v2, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 454
    .local v3, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 455
    .local v4, "horizontalPositioning":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 456
    .local v5, "verticalPositioning":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 457
    .local v6, "spacedBy":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method


# virtual methods
.method public blacklist computeSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 16
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "minWidth"    # F
    .param p3, "maxWidth"    # F
    .param p4, "minHeight"    # F
    .param p5, "maxHeight"    # F
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 161
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 162
    move v0, p3

    .line 163
    .local v0, "mw":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v0

    .end local v0    # "mw":F
    .local v5, "mw":F
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 164
    .local v2, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    move-object v3, p1

    move v4, p2

    move v6, p4

    move v7, p5

    move-object v8, p6

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local p2    # "minWidth":F
    .end local p4    # "minHeight":F
    .end local p5    # "maxHeight":F
    .end local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local v3, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v4, "minWidth":F
    .local v6, "minHeight":F
    .local v7, "maxHeight":F
    .local v8, "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 165
    invoke-virtual {v8, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    .line 166
    .local p1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result p2

    if-nez p2, :cond_34

    .line 167
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result p2

    sub-float/2addr v5, p2

    .line 169
    .end local v2    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local p1    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_34
    move-object p1, v3

    move p2, v4

    move p4, v6

    move p5, v7

    move-object p6, v8

    goto :goto_10

    .line 170
    .end local v3    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local v4    # "minWidth":F
    .end local v6    # "minHeight":F
    .end local v7    # "maxHeight":F
    .end local v8    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local p2    # "minWidth":F
    .restart local p4    # "minHeight":F
    .restart local p5    # "maxHeight":F
    .restart local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    :cond_3a
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 171
    return-void
.end method

.method public blacklist computeWrapSize(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFZZLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;)V
    .registers 19
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "maxWidth"    # F
    .param p3, "maxHeight"    # F
    .param p4, "horizontalWrap"    # Z
    .param p5, "verticalWrap"    # Z
    .param p6, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .param p7, "size"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;

    .line 134
    move-object/from16 v0, p7

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;)V

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "visibleChildrens":I
    move v2, p2

    .line 137
    .local v2, "currentMaxWidth":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v7, v2

    .end local v2    # "currentMaxWidth":F
    .local v7, "currentMaxWidth":F
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 138
    .local v4, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move v9, p3

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 139
    invoke-virtual {v10, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 140
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v5

    if-nez v5, :cond_55

    .line 141
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v5

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 142
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 144
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v5

    sub-float/2addr v7, v5

    .line 146
    .end local v2    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v4    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_55
    goto :goto_13

    .line 147
    :cond_56
    move-object/from16 v10, p6

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 148
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 150
    :cond_6e
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 151
    return-void
.end method

.method public blacklist getLocationInWindow([FZ)V
    .registers 7
    .param p1, "value"    # [F
    .param p2, "forSelf"    # Z

    .line 392
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getLocationInWindow([FZ)V

    .line 394
    if-nez p2, :cond_19

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    instance-of v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v0, :cond_19

    .line 395
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 397
    .local v0, "smo":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    const/4 v1, 0x0

    aget v2, p1, v1

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getScrollX()F

    move-result v3

    add-float/2addr v2, v3

    aput v2, p1, v1

    .line 399
    .end local v0    # "smo":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    :cond_19
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 117
    const-string v0, "ROW"

    return-object v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 25
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v8

    .line 196
    .local v8, "selfMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 209
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 210
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 211
    return-void

    .line 213
    :cond_1c
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingLeft:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingRight:F

    sub-float/2addr v1, v2

    .line 214
    .local v1, "selfWidth":F
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingTop:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingBottom:F

    sub-float/2addr v2, v3

    .line 215
    .local v2, "selfHeight":F
    const/4 v3, 0x0

    .line 216
    .local v3, "childrenWidth":F
    const/4 v4, 0x0

    .line 218
    .local v4, "childrenHeight":F
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasHorizontalScroll()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 219
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 220
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getHorizontalScrollDimension()F

    move-result v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingLeft:F

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingRight:F

    sub-float v1, v5, v6

    move v9, v1

    goto :goto_4a

    .line 218
    :cond_49
    move v9, v1

    .line 224
    .end local v1    # "selfWidth":F
    .local v9, "selfWidth":F
    :goto_4a
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 225
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 226
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getVerticalScrollDimension()F

    move-result v1

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingTop:F

    sub-float/2addr v1, v5

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mPaddingBottom:F

    sub-float v2, v1, v5

    move v10, v2

    goto :goto_62

    .line 224
    :cond_61
    move v10, v2

    .line 229
    .end local v2    # "selfHeight":F
    .local v10, "selfHeight":F
    :goto_62
    const/4 v1, 0x1

    .line 231
    .local v1, "checkWeights":Z
    :goto_63
    if-eqz v1, :cond_149

    .line 232
    const/4 v11, 0x0

    .line 233
    .end local v1    # "checkWeights":Z
    .local v11, "checkWeights":Z
    const/4 v1, 0x0

    .line 234
    .end local v3    # "childrenWidth":F
    .local v1, "childrenWidth":F
    const/4 v12, 0x0

    .line 235
    .end local v4    # "childrenHeight":F
    .local v12, "childrenHeight":F
    const/4 v2, 0x0

    .line 236
    .local v2, "hasWeights":Z
    const/4 v3, 0x0

    .line 237
    .local v3, "totalWeights":F
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v14, v1

    move v13, v2

    move v15, v3

    .end local v1    # "childrenWidth":F
    .end local v2    # "hasWeights":Z
    .end local v3    # "totalWeights":F
    .local v13, "hasWeights":Z
    .local v14, "childrenWidth":F
    .local v15, "totalWeights":F
    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 238
    .local v1, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 239
    .local v2, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 240
    goto :goto_73

    .line 242
    :cond_8a
    instance-of v3, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_aa

    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 243
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 244
    const/4 v3, 0x1

    .line 245
    .end local v13    # "hasWeights":Z
    .local v3, "hasWeights":Z
    move-object v5, v1

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getValue()F

    move-result v5

    add-float/2addr v15, v5

    move v13, v3

    goto :goto_af

    .line 247
    .end local v3    # "hasWeights":Z
    .restart local v13    # "hasWeights":Z
    :cond_aa
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    add-float/2addr v14, v3

    .line 249
    .end local v1    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v2    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :goto_af
    goto :goto_73

    .line 253
    :cond_b0
    if-eqz v13, :cond_13a

    .line 254
    sub-float v16, v9, v14

    .line 255
    .local v16, "availableSpace":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_ba
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 256
    .restart local v1    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v2, :cond_139

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 257
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->hasWeight()Z

    move-result v2

    if-eqz v2, :cond_139

    .line 258
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 259
    .restart local v2    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 260
    goto :goto_ba

    .line 262
    :cond_e2
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getValue()F

    move-result v18

    .line 263
    .local v18, "weight":F
    mul-float v3, v18, v16

    div-float/2addr v3, v15

    .line 264
    .local v3, "childWidth":F
    move-object v4, v1

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 265
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getWidthModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthModifierOperation;->getWidthIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;

    move-result-object v19

    .line 266
    .local v19, "widthInConstraints":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    if-eqz v19, :cond_117

    .line 267
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMin()F

    move-result v4

    .line 268
    .local v4, "min":F
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;->getMax()F

    move-result v5

    .line 269
    .local v5, "max":F
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v20, v4, v6

    if-eqz v20, :cond_10f

    .line 270
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 272
    :cond_10f
    cmpl-float v6, v5, v6

    if-eqz v6, :cond_117

    .line 273
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 276
    .end local v4    # "min":F
    .end local v5    # "max":F
    :cond_117
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setW(F)V

    .line 277
    nop

    .line 279
    move v4, v3

    .end local v3    # "childWidth":F
    .local v4, "childWidth":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    .line 280
    move v5, v4

    .end local v4    # "childWidth":F
    .local v5, "childWidth":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    .line 281
    move v6, v5

    .end local v5    # "childWidth":F
    .local v6, "childWidth":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    .line 282
    move/from16 v20, v6

    .end local v6    # "childWidth":F
    .local v20, "childWidth":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    .line 277
    move/from16 v21, v20

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    .end local v2    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .local v20, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .local v21, "childWidth":F
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 285
    .end local v1    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v18    # "weight":F
    .end local v19    # "widthInConstraints":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/WidthInModifierOperation;
    .end local v20    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v21    # "childWidth":F
    :cond_139
    goto :goto_ba

    .line 288
    .end local v16    # "availableSpace":F
    :cond_13a
    invoke-virtual {v0, v9, v10, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z

    move-result v1

    if-eqz v1, :cond_144

    if-eqz v13, :cond_144

    .line 289
    const/4 v1, 0x1

    .end local v11    # "checkWeights":Z
    .local v1, "checkWeights":Z
    goto :goto_145

    .line 291
    .end local v1    # "checkWeights":Z
    .end local v13    # "hasWeights":Z
    .end local v15    # "totalWeights":F
    .restart local v11    # "checkWeights":Z
    :cond_144
    move v1, v11

    .end local v11    # "checkWeights":Z
    .restart local v1    # "checkWeights":Z
    :goto_145
    move v4, v12

    move v3, v14

    goto/16 :goto_63

    .line 293
    .end local v12    # "childrenHeight":F
    .end local v14    # "childrenWidth":F
    .local v3, "childrenWidth":F
    .local v4, "childrenHeight":F
    :cond_149
    const/4 v2, 0x0

    .line 294
    .end local v3    # "childrenWidth":F
    .local v2, "childrenWidth":F
    const/4 v3, 0x0

    .line 295
    .local v3, "visibleChildrens":I
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_151
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_179

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 296
    .local v6, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v11

    .line 297
    .local v11, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v12

    if-eqz v12, :cond_168

    .line 298
    goto :goto_151

    .line 300
    :cond_168
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v12

    add-float/2addr v2, v12

    .line 301
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 302
    nop

    .end local v6    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v11    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    add-int/lit8 v3, v3, 0x1

    .line 303
    goto :goto_151

    .line 304
    :cond_179
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 306
    const/4 v5, 0x0

    .line 307
    .local v5, "tx":F
    const/4 v6, 0x0

    .line 309
    .local v6, "ty":F
    const/4 v11, 0x0

    .line 310
    .local v11, "horizontalGap":F
    const/4 v12, 0x0

    .line 312
    .local v12, "total":F
    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    const/high16 v14, 0x40000000    # 2.0f

    packed-switch v13, :pswitch_data_290

    :pswitch_18b
    goto/16 :goto_225

    .line 349
    :pswitch_18d
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_193
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1b1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 350
    .local v15, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v16

    .line 351
    .local v16, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v17

    if-eqz v17, :cond_1aa

    .line 352
    goto :goto_193

    .line 354
    :cond_1aa
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v17

    add-float v12, v12, v17

    .line 355
    .end local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    goto :goto_193

    .line 356
    :cond_1b1
    sub-float v13, v9, v12

    int-to-float v15, v3

    div-float v11, v13, v15

    .line 357
    div-float v5, v11, v14

    goto/16 :goto_225

    .line 338
    :pswitch_1ba
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1c0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1de

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 339
    .restart local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v16

    .line 340
    .restart local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v17

    if-eqz v17, :cond_1d7

    .line 341
    goto :goto_1c0

    .line 343
    :cond_1d7
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v17

    add-float v12, v12, v17

    .line 344
    .end local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    goto :goto_1c0

    .line 345
    :cond_1de
    sub-float v13, v9, v12

    add-int/lit8 v15, v3, 0x1

    int-to-float v15, v15

    div-float v11, v13, v15

    .line 346
    move v5, v11

    .line 347
    goto :goto_225

    .line 323
    :pswitch_1e7
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1ed
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_20b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 324
    .restart local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v16

    .line 325
    .restart local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v17

    if-eqz v17, :cond_204

    .line 326
    goto :goto_1ed

    .line 328
    :cond_204
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v17

    add-float v12, v12, v17

    .line 329
    .end local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    goto :goto_1ed

    .line 330
    :cond_20b
    const/4 v13, 0x1

    if-le v3, v13, :cond_216

    .line 331
    sub-float v13, v9, v12

    add-int/lit8 v15, v3, -0x1

    int-to-float v15, v15

    div-float v11, v13, v15

    goto :goto_225

    .line 334
    :cond_216
    sub-float v13, v9, v2

    div-float v5, v13, v14

    .line 336
    goto :goto_225

    .line 317
    :pswitch_21b
    sub-float v5, v9, v2

    .line 318
    goto :goto_225

    .line 320
    :pswitch_21e
    sub-float v13, v9, v2

    div-float v5, v13, v14

    .line 321
    goto :goto_225

    .line 314
    :pswitch_223
    const/4 v5, 0x0

    .line 315
    nop

    .line 361
    :goto_225
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_22b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_28c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 362
    .restart local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    move/from16 v16, v14

    invoke-virtual {v7, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v14

    .line 363
    .local v14, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    move/from16 v17, v1

    .end local v1    # "checkWeights":Z
    .local v17, "checkWeights":Z
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mVerticalPositioning:I

    packed-switch v1, :pswitch_data_2a4

    :pswitch_244
    goto :goto_259

    .line 371
    :pswitch_245
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    sub-float v1, v10, v1

    move v6, v1

    .end local v6    # "ty":F
    .local v1, "ty":F
    goto :goto_259

    .line 365
    .end local v1    # "ty":F
    .restart local v6    # "ty":F
    :pswitch_24d
    const/4 v1, 0x0

    .line 366
    .end local v6    # "ty":F
    .restart local v1    # "ty":F
    move v6, v1

    goto :goto_259

    .line 368
    .end local v1    # "ty":F
    .restart local v6    # "ty":F
    :pswitch_250
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    sub-float v1, v10, v1

    div-float v1, v1, v16

    .line 369
    .end local v6    # "ty":F
    .restart local v1    # "ty":F
    move v6, v1

    .line 374
    .end local v1    # "ty":F
    .restart local v6    # "ty":F
    :goto_259
    invoke-virtual {v14, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 375
    invoke-virtual {v14, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 376
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v1

    if-eqz v1, :cond_26a

    .line 377
    move/from16 v14, v16

    move/from16 v1, v17

    goto :goto_22b

    .line 379
    :cond_26a
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    add-float/2addr v5, v1

    .line 380
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    move/from16 v18, v2

    .end local v2    # "childrenWidth":F
    .local v18, "childrenWidth":F
    const/4 v2, 0x6

    if-eq v1, v2, :cond_281

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_281

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_282

    .line 383
    :cond_281
    add-float/2addr v5, v11

    .line 385
    :cond_282
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    add-float/2addr v5, v1

    .line 386
    .end local v14    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    move/from16 v14, v16

    move/from16 v1, v17

    move/from16 v2, v18

    goto :goto_22b

    .line 387
    .end local v17    # "checkWeights":Z
    .end local v18    # "childrenWidth":F
    .local v1, "checkWeights":Z
    .restart local v2    # "childrenWidth":F
    :cond_28c
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 388
    return-void

    :pswitch_data_290
    .packed-switch 0x1
        :pswitch_223
        :pswitch_21e
        :pswitch_21b
        :pswitch_18b
        :pswitch_18b
        :pswitch_1e7
        :pswitch_1ba
        :pswitch_18d
    .end packed-switch

    :pswitch_data_2a4
    .packed-switch 0x2
        :pswitch_250
        :pswitch_244
        :pswitch_24d
        :pswitch_245
    .end packed-switch
.end method

.method public blacklist isInHorizontalFill()Z
    .registers 2

    .line 122
    invoke-super {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInHorizontalFill()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->childrenHaveHorizontalWeights()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public blacklist minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 186
    .local v0, "height":F
    const/4 v1, 0x0

    .line 187
    .local v1, "componentHeights":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 188
    .local v3, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 189
    .end local v3    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_b

    .line 190
    :cond_20
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public blacklist minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F
    .registers 7
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->computeModifierDefinedWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 176
    .local v0, "width":F
    const/4 v1, 0x0

    .line 177
    .local v1, "componentWidths":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 178
    .local v3, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicWidth(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    add-float/2addr v1, v4

    .line 179
    .end local v3    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_b

    .line 180
    :cond_1d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 517
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 518
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mVerticalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verticalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 519
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "horizontalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 520
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "spacedBy"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 521
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 506
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mAnimationId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mHorizontalPositioning:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mVerticalPositioning:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->mSpacedBy:F

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/RowLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 513
    return-void
.end method
