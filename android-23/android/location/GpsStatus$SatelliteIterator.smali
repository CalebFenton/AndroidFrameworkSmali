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
        "Ljava/util/Iterator",
        "<",
        "Landroid/location/GpsSatellite;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellitesCount:I

.field final synthetic this$0:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/GpsStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 43
    .local p2, "satellites":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/location/GpsSatellite;>;"
    iput-object p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 41
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@8
    .line 44
    iput-object p2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:Landroid/util/SparseArray;

    #@a
    .line 45
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    #@10
    .line 43
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    #@0
    .prologue
    .line 49
    :goto_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@2
    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 50
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:Landroid/util/SparseArray;

    #@8
    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@a
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/location/GpsSatellite;

    #@10
    .line 51
    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 52
    const/4 v1, 0x1

    #@15
    return v1

    #@16
    .line 49
    :cond_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@18
    add-int/lit8 v1, v1, 0x1

    #@1a
    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@1c
    goto :goto_0

    #@1d
    .line 55
    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    const/4 v1, 0x0

    #@1e
    return v1
.end method

.method public next()Landroid/location/GpsSatellite;
    .locals 3

    #@0
    .prologue
    .line 59
    :cond_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@2
    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 60
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellites:Landroid/util/SparseArray;

    #@8
    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@a
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/location/GpsSatellite;

    #@10
    .line 61
    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@12
    add-int/lit8 v1, v1, 0x1

    #@14
    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@16
    .line 62
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    #@18
    if-eqz v1, :cond_0

    #@1a
    .line 63
    return-object v0

    #@1b
    .line 66
    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    #@1d
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@20
    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/location/GpsStatus$SatelliteIterator;->next()Landroid/location/GpsSatellite;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove()V
    .locals 1

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
