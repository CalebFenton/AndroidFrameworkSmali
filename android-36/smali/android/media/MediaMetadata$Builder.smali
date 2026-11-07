.class public final Landroid/media/MediaMetadata$Builder;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitmapDimensionLimit:I

.field private final greylist-max-o mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    const v0, 0x7fffffff

    iput v0, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    .line 759
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    .line 760
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/MediaMetadata;)V
    .registers 4
    .param p1, "source"    # Landroid/media/MediaMetadata;

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    const v0, 0x7fffffff

    iput v0, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    .line 770
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/media/MediaMetadata;->-$$Nest$fgetmBundle(Landroid/media/MediaMetadata;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    .line 771
    invoke-static {p1}, Landroid/media/MediaMetadata;->-$$Nest$fgetmBitmapDimensionLimit(Landroid/media/MediaMetadata;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    .line 772
    return-void
.end method

.method private greylist-max-o scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "maxDimension"    # I

    .line 979
    int-to-float v0, p2

    .line 980
    .local v0, "maxDimensionF":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 981
    .local v1, "widthScale":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v0, v2

    .line 982
    .local v2, "heightScale":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 983
    .local v3, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 984
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 985
    .local v5, "width":I
    const/4 v6, 0x1

    invoke-static {p1, v5, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public whitelist build()Landroid/media/MediaMetadata;
    .registers 7

    .line 963
    iget v0, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_44

    .line 964
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 965
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 966
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_43

    .line 967
    move-object v3, v2

    check-cast v3, Landroid/graphics/Bitmap;

    .line 968
    .local v3, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    if-gt v4, v5, :cond_3a

    .line 969
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    if-le v4, v5, :cond_43

    .line 970
    :cond_3a
    iget v4, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    invoke-direct {p0, v3, v4}, Landroid/media/MediaMetadata$Builder;->scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 973
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "bmp":Landroid/graphics/Bitmap;
    :cond_43
    goto :goto_11

    .line 975
    :cond_44
    new-instance v0, Landroid/media/MediaMetadata;

    iget-object v1, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    iget v2, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Bundle;ILandroid/media/MediaMetadata-IA;)V

    return-object v0
.end method

.method public whitelist putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/graphics/Bitmap;

    .line 924
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 925
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    goto :goto_3b

    .line 926
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key cannot be used to put a Bitmap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 931
    return-object p0
.end method

.method public whitelist putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 870
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 871
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_3a

    .line 872
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key cannot be used to put a long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 877
    return-object p0
.end method

.method public whitelist putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/media/Rating;

    .line 894
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 895
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    goto :goto_3b

    .line 896
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key cannot be used to put a Rating"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 901
    return-object p0
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 843
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 844
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_3b

    .line 845
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key cannot be used to put a String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 850
    return-object p0
.end method

.method public whitelist putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 801
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 802
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_3b

    .line 803
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key cannot be used to put a CharSequence"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 808
    return-object p0
.end method

.method public whitelist setBitmapDimensionLimit(I)Landroid/media/MediaMetadata$Builder;
    .registers 4
    .param p1, "bitmapDimensionLimit"    # I

    .line 948
    if-lez p1, :cond_5

    .line 949
    iput p1, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    goto :goto_1d

    .line 951
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBitmapDimensionLimit(): Ignoring non-positive bitmapDimensionLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaMetadata"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :goto_1d
    return-object p0
.end method
