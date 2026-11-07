.class public Landroid/text/Layout$Directions;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Directions"
.end annotation


# instance fields
.field public greylist-max-o mDirections:[I


# direct methods
.method public constructor greylist-max-o <init>([I)V
    .registers 2
    .param p1, "dirs"    # [I

    .line 3521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3522
    iput-object p1, p0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 3523
    return-void
.end method


# virtual methods
.method public blacklist getRunCount()I
    .registers 2

    .line 3531
    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public blacklist getRunLength(I)I
    .registers 4
    .param p1, "runIndex"    # I

    .line 3557
    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public blacklist getRunLevel(I)I
    .registers 4
    .param p1, "runIndex"    # I

    .line 3569
    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    ushr-int/lit8 v0, v0, 0x1a

    and-int/lit8 v0, v0, 0x3f

    return v0
.end method

.method public blacklist getRunStart(I)I
    .registers 4
    .param p1, "runIndex"    # I

    .line 3542
    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public blacklist isRunRtl(I)Z
    .registers 5
    .param p1, "runIndex"    # I

    .line 3580
    iget-object v0, p0, Landroid/text/Layout$Directions;->mDirections:[I

    mul-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget v0, v0, v1

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method
