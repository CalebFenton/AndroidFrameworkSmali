.class public final Landroid/view/inputmethod/CursorAnchorInfo;
.super Ljava/lang/Object;
.source "CursorAnchorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/CursorAnchorInfo$Builder;,
        Landroid/view/inputmethod/CursorAnchorInfo$1;
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

.field private final mInsertionMarkerBaseline:F

.field private final mInsertionMarkerBottom:F

.field private final mInsertionMarkerFlags:I

.field private final mInsertionMarkerHorizontal:F

.field private final mInsertionMarkerTop:F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mSelectionEnd:I

.field private final mSelectionStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 537
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$1;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$1;-><init>()V

    #@5
    .line 536
    sput-object v0, Landroid/view/inputmethod/CursorAnchorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@9
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@f
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@15
    .line 127
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@17
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/lang/CharSequence;

    #@1d
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@1f
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@25
    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@2b
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@2e
    move-result v0

    #@2f
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@31
    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@34
    move-result v0

    #@35
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@37
    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@3a
    move-result v0

    #@3b
    iput v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@3d
    .line 133
    const-class v0, Landroid/view/inputmethod/SparseRectFArray;

    #@3f
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@42
    move-result-object v0

    #@43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Landroid/view/inputmethod/SparseRectFArray;

    #@49
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@4b
    .line 134
    new-instance v0, Landroid/graphics/Matrix;

    #@4d
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@50
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrix:Landroid/graphics/Matrix;

    #@52
    .line 135
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrix:Landroid/graphics/Matrix;

    #@54
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    #@5b
    .line 123
    return-void
.end method

.method private constructor <init>(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 403
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get10(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@a
    .line 404
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get9(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@10
    .line 405
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get2(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    #@13
    move-result v1

    #@14
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@16
    .line 406
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get1(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Ljava/lang/CharSequence;

    #@19
    move-result-object v1

    #@1a
    iput-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@1c
    .line 407
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get5(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@22
    .line 408
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get6(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    #@25
    move-result v1

    #@26
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@28
    .line 409
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get7(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    #@2b
    move-result v1

    #@2c
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@2e
    .line 410
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get3(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    #@31
    move-result v1

    #@32
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@34
    .line 411
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get4(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)F

    #@37
    move-result v1

    #@38
    iput v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@3a
    .line 412
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get0(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@3d
    move-result-object v1

    #@3e
    if-eqz v1, :cond_0

    #@40
    .line 413
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get0(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->build()Landroid/view/inputmethod/SparseRectFArray;

    #@47
    move-result-object v0

    #@48
    .line 412
    :cond_0
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@4a
    .line 414
    new-instance v0, Landroid/graphics/Matrix;

    #@4c
    invoke-static {p1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->-get8(Landroid/view/inputmethod/CursorAnchorInfo$Builder;)Landroid/graphics/Matrix;

    #@4f
    move-result-object v1

    #@50
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@53
    iput-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrix:Landroid/graphics/Matrix;

    #@55
    .line 402
    return-void
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
    .line 184
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
    .line 185
    return v0

    #@e
    .line 187
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
    .line 551
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 192
    if-nez p1, :cond_0

    #@4
    .line 193
    return v3

    #@5
    .line 195
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 196
    return v4

    #@8
    .line 198
    :cond_1
    instance-of v1, p1, Landroid/view/inputmethod/CursorAnchorInfo;

    #@a
    if-nez v1, :cond_2

    #@c
    .line 199
    return v3

    #@d
    :cond_2
    move-object v0, p1

    #@e
    .line 201
    check-cast v0, Landroid/view/inputmethod/CursorAnchorInfo;

    #@10
    .line 202
    .local v0, "that":Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-virtual {p0}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    #@13
    move-result v1

    #@14
    invoke-virtual {v0}, Landroid/view/inputmethod/CursorAnchorInfo;->hashCode()I

    #@17
    move-result v2

    #@18
    if-eq v1, v2, :cond_3

    #@1a
    .line 203
    return v3

    #@1b
    .line 205
    :cond_3
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@1d
    iget v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@1f
    if-ne v1, v2, :cond_4

    #@21
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@23
    iget v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@25
    if-eq v1, v2, :cond_5

    #@27
    .line 206
    :cond_4
    return v3

    #@28
    .line 208
    :cond_5
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@2a
    iget v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@2c
    if-ne v1, v2, :cond_6

    #@2e
    .line 209
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@30
    iget-object v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@32
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_6

    #@38
    .line 212
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@3a
    iget v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@3c
    if-ne v1, v2, :cond_7

    #@3e
    .line 213
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@40
    iget v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@42
    invoke-static {v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    #@45
    move-result v1

    #@46
    if-eqz v1, :cond_7

    #@48
    .line 214
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@4a
    iget v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@4c
    invoke-static {v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_7

    #@52
    .line 215
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@54
    iget v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@56
    invoke-static {v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    #@59
    move-result v1

    #@5a
    if-eqz v1, :cond_7

    #@5c
    .line 216
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@5e
    iget v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@60
    invoke-static {v1, v2}, Landroid/view/inputmethod/CursorAnchorInfo;->areSameFloatImpl(FF)Z

    #@63
    move-result v1

    #@64
    if-eqz v1, :cond_7

    #@66
    .line 219
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@68
    iget-object v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@6a
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6d
    move-result v1

    #@6e
    if-nez v1, :cond_8

    #@70
    .line 220
    return v3

    #@71
    .line 210
    :cond_6
    return v3

    #@72
    .line 217
    :cond_7
    return v3

    #@73
    .line 222
    :cond_8
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrix:Landroid/graphics/Matrix;

    #@75
    iget-object v2, v0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrix:Landroid/graphics/Matrix;

    #@77
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7a
    move-result v1

    #@7b
    if-nez v1, :cond_9

    #@7d
    .line 223
    return v3

    #@7e
    .line 225
    :cond_9
    return v4
.end method

.method public getCharacterBounds(I)Landroid/graphics/RectF;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 506
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 507
    return-object v1

    #@6
    .line 509
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
    .line 518
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 519
    return v1

    #@6
    .line 521
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
    .line 446
    iget-object v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getComposingTextStart()I
    .locals 1

    #@0
    .prologue
    .line 438
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@2
    return v0
.end method

.method public getInsertionMarkerBaseline()F
    .locals 1

    #@0
    .prologue
    .line 486
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@2
    return v0
.end method

.method public getInsertionMarkerBottom()F
    .locals 1

    #@0
    .prologue
    .line 496
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@2
    return v0
.end method

.method public getInsertionMarkerFlags()I
    .locals 1

    #@0
    .prologue
    .line 454
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@2
    return v0
.end method

.method public getInsertionMarkerHorizontal()F
    .locals 1

    #@0
    .prologue
    .line 466
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@2
    return v0
.end method

.method public getInsertionMarkerTop()F
    .locals 1

    #@0
    .prologue
    .line 476
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@2
    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 2

    #@0
    .prologue
    .line 530
    new-instance v0, Landroid/graphics/Matrix;

    #@2
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrix:Landroid/graphics/Matrix;

    #@4
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    #@7
    return-object v0
.end method

.method public getSelectionEnd()I
    .locals 1

    #@0
    .prologue
    .line 430
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@2
    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    #@0
    .prologue
    .line 422
    iget v0, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 163
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@2
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@4
    add-float/2addr v2, v3

    #@5
    .line 164
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@7
    .line 163
    add-float/2addr v2, v3

    #@8
    .line 164
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@a
    .line 163
    add-float v0, v2, v3

    #@c
    .line 165
    .local v0, "floatHash":F
    const/4 v2, 0x0

    #@d
    cmpl-float v2, v0, v2

    #@f
    if-lez v2, :cond_0

    #@11
    float-to-int v1, v0

    #@12
    .line 166
    .local v1, "hash":I
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    #@14
    .line 167
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@16
    add-int/2addr v1, v2

    #@17
    .line 168
    mul-int/lit8 v1, v1, 0x1f

    #@19
    .line 169
    iget v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@1b
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@1d
    add-int/2addr v2, v3

    #@1e
    iget v3, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@20
    add-int/2addr v2, v3

    #@21
    add-int/2addr v1, v2

    #@22
    .line 170
    mul-int/lit8 v1, v1, 0x1f

    #@24
    .line 171
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@26
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@29
    move-result v2

    #@2a
    add-int/2addr v1, v2

    #@2b
    .line 172
    mul-int/lit8 v1, v1, 0x1f

    #@2d
    .line 173
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@2f
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@32
    move-result v2

    #@33
    add-int/2addr v1, v2

    #@34
    .line 174
    mul-int/lit8 v1, v1, 0x1f

    #@36
    .line 175
    iget-object v2, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrix:Landroid/graphics/Matrix;

    #@38
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    #@3b
    move-result v2

    #@3c
    add-int/2addr v1, v2

    #@3d
    .line 176
    return v1

    #@3e
    .line 165
    .end local v1    # "hash":I
    :cond_0
    neg-float v2, v0

    #@3f
    float-to-int v1, v2

    #@40
    .restart local v1    # "hash":I
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SelectionInfo{mSelection="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ","

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 231
    const-string/jumbo v1, " mComposingTextStart="

    #@22
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 231
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@28
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 232
    const-string/jumbo v1, " mComposingText="

    #@2f
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 232
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@35
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 233
    const-string/jumbo v1, " mInsertionMarkerFlags="

    #@40
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 233
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@46
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 234
    const-string/jumbo v1, " mInsertionMarkerHorizontal="

    #@4d
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 234
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@53
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 235
    const-string/jumbo v1, " mInsertionMarkerTop="

    #@5a
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 235
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@60
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 236
    const-string/jumbo v1, " mInsertionMarkerBaseline="

    #@67
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    .line 236
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@6d
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    .line 237
    const-string/jumbo v1, " mInsertionMarkerBottom="

    #@74
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    .line 237
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@7a
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    .line 238
    const-string/jumbo v1, " mCharacterBoundsArray="

    #@81
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    .line 238
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@87
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    .line 239
    const-string/jumbo v1, " mMatrix="

    #@92
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    .line 239
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrix:Landroid/graphics/Matrix;

    #@98
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v0

    #@a0
    .line 240
    const-string/jumbo v1, "}"

    #@a3
    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v0

    #@a7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v0

    #@ab
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 146
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionStart:I

    #@2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 147
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mSelectionEnd:I

    #@7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 148
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingTextStart:I

    #@c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 149
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mComposingText:Ljava/lang/CharSequence;

    #@11
    invoke-static {v1, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@14
    .line 150
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerFlags:I

    #@16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 151
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerHorizontal:F

    #@1b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@1e
    .line 152
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerTop:F

    #@20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@23
    .line 153
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBaseline:F

    #@25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@28
    .line 154
    iget v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mInsertionMarkerBottom:F

    #@2a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    #@2d
    .line 155
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mCharacterBoundsArray:Landroid/view/inputmethod/SparseRectFArray;

    #@2f
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@32
    .line 156
    const/16 v1, 0x9

    #@34
    new-array v0, v1, [F

    #@36
    .line 157
    .local v0, "matrixArray":[F
    iget-object v1, p0, Landroid/view/inputmethod/CursorAnchorInfo;->mMatrix:Landroid/graphics/Matrix;

    #@38
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    #@3b
    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    #@3e
    .line 145
    return-void
.end method
