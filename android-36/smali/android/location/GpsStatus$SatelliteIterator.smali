.class final Landroid/location/GpsStatus$SatelliteIterator;
.super Ljava/lang/Object;
.source "GpsStatus.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SatelliteIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroid/location/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o mIndex:I

.field private final greylist-max-o mSatellitesCount:I

.field final synthetic blacklist this$0:Landroid/location/GpsStatus;


# direct methods
.method constructor blacklist <init>(Landroid/location/GpsStatus;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    .line 48
    invoke-static {p1}, Landroid/location/GpsStatus;->-$$Nest$fgetmSatellites(Landroid/location/GpsStatus;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    iput p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    .line 49
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 4

    .line 53
    nop

    :goto_1
    iget v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    if-ge v0, v1, :cond_21

    .line 54
    iget-object v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-static {v0}, Landroid/location/GpsStatus;->-$$Nest$fgetmSatellites(Landroid/location/GpsStatus;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 55
    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 56
    return v2

    .line 53
    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_1b
    iget v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    goto :goto_1

    .line 59
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist next()Landroid/location/GpsSatellite;
    .registers 3

    .line 64
    nop

    :goto_1
    iget v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    if-ge v0, v1, :cond_21

    .line 65
    iget-object v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    invoke-static {v0}, Landroid/location/GpsStatus;->-$$Nest$fgetmSatellites(Landroid/location/GpsStatus;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 66
    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    .line 67
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    if-eqz v1, :cond_20

    .line 68
    return-object v0

    .line 70
    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_20
    goto :goto_1

    .line 71
    :cond_21
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 42
    invoke-virtual {p0}, Landroid/location/GpsStatus$SatelliteIterator;->next()Landroid/location/GpsSatellite;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
