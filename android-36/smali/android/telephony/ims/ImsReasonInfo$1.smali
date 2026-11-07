.class Landroid/telephony/ims/ImsReasonInfo$1;
.super Ljava/lang/Object;
.source "ImsReasonInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/ImsReasonInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/ims/ImsReasonInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/ImsReasonInfo;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1432
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsReasonInfo-IA;)V

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

    .line 1429
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsReasonInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/ims/ImsReasonInfo;
    .registers 3
    .param p1, "size"    # I

    .line 1437
    new-array v0, p1, [Landroid/telephony/ims/ImsReasonInfo;

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

    .line 1429
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsReasonInfo$1;->newArray(I)[Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p1

    return-object p1
.end method
