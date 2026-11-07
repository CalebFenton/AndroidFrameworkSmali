.class public final Landroid/hardware/display/DisplayedContentSamplingAttributes;
.super Ljava/lang/Object;
.source "DisplayedContentSamplingAttributes.java"


# instance fields
.field private blacklist mComponentMask:I

.field private blacklist mDataspace:I

.field private blacklist mPixelFormat:I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "format"    # I
    .param p2, "ds"    # I
    .param p3, "componentMask"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mPixelFormat:I

    .line 37
    iput p2, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mDataspace:I

    .line 38
    iput p3, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mComponentMask:I

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist getComponentMask()I
    .registers 2

    .line 65
    iget v0, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mComponentMask:I

    return v0
.end method

.method public blacklist getDataspace()I
    .registers 2

    .line 56
    iget v0, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mDataspace:I

    return v0
.end method

.method public blacklist getPixelFormat()I
    .registers 2

    .line 47
    iget v0, p0, Landroid/hardware/display/DisplayedContentSamplingAttributes;->mPixelFormat:I

    return v0
.end method
