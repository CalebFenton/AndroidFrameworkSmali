.class final Landroid/hardware/location/NanoAppInstanceInfo$1;
.super Ljava/lang/Object;
.source "NanoAppInstanceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/NanoAppInstanceInfo;
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
        "Landroid/hardware/location/NanoAppInstanceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 329
    new-instance v0, Landroid/hardware/location/NanoAppInstanceInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>(Landroid/os/Parcel;Landroid/hardware/location/NanoAppInstanceInfo;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 328
    invoke-virtual {p0, p1}, Landroid/hardware/location/NanoAppInstanceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/NanoAppInstanceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 333
    new-array v0, p1, [Landroid/hardware/location/NanoAppInstanceInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 332
    invoke-virtual {p0, p1}, Landroid/hardware/location/NanoAppInstanceInfo$1;->newArray(I)[Landroid/hardware/location/NanoAppInstanceInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
