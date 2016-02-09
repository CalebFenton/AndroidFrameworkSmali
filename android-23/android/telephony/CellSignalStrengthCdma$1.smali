.class final Landroid/telephony/CellSignalStrengthCdma$1;
.super Ljava/lang/Object;
.source "CellSignalStrengthCdma.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellSignalStrengthCdma;
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
        "Landroid/telephony/CellSignalStrengthCdma;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellSignalStrengthCdma;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 370
    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/os/Parcel;Landroid/telephony/CellSignalStrengthCdma;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 369
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellSignalStrengthCdma;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CellSignalStrengthCdma;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 375
    new-array v0, p1, [Landroid/telephony/CellSignalStrengthCdma;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 374
    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthCdma$1;->newArray(I)[Landroid/telephony/CellSignalStrengthCdma;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
