.class public final Landroid/app/Notification$ProgressStyle$Point;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$ProgressStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point"
.end annotation


# instance fields
.field private blacklist mColor:I

.field private blacklist mId:I

.field private blacklist mPosition:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "position"    # I

    .line 12278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12268
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    .line 12279
    iput p1, p0, Landroid/app/Notification$ProgressStyle$Point;->mPosition:I

    .line 12280
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 12330
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 12331
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2a

    .line 12332
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/Notification$ProgressStyle$Point;

    .line 12333
    .local v2, "point":Landroid/app/Notification$ProgressStyle$Point;
    iget v3, p0, Landroid/app/Notification$ProgressStyle$Point;->mPosition:I

    iget v4, v2, Landroid/app/Notification$ProgressStyle$Point;->mPosition:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/app/Notification$ProgressStyle$Point;->mId:I

    iget v4, v2, Landroid/app/Notification$ProgressStyle$Point;->mId:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    iget v4, v2, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 12331
    .end local v2    # "point":Landroid/app/Notification$ProgressStyle$Point;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public whitelist getColor()I
    .registers 2

    .line 12314
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    return v0
.end method

.method public whitelist getId()I
    .registers 2

    .line 12296
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Point;->mId:I

    return v0
.end method

.method public whitelist getPosition()I
    .registers 2

    .line 12288
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Point;->mPosition:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 12339
    iget v0, p0, Landroid/app/Notification$ProgressStyle$Point;->mPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/Notification$ProgressStyle$Point;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist setColor(I)Landroid/app/Notification$ProgressStyle$Point;
    .registers 2
    .param p1, "color"    # I

    .line 12321
    iput p1, p0, Landroid/app/Notification$ProgressStyle$Point;->mColor:I

    .line 12322
    return-object p0
.end method

.method public whitelist setId(I)Landroid/app/Notification$ProgressStyle$Point;
    .registers 2
    .param p1, "id"    # I

    .line 12303
    iput p1, p0, Landroid/app/Notification$ProgressStyle$Point;->mId:I

    .line 12304
    return-object p0
.end method
