.class public final Landroid/view/inputmethod/CursorAnchorInfo;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/CursorAnchorInfo$1;,
        Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/CursorAnchorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_HAS_INVISIBLE_REGION:I = 0x2

.field public static final FLAG_HAS_VISIBLE_REGION:I = 0x1

.field public static final FLAG_IS_RTL:I = 0x4


# instance fields
.field private final mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

.field private final mComposingText:Ljava/lang/CharSequence;

.field private final mComposingTextStart:I

.field private final mHashCode:I

.field private final mInsertionMarkerBaseline:F

.field private final mInsertionMarkerBottom:F

.field private final mInsertionMarkerFlags:I

.field private final mInsertionMarkerHorizontal:F

.field private final mInsertionMarkerTop:F

.field private final mMatrixValues:[F

.field private final mSelectionEnd:I

.field private final mSelectionStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 563
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$1;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$1;-><init>()V

    #@5
    .line 562
    sput-object v0, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    #@9
    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@f
    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@15
    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v0

    #@19
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@1b
    .line 136
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@1d
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/CharSequence;

    #@23
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@25
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@2b
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@31
    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@37
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@3d
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@40
    move-result v0

    #@41
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@43
    .line 142
    const-class v0, Landroid/view/inputmethod/SparseRectFArray;

    #@45
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Landroid/view/inputmethod/SparseRectFArray;

    #@4f
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@51
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    #@54
    move-result-object v0

    #@55
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@57
    .line 131
    return-void
.end method

.method private constructor <init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/16 v4, 0x9

    #@3
    const/4 v3, 0x0

    #@4
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 416
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get11(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    #@a
    move-result v2

    #@b
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@d
    .line 417
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get10(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    #@10
    move-result v2

    #@11
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@13
    .line 418
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get2(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    #@16
    move-result v2

    #@17
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@19
    .line 419
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get1(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@1f
    .line 420
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get5(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    #@22
    move-result v2

    #@23
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@25
    .line 421
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get6(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    #@28
    move-result v2

    #@29
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@2b
    .line 422
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get7(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    #@2e
    move-result v2

    #@2f
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@31
    .line 423
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get3(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    #@34
    move-result v2

    #@35
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@37
    .line 424
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get4(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    #@3a
    move-result v2

    #@3b
    iput v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@3d
    .line 425
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get0(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@40
    move-result-object v2

    #@41
    if-eqz v2, :cond_0

    #@43
    .line 426
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get0(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->build()Landroid/view/inputmethod/SparseRectFArray;

    #@4a
    move-result-object v1

    #@4b
    .line 425
    :cond_0
    iput-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@4d
    .line 427
    new-array v1, v4, [F

    #@4f
    iput-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@51
    .line 428
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get8(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_1

    #@57
    .line 429
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get9(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)[F

    #@5a
    move-result-object v1

    #@5b
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@5d
    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@60
    .line 435
    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@62
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@65
    move-result v0

    #@66
    .line 436
    .local v0, "hash":I
    mul-int/lit8 v0, v0, 0x1f

    #@68
    .line 437
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@6a
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    #@6d
    move-result v1

    #@6e
    add-int/2addr v0, v1

    #@6f
    .line 438
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    #@71
    .line 415
    return-void

    #@72
    .line 431
    .end local v0    # "hash":I
    :cond_1
    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    #@74
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@76
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    #@79
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "builder"    # Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/inputmethod/CursorAnchorInfo;-><init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)V

    #@3
    return-void
.end method

.method private static areSameFloatImpl(FF)Z
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 178
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 179
    return v0

    #@e
    .line 181
    :cond_0
    cmpl-float v1, p0, p1

    #@10
    if-nez v1, :cond_1

    #@12
    :goto_0
    return v0

    #@13
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 577
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 186
    if-nez p1, :cond_0

    #@4
    .line 187
    return v4

    #@5
    .line 189
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 190
    return v5

    #@8
    .line 192
    :cond_1
    instance-of v2, p1, Landroid/view/inputmethod/CursorAnchorInfo;

    #@a
    if-nez v2, :cond_2

    #@c
    .line 193
    return v4

    #@d
    :cond_2
    move-object v1, p1

    #@e
    .line 195
    check-cast v1, Landroid/view/inputmethod/CursorAnchorInfo;

    #@10
    .line 196
    .local v1, "that":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    #@13
    move-result v2

    #@14
    invoke-virtual {v1}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    #@17
    move-result v3

    #@18
    if-eq v2, v3, :cond_3

    #@1a
    .line 197
    return v4

    #@1b
    .line 202
    :cond_3
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@1d
    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@1f
    if-ne v2, v3, :cond_4

    #@21
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@23
    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@25
    if-eq v2, v3, :cond_5

    #@27
    .line 203
    :cond_4
    return v4

    #@28
    .line 206
    :cond_5
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@2a
    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@2c
    if-ne v2, v3, :cond_6

    #@2e
    .line 207
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@30
    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@32
    invoke-static {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_6

    #@38
    .line 208
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@3a
    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@3c
    invoke-static {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_6

    #@42
    .line 209
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@44
    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@46
    invoke-static {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_6

    #@4c
    .line 210
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@4e
    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@50
    invoke-static {v2, v3}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_6

    #@56
    .line 214
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@58
    iget-object v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@5a
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5d
    move-result v2

    #@5e
    if-nez v2, :cond_7

    #@60
    .line 215
    return v4

    #@61
    .line 211
    :cond_6
    return v4

    #@62
    .line 220
    :cond_7
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@64
    iget v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@66
    if-ne v2, v3, :cond_8

    #@68
    .line 221
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@6a
    iget-object v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@6c
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6f
    move-result v2

    #@70
    if-eqz v2, :cond_8

    #@72
    .line 227
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@74
    array-length v2, v2

    #@75
    iget-object v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@77
    array-length v3, v3

    #@78
    if-eq v2, v3, :cond_9

    #@7a
    .line 228
    return v4

    #@7b
    .line 222
    :cond_8
    return v4

    #@7c
    .line 230
    :cond_9
    const/4 v0, 0x0

    #@7d
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@7f
    array-length v2, v2

    #@80
    if-ge v0, v2, :cond_b

    #@82
    .line 231
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@84
    aget v2, v2, v0

    #@86
    iget-object v3, v1, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@88
    aget v3, v3, v0

    #@8a
    cmpl-float v2, v2, v3

    #@8c
    if-eqz v2, :cond_a

    #@8e
    .line 232
    return v4

    #@8f
    .line 230
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@91
    goto :goto_0

    #@92
    .line 235
    :cond_b
    return v5
.end method

.method public getCharacterBounds(I)Landroid/graphics/RectF;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 530
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 531
    return-object v1

    #@6
    .line 533
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@8
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/SparseRectFArray;->get(I)Landroid/graphics/RectF;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getCharacterBoundsFlags(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 542
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 543
    return v1

    #@6
    .line 545
    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@8
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/SparseRectFArray;->getFlags(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getComposingText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 470
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getComposingTextStart()I
    .locals 1

    #@0
    .prologue
    .line 462
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@2
    return v0
.end method

.method public getInsertionMarkerBaseline()F
    .locals 1

    #@0
    .prologue
    .line 510
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@2
    return v0
.end method

.method public getInsertionMarkerBottom()F
    .locals 1

    #@0
    .prologue
    .line 520
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@2
    return v0
.end method

.method public getInsertionMarkerFlags()I
    .locals 1

    #@0
    .prologue
    .line 478
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@2
    return v0
.end method

.method public getInsertionMarkerHorizontal()F
    .locals 1

    #@0
    .prologue
    .line 490
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@2
    return v0
.end method

.method public getInsertionMarkerTop()F
    .locals 1

    #@0
    .prologue
    .line 500
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@2
    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 2

    #@0
    .prologue
    .line 554
    new-instance v0, Landroid/graphics/Matrix;

    #@2
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@5
    .line 555
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@7
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    #@a
    .line 556
    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    #@0
    .prologue
    .line 454
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@2
    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    #@0
    .prologue
    .line 446
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 170
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "CursorAnchorInfo{mHashCode="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 241
    const-string/jumbo v1, " mSelection="

    #@15
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 241
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@1b
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 241
    const-string/jumbo v1, ","

    #@22
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 241
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@28
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 242
    const-string/jumbo v1, " mComposingTextStart="

    #@2f
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 242
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@35
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 243
    const-string/jumbo v1, " mComposingText="

    #@3c
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 243
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@42
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 244
    const-string/jumbo v1, " mInsertionMarkerFlags="

    #@4d
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 244
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@53
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 245
    const-string/jumbo v1, " mInsertionMarkerHorizontal="

    #@5a
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 245
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@60
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 246
    const-string/jumbo v1, " mInsertionMarkerTop="

    #@67
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    .line 246
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@6d
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    .line 247
    const-string/jumbo v1, " mInsertionMarkerBaseline="

    #@74
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    .line 247
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@7a
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    .line 248
    const-string/jumbo v1, " mInsertionMarkerBottom="

    #@81
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    .line 248
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@87
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 249
    const-string/jumbo v1, " mCharacterBoundsArray="

    #@8e
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    .line 249
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@94
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    .line 250
    const-string/jumbo v1, " mMatrix="

    #@9f
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    .line 250
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@a5
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v0

    #@ad
    .line 251
    const-string/jumbo v1, "}"

    #@b0
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v0

    #@b4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v0

    #@b8
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 154
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mHashCode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 155
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 156
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 157
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 158
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@16
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@19
    .line 159
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 160
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@23
    .line 161
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@28
    .line 162
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@2d
    .line 163
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@2f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@32
    .line 164
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@34
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@37
    .line 165
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrixValues:[F

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@3c
    .line 153
    return-void
.end method
