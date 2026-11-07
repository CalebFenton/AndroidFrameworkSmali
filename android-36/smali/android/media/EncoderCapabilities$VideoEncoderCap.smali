.class public Landroid/media/EncoderCapabilities$VideoEncoderCap;
.super Ljava/lang/Object;
.source "EncoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoEncoderCap"
.end annotation


# instance fields
.field public final greylist-max-r mCodec:I

.field public final greylist-max-o mMaxBitRate:I

.field public final greylist-max-r mMaxFrameHeight:I

.field public final greylist-max-o mMaxFrameRate:I

.field public final greylist-max-r mMaxFrameWidth:I

.field public final greylist-max-o mMinBitRate:I

.field public final greylist-max-r mMinFrameHeight:I

.field public final greylist-max-o mMinFrameRate:I

.field public final greylist-max-r mMinFrameWidth:I


# direct methods
.method private constructor greylist-max-o <init>(IIIIIIIII)V
    .registers 10
    .param p1, "codec"    # I
    .param p2, "minBitRate"    # I
    .param p3, "maxBitRate"    # I
    .param p4, "minFrameRate"    # I
    .param p5, "maxFrameRate"    # I
    .param p6, "minFrameWidth"    # I
    .param p7, "maxFrameWidth"    # I
    .param p8, "minFrameHeight"    # I
    .param p9, "maxFrameHeight"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mCodec:I

    .line 70
    iput p2, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinBitRate:I

    .line 71
    iput p3, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxBitRate:I

    .line 72
    iput p4, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameRate:I

    .line 73
    iput p5, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameRate:I

    .line 74
    iput p6, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameWidth:I

    .line 75
    iput p7, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameWidth:I

    .line 76
    iput p8, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMinFrameHeight:I

    .line 77
    iput p9, p0, Landroid/media/EncoderCapabilities$VideoEncoderCap;->mMaxFrameHeight:I

    .line 78
    return-void
.end method
