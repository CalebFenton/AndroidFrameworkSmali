.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;
.super Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;
.source "ColumnLayout.java"


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
.method public static synthetic blacklist $r8$lambda$2lBfnWzgtr_Pm28ziGCHhfRAvEQ(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->lambda$internalLayoutMeasure$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Ym_JaJ1NbrWgDB52WfgzccZwj18(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->lambda$computeWrapSize$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$eAYbjOVZeccGYPKpSIhbW6F7Xl8(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->lambda$computeSize$1()Ljava/lang/String;

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

    .line 70
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFF)V

    .line 57
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

    iput v1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    .line 71
    iput p8, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    .line 72
    iput p9, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    .line 73
    iput p10, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    .line 74
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

    .line 83
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

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIFFFFIIF)V

    .line 94
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

    .line 423
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->id()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 425
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 426
    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 427
    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 428
    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    .line 429
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 8
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 459
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 460
    const-string v1, "Column layout implementation, positioning components one after the other vertically.\n\nIt supports weight and horizontal/vertical positioning."

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 464
    const/16 v1, 0x64

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->examplesDimension(II)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 465
    const-string v1, "Top"

    const-string v2, "layout-ColumnLayout-start-top.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 466
    const-string v1, "Center"

    const-string v2, "layout-ColumnLayout-start-center.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 467
    const-string v1, "Bottom"

    const-string v2, "layout-ColumnLayout-start-bottom.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 468
    const-string v1, "SpaceEvenly"

    const-string v2, "layout-ColumnLayout-start-space-evenly.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 469
    const-string v1, "SpaceAround"

    const-string v2, "layout-ColumnLayout-start-space-around.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 470
    const-string v1, "SpaceBetween"

    const-string v2, "layout-ColumnLayout-start-space-between.png"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->exampleImage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 471
    const/4 v1, 0x0

    const-string v2, "COMPONENT_ID"

    const-string/jumbo v3, "unique id for this component"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 472
    const-string v2, "ANIMATION_ID"

    const-string v3, "id used to match components, for animation purposes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 476
    const-string v2, "HORIZONTAL_POSITIONING"

    const-string v3, "horizontal positioning value"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 477
    const-string v2, "START"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 478
    const-string v2, "CENTER"

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 479
    const-string v5, "END"

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 480
    const-string v5, "VERTICAL_POSITIONING"

    const-string/jumbo v6, "vertical positioning value"

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 481
    const-string v1, "TOP"

    const/4 v5, 0x4

    invoke-virtual {v0, v1, v5}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 482
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 483
    const-string v1, "BOTTOM"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 484
    const-string v1, "SPACE_BETWEEN"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 485
    const-string v1, "SPACE_EVENLY"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 486
    const-string v1, "SPACE_AROUND"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->possibleValues(Ljava/lang/String;I)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 487
    const-string v1, "SPACED_BY"

    const-string v2, "Horizontal spacing between components"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 488
    return-void
.end method

.method private blacklist getPositioningString(I)Ljava/lang/String;
    .registers 3
    .param p1, "pos"    # I

    .line 510
    packed-switch p1, :pswitch_data_1e

    .line 528
    const-string v0, "NONE"

    return-object v0

    .line 526
    :pswitch_6
    const-string v0, "SPACE_AROUND"

    return-object v0

    .line 524
    :pswitch_9
    const-string v0, "SPACE_EVENLY"

    return-object v0

    .line 522
    :pswitch_c
    const-string v0, "SPACE_BETWEEN"

    return-object v0

    .line 520
    :pswitch_f
    const-string v0, "BOTTOM"

    return-object v0

    .line 518
    :pswitch_12
    const-string v0, "TOP"

    return-object v0

    .line 516
    :pswitch_15
    const-string v0, "END"

    return-object v0

    .line 514
    :pswitch_18
    const-string v0, "CENTER"

    return-object v0

    .line 512
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

    .line 403
    const/16 v0, 0xcc

    return v0
.end method

.method private synthetic blacklist lambda$computeSize$1()Ljava/lang/String;
    .registers 3

    .line 163
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

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

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

    .line 136
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

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

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

    .line 190
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

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    .line 195
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    return-object v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 394
    const-string v0, "ColumnLayout"

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

    .line 438
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 439
    .local v2, "componentId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 440
    .local v3, "animationId":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 441
    .local v4, "horizontalPositioning":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 442
    .local v5, "verticalPositioning":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v6

    .line 443
    .local v6, "spacedBy":F
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;IIIIF)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
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

    .line 163
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)V

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 164
    move v0, p5

    .line 165
    .local v0, "mh":F
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v0

    .end local v0    # "mh":F
    .local v7, "mh":F
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 166
    .local v2, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p6

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local p2    # "minWidth":F
    .end local p3    # "maxWidth":F
    .end local p4    # "minHeight":F
    .end local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local v3, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .local v4, "minWidth":F
    .local v5, "maxWidth":F
    .local v6, "minHeight":F
    .local v8, "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 167
    invoke-virtual {v8, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object p1

    .line 168
    .local p1, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result p2

    if-nez p2, :cond_34

    .line 169
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result p2

    sub-float/2addr v7, p2

    .line 171
    .end local v2    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local p1    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :cond_34
    move-object p1, v3

    move p2, v4

    move p3, v5

    move p4, v6

    move-object p6, v8

    goto :goto_10

    .line 172
    .end local v3    # "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .end local v4    # "minWidth":F
    .end local v5    # "maxWidth":F
    .end local v6    # "minHeight":F
    .end local v8    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    .local p1, "context":Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .restart local p2    # "minWidth":F
    .restart local p3    # "maxWidth":F
    .restart local p4    # "minHeight":F
    .restart local p6    # "measure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;
    :cond_3a
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 173
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

    .line 136
    move-object/from16 v0, p7

    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;)V

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "visibleChildrens":I
    move v2, p3

    .line 139
    .local v2, "currentMaxHeight":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v9, v2

    .end local v2    # "currentMaxHeight":F
    .local v9, "currentMaxHeight":F
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 140
    .local v4, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    move v7, p2

    move-object/from16 v10, p6

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 141
    invoke-virtual {v10, v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 142
    .local v2, "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v5

    if-nez v5, :cond_55

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getWidth()F

    move-result v5

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setWidth(F)V

    .line 144
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v5

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 146
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    sub-float/2addr v9, v5

    .line 148
    .end local v2    # "m":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v4    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    :cond_55
    goto :goto_13

    .line 149
    :cond_56
    move-object/from16 v10, p6

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 150
    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/Size;->setHeight(F)V

    .line 152
    :cond_6e
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 153
    return-void
.end method

.method public blacklist getLocationInWindow([FZ)V
    .registers 7
    .param p1, "value"    # [F
    .param p2, "forSelf"    # Z

    .line 378
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->getLocationInWindow([FZ)V

    .line 380
    if-nez p2, :cond_19

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    instance-of v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    if-eqz v0, :cond_19

    .line 381
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalScrollDelegate:Lcom/android/internal/widget/remotecompose/core/operations/layout/ScrollDelegate;

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;

    .line 383
    .local v0, "smo":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    const/4 v1, 0x1

    aget v2, p1, v1

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;->getScrollY()F

    move-result v3

    add-float/2addr v2, v3

    aput v2, p1, v1

    .line 385
    .end local v0    # "smo":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ScrollModifierOperation;
    :cond_19
    return-void
.end method

.method protected blacklist getSerializedName()Ljava/lang/String;
    .registers 2

    .line 119
    const-string v0, "COLUMN"

    return-object v0
.end method

.method public blacklist internalLayoutMeasure(Lcom/android/internal/widget/remotecompose/core/PaintContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V
    .registers 25
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/PaintContext;
    .param p2, "measure"    # Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;

    .line 187
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    invoke-virtual {v7, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v8

    .line 188
    .local v8, "selfMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    new-instance v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;)V

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->s(Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/StringValueSupplier;)V

    .line 201
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 202
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 203
    return-void

    .line 205
    :cond_1c
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingLeft:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingRight:F

    sub-float/2addr v1, v2

    .line 206
    .local v1, "selfWidth":F
    invoke-virtual {v8}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v2

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingTop:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingBottom:F

    sub-float/2addr v2, v3

    .line 207
    .local v2, "selfHeight":F
    const/4 v3, 0x0

    .line 208
    .local v3, "childrenWidth":F
    const/4 v4, 0x0

    .line 210
    .local v4, "childrenHeight":F
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasHorizontalScroll()Z

    move-result v5

    if-eqz v5, :cond_49

    .line 211
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 212
    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getHorizontalScrollDimension()F

    move-result v5

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingLeft:F

    sub-float/2addr v5, v6

    iget v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingRight:F

    sub-float v1, v5, v6

    move v9, v1

    goto :goto_4a

    .line 210
    :cond_49
    move v9, v1

    .line 216
    .end local v1    # "selfWidth":F
    .local v9, "selfWidth":F
    :goto_4a
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->hasVerticalScroll()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 217
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentModifiers:Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    .line 218
    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getVerticalScrollDimension()F

    move-result v1

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingTop:F

    sub-float/2addr v1, v5

    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mPaddingBottom:F

    sub-float v2, v1, v5

    move v10, v2

    goto :goto_62

    .line 216
    :cond_61
    move v10, v2

    .line 220
    .end local v2    # "selfHeight":F
    .local v10, "selfHeight":F
    :goto_62
    const/4 v1, 0x1

    .line 221
    .local v1, "checkWeights":Z
    :goto_63
    if-eqz v1, :cond_149

    .line 222
    const/4 v11, 0x0

    .line 223
    .end local v1    # "checkWeights":Z
    .local v11, "checkWeights":Z
    const/4 v12, 0x0

    .line 224
    .end local v3    # "childrenWidth":F
    .local v12, "childrenWidth":F
    const/4 v1, 0x0

    .line 225
    .end local v4    # "childrenHeight":F
    .local v1, "childrenHeight":F
    const/4 v2, 0x0

    .line 226
    .local v2, "hasWeights":Z
    const/4 v3, 0x0

    .line 227
    .local v3, "totalWeights":F
    iget-object v4, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v15, v1

    move v13, v2

    move v14, v3

    .end local v1    # "childrenHeight":F
    .end local v2    # "hasWeights":Z
    .end local v3    # "totalWeights":F
    .local v13, "hasWeights":Z
    .local v14, "totalWeights":F
    .local v15, "childrenHeight":F
    :goto_73
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 228
    .local v1, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 229
    .local v2, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 230
    goto :goto_73

    .line 232
    :cond_8a
    instance-of v3, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v3, :cond_aa

    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 233
    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 234
    const/4 v3, 0x1

    .line 235
    .end local v13    # "hasWeights":Z
    .local v3, "hasWeights":Z
    move-object v5, v1

    check-cast v5, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getValue()F

    move-result v5

    add-float/2addr v14, v5

    move v13, v3

    goto :goto_af

    .line 237
    .end local v3    # "hasWeights":Z
    .restart local v13    # "hasWeights":Z
    :cond_aa
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v3

    add-float/2addr v15, v3

    .line 239
    .end local v1    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v2    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    :goto_af
    goto :goto_73

    .line 240
    :cond_b0
    if-eqz v13, :cond_13a

    .line 241
    sub-float v16, v10, v15

    .line 242
    .local v16, "availableSpace":F
    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_ba
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 243
    .restart local v1    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz v2, :cond_139

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 244
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->hasWeight()Z

    move-result v2

    if-eqz v2, :cond_139

    .line 245
    invoke-virtual {v7, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v2

    .line 246
    .restart local v2    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 247
    goto :goto_ba

    .line 249
    :cond_e2
    move-object v3, v1

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getValue()F

    move-result v18

    .line 250
    .local v18, "weight":F
    mul-float v3, v18, v16

    div-float/2addr v3, v14

    .line 251
    .local v3, "childHeight":F
    move-object v4, v1

    check-cast v4, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    .line 252
    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getHeightModifier()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightModifierOperation;->getHeightIn()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;

    move-result-object v19

    .line 253
    .local v19, "heightInConstraints":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    if-eqz v19, :cond_117

    .line 254
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMin()F

    move-result v4

    .line 255
    .local v4, "min":F
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;->getMax()F

    move-result v5

    .line 256
    .local v5, "max":F
    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v20, v4, v6

    if-eqz v20, :cond_10f

    .line 257
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 259
    :cond_10f
    cmpl-float v6, v5, v6

    if-eqz v6, :cond_117

    .line 260
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 263
    .end local v4    # "min":F
    .end local v5    # "max":F
    :cond_117
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setH(F)V

    .line 264
    nop

    .line 266
    move v4, v3

    .end local v3    # "childHeight":F
    .local v4, "childHeight":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v3

    .line 267
    move v5, v4

    .end local v4    # "childHeight":F
    .local v5, "childHeight":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v4

    .line 268
    move v6, v5

    .end local v5    # "childHeight":F
    .local v6, "childHeight":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v5

    .line 269
    move/from16 v20, v6

    .end local v6    # "childHeight":F
    .local v20, "childHeight":F
    invoke-virtual {v2}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v6

    .line 264
    move/from16 v21, v20

    move-object/from16 v20, v2

    move-object/from16 v2, p1

    .end local v2    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .local v20, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .local v21, "childHeight":F
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->measure(Lcom/android/internal/widget/remotecompose/core/PaintContext;FFFFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)V

    .line 272
    .end local v1    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v18    # "weight":F
    .end local v19    # "heightInConstraints":Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/HeightInModifierOperation;
    .end local v20    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v21    # "childHeight":F
    :cond_139
    goto :goto_ba

    .line 275
    .end local v16    # "availableSpace":F
    :cond_13a
    invoke-virtual {v0, v9, v10, v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->applyVisibility(FFLcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;)Z

    move-result v1

    if-eqz v1, :cond_144

    if-eqz v13, :cond_144

    .line 276
    const/4 v1, 0x1

    .end local v11    # "checkWeights":Z
    .local v1, "checkWeights":Z
    goto :goto_145

    .line 278
    .end local v1    # "checkWeights":Z
    .end local v13    # "hasWeights":Z
    .end local v14    # "totalWeights":F
    .restart local v11    # "checkWeights":Z
    :cond_144
    move v1, v11

    .end local v11    # "checkWeights":Z
    .restart local v1    # "checkWeights":Z
    :goto_145
    move v3, v12

    move v4, v15

    goto/16 :goto_63

    .line 280
    .end local v12    # "childrenWidth":F
    .end local v15    # "childrenHeight":F
    .local v3, "childrenWidth":F
    .local v4, "childrenHeight":F
    :cond_149
    const/4 v2, 0x0

    .line 281
    .end local v4    # "childrenHeight":F
    .local v2, "childrenHeight":F
    const/4 v4, 0x0

    .line 282
    .local v4, "visibleChildrens":I
    iget-object v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_151
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_179

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 283
    .local v6, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v11

    .line 284
    .local v11, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v12

    if-eqz v12, :cond_168

    .line 285
    goto :goto_151

    .line 287
    :cond_168
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v12

    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 288
    invoke-virtual {v11}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v12

    add-float/2addr v2, v12

    .line 289
    nop

    .end local v6    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v11    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    add-int/lit8 v4, v4, 0x1

    .line 290
    goto :goto_151

    .line 291
    :cond_179
    iget v5, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    add-int/lit8 v6, v4, -0x1

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v2, v5

    .line 293
    const/4 v5, 0x0

    .line 294
    .local v5, "tx":F
    const/4 v6, 0x0

    .line 296
    .local v6, "ty":F
    const/4 v11, 0x0

    .line 297
    .local v11, "verticalGap":F
    const/4 v12, 0x0

    .line 298
    .local v12, "total":F
    iget v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    const/high16 v14, 0x40000000    # 2.0f

    packed-switch v13, :pswitch_data_290

    :pswitch_18b
    goto/16 :goto_225

    .line 335
    :pswitch_18d
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_193
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1b1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 336
    .local v15, "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v16

    .line 337
    .local v16, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v17

    if-eqz v17, :cond_1aa

    .line 338
    goto :goto_193

    .line 340
    :cond_1aa
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v17

    add-float v12, v12, v17

    .line 341
    .end local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    goto :goto_193

    .line 342
    :cond_1b1
    sub-float v13, v10, v12

    int-to-float v15, v4

    div-float v11, v13, v15

    .line 343
    div-float v6, v11, v14

    goto/16 :goto_225

    .line 324
    :pswitch_1ba
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1c0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1de

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 325
    .restart local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v16

    .line 326
    .restart local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v17

    if-eqz v17, :cond_1d7

    .line 327
    goto :goto_1c0

    .line 329
    :cond_1d7
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v17

    add-float v12, v12, v17

    .line 330
    .end local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    goto :goto_1c0

    .line 331
    :cond_1de
    sub-float v13, v10, v12

    add-int/lit8 v15, v4, 0x1

    int-to-float v15, v15

    div-float v11, v13, v15

    .line 332
    move v6, v11

    .line 333
    goto :goto_225

    .line 309
    :pswitch_1e7
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1ed
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_20b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 310
    .restart local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v7, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v16

    .line 311
    .restart local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v17

    if-eqz v17, :cond_204

    .line 312
    goto :goto_1ed

    .line 314
    :cond_204
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v17

    add-float v12, v12, v17

    .line 315
    .end local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .end local v16    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    goto :goto_1ed

    .line 316
    :cond_20b
    const/4 v13, 0x1

    if-le v4, v13, :cond_216

    .line 317
    sub-float v13, v10, v12

    add-int/lit8 v15, v4, -0x1

    int-to-float v15, v15

    div-float v11, v13, v15

    goto :goto_225

    .line 320
    :cond_216
    sub-float v13, v10, v2

    div-float v6, v13, v14

    .line 322
    goto :goto_225

    .line 306
    :pswitch_21b
    sub-float v6, v10, v2

    .line 307
    goto :goto_225

    .line 300
    :pswitch_21e
    const/4 v6, 0x0

    .line 301
    goto :goto_225

    .line 303
    :pswitch_220
    sub-float v13, v10, v2

    div-float v6, v13, v14

    .line 304
    nop

    .line 347
    :goto_225
    iget-object v13, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_22b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_28c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 348
    .restart local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    move/from16 v16, v14

    invoke-virtual {v7, v15}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/MeasurePass;->get(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;

    move-result-object v14

    .line 349
    .local v14, "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    move/from16 v17, v1

    .end local v1    # "checkWeights":Z
    .local v17, "checkWeights":Z
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    packed-switch v1, :pswitch_data_2a2

    goto :goto_259

    .line 357
    :pswitch_245
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    sub-float v1, v9, v1

    move v5, v1

    .end local v5    # "tx":F
    .local v1, "tx":F
    goto :goto_259

    .line 354
    .end local v1    # "tx":F
    .restart local v5    # "tx":F
    :pswitch_24d
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getW()F

    move-result v1

    sub-float v1, v9, v1

    div-float v1, v1, v16

    .line 355
    .end local v5    # "tx":F
    .restart local v1    # "tx":F
    move v5, v1

    goto :goto_259

    .line 351
    .end local v1    # "tx":F
    .restart local v5    # "tx":F
    :pswitch_257
    const/4 v1, 0x0

    .line 352
    .end local v5    # "tx":F
    .restart local v1    # "tx":F
    move v5, v1

    .line 360
    .end local v1    # "tx":F
    .restart local v5    # "tx":F
    :goto_259
    invoke-virtual {v14, v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setX(F)V

    .line 361
    invoke-virtual {v14, v6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->setY(F)V

    .line 362
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->isGone()Z

    move-result v1

    if-eqz v1, :cond_26a

    .line 363
    move/from16 v14, v16

    move/from16 v1, v17

    goto :goto_22b

    .line 365
    :cond_26a
    invoke-virtual {v14}, Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;->getH()F

    move-result v1

    add-float/2addr v6, v1

    .line 366
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    move/from16 v18, v2

    .end local v2    # "childrenHeight":F
    .local v18, "childrenHeight":F
    const/4 v2, 0x6

    if-eq v1, v2, :cond_281

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_281

    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_282

    .line 369
    :cond_281
    add-float/2addr v6, v11

    .line 371
    :cond_282
    iget v1, v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    add-float/2addr v6, v1

    .line 372
    .end local v14    # "childMeasure":Lcom/android/internal/widget/remotecompose/core/operations/layout/measure/ComponentMeasure;
    .end local v15    # "child":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    move/from16 v14, v16

    move/from16 v1, v17

    move/from16 v2, v18

    goto :goto_22b

    .line 373
    .end local v17    # "checkWeights":Z
    .end local v18    # "childrenHeight":F
    .local v1, "checkWeights":Z
    .restart local v2    # "childrenHeight":F
    :cond_28c
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/utils/DebugLog;->e()V

    .line 374
    return-void

    :pswitch_data_290
    .packed-switch 0x2
        :pswitch_220
        :pswitch_18b
        :pswitch_21e
        :pswitch_21b
        :pswitch_1e7
        :pswitch_1ba
        :pswitch_18d
    .end packed-switch

    :pswitch_data_2a2
    .packed-switch 0x1
        :pswitch_257
        :pswitch_24d
        :pswitch_245
    .end packed-switch
.end method

.method public blacklist isInVerticalFill()Z
    .registers 2

    .line 124
    invoke-super {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->isInVerticalFill()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->childrenHaveVerticalWeights()Z

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

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->computeModifierDefinedHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v0

    .line 178
    .local v0, "height":F
    const/4 v1, 0x0

    .line 179
    .local v1, "componentHeights":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mChildrenComponents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    .line 180
    .local v3, "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    invoke-virtual {v3, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->minIntrinsicHeight(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)F

    move-result v4

    add-float/2addr v1, v4

    .line 181
    .end local v3    # "c":Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    goto :goto_b

    .line 182
    :cond_1d
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 4
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 503
    invoke-super {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/LayoutManager;->serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V

    .line 504
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "verticalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 505
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->getPositioningString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "horizontalPositioning"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 506
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "spacedBy"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 507
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->getSerializedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mAnimationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 492
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mComponentId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mAnimationId:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mHorizontalPositioning:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mVerticalPositioning:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->mSpacedBy:F

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/layout/managers/ColumnLayout;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIIIF)V

    .line 499
    return-void
.end method
