.class public Landroid/view/InsetsFrameProvider;
.super Ljava/lang/Object;
.source "InsetsFrameProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsFrameProvider$InsetsSizeOverride;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/InsetsFrameProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SOURCE_ARBITRARY_RECTANGLE:I = 0x3

.field public static final blacklist SOURCE_CONTAINER_BOUNDS:I = 0x1

.field public static final blacklist SOURCE_DISPLAY:I = 0x0

.field public static final blacklist SOURCE_FRAME:I = 0x2


# instance fields
.field private blacklist mArbitraryRectangle:Landroid/graphics/Rect;

.field private blacklist mBoundingRects:[Landroid/graphics/Rect;

.field private blacklist mFlags:I

.field private final blacklist mId:I

.field private blacklist mInsetsSize:Landroid/graphics/Insets;

.field private blacklist mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

.field private blacklist mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

.field private blacklist mSource:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 336
    new-instance v0, Landroid/view/InsetsFrameProvider$1;

    invoke-direct {v0}, Landroid/view/InsetsFrameProvider$1;-><init>()V

    sput-object v0, Landroid/view/InsetsFrameProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    .line 99
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 111
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 117
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    .line 288
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    .line 289
    sget-object v0, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 290
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    .line 291
    sget-object v0, Landroid/graphics/Insets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 292
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 293
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;II)V
    .registers 5
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "type"    # I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    .line 99
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 111
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 117
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 132
    invoke-static {p1, p2, p3}, Landroid/view/InsetsSource;->createId(Ljava/lang/Object;II)I

    move-result v0

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    .line 133
    return-void
.end method

.method private static blacklist sourceToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "source"    # I

    .line 271
    packed-switch p0, :pswitch_data_12

    .line 281
    const-string v0, "UNDEFINED"

    return-object v0

    .line 279
    :pswitch_6
    const-string v0, "ARBITRARY_RECTANGLE"

    return-object v0

    .line 277
    :pswitch_9
    const-string v0, "FRAME"

    return-object v0

    .line 275
    :pswitch_c
    const-string v0, "CONTAINER_BOUNDS"

    return-object v0

    .line 273
    :pswitch_f
    const-string v0, "DISPLAY"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 313
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 314
    return v0

    .line 316
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5c

    .line 319
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/view/InsetsFrameProvider;

    .line 320
    .local v2, "other":Landroid/view/InsetsFrameProvider;
    iget v3, p0, Landroid/view/InsetsFrameProvider;->mId:I

    iget v4, v2, Landroid/view/InsetsFrameProvider;->mId:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    iget v4, v2, Landroid/view/InsetsFrameProvider;->mSource:I

    if-ne v3, v4, :cond_5a

    iget v3, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    iget v4, v2, Landroid/view/InsetsFrameProvider;->mFlags:I

    if-ne v3, v4, :cond_5a

    iget-object v3, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    iget-object v4, v2, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    .line 321
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    iget-object v4, v2, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 322
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    .line 323
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    iget-object v4, v2, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 324
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 326
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_5b

    :cond_5a
    move v0, v1

    .line 320
    :goto_5b
    return v0

    .line 317
    .end local v2    # "other":Landroid/view/InsetsFrameProvider;
    :cond_5c
    :goto_5c
    return v1
.end method

.method public blacklist getArbitraryRectangle()Landroid/graphics/Rect;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getBoundingRects()[Landroid/graphics/Rect;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    return v0
.end method

.method public blacklist getId()I
    .registers 2

    .line 139
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    return v0
.end method

.method public blacklist getIndex()I
    .registers 2

    .line 146
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {v0}, Landroid/view/InsetsSource;->getIndex(I)I

    move-result v0

    return v0
.end method

.method public blacklist getInsetsSize()Landroid/graphics/Insets;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    return-object v0
.end method

.method public blacklist getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getSource()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    return v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 153
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {v0}, Landroid/view/InsetsSource;->getType(I)I

    move-result v0

    return v0
.end method

.method public blacklist hasFlags(I)Z
    .registers 3
    .param p1, "mask"    # I

    .line 181
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 331
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 332
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 333
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 331
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist idEquals(Landroid/view/InsetsFrameProvider;)Z
    .registers 4
    .param p1, "o"    # Landroid/view/InsetsFrameProvider;

    .line 308
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    iget v1, p1, Landroid/view/InsetsFrameProvider;->mId:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist setArbitraryRectangle(Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;
    .registers 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 194
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    .line 195
    return-object p0
.end method

.method public blacklist setBoundingRects([Landroid/graphics/Rect;)Landroid/view/InsetsFrameProvider;
    .registers 3
    .param p1, "boundingRects"    # [Landroid/graphics/Rect;

    .line 225
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    invoke-virtual {p1}, [Landroid/graphics/Rect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Rect;

    :goto_a
    iput-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    .line 226
    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/view/InsetsFrameProvider;
    .registers 2
    .param p1, "flags"    # I

    .line 167
    iput p1, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    .line 168
    return-object p0
.end method

.method public blacklist setFlags(II)Landroid/view/InsetsFrameProvider;
    .registers 5
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 172
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    .line 173
    return-object p0
.end method

.method public blacklist setInsetsSize(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;
    .registers 2
    .param p1, "insetsSize"    # Landroid/graphics/Insets;

    .line 185
    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    .line 186
    return-object p0
.end method

.method public blacklist setInsetsSizeOverrides([Landroid/view/InsetsFrameProvider$InsetsSizeOverride;)Landroid/view/InsetsFrameProvider;
    .registers 2
    .param p1, "insetsSizeOverrides"    # [Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 203
    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 204
    return-object p0
.end method

.method public blacklist setMinimalInsetsSizeInDisplayCutoutSafe(Landroid/graphics/Insets;)Landroid/view/InsetsFrameProvider;
    .registers 2
    .param p1, "minimalInsetsSizeInDisplayCutoutSafe"    # Landroid/graphics/Insets;

    .line 213
    iput-object p1, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 214
    return-object p0
.end method

.method public blacklist setSource(I)Landroid/view/InsetsFrameProvider;
    .registers 2
    .param p1, "source"    # I

    .line 157
    iput p1, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    .line 158
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InsetsFrameProvider: {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "id=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InsetsFrameProvider;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/InsetsFrameProvider;->getType()I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    invoke-static {v2}, Landroid/view/InsetsFrameProvider;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, ", flags=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    invoke-static {v2}, Landroid/view/InsetsSource;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    if-eqz v1, :cond_67

    .line 251
    const-string v1, ", insetsSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    :cond_67
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    if-eqz v1, :cond_7a

    .line 254
    const-string v1, ", insetsSizeOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_7a
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    if-eqz v1, :cond_8d

    .line 257
    const-string v1, ", mArbitraryRectangle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_8d
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    if-eqz v1, :cond_9c

    .line 260
    const-string v1, ", mMinimalInsetsSizeInDisplayCutoutSafe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 263
    :cond_9c
    iget-object v1, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    if-eqz v1, :cond_af

    .line 264
    const-string v1, ", mBoundingRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_af
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 297
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Landroid/view/InsetsFrameProvider;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSize:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 301
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mInsetsSizeOverrides:[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 302
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mArbitraryRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 303
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mMinimalInsetsSizeInDisplayCutoutSafe:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 304
    iget-object v0, p0, Landroid/view/InsetsFrameProvider;->mBoundingRects:[Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 305
    return-void
.end method
