.class Landroid/widget/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# static fields
.field public static final greylist-max-o UNDEFINED:I = -0x80000000


# instance fields
.field private greylist-max-o mEnd:I

.field private greylist-max-o mExplicitLeft:I

.field private greylist-max-o mExplicitRight:I

.field private greylist-max-o mIsRelative:Z

.field private greylist-max-o mIsRtl:Z

.field private greylist-max-o mLeft:I

.field private greylist-max-o mRight:I

.field private greylist-max-o mStart:I


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RtlSpacingHelper;->mLeft:I

    .line 29
    iput v0, p0, Landroid/widget/RtlSpacingHelper;->mRight:I

    .line 30
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/widget/RtlSpacingHelper;->mStart:I

    .line 31
    iput v1, p0, Landroid/widget/RtlSpacingHelper;->mEnd:I

    .line 32
    iput v0, p0, Landroid/widget/RtlSpacingHelper;->mExplicitLeft:I

    .line 33
    iput v0, p0, Landroid/widget/RtlSpacingHelper;->mExplicitRight:I

    .line 35
    iput-boolean v0, p0, Landroid/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 36
    iput-boolean v0, p0, Landroid/widget/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public greylist-max-o getEnd()I
    .registers 2

    .line 51
    iget-boolean v0, p0, Landroid/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mLeft:I

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mRight:I

    :goto_9
    return v0
.end method

.method public greylist-max-o getLeft()I
    .registers 2

    .line 39
    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mLeft:I

    return v0
.end method

.method public greylist-max-o getRight()I
    .registers 2

    .line 43
    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mRight:I

    return v0
.end method

.method public greylist-max-o getStart()I
    .registers 2

    .line 47
    iget-boolean v0, p0, Landroid/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mRight:I

    goto :goto_9

    :cond_7
    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mLeft:I

    :goto_9
    return v0
.end method

.method public greylist-max-o setAbsolute(II)V
    .registers 4
    .param p1, "left"    # I
    .param p2, "right"    # I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 69
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_b

    iput p1, p0, Landroid/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/widget/RtlSpacingHelper;->mLeft:I

    .line 70
    :cond_b
    if-eq p2, v0, :cond_11

    iput p2, p0, Landroid/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p2, p0, Landroid/widget/RtlSpacingHelper;->mRight:I

    .line 71
    :cond_11
    return-void
.end method

.method public greylist-max-o setDirection(Z)V
    .registers 4
    .param p1, "isRtl"    # Z

    .line 74
    iget-boolean v0, p0, Landroid/widget/RtlSpacingHelper;->mIsRtl:Z

    if-ne p1, v0, :cond_5

    .line 75
    return-void

    .line 77
    :cond_5
    iput-boolean p1, p0, Landroid/widget/RtlSpacingHelper;->mIsRtl:Z

    .line 78
    iget-boolean v0, p0, Landroid/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v0, :cond_3d

    .line 79
    const/high16 v0, -0x80000000

    if-eqz p1, :cond_26

    .line 80
    iget v1, p0, Landroid/widget/RtlSpacingHelper;->mEnd:I

    if-eq v1, v0, :cond_16

    iget v1, p0, Landroid/widget/RtlSpacingHelper;->mEnd:I

    goto :goto_18

    :cond_16
    iget v1, p0, Landroid/widget/RtlSpacingHelper;->mExplicitLeft:I

    :goto_18
    iput v1, p0, Landroid/widget/RtlSpacingHelper;->mLeft:I

    .line 81
    iget v1, p0, Landroid/widget/RtlSpacingHelper;->mStart:I

    if-eq v1, v0, :cond_21

    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mStart:I

    goto :goto_23

    :cond_21
    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mExplicitRight:I

    :goto_23
    iput v0, p0, Landroid/widget/RtlSpacingHelper;->mRight:I

    goto :goto_45

    .line 83
    :cond_26
    iget v1, p0, Landroid/widget/RtlSpacingHelper;->mStart:I

    if-eq v1, v0, :cond_2d

    iget v1, p0, Landroid/widget/RtlSpacingHelper;->mStart:I

    goto :goto_2f

    :cond_2d
    iget v1, p0, Landroid/widget/RtlSpacingHelper;->mExplicitLeft:I

    :goto_2f
    iput v1, p0, Landroid/widget/RtlSpacingHelper;->mLeft:I

    .line 84
    iget v1, p0, Landroid/widget/RtlSpacingHelper;->mEnd:I

    if-eq v1, v0, :cond_38

    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mEnd:I

    goto :goto_3a

    :cond_38
    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mExplicitRight:I

    :goto_3a
    iput v0, p0, Landroid/widget/RtlSpacingHelper;->mRight:I

    goto :goto_45

    .line 87
    :cond_3d
    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput v0, p0, Landroid/widget/RtlSpacingHelper;->mLeft:I

    .line 88
    iget v0, p0, Landroid/widget/RtlSpacingHelper;->mExplicitRight:I

    iput v0, p0, Landroid/widget/RtlSpacingHelper;->mRight:I

    .line 90
    :goto_45
    return-void
.end method

.method public greylist-max-o setRelative(II)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 55
    iput p1, p0, Landroid/widget/RtlSpacingHelper;->mStart:I

    .line 56
    iput p2, p0, Landroid/widget/RtlSpacingHelper;->mEnd:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RtlSpacingHelper;->mIsRelative:Z

    .line 58
    iget-boolean v0, p0, Landroid/widget/RtlSpacingHelper;->mIsRtl:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_16

    .line 59
    if-eq p2, v1, :cond_11

    iput p2, p0, Landroid/widget/RtlSpacingHelper;->mLeft:I

    .line 60
    :cond_11
    if-eq p1, v1, :cond_1e

    iput p1, p0, Landroid/widget/RtlSpacingHelper;->mRight:I

    goto :goto_1e

    .line 62
    :cond_16
    if-eq p1, v1, :cond_1a

    iput p1, p0, Landroid/widget/RtlSpacingHelper;->mLeft:I

    .line 63
    :cond_1a
    if-eq p2, v1, :cond_1e

    iput p2, p0, Landroid/widget/RtlSpacingHelper;->mRight:I

    .line 65
    :cond_1e
    :goto_1e
    return-void
.end method
