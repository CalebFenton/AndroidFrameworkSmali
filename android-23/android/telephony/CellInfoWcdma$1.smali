.class final Landroid/telephony/CellInfoWcdma$1;
.super Ljava/lang/Object;
.source "CellInfoWcdma.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellInfoWcdma;
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
        "Landroid/telephony/CellInfoWcdma;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    .line 128
    invoke-static {p1}, Landroid/telephony/CellInfoWcdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 126
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfoWcdma$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellInfoWcdma;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellInfoWcdma;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 133
    new-array v0, p1, [Landroid/telephony/CellInfoWcdma;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 132
    invoke-virtual {p0, p1}, Landroid/telephony/CellInfoWcdma$1;->newArray(I)[Landroid/telephony/CellInfoWcdma;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
