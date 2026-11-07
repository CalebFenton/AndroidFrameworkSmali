.class public final Landroid/ranging/RangingMeasurement;
.super Ljava/lang/Object;
.source "RangingMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/RangingMeasurement$Builder;,
        Landroid/ranging/RangingMeasurement$Confidence;
    }
.end annotation


# static fields
.field public static final whitelist CONFIDENCE_HIGH:I = 0x2

.field public static final whitelist CONFIDENCE_LOW:I = 0x0

.field public static final whitelist CONFIDENCE_MEDIUM:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/RangingMeasurement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfidence:I

.field private final blacklist mError:D

.field private final blacklist mMeasurement:D

.field private final blacklist mRawConfidence:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 88
    new-instance v0, Landroid/ranging/RangingMeasurement$1;

    invoke-direct {v0}, Landroid/ranging/RangingMeasurement$1;-><init>()V

    sput-object v0, Landroid/ranging/RangingMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingMeasurement;->mMeasurement:D

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/RangingMeasurement;->mConfidence:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingMeasurement;->mRawConfidence:D

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingMeasurement;->mError:D

    .line 85
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/RangingMeasurement-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/RangingMeasurement;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/RangingMeasurement$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/ranging/RangingMeasurement$Builder;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Landroid/ranging/RangingMeasurement$Builder;->-$$Nest$fgetmMeasurement(Landroid/ranging/RangingMeasurement$Builder;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_26

    .line 74
    invoke-static {p1}, Landroid/ranging/RangingMeasurement$Builder;->-$$Nest$fgetmMeasurement(Landroid/ranging/RangingMeasurement$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingMeasurement;->mMeasurement:D

    .line 75
    invoke-static {p1}, Landroid/ranging/RangingMeasurement$Builder;->-$$Nest$fgetmConfidence(Landroid/ranging/RangingMeasurement$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/RangingMeasurement;->mConfidence:I

    .line 76
    invoke-static {p1}, Landroid/ranging/RangingMeasurement$Builder;->-$$Nest$fgetmRawConfidence(Landroid/ranging/RangingMeasurement$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingMeasurement;->mRawConfidence:D

    .line 77
    invoke-static {p1}, Landroid/ranging/RangingMeasurement$Builder;->-$$Nest$fgetmError(Landroid/ranging/RangingMeasurement$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/ranging/RangingMeasurement;->mError:D

    .line 78
    return-void

    .line 72
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing required parameter: measurement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/RangingMeasurement$Builder;Landroid/ranging/RangingMeasurement-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/RangingMeasurement;-><init>(Landroid/ranging/RangingMeasurement$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConfidence()I
    .registers 2

    .line 115
    iget v0, p0, Landroid/ranging/RangingMeasurement;->mConfidence:I

    return v0
.end method

.method public blacklist getError()D
    .registers 3

    .line 159
    iget-wide v0, p0, Landroid/ranging/RangingMeasurement;->mError:D

    return-wide v0
.end method

.method public whitelist getMeasurement()D
    .registers 3

    .line 106
    iget-wide v0, p0, Landroid/ranging/RangingMeasurement;->mMeasurement:D

    return-wide v0
.end method

.method public blacklist getRawConfidence()D
    .registers 3

    .line 135
    iget-wide v0, p0, Landroid/ranging/RangingMeasurement;->mRawConfidence:D

    return-wide v0
.end method

.method public blacklist hasError()Z
    .registers 3

    .line 145
    iget-wide v0, p0, Landroid/ranging/RangingMeasurement;->mError:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist hasRawConfidence()Z
    .registers 3

    .line 125
    iget-wide v0, p0, Landroid/ranging/RangingMeasurement;->mRawConfidence:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingMeasurement{mMeasurement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/ranging/RangingMeasurement;->mMeasurement:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/RangingMeasurement;->mConfidence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRawConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/ranging/RangingMeasurement;->mRawConfidence:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/ranging/RangingMeasurement;->mError:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 169
    iget-wide v0, p0, Landroid/ranging/RangingMeasurement;->mMeasurement:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 170
    iget v0, p0, Landroid/ranging/RangingMeasurement;->mConfidence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-wide v0, p0, Landroid/ranging/RangingMeasurement;->mRawConfidence:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 172
    iget-wide v0, p0, Landroid/ranging/RangingMeasurement;->mError:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 173
    return-void
.end method
