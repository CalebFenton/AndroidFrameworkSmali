.class public final Landroid/content/res/ResourceId;
.super Ljava/lang/Object;
.source "ResourceId.java"


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o isValid(I)Z
    .registers 2
    .param p0, "id"    # I

    .line 38
    const/4 v0, -0x1

    if-eq p0, v0, :cond_f

    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_f

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method
