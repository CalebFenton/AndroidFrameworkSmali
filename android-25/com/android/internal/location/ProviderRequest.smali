.class public final Lcom/android/internal/location/ProviderRequest;
.super Ljava/lang/Object;
.source "ProviderRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/ProviderRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/location/ProviderRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public interval:J

.field public locationRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field public reportLocation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Lcom/android/internal/location/ProviderRequest$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/location/ProviderRequest$1;-><init>()V

    #@5
    .line 46
    sput-object v0, Lcom/android/internal/location/ProviderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@6
    .line 33
    const-wide v0, 0x7fffffffffffffffL

    #@b
    iput-wide v0, p0, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@d
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@14
    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 83
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProviderRequest["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 84
    iget-boolean v1, p0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 85
    const-string/jumbo v1, "ON"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 86
    const-string/jumbo v1, " interval="

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 87
    iget-wide v2, p0, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@1d
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@20
    .line 91
    :goto_0
    const/16 v1, 0x5d

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 89
    :cond_0
    const-string/jumbo v1, "OFF"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 72
    iget-boolean v2, p0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const/4 v2, 0x1

    #@5
    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 73
    iget-wide v2, p0, Lcom/android/internal/location/ProviderRequest;->interval:J

    #@a
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@d
    .line 74
    iget-object v2, p0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@f
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@12
    move-result v2

    #@13
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 75
    iget-object v2, p0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    #@18
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1b
    move-result-object v1

    #@1c
    .local v1, "request$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_1

    #@22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/location/LocationRequest;

    #@28
    .line 76
    .local v0, "request":Landroid/location/LocationRequest;
    invoke-virtual {v0, p1, p2}, Landroid/location/LocationRequest;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    goto :goto_1

    #@2c
    .line 72
    .end local v0    # "request":Landroid/location/LocationRequest;
    .end local v1    # "request$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    #@2d
    goto :goto_0

    #@2e
    .line 71
    .restart local v1    # "request$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
