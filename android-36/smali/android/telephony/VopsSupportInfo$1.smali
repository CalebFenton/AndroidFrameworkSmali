.class Landroid/telephony/VopsSupportInfo$1;
.super Ljava/lang/Object;
.source "VopsSupportInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VopsSupportInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/VopsSupportInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VopsSupportInfo;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_1a

    .line 88
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Bad VopsSupportInfo Parcel"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :sswitch_f
    invoke-static {p1}, Landroid/telephony/NrVopsSupportInfo;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/NrVopsSupportInfo;

    move-result-object v1

    return-object v1

    .line 85
    :sswitch_14
    invoke-static {p1}, Landroid/telephony/LteVopsSupportInfo;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/LteVopsSupportInfo;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_1a
    .sparse-switch
        0x3 -> :sswitch_14
        0x6 -> :sswitch_f
    .end sparse-switch
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

    .line 79
    invoke-virtual {p0, p1}, Landroid/telephony/VopsSupportInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/VopsSupportInfo;
    .registers 3
    .param p1, "size"    # I

    .line 94
    new-array v0, p1, [Landroid/telephony/VopsSupportInfo;

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

    .line 79
    invoke-virtual {p0, p1}, Landroid/telephony/VopsSupportInfo$1;->newArray(I)[Landroid/telephony/VopsSupportInfo;

    move-result-object p1

    return-object p1
.end method
