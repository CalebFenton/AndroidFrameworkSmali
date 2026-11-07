.class Lcom/android/internal/telephony/uicc/AdnRecord$1;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AdnRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/uicc/AdnRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 9

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 103
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

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

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/uicc/AdnRecord;
    .registers 2

    .line 108
    new-array p0, p1, [Lcom/android/internal/telephony/uicc/AdnRecord;

    return-object p0
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

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$1;->newArray(I)[Lcom/android/internal/telephony/uicc/AdnRecord;

    move-result-object p0

    return-object p0
.end method
