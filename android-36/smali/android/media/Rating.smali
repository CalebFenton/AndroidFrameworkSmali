.class public final Landroid/media/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Rating$StarStyle;,
        Landroid/media/Rating$Style;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RATING_3_STARS:I = 0x3

.field public static final whitelist RATING_4_STARS:I = 0x4

.field public static final whitelist RATING_5_STARS:I = 0x5

.field public static final whitelist RATING_HEART:I = 0x1

.field public static final whitelist RATING_NONE:I = 0x0

.field private static final greylist-max-o RATING_NOT_RATED:F = -1.0f

.field public static final whitelist RATING_PERCENTAGE:I = 0x6

.field public static final whitelist RATING_THUMB_UP_DOWN:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private final greylist-max-o mRatingStyle:I

.field private final greylist-max-o mRatingValue:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroid/media/Rating$1;

    invoke-direct {v0}, Landroid/media/Rating$1;-><init>()V

    sput-object v0, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(IF)V
    .registers 3
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Landroid/media/Rating;->mRatingStyle:I

    .line 99
    iput p2, p0, Landroid/media/Rating;->mRatingValue:F

    .line 100
    return-void
.end method

.method synthetic constructor blacklist <init>(IFLandroid/media/Rating-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/Rating;-><init>(IF)V

    return-void
.end method

.method public static whitelist newHeartRating(Z)Landroid/media/Rating;
    .registers 4
    .param p0, "hasHeart"    # Z

    .line 167
    new-instance v0, Landroid/media/Rating;

    if-eqz p0, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Landroid/media/Rating;-><init>(IF)V

    return-object v0
.end method

.method public static whitelist newPercentageRating(F)Landroid/media/Rating;
    .registers 3
    .param p0, "percent"    # F

    .line 225
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_12

    .line 226
    new-instance v0, Landroid/media/Rating;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/media/Rating;-><init>(IF)V

    return-object v0

    .line 228
    :cond_12
    const-string v0, "Rating"

    const-string v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist newStarRating(IF)Landroid/media/Rating;
    .registers 7
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    .line 194
    const/high16 v0, -0x40800000    # -1.0f

    .line 195
    .local v0, "maxRating":F
    const/4 v1, 0x0

    const-string v2, "Rating"

    packed-switch p0, :pswitch_data_44

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid rating style ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for a star rating"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v1

    .line 203
    :pswitch_25
    const/high16 v0, 0x40a00000    # 5.0f

    .line 204
    goto :goto_2e

    .line 200
    :pswitch_28
    const/high16 v0, 0x40800000    # 4.0f

    .line 201
    goto :goto_2e

    .line 197
    :pswitch_2b
    const/high16 v0, 0x40400000    # 3.0f

    .line 198
    nop

    .line 209
    :goto_2e
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_3d

    cmpg-float v3, p1, v0

    if-gtz v3, :cond_3d

    .line 210
    new-instance v1, Landroid/media/Rating;

    invoke-direct {v1, p0, p1}, Landroid/media/Rating;-><init>(IF)V

    return-object v1

    .line 212
    :cond_3d
    const-string v3, "Trying to set out of range star-based rating"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-object v1

    nop

    :pswitch_data_44
    .packed-switch 0x3
        :pswitch_2b
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method public static whitelist newThumbRating(Z)Landroid/media/Rating;
    .registers 4
    .param p0, "thumbIsUp"    # Z

    .line 178
    new-instance v0, Landroid/media/Rating;

    if-eqz p0, :cond_7

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Landroid/media/Rating;-><init>(IF)V

    return-object v0
.end method

.method public static whitelist newUnratedRating(I)Landroid/media/Rating;
    .registers 3
    .param p0, "ratingStyle"    # I

    .line 146
    packed-switch p0, :pswitch_data_e

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 153
    :pswitch_5
    new-instance v0, Landroid/media/Rating;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/media/Rating;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public whitelist getPercentRating()F
    .registers 3

    .line 302
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_f

    .line 305
    :cond_c
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    return v0

    .line 303
    :cond_f
    :goto_f
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public whitelist getRatingStyle()I
    .registers 2

    .line 249
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public whitelist getStarRating()F
    .registers 3

    .line 284
    const/high16 v0, -0x40800000    # -1.0f

    .line 285
    .local v0, "ratingValue":F
    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    packed-switch v1, :pswitch_data_12

    goto :goto_10

    .line 289
    :pswitch_8
    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 290
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    .line 293
    :cond_10
    :goto_10
    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist hasHeart()Z
    .registers 5

    .line 258
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 259
    return v1

    .line 261
    :cond_7
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method public whitelist isRated()Z
    .registers 3

    .line 238
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isThumbUp()Z
    .registers 4

    .line 271
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    .line 272
    return v2

    .line 274
    :cond_7
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    iget v1, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_21

    const-string v1, "unrated"

    goto :goto_27

    :cond_21
    iget v1, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 115
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 117
    return-void
.end method
