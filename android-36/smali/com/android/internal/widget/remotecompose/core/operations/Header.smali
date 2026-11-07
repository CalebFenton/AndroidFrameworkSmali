.class public Lcom/android/internal/widget/remotecompose/core/operations/Header;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "Header.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/RemoteComposeOperation;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "Header"

.field private static final blacklist DATA_TYPE_FLOAT:S = 0x1s

.field private static final blacklist DATA_TYPE_INT:S = 0x0s

.field private static final blacklist DATA_TYPE_LONG:S = 0x2s

.field private static final blacklist DATA_TYPE_STRING:S = 0x3s

.field public static final blacklist DOC_CONTENT_DESCRIPTION:S = 0x9s

.field public static final blacklist DOC_DATA_UPDATE:S = 0xcs

.field public static final blacklist DOC_DENSITY_AT_GENERATION:S = 0x7s

.field public static final blacklist DOC_DESIRED_FPS:S = 0x8s

.field public static final blacklist DOC_HEIGHT:S = 0x6s

.field public static final blacklist DOC_SOURCE:S = 0xbs

.field public static final blacklist DOC_WIDTH:S = 0x5s

.field private static final blacklist KEYS:[S

.field private static final blacklist KEY_NAMES:[Ljava/lang/String;

.field private static final blacklist MAGIC_NUMBER:I = 0x48c0000

.field private static final blacklist OP_CODE:I


# instance fields
.field blacklist mCapabilities:J

.field blacklist mDensity:F

.field blacklist mHeight:I

.field blacklist mMajorVersion:I

.field blacklist mMinorVersion:I

.field blacklist mPatchVersion:I

.field private blacklist mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 104
    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    .line 113
    const-string v5, "DOC_CONTENT_DESCRIPTION"

    const-string v6, "DOC_SOURCE"

    const-string v1, "DOC_WIDTH"

    const-string v2, "DOC_HEIGHT"

    const-string v3, "DOC_DENSITY_AT_GENERATION"

    const-string v4, "DOC_DESIRED_FPS"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEY_NAMES:[Ljava/lang/String;

    return-void

    nop

    :array_1c
    .array-data 2
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xbs
        0xcs
    .end array-data
.end method

.method public constructor blacklist <init>(IIIIIFJ)V
    .registers 11
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "patchVersion"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "density"    # F
    .param p7, "capabilities"    # J

    .line 141
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 55
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 58
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    .line 142
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    .line 143
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    .line 144
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    .line 145
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 146
    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 147
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 148
    iput-wide p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    .line 149
    return-void
.end method

.method public constructor blacklist <init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    .registers 8
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I
    .param p3, "patchVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 157
    .local p4, "properties":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 55
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 56
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 58
    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 59
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    .line 158
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    .line 159
    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    .line 160
    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    .line 161
    if-eqz p4, :cond_31

    .line 162
    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    .line 163
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    .line 164
    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    .line 165
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    .line 167
    :cond_31
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V
    .registers 8
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "density"    # F
    .param p4, "capabilities"    # J

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 300
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 304
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 306
    invoke-virtual {p0, p4, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 307
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .registers 5
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "type"    # [S
    .param p2, "value"    # [Ljava/lang/Object;

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    .line 316
    const v1, 0x48c0001

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 318
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 319
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 320
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->writeMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    .line 321
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .registers 6
    .param p0, "doc"    # Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;

    .line 530
    const-string v0, "Header"

    const-string v1, "Protocol Operations"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 531
    const-string v1, "Document metadata, containing the version, original size & density, capabilities mask"

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 534
    const-string v1, "MAJOR_VERSION"

    const-string v3, "Major version"

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 535
    const-string v1, "MINOR_VERSION"

    const-string v4, "Minor version"

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 536
    const-string v1, "PATCH_VERSION"

    const-string v4, "Patch version"

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 537
    const-string v1, "WIDTH"

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 538
    const-string v1, "HEIGHT"

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object v0

    .line 540
    const/16 v1, 0x8

    const-string v2, "CAPABILITIES"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    .line 541
    return-void
.end method

.method private blacklist getFloat(IF)F
    .registers 5
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez v0, :cond_5

    .line 195
    return p2

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 198
    .local v0, "value":Ljava/lang/Float;
    if-eqz v0, :cond_14

    .line 199
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 201
    :cond_14
    return p2
.end method

.method private blacklist getInt(II)I
    .registers 5
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .line 170
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez v0, :cond_5

    .line 171
    return p2

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 174
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_14

    .line 175
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 177
    :cond_14
    return p2
.end method

.method private blacklist getLong(IJ)J
    .registers 7
    .param p1, "key"    # I
    .param p2, "defaultValue"    # J

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez v0, :cond_5

    .line 183
    return-wide p2

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 186
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_14

    .line 187
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 189
    :cond_14
    return-wide p2
.end method

.method private blacklist getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    if-nez v0, :cond_5

    .line 207
    return-object p2

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 210
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 211
    return-object v0

    .line 213
    :cond_10
    return-object p2
.end method

.method public static blacklist id()I
    .registers 1

    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .registers 1

    .line 276
    const-string v0, "Header"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 12
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

    .line 422
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    .line 423
    .local v1, "majorVersion":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v2

    .line 424
    .local v2, "minorVersion":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    .line 425
    .local v3, "patchVersion":I
    const/high16 v0, 0x10000

    if-ge v1, v0, :cond_27

    .line 426
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    .line 427
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    .line 429
    .local v5, "height":I
    const/high16 v6, 0x3f800000    # 1.0f

    .line 430
    .local v6, "density":F
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v7

    .line 431
    .local v7, "capabilities":J
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIIIIFJ)V

    .line 440
    .local v0, "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v0    # "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "density":F
    .end local v7    # "capabilities":J
    goto :goto_50

    .line 442
    :cond_27
    const v0, 0xffff

    and-int/2addr v1, v0

    .line 443
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    .line 444
    .local v0, "length":I
    new-array v4, v0, [S

    .line 445
    .local v4, "types":[S
    new-array v5, v0, [Ljava/lang/Object;

    .line 446
    .local v5, "values":[Ljava/lang/Object;
    invoke-static {p0, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V

    .line 447
    new-instance v6, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    .line 448
    .local v6, "map":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3c
    if-ge v7, v0, :cond_48

    .line 449
    aget-short v8, v4, v7

    aget-object v9, v5, v7

    invoke-virtual {v6, v8, v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 448
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 451
    .end local v7    # "i":I
    :cond_48
    new-instance v7, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct {v7, v1, v2, v3, v6}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 452
    .local v7, "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v0    # "length":I
    .end local v4    # "types":[S
    .end local v5    # "values":[Ljava/lang/Object;
    .end local v6    # "map":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    .end local v7    # "header":Lcom/android/internal/widget/remotecompose/core/operations/Header;
    :goto_50
    return-void
.end method

.method public static blacklist readDirect(Ljava/io/InputStream;)Lcom/android/internal/widget/remotecompose/core/operations/Header;
    .registers 14
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v0

    .line 332
    .local v1, "stream":Ljava/io/DataInputStream;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_ac

    .line 334
    .local v0, "type":I
    const-string v2, " != "

    if-nez v0, :cond_8a

    .line 337
    :try_start_e
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v5, v3

    .line 338
    .local v5, "majorVersion":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 339
    .local v6, "minorVersion":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 341
    .local v7, "patchVersion":I
    const/high16 v3, 0x10000

    if-ge v5, v3, :cond_36

    .line 342
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 343
    .local v8, "width":I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 345
    .local v9, "height":I
    const/high16 v10, 0x3f800000    # 1.0f

    .line 346
    .local v10, "density":F
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v11

    .line 347
    .local v11, "capabilities":J
    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct/range {v4 .. v12}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIIIIFJ)V
    :try_end_32
    .catchall {:try_start_e .. :try_end_32} :catchall_ac

    .line 376
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 347
    return-object v4

    .line 357
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v10    # "density":F
    .end local v11    # "capabilities":J
    :cond_36
    const/high16 v3, -0x10000

    and-int v4, v5, v3

    const/high16 v8, 0x48c0000

    if-ne v4, v8, :cond_68

    .line 364
    const v2, 0xffff

    and-int/2addr v2, v5

    .line 365
    .end local v5    # "majorVersion":I
    .local v2, "majorVersion":I
    :try_start_42
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 366
    .local v3, "len":I
    new-array v4, v3, [S

    .line 367
    .local v4, "types":[S
    new-array v5, v3, [Ljava/lang/Object;

    .line 368
    .local v5, "values":[Ljava/lang/Object;
    invoke-static {v1, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->readMap(Ljava/io/DataInputStream;[S[Ljava/lang/Object;)V

    .line 369
    new-instance v8, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-direct {v8}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    .line 370
    .local v8, "map":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_53
    if-ge v9, v3, :cond_5f

    .line 371
    aget-short v10, v4, v9

    aget-object v11, v5, v9

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 370
    add-int/lit8 v9, v9, 0x1

    goto :goto_53

    .line 373
    .end local v9    # "i":I
    :cond_5f
    new-instance v9, Lcom/android/internal/widget/remotecompose/core/operations/Header;

    invoke-direct {v9, v2, v6, v7, v8}, Lcom/android/internal/widget/remotecompose/core/operations/Header;-><init>(IIILcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V
    :try_end_64
    .catchall {:try_start_42 .. :try_end_64} :catchall_ac

    .line 376
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 373
    return-object v9

    .line 358
    .end local v2    # "majorVersion":I
    .end local v3    # "len":I
    .end local v4    # "types":[S
    .end local v8    # "map":Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;, "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<Ljava/lang/Object;>;"
    .local v5, "majorVersion":I
    :cond_68
    :try_start_68
    new-instance v4, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid header MAGIC_NUMBER "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    and-int/2addr v3, v5

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "stream":Ljava/io/DataInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v4

    .line 335
    .end local v5    # "majorVersion":I
    .end local v6    # "minorVersion":I
    .end local v7    # "patchVersion":I
    .restart local v1    # "stream":Ljava/io/DataInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_8a
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid header "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "stream":Ljava/io/DataInputStream;
    .end local p0    # "is":Ljava/io/InputStream;
    throw v3
    :try_end_ac
    .catchall {:try_start_68 .. :try_end_ac} :catchall_ac

    .line 376
    .end local v0    # "type":I
    .restart local v1    # "stream":Ljava/io/DataInputStream;
    .restart local p0    # "is":Ljava/io/InputStream;
    :catchall_ac
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 377
    throw v0
.end method

.method private static blacklist readMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .registers 9
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "types"    # [S
    .param p2, "values"    # [Ljava/lang/Object;

    .line 464
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_43

    .line 465
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v1

    int-to-short v1, v1

    .line 466
    .local v1, "tag":S
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readShort()I

    move-result v2

    .line 467
    .local v2, "itemLen":I
    shr-int/lit8 v3, v1, 0xa

    .line 468
    .local v3, "dataType":I
    and-int/lit8 v4, v1, 0x3f

    int-to-short v4, v4

    aput-short v4, p1, v0

    .line 470
    packed-switch v3, :pswitch_data_44

    goto :goto_40

    .line 481
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readUTF8()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v0

    goto :goto_40

    .line 478
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p2, v0

    .line 479
    goto :goto_40

    .line 475
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, p2, v0

    .line 476
    goto :goto_40

    .line 472
    :pswitch_35
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v0

    .line 473
    nop

    .line 464
    .end local v1    # "tag":S
    .end local v2    # "itemLen":I
    .end local v3    # "dataType":I
    :goto_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    .end local v0    # "i":I
    :cond_43
    return-void

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
        :pswitch_18
    .end packed-switch
.end method

.method private static blacklist readMap(Ljava/io/DataInputStream;[S[Ljava/lang/Object;)V
    .registers 10
    .param p0, "stream"    # Ljava/io/DataInputStream;
    .param p1, "types"    # [S
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4c

    .line 390
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 391
    .local v1, "tag":S
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    .line 392
    .local v2, "itemLen":I
    shr-int/lit8 v3, v1, 0xa

    .line 393
    .local v3, "dataType":I
    and-int/lit8 v4, v1, 0x3f

    int-to-short v4, v4

    aput-short v4, p1, v0

    .line 395
    packed-switch v3, :pswitch_data_4e

    goto :goto_49

    .line 406
    :pswitch_17
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 407
    .local v4, "slen":I
    new-array v5, v4, [B

    .line 408
    .local v5, "data":[B
    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 409
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v6, p2, v0

    goto :goto_49

    .line 403
    .end local v4    # "slen":I
    .end local v5    # "data":[B
    :pswitch_28
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p2, v0

    .line 404
    goto :goto_49

    .line 400
    :pswitch_33
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, p2, v0

    .line 401
    goto :goto_49

    .line 397
    :pswitch_3e
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p2, v0

    .line 398
    nop

    .line 389
    .end local v1    # "tag":S
    .end local v2    # "itemLen":I
    .end local v3    # "dataType":I
    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 413
    .end local v0    # "i":I
    :cond_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_33
        :pswitch_28
        :pswitch_17
    .end packed-switch
.end method

.method private static blacklist writeMap(Lcom/android/internal/widget/remotecompose/core/WireBuffer;[S[Ljava/lang/Object;)V
    .registers 9
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .param p1, "types"    # [S
    .param p2, "values"    # [Ljava/lang/Object;

    .line 495
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_79

    .line 496
    aget-short v1, p1, v0

    .line 497
    .local v1, "tag":S
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/String;

    const/4 v3, 0x4

    if-eqz v2, :cond_24

    .line 498
    or-int/lit16 v2, v1, 0xc00

    int-to-short v1, v2

    .line 499
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 500
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/String;

    .line 501
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 502
    .local v4, "data":[B
    array-length v5, v4

    add-int/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 503
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBuffer([B)V

    .line 504
    .end local v2    # "str":Ljava/lang/String;
    .end local v4    # "data":[B
    goto :goto_76

    :cond_24
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_3f

    .line 505
    or-int/lit8 v2, v1, 0x0

    int-to-short v1, v2

    .line 506
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 507
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 508
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    goto :goto_76

    .line 509
    :cond_3f
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Float;

    if-eqz v2, :cond_5a

    .line 510
    or-int/lit16 v2, v1, 0x400

    int-to-short v1, v2

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 512
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 514
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    goto :goto_76

    .line 515
    :cond_5a
    aget-object v2, p2, v0

    instance-of v2, v2, Ljava/lang/Long;

    if-eqz v2, :cond_76

    .line 516
    or-int/lit16 v2, v1, 0x800

    int-to-short v1, v2

    .line 517
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 518
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeShort(I)V

    .line 519
    aget-object v2, p2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeLong(J)V

    .line 495
    .end local v1    # "tag":S
    :cond_76
    :goto_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 522
    .end local v0    # "i":I
    :cond_79
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 11
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 253
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iget-wide v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    move-object v0, p1

    .end local p1    # "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .local v0, "context":Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->header(IIIIIJLcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;)V

    .line 261
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(S)Ljava/lang/Object;
    .registers 3
    .param p1, "property"    # S

    .line 69
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setVersion(Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .registers 5
    .param p1, "document"    # Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    .line 549
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->getInt(II)I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setUpdateDoc(Z)V

    .line 550
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->setVersion(III)V

    .line 551
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 225
    const-string v0, ""

    .line 226
    .local v0, "prop":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    const-string v2, "HEADER v"

    const-string v3, "."

    if-eqz v1, :cond_74

    .line 227
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    sget-object v4, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    array-length v4, v4

    if-ge v1, v4, :cond_48

    .line 228
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mProperties:Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEYS:[S

    aget-short v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 229
    .local v4, "p":Ljava/lang/Object;
    if-eqz v4, :cond_45

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/Header;->KEY_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    .end local v4    # "p":Ljava/lang/Object;
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 233
    .end local v1    # "i":I
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 235
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMajorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mMinorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mPatchVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 8
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 219
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mWidth:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mHeight:I

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mDensity:F

    iget-wide v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/Header;->mCapabilities:J

    move-object v0, p1

    .end local p1    # "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .local v0, "buffer":Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    invoke-static/range {v0 .. v5}, Lcom/android/internal/widget/remotecompose/core/operations/Header;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IIFJ)V

    .line 220
    return-void
.end method
