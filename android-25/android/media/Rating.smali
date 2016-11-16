.class public final Landroid/media/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Rating$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 120
    new-instance v0, Landroid/media/Rating$1;

    #@2
    invoke-direct {v0}, Landroid/media/Rating$1;-><init>()V

    #@5
    .line 119
    sput-object v0, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 35
    return-void
.end method

.method private constructor <init>(IF)V
    .locals 0
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    #@0
    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 98
    iput p1, p0, Landroid/media/Rating;->mRatingStyle:I

    #@5
    .line 99
    iput p2, p0, Landroid/media/Rating;->mRatingValue:F

    #@7
    .line 97
    return-void
.end method

.method synthetic constructor <init>(IFLandroid/media/Rating;)V
    .locals 0
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/Rating;-><init>(IF)V

    #@3
    return-void
.end method

.method public static newHeartRating(Z)Landroid/media/Rating;
    .locals 3
    .param p0, "hasHeart"    # Z

    #@0
    .prologue
    .line 168
    new-instance v1, Landroid/media/Rating;

    #@2
    if-eqz p0, :cond_0

    #@4
    const/high16 v0, 0x3f800000    # 1.0f

    #@6
    :goto_0
    const/4 v2, 0x1

    #@7
    invoke-direct {v1, v2, v0}, Landroid/media/Rating;-><init>(IF)V

    #@a
    return-object v1

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static newPercentageRating(F)Landroid/media/Rating;
    .locals 2
    .param p0, "percent"    # F

    #@0
    .prologue
    .line 225
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p0, v0

    #@3
    if-ltz v0, :cond_0

    #@5
    const/high16 v0, 0x42c80000    # 100.0f

    #@7
    cmpl-float v0, p0, v0

    #@9
    if-lez v0, :cond_1

    #@b
    .line 226
    :cond_0
    const-string/jumbo v0, "Rating"

    #@e
    const-string/jumbo v1, "Invalid percentage-based rating value"

    #@11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 227
    const/4 v0, 0x0

    #@15
    return-object v0

    #@16
    .line 229
    :cond_1
    new-instance v0, Landroid/media/Rating;

    #@18
    const/4 v1, 0x6

    #@19
    invoke-direct {v0, v1, p0}, Landroid/media/Rating;-><init>(IF)V

    #@1c
    return-object v0
.end method

.method public static newStarRating(IF)Landroid/media/Rating;
    .locals 5
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 195
    const/high16 v0, -0x40800000    # -1.0f

    #@3
    .line 196
    .local v0, "maxRating":F
    packed-switch p0, :pswitch_data_0

    #@6
    .line 207
    const-string/jumbo v1, "Rating"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Invalid rating style ("

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, ") for a star rating"

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 208
    return-object v4

    #@28
    .line 198
    :pswitch_0
    const/high16 v0, 0x40400000    # 3.0f

    #@2a
    .line 210
    :goto_0
    const/4 v1, 0x0

    #@2b
    cmpg-float v1, p1, v1

    #@2d
    if-ltz v1, :cond_0

    #@2f
    cmpl-float v1, p1, v0

    #@31
    if-lez v1, :cond_1

    #@33
    .line 211
    :cond_0
    const-string/jumbo v1, "Rating"

    #@36
    const-string/jumbo v2, "Trying to set out of range star-based rating"

    #@39
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 212
    return-object v4

    #@3d
    .line 201
    :pswitch_1
    const/high16 v0, 0x40800000    # 4.0f

    #@3f
    .line 202
    goto :goto_0

    #@40
    .line 204
    :pswitch_2
    const/high16 v0, 0x40a00000    # 5.0f

    #@42
    .line 205
    goto :goto_0

    #@43
    .line 214
    :cond_1
    new-instance v1, Landroid/media/Rating;

    #@45
    invoke-direct {v1, p0, p1}, Landroid/media/Rating;-><init>(IF)V

    #@48
    return-object v1

    #@49
    .line 196
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/media/Rating;
    .locals 3
    .param p0, "thumbIsUp"    # Z

    #@0
    .prologue
    .line 179
    new-instance v1, Landroid/media/Rating;

    #@2
    if-eqz p0, :cond_0

    #@4
    const/high16 v0, 0x3f800000    # 1.0f

    #@6
    :goto_0
    const/4 v2, 0x2

    #@7
    invoke-direct {v1, v2, v0}, Landroid/media/Rating;-><init>(IF)V

    #@a
    return-object v1

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static newUnratedRating(I)Landroid/media/Rating;
    .locals 2
    .param p0, "ratingStyle"    # I

    #@0
    .prologue
    .line 147
    packed-switch p0, :pswitch_data_0

    #@3
    .line 156
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 154
    :pswitch_0
    new-instance v0, Landroid/media/Rating;

    #@7
    const/high16 v1, -0x40800000    # -1.0f

    #@9
    invoke-direct {v0, p0, v1}, Landroid/media/Rating;-><init>(IF)V

    #@c
    return-object v0

    #@d
    .line 147
    nop

    #@e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    #@2
    return v0
.end method

.method public getPercentRating()F
    .locals 2

    #@0
    .prologue
    .line 302
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ne v0, v1, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 305
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    #@d
    return v0

    #@e
    .line 303
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    #@10
    return v0
.end method

.method public getRatingStyle()I
    .locals 1

    #@0
    .prologue
    .line 249
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    #@2
    return v0
.end method

.method public getStarRating()F
    .locals 1

    #@0
    .prologue
    .line 284
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 292
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    #@7
    return v0

    #@8
    .line 288
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 289
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    #@10
    return v0

    #@11
    .line 284
    nop

    #@12
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasHeart()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 258
    iget v2, p0, Landroid/media/Rating;->mRatingStyle:I

    #@4
    if-eq v2, v0, :cond_0

    #@6
    .line 259
    return v1

    #@7
    .line 261
    :cond_0
    iget v2, p0, Landroid/media/Rating;->mRatingValue:F

    #@9
    const/high16 v3, 0x3f800000    # 1.0f

    #@b
    cmpl-float v2, v2, v3

    #@d
    if-nez v2, :cond_1

    #@f
    :goto_0
    return v0

    #@10
    :cond_1
    move v0, v1

    #@11
    goto :goto_0
.end method

.method public isRated()Z
    .locals 2

    #@0
    .prologue
    .line 238
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    #@2
    const/4 v1, 0x0

    #@3
    cmpl-float v0, v0, v1

    #@5
    if-ltz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isThumbUp()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 271
    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    #@3
    const/4 v2, 0x2

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 272
    return v0

    #@7
    .line 274
    :cond_0
    iget v1, p0, Landroid/media/Rating;->mRatingValue:F

    #@9
    const/high16 v2, 0x3f800000    # 1.0f

    #@b
    cmpl-float v1, v1, v2

    #@d
    if-nez v1, :cond_1

    #@f
    const/4 v0, 0x1

    #@10
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Rating:style="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " rating="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    .line 105
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    #@1b
    const/4 v2, 0x0

    #@1c
    cmpg-float v0, v0, v2

    #@1e
    if-gez v0, :cond_0

    #@20
    const-string/jumbo v0, "unrated"

    #@23
    .line 104
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    return-object v0

    #@2c
    .line 105
    :cond_0
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    #@2e
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 115
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 116
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@a
    .line 114
    return-void
.end method
