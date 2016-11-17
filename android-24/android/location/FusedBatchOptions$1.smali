.class final Landroid/location/FusedBatchOptions$1;
.super Ljava/lang/Object;
.source "FusedBatchOptions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/FusedBatchOptions;
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
        "Landroid/location/FusedBatchOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/FusedBatchOptions;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 120
    new-instance v0, Landroid/location/FusedBatchOptions;

    #@2
    invoke-direct {v0}, Landroid/location/FusedBatchOptions;-><init>()V

    #@5
    .line 121
    .local v0, "options":Landroid/location/FusedBatchOptions;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    #@8
    move-result-wide v2

    #@9
    invoke-virtual {v0, v2, v3}, Landroid/location/FusedBatchOptions;->setMaxPowerAllocationInMW(D)V

    #@c
    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@f
    move-result-wide v2

    #@10
    invoke-virtual {v0, v2, v3}, Landroid/location/FusedBatchOptions;->setPeriodInNS(J)V

    #@13
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v1

    #@17
    invoke-virtual {v0, v1}, Landroid/location/FusedBatchOptions;->setSourceToUse(I)V

    #@1a
    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    invoke-virtual {v0, v1}, Landroid/location/FusedBatchOptions;->setFlag(I)V

    #@21
    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    #@24
    move-result v1

    #@25
    invoke-virtual {v0, v1}, Landroid/location/FusedBatchOptions;->setSmallestDisplacementMeters(F)V

    #@28
    .line 126
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 119
    invoke-virtual {p0, p1}, Landroid/location/FusedBatchOptions$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/FusedBatchOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/location/FusedBatchOptions;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 131
    new-array v0, p1, [Landroid/location/FusedBatchOptions;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 130
    invoke-virtual {p0, p1}, Landroid/location/FusedBatchOptions$1;->newArray(I)[Landroid/location/FusedBatchOptions;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
