.class public abstract Lcom/android/framework/protobuf/nano/android/ParcelableMessageNano;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "ParcelableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->writeToParcel(Ljava/lang/Class;Lcom/android/framework/protobuf/nano/MessageNano;Landroid/os/Parcel;)V

    .line 51
    return-void
.end method
