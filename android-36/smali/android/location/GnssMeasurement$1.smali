.class Landroid/location/GnssMeasurement$1;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/GnssMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1938
    new-instance v0, Landroid/location/GnssMeasurement;

    invoke-direct {v0}, Landroid/location/GnssMeasurement;-><init>()V

    .line 1940
    .local v0, "gnssMeasurement":Landroid/location/GnssMeasurement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmFlags(Landroid/location/GnssMeasurement;I)V

    .line 1941
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmSvid(Landroid/location/GnssMeasurement;I)V

    .line 1942
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmConstellationType(Landroid/location/GnssMeasurement;I)V

    .line 1943
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmTimeOffsetNanos(Landroid/location/GnssMeasurement;D)V

    .line 1944
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmState(Landroid/location/GnssMeasurement;I)V

    .line 1945
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmReceivedSvTimeNanos(Landroid/location/GnssMeasurement;J)V

    .line 1946
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmReceivedSvTimeUncertaintyNanos(Landroid/location/GnssMeasurement;J)V

    .line 1947
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCn0DbHz(Landroid/location/GnssMeasurement;D)V

    .line 1948
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmPseudorangeRateMetersPerSecond(Landroid/location/GnssMeasurement;D)V

    .line 1949
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmPseudorangeRateUncertaintyMetersPerSecond(Landroid/location/GnssMeasurement;D)V

    .line 1950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmAccumulatedDeltaRangeState(Landroid/location/GnssMeasurement;I)V

    .line 1951
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmAccumulatedDeltaRangeMeters(Landroid/location/GnssMeasurement;D)V

    .line 1952
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmAccumulatedDeltaRangeUncertaintyMeters(Landroid/location/GnssMeasurement;D)V

    .line 1953
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCarrierFrequencyHz(Landroid/location/GnssMeasurement;F)V

    .line 1954
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCarrierCycles(Landroid/location/GnssMeasurement;J)V

    .line 1955
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCarrierPhase(Landroid/location/GnssMeasurement;D)V

    .line 1956
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCarrierPhaseUncertainty(Landroid/location/GnssMeasurement;D)V

    .line 1957
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmMultipathIndicator(Landroid/location/GnssMeasurement;I)V

    .line 1958
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmSnrInDb(Landroid/location/GnssMeasurement;D)V

    .line 1959
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmAutomaticGainControlLevelInDb(Landroid/location/GnssMeasurement;D)V

    .line 1960
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/location/GnssMeasurement;->-$$Nest$fputmCodeType(Landroid/location/GnssMeasurement;Ljava/lang/String;)V

    .line 1961
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmBasebandCn0DbHz(Landroid/location/GnssMeasurement;D)V

    .line 1962
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmFullInterSignalBiasNanos(Landroid/location/GnssMeasurement;D)V

    .line 1963
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmFullInterSignalBiasUncertaintyNanos(Landroid/location/GnssMeasurement;D)V

    .line 1964
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmSatelliteInterSignalBiasNanos(Landroid/location/GnssMeasurement;D)V

    .line 1965
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmSatelliteInterSignalBiasUncertaintyNanos(Landroid/location/GnssMeasurement;D)V

    .line 1966
    invoke-virtual {v0}, Landroid/location/GnssMeasurement;->hasSatellitePvt()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 1967
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1968
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-class v2, Landroid/location/SatellitePvt;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/SatellitePvt;

    invoke-static {v0, v2}, Landroid/location/GnssMeasurement;->-$$Nest$fputmSatellitePvt(Landroid/location/GnssMeasurement;Landroid/location/SatellitePvt;)V

    .line 1970
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_d4
    invoke-virtual {v0}, Landroid/location/GnssMeasurement;->hasCorrelationVectors()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 1971
    nop

    .line 1972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v1, v1, [Landroid/location/CorrelationVector;

    .line 1973
    .local v1, "correlationVectorsArray":[Landroid/location/CorrelationVector;
    sget-object v2, Landroid/location/CorrelationVector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 1974
    nop

    .line 1975
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1976
    .local v2, "corrVecCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/CorrelationVector;>;"
    nop

    .line 1977
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/location/GnssMeasurement;->-$$Nest$fputmReadOnlyCorrelationVectors(Landroid/location/GnssMeasurement;Ljava/util/Collection;)V

    .line 1979
    .end local v1    # "correlationVectorsArray":[Landroid/location/CorrelationVector;
    .end local v2    # "corrVecCollection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/location/CorrelationVector;>;"
    :cond_f3
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1935
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GnssMeasurement;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/GnssMeasurement;
    .registers 3
    .param p1, "i"    # I

    .line 1984
    new-array v0, p1, [Landroid/location/GnssMeasurement;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1935
    invoke-virtual {p0, p1}, Landroid/location/GnssMeasurement$1;->newArray(I)[Landroid/location/GnssMeasurement;

    move-result-object p1

    return-object p1
.end method
