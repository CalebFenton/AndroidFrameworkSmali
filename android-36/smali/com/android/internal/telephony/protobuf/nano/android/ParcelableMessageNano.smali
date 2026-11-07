.class public abstract Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNano;
.super Lcom/android/internal/telephony/protobuf/nano/MessageNano;
.source "ParcelableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/android/ParcelableMessageNanoCreator;->writeToParcel(Ljava/lang/Class;Lcom/android/internal/telephony/protobuf/nano/MessageNano;Landroid/os/Parcel;)V

    return-void
.end method
