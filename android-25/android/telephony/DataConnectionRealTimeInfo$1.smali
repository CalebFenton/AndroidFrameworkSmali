.class final Landroid/telephony/DataConnectionRealTimeInfo$1;
.super Ljava/lang/Object;
.source "DataConnectionRealTimeInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DataConnectionRealTimeInfo;
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
        "Landroid/telephony/DataConnectionRealTimeInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/DataConnectionRealTimeInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 96
    new-instance v0, Landroid/telephony/DataConnectionRealTimeInfo;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>(Landroid/os/Parcel;Landroid/telephony/DataConnectionRealTimeInfo;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/telephony/DataConnectionRealTimeInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/DataConnectionRealTimeInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/DataConnectionRealTimeInfo;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 101
    new-array v0, p1, [Landroid/telephony/DataConnectionRealTimeInfo;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 100
    invoke-virtual {p0, p1}, Landroid/telephony/DataConnectionRealTimeInfo$1;->newArray(I)[Landroid/telephony/DataConnectionRealTimeInfo;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
