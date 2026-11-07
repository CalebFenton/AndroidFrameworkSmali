.class public final Landroid/view/inputmethod/CursorAnchorInfo;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/CursorAnchorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_HAS_INVISIBLE_REGION:I = 0x2

.field public static final whitelist FLAG_HAS_VISIBLE_REGION:I = 0x1

.field public static final whitelist FLAG_IS_RTL:I = 0x4


# instance fields
.field private final greylist-max-o mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

.field private final greylist-max-o mComposingText:Ljava/lang/CharSequence;

.field private final greylist-max-o mComposingTextStart:I

.field private final blacklist mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

.field private final greylist-max-o mHashCode:I

.field private final greylist-max-o mInsertionMarkerBaseline:F

.field private final greylist-max-o mInsertionMarkerBottom:F

.field private final greylist-max-o mInsertionMarkerFlags:I

.field private final greylist-max-o mInsertionMarkerHorizontal:F

.field private final greylist-max-o mInsertionMarkerTop:F

.field private final greylist-max-o mMatrixValues:[F

.field private final greylist-max-o mSelectionEnd:I

.field private final greylist-max-o mSelectionStart:I

.field private final blacklist mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

.field private final blacklist mVisibleLineBounds:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreate(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;
    .registers 1

    invoke-static {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->create(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 799
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIILjava/lang/CharSequence;IFFFFLandroid/view/inputmethod/SparseRectFArray;Landroid/view/inputmethod/EditorBoundsInfo;[F[FLandroid/view/inputmethod/TextAppearanceInfo;)V
    .registers 31
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "composingTextStart"    # I
    .param p4, "composingText"    # Ljava/lang/CharSequence;
    .param p5, "insertionMarkerFlags"    # I
    .param p6, "insertionMarkerHorizontal"    # F
    .param p7, "insertionMarkerTop"    # F
    .param p8, "insertionMarkerBaseline"    # F
    .param p9, "insertionMarkerBottom"    # F
    .param p10, "characterBoundsArray"    # Landroid/view/inputmethod/SparseRectFArray;
    .param p11, "editorBoundsInfo"    # Landroid/view/inputmethod/EditorBoundsInfo;
    .param p12, "matrixValues"    # [F
    .param p13, "visibleLineBounds"    # [F
    .param p14, "textAppearanceInfo"    # Landroid/view/inputmethod/TextAppearanceInfo;

    .line 567
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 568
    move/from16 v1, p1

    iput v1, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    .line 569
    move/from16 v2, p2

    iput v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    .line 570
    move/from16 v3, p3

    iput v3, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    .line 571
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    .line 572
    move/from16 v5, p5

    iput v5, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    .line 573
    move/from16 v6, p6

    iput v6, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    .line 574
    move/from16 v7, p7

    iput v7, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    .line 575
    move/from16 v8, p8

    iput v8, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    .line 576
    move/from16 v9, p9

    iput v9, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    .line 577
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    .line 578
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    .line 579
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    .line 580
    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    .line 581
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    .line 584
    iget-object v15, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v15}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v15

    .line 585
    .local v15, "hashCode":I
    mul-int/lit8 v15, v15, 0x1f

    .line 586
    iget-object v1, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v1

    add-int/2addr v15, v1

    .line 587
    iput v15, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    .line 588
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    .line 162
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    .line 168
    sget-object v0, Landroid/view/inputmethod/SparseRectFArray;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/SparseRectFArray;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    .line 169
    sget-object v0, Landroid/view/inputmethod/EditorBoundsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/EditorBoundsInfo;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    .line 172
    sget-object v0, Landroid/view/inputmethod/TextAppearanceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/TextAppearanceInfo;

    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    .line 173
    return-void
.end method

.method private static greylist-max-o areSameFloatImpl(FF)Z
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 210
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 211
    return v1

    .line 213
    :cond_e
    cmpl-float v0, p0, p1

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private static blacklist computeMatrixValues(Landroid/graphics/Matrix;Landroid/view/inputmethod/CursorAnchorInfo;)[F
    .registers 4
    .param p0, "parentMatrix"    # Landroid/graphics/Matrix;
    .param p1, "info"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .line 621
    invoke-virtual {p0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 622
    iget-object v0, p1, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    return-object v0

    .line 625
    :cond_9
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 626
    .local v0, "newMatrix":Landroid/graphics/Matrix;
    iget-object v1, p1, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 627
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 629
    const/16 v1, 0x9

    new-array v1, v1, [F

    .line 630
    .local v1, "matrixValues":[F
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 631
    return-object v1
.end method

.method private static blacklist create(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/CursorAnchorInfo;
    .registers 17
    .param p0, "builder"    # Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 541
    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmCharacterBoundsArrayBuilder(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 542
    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmCharacterBoundsArrayBuilder(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->build()Landroid/view/inputmethod/SparseRectFArray;

    move-result-object v0

    goto :goto_10

    .line 543
    :cond_f
    const/4 v0, 0x0

    :goto_10
    move-object v11, v0

    .line 544
    .local v11, "characterBoundsArray":Landroid/view/inputmethod/SparseRectFArray;
    const/16 v0, 0x9

    new-array v13, v0, [F

    .line 545
    .local v13, "matrixValues":[F
    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmMatrixInitialized(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 546
    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmMatrixValues(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v13, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    .line 548
    :cond_24
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v0, v13}, Landroid/graphics/Matrix;->getValues([F)V

    .line 551
    :goto_29
    new-instance v1, Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmSelectionStart(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v2

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmSelectionEnd(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v3

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmComposingTextStart(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v4

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmComposingText(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmInsertionMarkerFlags(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v6

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmInsertionMarkerHorizontal(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v7

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmInsertionMarkerTop(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v8

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmInsertionMarkerBaseline(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v9

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmInsertionMarkerBottom(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    move-result v10

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmEditorBoundsInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/EditorBoundsInfo;

    move-result-object v12

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmVisibleLineBounds(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F

    move-result-object v0

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmVisibleLineBoundsCount(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    move-result v14

    .line 556
    invoke-static {v0, v14}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v14

    invoke-static/range {p0 .. p0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-$$Nest$fgetmTextAppearanceInfo(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/TextAppearanceInfo;

    move-result-object v15

    invoke-direct/range {v1 .. v15}, Landroid/view/inputmethod/CursorAnchorInfo;-><init>(IIILjava/lang/CharSequence;IFFFFLandroid/view/inputmethod/SparseRectFArray;Landroid/view/inputmethod/EditorBoundsInfo;[F[FLandroid/view/inputmethod/TextAppearanceInfo;)V

    .line 551
    return-object v1
.end method

.method public static blacklist createForAdditionalParentMatrix(Landroid/view/inputmethod/CursorAnchorInfo;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;
    .registers 18
    .param p0, "original"    # Landroid/view/inputmethod/CursorAnchorInfo;
    .param p1, "parentMatrix"    # Landroid/graphics/Matrix;

    .line 602
    move-object/from16 v0, p0

    new-instance v1, Landroid/view/inputmethod/CursorAnchorInfo;

    iget v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    iget v3, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    iget v4, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    iget-object v5, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    iget v6, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    iget v7, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    iget v8, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    iget v9, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    iget v10, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    iget-object v11, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    iget-object v12, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    .line 607
    move-object/from16 v13, p1

    invoke-static {v13, v0}, Landroid/view/inputmethod/CursorAnchorInfo;->computeMatrixValues(Landroid/graphics/Matrix;Landroid/view/inputmethod/CursorAnchorInfo;)[F

    move-result-object v14

    move-object v13, v14

    iget-object v14, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    iget-object v15, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    invoke-direct/range {v1 .. v15}, Landroid/view/inputmethod/CursorAnchorInfo;-><init>(IIILjava/lang/CharSequence;IFFFFLandroid/view/inputmethod/SparseRectFArray;Landroid/view/inputmethod/EditorBoundsInfo;[F[FLandroid/view/inputmethod/TextAppearanceInfo;)V

    .line 602
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 218
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 219
    return v0

    .line 221
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 222
    return v1

    .line 224
    :cond_8
    instance-of v2, p1, Landroid/view/inputmethod/CursorAnchorInfo;

    if-nez v2, :cond_d

    .line 225
    return v0

    .line 227
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/view/inputmethod/CursorAnchorInfo;

    .line 228
    .local v2, "that":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_1b

    .line 229
    return v0

    .line 234
    :cond_1b
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    if-ne v3, v4, :cond_b7

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    if-eq v3, v4, :cond_29

    goto/16 :goto_b7

    .line 238
    :cond_29
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    if-ne v3, v4, :cond_b6

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    .line 239
    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-eqz v3, :cond_b6

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    .line 240
    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-eqz v3, :cond_b6

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    .line 241
    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-eqz v3, :cond_b6

    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    .line 242
    invoke-static {v3, v4}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    move-result v3

    if-nez v3, :cond_58

    goto :goto_b6

    .line 246
    :cond_58
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 247
    return v0

    .line 250
    :cond_63
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 251
    return v0

    .line 254
    :cond_6e
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_79

    .line 255
    return v0

    .line 260
    :cond_79
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    iget v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    if-ne v3, v4, :cond_b5

    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    .line 261
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    goto :goto_b5

    .line 267
    :cond_8a
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v3, v3

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v4, v4

    if-eq v3, v4, :cond_93

    .line 268
    return v0

    .line 270
    :cond_93
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_94
    iget-object v4, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    array-length v4, v4

    if-ge v3, v4, :cond_a9

    .line 271
    iget-object v4, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    aget v4, v4, v3

    iget-object v5, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    aget v5, v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_a6

    .line 272
    return v0

    .line 270
    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_94

    .line 276
    .end local v3    # "i":I
    :cond_a9
    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    iget-object v4, v2, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b4

    .line 277
    return v0

    .line 280
    :cond_b4
    return v1

    .line 262
    :cond_b5
    :goto_b5
    return v0

    .line 243
    :cond_b6
    :goto_b6
    return v0

    .line 235
    :cond_b7
    :goto_b7
    return v0
.end method

.method public whitelist getCharacterBounds(I)Landroid/graphics/RectF;
    .registers 3
    .param p1, "index"    # I

    .line 723
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    if-nez v0, :cond_6

    .line 724
    const/4 v0, 0x0

    return-object v0

    .line 726
    :cond_6
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/SparseRectFArray;->get(I)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCharacterBoundsFlags(I)I
    .registers 4
    .param p1, "index"    # I

    .line 735
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 736
    return v1

    .line 738
    :cond_6
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/SparseRectFArray;->getFlags(II)I

    move-result v0

    return v0
.end method

.method public whitelist getComposingText()Ljava/lang/CharSequence;
    .registers 2

    .line 663
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getComposingTextStart()I
    .registers 2

    .line 655
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    return v0
.end method

.method public whitelist getEditorBoundsInfo()Landroid/view/inputmethod/EditorBoundsInfo;
    .registers 2

    .line 772
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    return-object v0
.end method

.method public whitelist getInsertionMarkerBaseline()F
    .registers 2

    .line 703
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    return v0
.end method

.method public whitelist getInsertionMarkerBottom()F
    .registers 2

    .line 713
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    return v0
.end method

.method public whitelist getInsertionMarkerFlags()I
    .registers 2

    .line 671
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    return v0
.end method

.method public whitelist getInsertionMarkerHorizontal()F
    .registers 2

    .line 683
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    return v0
.end method

.method public whitelist getInsertionMarkerTop()F
    .registers 2

    .line 693
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    return v0
.end method

.method public whitelist getMatrix()Landroid/graphics/Matrix;
    .registers 3

    .line 791
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 792
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 793
    return-object v0
.end method

.method public whitelist getSelectionEnd()I
    .registers 2

    .line 647
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    return v0
.end method

.method public whitelist getSelectionStart()I
    .registers 2

    .line 639
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    return v0
.end method

.method public whitelist getTextAppearanceInfo()Landroid/view/inputmethod/TextAppearanceInfo;
    .registers 2

    .line 782
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    return-object v0
.end method

.method public whitelist getVisibleLineBounds()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 750
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    if-nez v0, :cond_9

    .line 751
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 753
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 754
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_14
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    array-length v2, v2

    if-ge v1, v2, :cond_3b

    .line 755
    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "index":I
    .local v4, "index":I
    aget v1, v3, v1

    iget-object v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "index":I
    .local v5, "index":I
    aget v3, v3, v4

    iget-object v4, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    aget v4, v4, v5

    iget-object v5, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    aget v5, v5, v6

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 760
    .local v2, "rectF":Landroid/graphics/RectF;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    .end local v2    # "rectF":Landroid/graphics/RectF;
    move v1, v7

    goto :goto_14

    .line 762
    .end local v7    # "index":I
    :cond_3b
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 202
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CursorAnchorInfo{mHashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSelection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mComposingTextStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mComposingText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsertionMarkerFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsertionMarkerHorizontal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsertionMarkerTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsertionMarkerBaseline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mInsertionMarkerBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCharacterBoundsArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mEditorBoundsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVisibleLineBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->getVisibleLineBounds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    .line 297
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTextAppearanceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 183
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 188
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 190
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 191
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 192
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 193
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 194
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mEditorBoundsInfo:Landroid/view/inputmethod/EditorBoundsInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 195
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 196
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mVisibleLineBounds:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 197
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mTextAppearanceInfo:Landroid/view/inputmethod/TextAppearanceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 198
    return-void
.end method
