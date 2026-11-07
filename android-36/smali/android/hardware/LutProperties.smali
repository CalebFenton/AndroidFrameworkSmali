.class public final Landroid/hardware/LutProperties;
.super Ljava/lang/Object;
.source "LutProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/LutProperties$Dimension;,
        Landroid/hardware/LutProperties$SamplingKey;
    }
.end annotation


# static fields
.field public static final whitelist ONE_DIMENSION:I = 0x1

.field public static final whitelist SAMPLING_KEY_CIE_Y:I = 0x2

.field public static final whitelist SAMPLING_KEY_MAX_RGB:I = 0x1

.field public static final whitelist SAMPLING_KEY_RGB:I = 0x0

.field public static final whitelist THREE_DIMENSION:I = 0x3


# instance fields
.field private final blacklist mDimension:I

.field private final blacklist mSamplingKeys:[I

.field private final blacklist mSize:I


# direct methods
.method private constructor blacklist <init>(II[I)V
    .registers 6
    .param p1, "dimension"    # I
    .param p2, "size"    # I
    .param p3, "samplingKeys"    # [I

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    const/4 v0, 0x3

    if-ne p1, v0, :cond_10

    .line 112
    iput p1, p0, Landroid/hardware/LutProperties;->mDimension:I

    .line 113
    iput p2, p0, Landroid/hardware/LutProperties;->mSize:I

    .line 114
    iput-object p3, p0, Landroid/hardware/LutProperties;->mSamplingKeys:[I

    .line 115
    return-void

    .line 110
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The dimension is either 1 or 3!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getDimension()I
    .registers 2

    .line 84
    iget v0, p0, Landroid/hardware/LutProperties;->mDimension:I

    return v0
.end method

.method public whitelist getSamplingKeys()[I
    .registers 3

    .line 101
    iget-object v0, p0, Landroid/hardware/LutProperties;->mSamplingKeys:[I

    array-length v0, v0

    if-eqz v0, :cond_8

    .line 104
    iget-object v0, p0, Landroid/hardware/LutProperties;->mSamplingKeys:[I

    return-object v0

    .line 102
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no sampling key!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSize()I
    .registers 2

    .line 92
    iget v0, p0, Landroid/hardware/LutProperties;->mSize:I

    return v0
.end method
