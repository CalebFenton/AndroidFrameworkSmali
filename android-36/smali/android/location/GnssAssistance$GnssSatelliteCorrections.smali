.class public final Landroid/location/GnssAssistance$GnssSatelliteCorrections;
.super Ljava/lang/Object;
.source "GnssAssistance.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAssistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssSatelliteCorrections"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mIonosphericCorrections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/IonosphericCorrection;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mSvid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 272
    new-instance v0, Landroid/location/GnssAssistance$GnssSatelliteCorrections$1;

    invoke-direct {v0}, Landroid/location/GnssAssistance$GnssSatelliteCorrections$1;-><init>()V

    sput-object v0, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/util/List;)V
    .registers 4
    .param p1, "svid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/location/IonosphericCorrection;",
            ">;)V"
        }
    .end annotation

    .line 234
    .local p2, "ionosphericCorrections":Ljava/util/List;, "Ljava/util/List<Landroid/location/IonosphericCorrection;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 237
    const-string v0, "IonosphericCorrections cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iput p1, p0, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->mSvid:I

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 241
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->mIonosphericCorrections:Ljava/util/List;

    .line 242
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIonosphericCorrections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/IonosphericCorrection;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->mIonosphericCorrections:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSvid()I
    .registers 2

    .line 263
    iget v0, p0, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->mSvid:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssSatelliteCorrections["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "svid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->mSvid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    const-string v1, ", ionosphericCorrections = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->mIonosphericCorrections:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 296
    iget v0, p0, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v0, p0, Landroid/location/GnssAssistance$GnssSatelliteCorrections;->mIonosphericCorrections:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 298
    return-void
.end method
