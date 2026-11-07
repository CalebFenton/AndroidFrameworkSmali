.class Landroid/telephony/SignalThresholdInfo$1;
.super Ljava/lang/Object;
.source "SignalThresholdInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalThresholdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/SignalThresholdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SignalThresholdInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 654
    new-instance v0, Landroid/telephony/SignalThresholdInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/SignalThresholdInfo;-><init>(Landroid/os/Parcel;Landroid/telephony/SignalThresholdInfo-IA;)V

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

    .line 651
    invoke-virtual {p0, p1}, Landroid/telephony/SignalThresholdInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SignalThresholdInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/SignalThresholdInfo;
    .registers 3
    .param p1, "size"    # I

    .line 659
    new-array v0, p1, [Landroid/telephony/SignalThresholdInfo;

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

    .line 651
    invoke-virtual {p0, p1}, Landroid/telephony/SignalThresholdInfo$1;->newArray(I)[Landroid/telephony/SignalThresholdInfo;

    move-result-object p1

    return-object p1
.end method
