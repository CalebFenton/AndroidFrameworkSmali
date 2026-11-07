.class public final Landroid/location/IonosphericCorrection;
.super Ljava/lang/Object;
.source "IonosphericCorrection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/IonosphericCorrection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCarrierFrequencyHz:J

.field private final blacklist mIonosphericCorrection:Landroid/location/GnssCorrectionComponent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/location/IonosphericCorrection$1;

    invoke-direct {v0}, Landroid/location/IonosphericCorrection$1;-><init>()V

    sput-object v0, Landroid/location/IonosphericCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JLandroid/location/GnssCorrectionComponent;)V
    .registers 6
    .param p1, "carrierFrequencyHz"    # J
    .param p3, "ionosphericCorrection"    # Landroid/location/GnssCorrectionComponent;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 55
    const-string v0, "IonosphericCorrection cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-wide p1, p0, Landroid/location/IonosphericCorrection;->mCarrierFrequencyHz:J

    .line 57
    iput-object p3, p0, Landroid/location/IonosphericCorrection;->mIonosphericCorrection:Landroid/location/GnssCorrectionComponent;

    .line 58
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCarrierFrequencyHz()J
    .registers 3

    .line 66
    iget-wide v0, p0, Landroid/location/IonosphericCorrection;->mCarrierFrequencyHz:J

    return-wide v0
.end method

.method public blacklist getIonosphericCorrection()Landroid/location/GnssCorrectionComponent;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/location/IonosphericCorrection;->mIonosphericCorrection:Landroid/location/GnssCorrectionComponent;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IonosphericCorrection["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "carrierFrequencyHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/IonosphericCorrection;->mCarrierFrequencyHz:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", ionosphericCorrection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/IonosphericCorrection;->mIonosphericCorrection:Landroid/location/GnssCorrectionComponent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 99
    iget-wide v0, p0, Landroid/location/IonosphericCorrection;->mCarrierFrequencyHz:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 100
    iget-object v0, p0, Landroid/location/IonosphericCorrection;->mIonosphericCorrection:Landroid/location/GnssCorrectionComponent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 101
    return-void
.end method
