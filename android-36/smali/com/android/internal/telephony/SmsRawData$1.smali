.class Lcom/android/internal/telephony/SmsRawData$1;
.super Ljava/lang/Object;
.source "SmsRawData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsRawData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/telephony/SmsRawData;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsRawData;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 37
    .local v0, "size":I
    new-array v1, v0, [B

    .line 38
    .local v1, "data":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 39
    new-instance v2, Lcom/android/internal/telephony/SmsRawData;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/SmsRawData;-><init>([B)V

    return-object v2
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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsRawData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsRawData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/telephony/SmsRawData;
    .registers 3
    .param p1, "size"    # I

    .line 43
    new-array v0, p1, [Lcom/android/internal/telephony/SmsRawData;

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
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SmsRawData$1;->newArray(I)[Lcom/android/internal/telephony/SmsRawData;

    move-result-object p1

    return-object p1
.end method
