.class public final Landroid/app/wallpaper/WallpaperDescription;
.super Ljava/lang/Object;
.source "WallpaperDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaper/WallpaperDescription$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpaper/WallpaperDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WallpaperDescription"

.field private static final blacklist XML_TAG_CONTENT:Ljava/lang/String; = "content"

.field private static final blacklist XML_TAG_DESCRIPTION:Ljava/lang/String; = "description"


# instance fields
.field private final blacklist mComponent:Landroid/content/ComponentName;

.field private final blacklist mContent:Landroid/os/PersistableBundle;

.field private final blacklist mContextDescription:Ljava/lang/CharSequence;

.field private final blacklist mContextUri:Landroid/net/Uri;

.field private final blacklist mCropHints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mSampleSize:F

.field private final blacklist mThumbnail:Landroid/net/Uri;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic blacklist $r8$lambda$SJjydMtP7lVlIyL2p9b8fQyzjFc(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;Landroid/util/Pair;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/wallpaper/WallpaperDescription;->lambda$new$1(Landroid/os/Parcel;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qLyMJewk5i-jk61el0hS27e3fpQ(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;ILandroid/util/Pair;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/wallpaper/WallpaperDescription;->lambda$writeToParcel$2(Landroid/os/Parcel;ILandroid/util/Pair;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 333
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$1;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$1;-><init>()V

    sput-object v0, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;F)V
    .registers 12
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "thumbnail"    # Landroid/net/Uri;
    .param p4, "title"    # Ljava/lang/CharSequence;
    .param p6, "contextUri"    # Landroid/net/Uri;
    .param p7, "contextDescription"    # Ljava/lang/CharSequence;
    .param p8, "content"    # Landroid/os/PersistableBundle;
    .param p10, "sampleSize"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/CharSequence;",
            "Landroid/os/PersistableBundle;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;F)V"
        }
    .end annotation

    .line 90
    .local p5, "description":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p9, "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    .line 92
    iput-object p2, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    .line 94
    iput-object p4, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    .line 95
    if-eqz p5, :cond_f

    move-object v0, p5

    goto :goto_14

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_14
    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    .line 96
    iput-object p6, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    .line 97
    iput-object p7, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    .line 98
    if-eqz p8, :cond_1e

    move-object v0, p8

    goto :goto_23

    :cond_1e
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    :goto_23
    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    .line 99
    iput-object p9, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    .line 100
    iput p10, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    .line 101
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;FLandroid/app/wallpaper/WallpaperDescription-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/app/wallpaper/WallpaperDescription;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;F)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    .line 317
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    .line 320
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    .line 322
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    .line 323
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    .line 324
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    .line 330
    return-void
.end method

.method private static blacklist fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .line 292
    if-nez p0, :cond_4

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_4
    const/16 v0, 0x3f

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/app/wallpaper/WallpaperDescription;->removeTrailingWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$new$1(Landroid/os/Parcel;Landroid/util/Pair;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "pair"    # Landroid/util/Pair;

    .line 325
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 326
    .local v0, "orientation":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 327
    .local v1, "crop":Landroid/graphics/Rect;
    if-eqz v1, :cond_17

    iget-object v2, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    :cond_17
    return-void
.end method

.method static synthetic blacklist lambda$restoreFromXml$0(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;Landroid/util/Pair;)V
    .registers 13
    .param p0, "in"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "cropHints"    # Landroid/util/SparseArray;
    .param p2, "pair"    # Landroid/util/Pair;

    .line 253
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 254
    .local v0, "orientation":I
    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 255
    .local v1, "attrName":Ljava/lang/String;
    new-instance v2, Landroid/graphics/Rect;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cropLeft"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {p0, v4, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cropTop"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-interface {p0, v4, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropRight"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 258
    invoke-interface {p0, v4, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cropBottom"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 259
    invoke-interface {p0, v4, v8, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v3, v6, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 260
    .local v2, "crop":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_78

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    :cond_78
    return-void
.end method

.method private synthetic blacklist lambda$writeToParcel$2(Landroid/os/Parcel;ILandroid/util/Pair;)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "pair"    # Landroid/util/Pair;

    .line 361
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 362
    .local v0, "orientation":I
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 363
    return-void
.end method

.method private static blacklist removeTrailingWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 302
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 305
    .local v0, "end":I
    :goto_8
    if-lez v0, :cond_19

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 306
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 309
    :cond_19
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/wallpaper/WallpaperDescription;
    .registers 20
    .param p0, "in"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 238
    move-object/from16 v0, p0

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 239
    .local v1, "outerDepth":I
    const-string v2, "component"

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "component":Ljava/lang/String;
    if-eqz v2, :cond_14

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_15

    .line 241
    :cond_14
    move-object v4, v3

    :goto_15
    move-object v6, v4

    .line 242
    .local v6, "componentName":Landroid/content/ComponentName;
    const-string/jumbo v4, "id"

    invoke-interface {v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, "id":Ljava/lang/String;
    const-string/jumbo v4, "thumbnail"

    invoke-interface {v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "thumbnailString":Ljava/lang/String;
    if-eqz v4, :cond_2c

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v8, v5

    goto :goto_2d

    :cond_2c
    move-object v8, v3

    .line 245
    .local v8, "thumbnail":Landroid/net/Uri;
    :goto_2d
    const-string/jumbo v5, "title"

    invoke-interface {v0, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/app/wallpaper/WallpaperDescription;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 246
    .local v9, "title":Ljava/lang/CharSequence;
    const-string v5, "contexturi"

    invoke-interface {v0, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 247
    .local v16, "contextUriString":Ljava/lang/String;
    if-eqz v16, :cond_46

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v11, v5

    goto :goto_47

    :cond_46
    move-object v11, v3

    .line 248
    .local v11, "contextUri":Landroid/net/Uri;
    :goto_47
    nop

    .line 249
    const-string v5, "contextdescription"

    invoke-interface {v0, v3, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-static {v5}, Landroid/app/wallpaper/WallpaperDescription;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 251
    .local v12, "contextDescription":Ljava/lang/CharSequence;
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    .line 252
    .local v14, "cropHints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v5

    new-instance v10, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0, v14}, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    invoke-interface {v5, v10}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 262
    const-string/jumbo v5, "sampleSize"

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v0, v3, v5, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v15

    .line 264
    .local v15, "sampleSize":F
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v10, "description":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    move-object v13, v3

    .line 267
    .local v13, "content":Landroid/os/PersistableBundle;
    :goto_73
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    move v5, v3

    move-object/from16 v17, v2

    .end local v2    # "component":Ljava/lang/String;
    .local v5, "type":I
    .local v17, "component":Ljava/lang/String;
    const/4 v2, 0x1

    if-eq v3, v2, :cond_d3

    const/4 v2, 0x3

    if-ne v5, v2, :cond_8a

    .line 268
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_87

    goto :goto_8a

    :cond_87
    move/from16 v18, v1

    goto :goto_d5

    .line 269
    :cond_8a
    :goto_8a
    if-eq v5, v2, :cond_cc

    const/4 v2, 0x4

    if-ne v5, v2, :cond_92

    .line 270
    move/from16 v18, v1

    goto :goto_ce

    .line 272
    :cond_92
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "name":Ljava/lang/String;
    const-string v3, "description"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 274
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9f
    move/from16 v18, v1

    .end local v1    # "outerDepth":I
    .local v18, "outerDepth":I
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v3, v1, :cond_b7

    .line 275
    invoke-interface {v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/wallpaper/WallpaperDescription;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v18

    goto :goto_9f

    .end local v3    # "i":I
    :cond_b7
    goto :goto_c7

    .line 277
    .end local v18    # "outerDepth":I
    .restart local v1    # "outerDepth":I
    :cond_b8
    move/from16 v18, v1

    .end local v1    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    const-string v1, "content"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 278
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    move-object v13, v1

    .line 280
    .end local v2    # "name":Ljava/lang/String;
    :cond_c7
    :goto_c7
    move-object/from16 v2, v17

    move/from16 v1, v18

    goto :goto_73

    .line 269
    .end local v18    # "outerDepth":I
    .restart local v1    # "outerDepth":I
    :cond_cc
    move/from16 v18, v1

    .line 267
    .end local v1    # "outerDepth":I
    .end local v5    # "type":I
    .restart local v18    # "outerDepth":I
    :goto_ce
    move-object/from16 v2, v17

    move/from16 v1, v18

    goto :goto_73

    .end local v18    # "outerDepth":I
    .restart local v1    # "outerDepth":I
    .restart local v5    # "type":I
    :cond_d3
    move/from16 v18, v1

    .line 282
    .end local v1    # "outerDepth":I
    .restart local v18    # "outerDepth":I
    :goto_d5
    move v3, v5

    .end local v5    # "type":I
    .local v3, "type":I
    new-instance v5, Landroid/app/wallpaper/WallpaperDescription;

    invoke-direct/range {v5 .. v15}, Landroid/app/wallpaper/WallpaperDescription;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;F)V

    return-object v5
.end method

.method private static blacklist screenDimensionPairs()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 566
    new-instance v0, Landroid/util/Pair;

    .line 567
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Portrait"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    .line 568
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Landscape"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    .line 569
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SquarePortrait"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    .line 570
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "SquareLandscape"

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    invoke-static {v0, v1, v2, v3}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p0, "c"    # Ljava/lang/CharSequence;

    .line 287
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    goto :goto_d

    :cond_8
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 288
    .local v0, "s":Landroid/text/Spanned;
    :goto_d
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 347
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 182
    :cond_4
    instance-of v1, p1, Landroid/app/wallpaper/WallpaperDescription;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    move-object v1, p1

    check-cast v1, Landroid/app/wallpaper/WallpaperDescription;

    .line 183
    .local v1, "that":Landroid/app/wallpaper/WallpaperDescription;
    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    return v0

    .line 182
    .end local v1    # "that":Landroid/app/wallpaper/WallpaperDescription;
    :cond_23
    return v2
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getContent()Landroid/os/PersistableBundle;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getContextDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getContextUri()Landroid/net/Uri;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getCropHints()Landroid/util/SparseArray;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSampleSize()F
    .registers 2

    .line 168
    iget v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    return v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 189
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 11
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 196
    const-string v0, "content"

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 197
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "component"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    :cond_12
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "id"

    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    :cond_1e
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "thumbnail"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    :cond_2e
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/app/wallpaper/WallpaperDescription;->toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "title"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :cond_3e
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "contexturi"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    :cond_4d
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5c

    .line 204
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/app/wallpaper/WallpaperDescription;->toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "contextdescription"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    :cond_5c
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 208
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 209
    .local v4, "orientation":I
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 210
    .local v5, "attrName":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 211
    .local v6, "cropHint":Landroid/graphics/Rect;
    if-nez v6, :cond_87

    goto :goto_64

    .line 212
    :cond_87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropLeft"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    invoke-interface {p1, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropTop"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    invoke-interface {p1, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropRight"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    invoke-interface {p1, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropBottom"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v2, v7, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "orientation":I
    .end local v5    # "attrName":Ljava/lang/String;
    .end local v6    # "cropHint":Landroid/graphics/Rect;
    goto/16 :goto_64

    .line 217
    :cond_e9
    const-string/jumbo v1, "sampleSize"

    iget v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    const-string v1, "description"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_112

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "s":Ljava/lang/CharSequence;
    const-string v5, "descriptionline"

    invoke-static {v4}, Landroid/app/wallpaper/WallpaperDescription;->toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_fc

    .line 221
    .end local v4    # "s":Ljava/lang/CharSequence;
    :cond_112
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    :try_start_115
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_11d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_115 .. :try_end_11d} :catch_124
    .catchall {:try_start_115 .. :try_end_11d} :catchall_122

    .line 231
    nop

    :goto_11e
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    goto :goto_12f

    .line 231
    :catchall_122
    move-exception v1

    goto :goto_130

    .line 226
    :catch_124
    move-exception v1

    .line 229
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_125
    const-string v3, "WallpaperDescription"

    const-string/jumbo v4, "unable to convert wallpaper content to XML"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catchall {:try_start_125 .. :try_end_12d} :catchall_122

    .line 231
    nop

    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_11e

    .line 233
    :goto_12f
    return-void

    .line 231
    :goto_130
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 232
    throw v1
.end method

.method public whitelist toBuilder()Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 3

    .line 375
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    .line 376
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    .line 377
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setId(Ljava/lang/String;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    .line 378
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setThumbnail(Landroid/net/Uri;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    .line 379
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    .line 380
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setDescription(Ljava/util/List;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setContextUri(Landroid/net/Uri;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    .line 382
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setContextDescription(Ljava/lang/CharSequence;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    .line 383
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setContent(Landroid/os/PersistableBundle;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    .line 384
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setCropHints(Landroid/util/SparseArray;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    .line 385
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setSampleSize(F)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    .line 375
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 173
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_b
    const-string/jumbo v0, "{null}"

    .line 174
    .local v0, "component":Ljava/lang/String;
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 352
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 353
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 355
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 358
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 360
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;-><init>(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 364
    iget v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 365
    return-void
.end method
