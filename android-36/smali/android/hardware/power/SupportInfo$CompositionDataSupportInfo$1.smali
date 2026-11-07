.class Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo$1;
.super Ljava/lang/Object;
.source "SupportInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 105
    new-instance v0, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    invoke-direct {v0}, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;-><init>()V

    .line 106
    .local v0, "_aidl_out":Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;
    invoke-virtual {v0, p1}, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 107
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 111
    new-array v0, p1, [Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo$1;->newArray(I)[Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    move-result-object p1

    return-object p1
.end method
