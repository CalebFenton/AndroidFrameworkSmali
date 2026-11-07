.class Lcom/android/internal/telephony/IccLogicalChannelRequest$1;
.super Ljava/lang/Object;
.source "IccLogicalChannelRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccLogicalChannelRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/IccLogicalChannelRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 36
    new-instance v0, Lcom/android/internal/telephony/IccLogicalChannelRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/IccLogicalChannelRequest;-><init>()V

    .line 37
    .local v0, "_aidl_out":Lcom/android/internal/telephony/IccLogicalChannelRequest;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccLogicalChannelRequest;->readFromParcel(Landroid/os/Parcel;)V

    .line 38
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

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccLogicalChannelRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/IccLogicalChannelRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 42
    new-array v0, p1, [Lcom/android/internal/telephony/IccLogicalChannelRequest;

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

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccLogicalChannelRequest$1;->newArray(I)[Lcom/android/internal/telephony/IccLogicalChannelRequest;

    move-result-object p1

    return-object p1
.end method
