.class public final Landroid/location/KeplerianOrbitModel;
.super Ljava/lang/Object;
.source "KeplerianOrbitModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/KeplerianOrbitModel$Builder;,
        Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/KeplerianOrbitModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDeltaN:D

.field private final blacklist mEccentricity:D

.field private final blacklist mI0:D

.field private final blacklist mIDot:D

.field private final blacklist mM0:D

.field private final blacklist mOmega:D

.field private final blacklist mOmega0:D

.field private final blacklist mOmegaDot:D

.field private final blacklist mRootA:D

.field blacklist mSecondOrderHarmonicPerturbation:Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 153
    new-instance v0, Landroid/location/KeplerianOrbitModel$1;

    invoke-direct {v0}, Landroid/location/KeplerianOrbitModel$1;-><init>()V

    sput-object v0, Landroid/location/KeplerianOrbitModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/KeplerianOrbitModel$Builder;)V
    .registers 16
    .param p1, "builder"    # Landroid/location/KeplerianOrbitModel$Builder;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmRootA(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    const-wide/high16 v4, 0x40c0000000000000L    # 8192.0

    const-string v6, "RootA"

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 73
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmEccentricity(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v7

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    const-string v13, "Eccentricity"

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 74
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmI0(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    const-wide v4, 0x4009333340000000L    # 3.1500000953674316

    const-string v6, "I0"

    const-wide v2, -0x3ff6ccccc0000000L    # -3.1500000953674316

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 75
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmIDot(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v7

    const-wide v11, 0x3e294120e0000000L    # 2.940000021212086E-9

    const-string v13, "IDot"

    const-wide v9, -0x41d6bedf20000000L    # -2.940000021212086E-9

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 76
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmOmega(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    const-string v6, "Omega"

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 77
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmOmega0(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v7

    const-wide v11, 0x4009333340000000L    # 3.1500000953674316

    const-string v13, "Omega0"

    const-wide v9, -0x3ff6ccccc0000000L    # -3.1500000953674316

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 78
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmOmegaDot(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    const-wide v4, 0x3eca013300000000L    # 3.099999958067201E-6

    const-string v6, "OmegaDot"

    const-wide v2, -0x4135fecd00000000L    # -3.099999958067201E-6

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 79
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmM0(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v7

    const-string v13, "M0"

    invoke-static/range {v7 .. v13}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 80
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmDeltaN(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    const-wide v4, 0x3e49571e60000000L    # 1.1800000088157958E-8

    const-string v6, "DeltaN"

    const-wide v2, -0x41b6a8e1a0000000L    # -1.1800000088157958E-8

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    .line 81
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmRootA(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mRootA:D

    .line 82
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmEccentricity(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mEccentricity:D

    .line 83
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmI0(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mI0:D

    .line 84
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmIDot(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mIDot:D

    .line 85
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmOmega(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mOmega:D

    .line 86
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmOmega0(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mOmega0:D

    .line 87
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmOmegaDot(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mOmegaDot:D

    .line 88
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmM0(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mM0:D

    .line 89
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmDeltaN(Landroid/location/KeplerianOrbitModel$Builder;)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mDeltaN:D

    .line 90
    invoke-static {p1}, Landroid/location/KeplerianOrbitModel$Builder;->-$$Nest$fgetmSecondOrderHarmonicPerturbation(Landroid/location/KeplerianOrbitModel$Builder;)Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    move-result-object v0

    iput-object v0, p0, Landroid/location/KeplerianOrbitModel;->mSecondOrderHarmonicPerturbation:Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    .line 91
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/KeplerianOrbitModel$Builder;Landroid/location/KeplerianOrbitModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/KeplerianOrbitModel;-><init>(Landroid/location/KeplerianOrbitModel$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeltaN()D
    .registers 3

    .line 144
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mDeltaN:D

    return-wide v0
.end method

.method public blacklist getEccentricity()D
    .registers 3

    .line 102
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mEccentricity:D

    return-wide v0
.end method

.method public blacklist getI0()D
    .registers 3

    .line 108
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mI0:D

    return-wide v0
.end method

.method public blacklist getIDot()D
    .registers 3

    .line 114
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mIDot:D

    return-wide v0
.end method

.method public blacklist getM0()D
    .registers 3

    .line 138
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mM0:D

    return-wide v0
.end method

.method public blacklist getOmega()D
    .registers 3

    .line 120
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mOmega:D

    return-wide v0
.end method

.method public blacklist getOmega0()D
    .registers 3

    .line 126
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mOmega0:D

    return-wide v0
.end method

.method public blacklist getOmegaDot()D
    .registers 3

    .line 132
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mOmegaDot:D

    return-wide v0
.end method

.method public blacklist getRootA()D
    .registers 3

    .line 96
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mRootA:D

    return-wide v0
.end method

.method public blacklist getSecondOrderHarmonicPerturbation()Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/location/KeplerianOrbitModel;->mSecondOrderHarmonicPerturbation:Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeplerianOrbitModel["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "rootA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel;->mRootA:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, ", eccentricity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel;->mEccentricity:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, ", i0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel;->mI0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ", iDot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel;->mIDot:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, ", omega = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel;->mOmega:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ", omega0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel;->mOmega0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, ", omegaDot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel;->mOmegaDot:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", m0 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel;->mM0:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, ", deltaN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/KeplerianOrbitModel;->mDeltaN:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, ", secondOrderHarmonicPerturbation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/KeplerianOrbitModel;->mSecondOrderHarmonicPerturbation:Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 188
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mRootA:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 189
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mEccentricity:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 190
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mI0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 191
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mIDot:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 192
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mOmega:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 193
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mOmega0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 194
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mOmegaDot:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 195
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mM0:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 196
    iget-wide v0, p0, Landroid/location/KeplerianOrbitModel;->mDeltaN:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 197
    iget-object v0, p0, Landroid/location/KeplerianOrbitModel;->mSecondOrderHarmonicPerturbation:Landroid/location/KeplerianOrbitModel$SecondOrderHarmonicPerturbation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 198
    return-void
.end method
