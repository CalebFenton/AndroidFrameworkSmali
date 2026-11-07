.class public final Landroid/ranging/RangingMeasurement$Builder;
.super Ljava/lang/Object;
.source "RangingMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/RangingMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConfidence:I

.field private blacklist mError:D

.field private blacklist mMeasurement:D

.field private blacklist mRawConfidence:D


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfidence(Landroid/ranging/RangingMeasurement$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/RangingMeasurement$Builder;->mConfidence:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmError(Landroid/ranging/RangingMeasurement$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/ranging/RangingMeasurement$Builder;->mError:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMeasurement(Landroid/ranging/RangingMeasurement$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/ranging/RangingMeasurement$Builder;->mMeasurement:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRawConfidence(Landroid/ranging/RangingMeasurement$Builder;)D
    .registers 3

    iget-wide v0, p0, Landroid/ranging/RangingMeasurement$Builder;->mRawConfidence:D

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/ranging/RangingMeasurement$Builder;->mMeasurement:D

    .line 182
    const/4 v2, 0x1

    iput v2, p0, Landroid/ranging/RangingMeasurement$Builder;->mConfidence:I

    .line 183
    iput-wide v0, p0, Landroid/ranging/RangingMeasurement$Builder;->mRawConfidence:D

    .line 184
    iput-wide v0, p0, Landroid/ranging/RangingMeasurement$Builder;->mError:D

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/ranging/RangingMeasurement;
    .registers 3

    .line 258
    new-instance v0, Landroid/ranging/RangingMeasurement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/RangingMeasurement;-><init>(Landroid/ranging/RangingMeasurement$Builder;Landroid/ranging/RangingMeasurement-IA;)V

    return-object v0
.end method

.method public blacklist setConfidence(I)Landroid/ranging/RangingMeasurement$Builder;
    .registers 2
    .param p1, "confidence"    # I

    .line 207
    iput p1, p0, Landroid/ranging/RangingMeasurement$Builder;->mConfidence:I

    .line 208
    return-object p0
.end method

.method public blacklist setError(D)Landroid/ranging/RangingMeasurement$Builder;
    .registers 5
    .param p1, "error"    # D

    .line 244
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_9

    .line 247
    iput-wide p1, p0, Landroid/ranging/RangingMeasurement$Builder;->mError:D

    .line 248
    return-object p0

    .line 245
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided error must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setMeasurement(D)Landroid/ranging/RangingMeasurement$Builder;
    .registers 3
    .param p1, "measurement"    # D

    .line 195
    iput-wide p1, p0, Landroid/ranging/RangingMeasurement$Builder;->mMeasurement:D

    .line 196
    return-object p0
.end method

.method public blacklist setRawConfidence(D)Landroid/ranging/RangingMeasurement$Builder;
    .registers 5
    .param p1, "confidence"    # D

    .line 222
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_f

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_f

    .line 226
    iput-wide p1, p0, Landroid/ranging/RangingMeasurement$Builder;->mRawConfidence:D

    .line 227
    return-object p0

    .line 223
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided raw confidence value must be in [0.0, 1.0]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
