.class final Landroid/hardware/location/ContextHubInfo$1;
.super Ljava/lang/Object;
.source "ContextHubInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubInfo;
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
        "Landroid/hardware/location/ContextHubInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ContextHubInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 413
    new-instance v0, Landroid/hardware/location/ContextHubInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/hardware/location/ContextHubInfo;-><init>(Landroid/os/Parcel;Landroid/hardware/location/ContextHubInfo;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroid/hardware/location/ContextHubInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/location/ContextHubInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/location/ContextHubInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 417
    new-array v0, p1, [Landroid/hardware/location/ContextHubInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 416
    invoke-virtual {p0, p1}, Landroid/hardware/location/ContextHubInfo$1;->newArray(I)[Landroid/hardware/location/ContextHubInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
