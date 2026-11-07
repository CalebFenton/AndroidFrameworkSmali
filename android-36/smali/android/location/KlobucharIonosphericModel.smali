.class public final Landroid/location/KlobucharIonosphericModel;
.super Ljava/lang/Object;
.source "KlobucharIonosphericModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/KlobucharIonosphericModel$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/KlobucharIonosphericModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mAlpha0:D

.field blacklist mAlpha1:D

.field blacklist mAlpha2:D

.field blacklist mAlpha3:D

.field blacklist mBeta0:D

.field blacklist mBeta1:D

.field blacklist mBeta2:D

.field blacklist mBeta3:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Landroid/location/KlobucharIonosphericModel$1;

    invoke-direct {v0}, Landroid/location/KlobucharIonosphericModel$1;-><init>()V

    sput-object v0, Landroid/location/KlobucharIonosphericModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/KlobucharIonosphericModel$Builder;)V
    .registers 16
    .param p1, "builder"    # Landroid/location/KlobucharIonosphericModel$Builder;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmAlpha0(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    const-wide v4, 0x3e80031de0000000L    # 1.1929999743642838E-7

    const-string v6, "Alpha0"

    const-wide v2, -0x417ffce220000000L    # -1.1929999743642838E-7

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 58
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmAlpha1(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v7

    const-wide v11, 0x3eb0016620000000L    # 9.540000291963224E-7

    const-string v13, "Alpha1"

    const-wide v9, -0x414ffe99e0000000L    # -9.540000291963224E-7

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 59
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmAlpha2(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    const-wide v4, 0x3ee0005340000000L    # 7.63000025472138E-6

    const-string v6, "Alpha2"

    const-wide v2, -0x411fffacc0000000L    # -7.63000025472138E-6

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 60
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmAlpha3(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v7

    const-wide v11, 0x3ee0005340000000L    # 7.63000025472138E-6

    const-string v13, "Alpha3"

    const-wide v9, -0x411fffacc0000000L    # -7.63000025472138E-6

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 61
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmBeta0(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    const-wide/high16 v4, 0x4110000000000000L    # 262144.0

    const-string v6, "Beta0"

    const-wide/high16 v2, -0x3ef0000000000000L    # -262144.0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 62
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmBeta1(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v7

    const-wide/high16 v11, 0x4140000000000000L    # 2097152.0

    const-string v13, "Beta1"

    const-wide/high16 v9, -0x3ec0000000000000L    # -2097152.0

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 63
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmBeta2(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    const-wide/high16 v4, 0x4160000000000000L    # 8388608.0

    const-string v6, "Beta2"

    const-wide/high16 v2, -0x3ea0000000000000L    # -8388608.0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 64
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmBeta3(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v7

    const-wide/high16 v11, 0x4160000000000000L    # 8388608.0

    const-string v13, "Beta3"

    const-wide/high16 v9, -0x3ea0000000000000L    # -8388608.0

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 65
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmAlpha0(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha0:D

    .line 66
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmAlpha1(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha1:D

    .line 67
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmAlpha2(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha2:D

    .line 68
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmAlpha3(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha3:D

    .line 69
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmBeta0(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta0:D

    .line 70
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmBeta1(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta1:D

    .line 71
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmBeta2(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta2:D

    .line 72
    invoke-static {p1}, Landroid/location/KlobucharIonosphericModel$Builder;->-$$Nest$fgetmBeta3(Landroid/location/KlobucharIonosphericModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta3:D

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/KlobucharIonosphericModel$Builder;Landroid/location/KlobucharIonosphericModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/KlobucharIonosphericModel;-><init>(Landroid/location/KlobucharIonosphericModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAlpha0()D
    .registers 3

    .line 78
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha0:D

    return-wide v0
.end method

.method public blacklist getAlpha1()D
    .registers 3

    .line 84
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha1:D

    return-wide v0
.end method

.method public blacklist getAlpha2()D
    .registers 3

    .line 90
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha2:D

    return-wide v0
.end method

.method public blacklist getAlpha3()D
    .registers 3

    .line 96
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha3:D

    return-wide v0
.end method

.method public blacklist getBeta0()D
    .registers 3

    .line 102
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta0:D

    return-wide v0
.end method

.method public blacklist getBeta1()D
    .registers 3

    .line 108
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta1:D

    return-wide v0
.end method

.method public blacklist getBeta2()D
    .registers 3

    .line 114
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta2:D

    return-wide v0
.end method

.method public blacklist getBeta3()D
    .registers 3

    .line 120
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta3:D

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KlobucharIonosphericModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "alpha0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, ", alpha1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ", alpha2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha2:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, ", alpha3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha3:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", beta0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KlobucharIonosphericModel;->mBeta0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", beta1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KlobucharIonosphericModel;->mBeta1:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", beta2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KlobucharIonosphericModel;->mBeta2:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", beta3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KlobucharIonosphericModel;->mBeta3:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 154
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 155
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha2:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 156
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mAlpha3:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 157
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 158
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta1:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 159
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta2:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 160
    iget-wide v0, p0, Landroid/location/KlobucharIonosphericModel;->mBeta3:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 161
    return-void
.end method
