.class final Landroid/os/CpuUsageInfo$1;
.super Ljava/lang/Object;
.source "CpuUsageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuUsageInfo;
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
        "Landroid/os/CpuUsageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/CpuUsageInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 29
    new-instance v0, Landroid/os/CpuUsageInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/os/CpuUsageInfo;-><init>(Landroid/os/Parcel;Landroid/os/CpuUsageInfo;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/os/CpuUsageInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/CpuUsageInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/os/CpuUsageInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 33
    new-array v0, p1, [Landroid/os/CpuUsageInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/os/CpuUsageInfo$1;->newArray(I)[Landroid/os/CpuUsageInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
