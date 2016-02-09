.class public final Landroid/support/v4/media/RatingCompat;
.super Ljava/lang/Object;
.source "RatingCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/RatingCompat$Style;,
        Landroid/support/v4/media/RatingCompat$StarStyle;,
        Landroid/support/v4/media/RatingCompat$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/RatingCompat;",
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
.field private mRatingObj:Ljava/lang/Object;

.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 122
    new-instance v0, Landroid/support/v4/media/RatingCompat$1;

    #@2
    invoke-direct {v0}, Landroid/support/v4/media/RatingCompat$1;-><init>()V

    #@5
    .line 121
    sput-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 36
    return-void
.end method

.method private constructor <init>(IF)V
    .locals 0
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    #@0
    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 100
    iput p1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@5
    .line 101
    iput p2, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    #@7
    .line 99
    return-void
.end method

.method synthetic constructor <init>(IFLandroid/support/v4/media/RatingCompat;)V
    .locals 0
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    #@3
    return-void
.end method

.method public static fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
    .locals 5
    .param p0, "ratingObj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 322
    if-eqz p0, :cond_0

    #@3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v3, 0x15

    #@7
    if-ge v2, v3, :cond_1

    #@9
    .line 323
    :cond_0
    return-object v4

    #@a
    .line 326
    :cond_1
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatApi21;->getRatingStyle(Ljava/lang/Object;)I

    #@d
    move-result v1

    #@e
    .line 328
    .local v1, "ratingStyle":I
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatApi21;->isRated(Ljava/lang/Object;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    .line 329
    packed-switch v1, :pswitch_data_0

    #@17
    .line 346
    return-object v4

    #@18
    .line 331
    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatApi21;->hasHeart(Ljava/lang/Object;)Z

    #@1b
    move-result v2

    #@1c
    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    #@1f
    move-result-object v0

    #@20
    .line 351
    .local v0, "rating":Landroid/support/v4/media/RatingCompat;
    :goto_0
    iput-object p0, v0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    #@22
    .line 352
    return-object v0

    #@23
    .line 334
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_1
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatApi21;->isThumbUp(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    #@2a
    move-result-object v0

    #@2b
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_0

    #@2c
    .line 340
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_2
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatApi21;->getStarRating(Ljava/lang/Object;)F

    #@2f
    move-result v2

    #@30
    .line 339
    invoke-static {v1, v2}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    #@33
    move-result-object v0

    #@34
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_0

    #@35
    .line 343
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :pswitch_3
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatApi21;->getPercentRating(Ljava/lang/Object;)F

    #@38
    move-result v2

    #@39
    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    #@3c
    move-result-object v0

    #@3d
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_0

    #@3e
    .line 349
    .end local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    :cond_2
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    #@41
    move-result-object v0

    #@42
    .restart local v0    # "rating":Landroid/support/v4/media/RatingCompat;
    goto :goto_0

    #@43
    .line 329
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static newHeartRating(Z)Landroid/support/v4/media/RatingCompat;
    .locals 3
    .param p0, "hasHeart"    # Z

    #@0
    .prologue
    .line 170
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    #@2
    if-eqz p0, :cond_0

    #@4
    const/high16 v0, 0x3f800000    # 1.0f

    #@6
    :goto_0
    const/4 v2, 0x1

    #@7
    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    #@a
    return-object v1

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static newPercentageRating(F)Landroid/support/v4/media/RatingCompat;
    .locals 2
    .param p0, "percent"    # F

    #@0
    .prologue
    .line 228
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
    .line 229
    :cond_0
    const-string/jumbo v0, "Rating"

    #@e
    const-string/jumbo v1, "Invalid percentage-based rating value"

    #@11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 230
    const/4 v0, 0x0

    #@15
    return-object v0

    #@16
    .line 232
    :cond_1
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    #@18
    const/4 v1, 0x6

    #@19
    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    #@1c
    return-object v0
.end method

.method public static newStarRating(IF)Landroid/support/v4/media/RatingCompat;
    .locals 5
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 198
    const/high16 v0, -0x40800000    # -1.0f

    #@3
    .line 199
    .local v0, "maxRating":F
    packed-switch p0, :pswitch_data_0

    #@6
    .line 210
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
    .line 211
    return-object v4

    #@28
    .line 201
    :pswitch_0
    const/high16 v0, 0x40400000    # 3.0f

    #@2a
    .line 213
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
    .line 214
    :cond_0
    const-string/jumbo v1, "Rating"

    #@36
    const-string/jumbo v2, "Trying to set out of range star-based rating"

    #@39
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 215
    return-object v4

    #@3d
    .line 204
    :pswitch_1
    const/high16 v0, 0x40800000    # 4.0f

    #@3f
    .line 205
    goto :goto_0

    #@40
    .line 207
    :pswitch_2
    const/high16 v0, 0x40a00000    # 5.0f

    #@42
    .line 208
    goto :goto_0

    #@43
    .line 217
    :cond_1
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    #@45
    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    #@48
    return-object v1

    #@49
    .line 199
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/support/v4/media/RatingCompat;
    .locals 3
    .param p0, "thumbIsUp"    # Z

    #@0
    .prologue
    .line 181
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    #@2
    if-eqz p0, :cond_0

    #@4
    const/high16 v0, 0x3f800000    # 1.0f

    #@6
    :goto_0
    const/4 v2, 0x2

    #@7
    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    #@a
    return-object v1

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public static newUnratedRating(I)Landroid/support/v4/media/RatingCompat;
    .locals 2
    .param p0, "ratingStyle"    # I

    #@0
    .prologue
    .line 149
    packed-switch p0, :pswitch_data_0

    #@3
    .line 158
    const/4 v0, 0x0

    #@4
    return-object v0

    #@5
    .line 156
    :pswitch_0
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    #@7
    const/high16 v1, -0x40800000    # -1.0f

    #@9
    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    #@c
    return-object v0

    #@d
    .line 149
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
    .line 112
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@2
    return v0
.end method

.method public getPercentRating()F
    .locals 2

    #@0
    .prologue
    .line 305
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ne v0, v1, :cond_0

    #@5
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 308
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    #@d
    return v0

    #@e
    .line 306
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    #@10
    return v0
.end method

.method public getRating()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 364
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    #@3
    if-nez v0, :cond_0

    #@5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@7
    const/16 v1, 0x15

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 365
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    #@d
    return-object v0

    #@e
    .line 368
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_2

    #@14
    .line 369
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@16
    packed-switch v0, :pswitch_data_0

    #@19
    .line 384
    :goto_0
    return-object v2

    #@1a
    .line 371
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->hasHeart()Z

    #@1d
    move-result v0

    #@1e
    invoke-static {v0}, Landroid/support/v4/media/RatingCompatApi21;->newHeartRating(Z)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    #@24
    .line 389
    :goto_1
    iget-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    #@26
    return-object v0

    #@27
    .line 374
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isThumbUp()Z

    #@2a
    move-result v0

    #@2b
    invoke-static {v0}, Landroid/support/v4/media/RatingCompatApi21;->newThumbRating(Z)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    #@31
    goto :goto_1

    #@32
    .line 379
    :pswitch_2
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@34
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getStarRating()F

    #@37
    move-result v1

    #@38
    invoke-static {v0, v1}, Landroid/support/v4/media/RatingCompatApi21;->newStarRating(IF)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    #@3e
    goto :goto_1

    #@3f
    .line 382
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->getPercentRating()F

    #@42
    move-result v0

    #@43
    invoke-static {v0}, Landroid/support/v4/media/RatingCompatApi21;->newPercentageRating(F)Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    #@49
    goto :goto_0

    #@4a
    .line 387
    :cond_2
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@4c
    invoke-static {v0}, Landroid/support/v4/media/RatingCompatApi21;->newUnratedRating(I)Ljava/lang/Object;

    #@4f
    move-result-object v0

    #@50
    iput-object v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    #@52
    goto :goto_1

    #@53
    .line 369
    nop

    #@54
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRatingStyle()I
    .locals 1

    #@0
    .prologue
    .line 252
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@2
    return v0
.end method

.method public getStarRating()F
    .locals 1

    #@0
    .prologue
    .line 287
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 295
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    #@7
    return v0

    #@8
    .line 291
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/v4/media/RatingCompat;->isRated()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 292
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    #@10
    return v0

    #@11
    .line 287
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
    .line 261
    iget v2, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@4
    if-eq v2, v0, :cond_0

    #@6
    .line 262
    return v1

    #@7
    .line 264
    :cond_0
    iget v2, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

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
    .line 241
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

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
    .line 274
    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@3
    const/4 v2, 0x2

    #@4
    if-eq v1, v2, :cond_0

    #@6
    .line 275
    return v0

    #@7
    .line 277
    :cond_0
    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

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
    .line 106
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
    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

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
    .line 107
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    #@1b
    const/4 v2, 0x0

    #@1c
    cmpg-float v0, v0, v2

    #@1e
    if-gez v0, :cond_0

    #@20
    const-string/jumbo v0, "unrated"

    #@23
    .line 106
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
    .line 107
    :cond_0
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

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
    .line 117
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 118
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@a
    .line 116
    return-void
.end method
