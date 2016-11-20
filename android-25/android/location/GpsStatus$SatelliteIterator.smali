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

.field private final mSatellitesCount:I

.field final synthetic this$0:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/GpsStatus;

    #@0
    .prologue
    .line 48
    iput-object p1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 46
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@8
    .line 49
    invoke-static {p1}, Landroid/location/GpsStatus;->-get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    #@12
    .line 48
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    #@0
    .prologue
    .line 54
    :goto_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@2
    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 55
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    #@8
    invoke-static {v1}, Landroid/location/GpsStatus;->-get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@e
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/location/GpsSatellite;

    #@14
    .line 56
    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 57
    const/4 v1, 0x1

    #@19
    return v1

    #@1a
    .line 54
    :cond_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@20
    goto :goto_0

    #@21
    .line 60
    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    const/4 v1, 0x0

    #@22
    return v1
.end method

.method public next()Landroid/location/GpsSatellite;
    .locals 3

    #@0
    .prologue
    .line 65
    :cond_0
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@2
    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mSatellitesCount:I

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 66
    iget-object v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->this$0:Landroid/location/GpsStatus;

    #@8
    invoke-static {v1}, Landroid/location/GpsStatus;->-get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@e
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/location/GpsSatellite;

    #@14
    .line 67
    .local v0, "satellite":Landroid/location/GpsSatellite;
    iget v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@16
    add-int/lit8 v1, v1, 0x1

    #@18
    iput v1, p0, Landroid/location/GpsStatus$SatelliteIterator;->mIndex:I

    #@1a
    .line 68
    iget-boolean v1, v0, Landroid/location/GpsSatellite;->mValid:Z

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 69
    return-object v0

    #@1f
    .line 72
    .end local v0    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    #@21
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@24
    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 64
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
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
