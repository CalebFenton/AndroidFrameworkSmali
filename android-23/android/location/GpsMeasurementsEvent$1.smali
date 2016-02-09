.class final Landroid/location/GpsMeasurementsEvent$1;
.super Ljava/lang/Object;
.source "GpsMeasurementsEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsMeasurementsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/location/GpsMeasurementsEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurementsEvent;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/location/GpsMeasurementsEvent$1;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v4

    #@4
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 112
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/location/GpsClock;

    #@e
    .line 114
    .local v1, "clock":Landroid/location/GpsClock;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v3

    #@12
    .line 115
    .local v3, "measurementsLength":I
    new-array v2, v3, [Landroid/location/GpsMeasurement;

    #@14
    .line 116
    .local v2, "measurementsArray":[Landroid/location/GpsMeasurement;
    sget-object v4, Landroid/location/GpsMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    #@16
    invoke-virtual {p1, v2, v4}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    #@19
    .line 118
    new-instance v4, Landroid/location/GpsMeasurementsEvent;

    #@1b
    invoke-direct {v4, v1, v2}, Landroid/location/GpsMeasurementsEvent;-><init>(Landroid/location/GpsClock;[Landroid/location/GpsMeasurement;)V

    #@1e
    return-object v4
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 109
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurementsEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurementsEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsMeasurementsEvent;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 123
    new-array v0, p1, [Landroid/location/GpsMeasurementsEvent;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 122
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurementsEvent$1;->newArray(I)[Landroid/location/GpsMeasurementsEvent;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
