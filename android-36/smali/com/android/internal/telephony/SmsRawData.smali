.class public Lcom/android/internal/telephony/SmsRawData;
.super Ljava/lang/Object;
.source "SmsRawData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-o data:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/android/internal/telephony/SmsRawData$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsRawData$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SmsRawData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>([B)V
    .registers 2
    .param p1, "data"    # [B

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/SmsRawData;->data:[B

    .line 51
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public greylist getBytes()[B
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/SmsRawData;->data:[B

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/SmsRawData;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/SmsRawData;->data:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 65
    return-void
.end method
