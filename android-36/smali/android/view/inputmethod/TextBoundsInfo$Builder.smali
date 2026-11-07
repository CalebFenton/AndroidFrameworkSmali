.class public final Landroid/view/inputmethod/TextBoundsInfo$Builder;
.super Ljava/lang/Object;
.source "TextBoundsInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/TextBoundsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCharacterBidiLevels:[I

.field private blacklist mCharacterBounds:[F

.field private blacklist mCharacterFlags:[I

.field private blacklist mEnd:I

.field private blacklist mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

.field private blacklist mLineSegmentFinder:Landroid/text/SegmentFinder;

.field private blacklist mMatrixInitialized:Z

.field private final blacklist mMatrixValues:[F

.field private blacklist mStart:I

.field private blacklist mWordSegmentFinder:Landroid/text/SegmentFinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCharacterBidiLevels(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBidiLevels:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCharacterBounds(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[F
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBounds:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCharacterFlags(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterFlags:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/view/inputmethod/TextBoundsInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGraphemeSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMatrixValues(Landroid/view/inputmethod/TextBoundsInfo$Builder;)[F
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mMatrixValues:[F

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/view/inputmethod/TextBoundsInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWordSegmentFinder(Landroid/view/inputmethod/TextBoundsInfo$Builder;)Landroid/text/SegmentFinder;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    return-object p0
.end method

.method public constructor whitelist <init>(II)V
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mMatrixValues:[F

    .line 1000
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    .line 1001
    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    .line 1017
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/TextBoundsInfo$Builder;->setStartAndEnd(II)Landroid/view/inputmethod/TextBoundsInfo$Builder;

    .line 1018
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/inputmethod/TextBoundsInfo;
    .registers 6

    .line 1242
    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    if-ltz v0, :cond_11a

    iget v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    if-ltz v0, :cond_11a

    .line 1246
    iget-boolean v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mMatrixInitialized:Z

    if-eqz v0, :cond_112

    .line 1250
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBounds:[F

    if-eqz v0, :cond_10a

    .line 1254
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterFlags:[I

    if-eqz v0, :cond_102

    .line 1258
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBidiLevels:[I

    if-eqz v0, :cond_fa

    .line 1262
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBounds:[F

    array-length v0, v0

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_cd

    .line 1268
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterFlags:[I

    array-length v0, v0

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    sub-int/2addr v1, v2

    const-string v2, " characterFlags length: "

    if-ne v0, v1, :cond_a4

    .line 1274
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBidiLevels:[I

    array-length v0, v0

    iget v1, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    iget v3, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_7b

    .line 1280
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    if-eqz v0, :cond_73

    .line 1283
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    if-eqz v0, :cond_6b

    .line 1286
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    if-eqz v0, :cond_63

    .line 1290
    iget-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterFlags:[I

    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    iget v3, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/TextBoundsInfo;->-$$Nest$smisLineDirectionFlagConsistent([ILandroid/text/SegmentFinder;II)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1294
    new-instance v0, Landroid/view/inputmethod/TextBoundsInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/TextBoundsInfo;-><init>(Landroid/view/inputmethod/TextBoundsInfo$Builder;Landroid/view/inputmethod/TextBoundsInfo-IA;)V

    return-object v0

    .line 1291
    :cond_5b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "characters in the same line must have the same FLAG_LINE_IS_RTL flag value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LineSegmentFinder must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1284
    :cond_6b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WordSegmentFinder must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GraphemeSegmentFinder must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_7b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The length of characterBidiLevels doesn\'t match the length of the given start and end. Expected length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    iget v4, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBidiLevels:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_a4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The length of characterFlags doesn\'t match the length of the given start and end. Expected length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    iget v4, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterFlags:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1263
    :cond_cd
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The length of characterBounds doesn\'t match the length of the given start and end. Expected length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    iget v3, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " characterBounds length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBounds:[F

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :cond_fa
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CharacterBidiLevel must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CharacterFlags must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1251
    :cond_10a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CharacterBounds must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1247
    :cond_112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Matrix must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1243
    :cond_11a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Start and end must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clear()Landroid/view/inputmethod/TextBoundsInfo$Builder;
    .registers 2

    .line 1023
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mMatrixInitialized:Z

    .line 1024
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    .line 1025
    iput v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBounds:[F

    .line 1027
    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterFlags:[I

    .line 1028
    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBidiLevels:[I

    .line 1029
    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    .line 1030
    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    .line 1031
    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    .line 1032
    return-object p0
.end method

.method public whitelist setCharacterBidiLevel([I)Landroid/view/inputmethod/TextBoundsInfo$Builder;
    .registers 7
    .param p1, "characterBidiLevels"    # [I

    .line 1149
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    .line 1151
    aget v1, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bidiLevels["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x7d

    invoke-static {v1, v3, v4, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1154
    .end local v0    # "index":I
    :cond_2b
    iput-object p1, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBidiLevels:[I

    .line 1155
    return-object p0
.end method

.method public whitelist setCharacterBounds([F)Landroid/view/inputmethod/TextBoundsInfo$Builder;
    .registers 3
    .param p1, "characterBounds"    # [F

    .line 1089
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterBounds:[F

    .line 1090
    return-object p0
.end method

.method public whitelist setCharacterFlags([I)Landroid/view/inputmethod/TextBoundsInfo$Builder;
    .registers 6
    .param p1, "characterFlags"    # [I

    .line 1118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    aget v2, p1, v1

    .line 1120
    .local v2, "characterFlag":I
    and-int/lit8 v3, v2, -0x10

    if-nez v3, :cond_10

    .line 1119
    .end local v2    # "characterFlag":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1121
    .restart local v2    # "characterFlag":I
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "characterFlags contains invalid flags."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    .end local v2    # "characterFlag":I
    :cond_18
    iput-object p1, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mCharacterFlags:[I

    .line 1125
    return-object p0
.end method

.method public whitelist setGraphemeSegmentFinder(Landroid/text/SegmentFinder;)Landroid/view/inputmethod/TextBoundsInfo$Builder;
    .registers 3
    .param p1, "graphemeSegmentFinder"    # Landroid/text/SegmentFinder;

    .line 1178
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SegmentFinder;

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mGraphemeSegmentFinder:Landroid/text/SegmentFinder;

    .line 1179
    return-object p0
.end method

.method public whitelist setLineSegmentFinder(Landroid/text/SegmentFinder;)Landroid/view/inputmethod/TextBoundsInfo$Builder;
    .registers 3
    .param p1, "lineSegmentFinder"    # Landroid/text/SegmentFinder;

    .line 1219
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SegmentFinder;

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mLineSegmentFinder:Landroid/text/SegmentFinder;

    .line 1220
    return-object p0
.end method

.method public whitelist setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/TextBoundsInfo$Builder;
    .registers 4
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 1043
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mMatrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1044
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mMatrixInitialized:Z

    .line 1045
    return-object p0
.end method

.method public whitelist setStartAndEnd(II)Landroid/view/inputmethod/TextBoundsInfo$Builder;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1060
    const/4 v0, 0x0

    if-ltz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1061
    const-string/jumbo v1, "start"

    invoke-static {p1, v0, p2, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1062
    iput p1, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mStart:I

    .line 1063
    iput p2, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mEnd:I

    .line 1064
    return-object p0
.end method

.method public whitelist setWordSegmentFinder(Landroid/text/SegmentFinder;)Landroid/view/inputmethod/TextBoundsInfo$Builder;
    .registers 3
    .param p1, "wordSegmentFinder"    # Landroid/text/SegmentFinder;

    .line 1197
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SegmentFinder;

    iput-object v0, p0, Landroid/view/inputmethod/TextBoundsInfo$Builder;->mWordSegmentFinder:Landroid/text/SegmentFinder;

    .line 1198
    return-object p0
.end method
