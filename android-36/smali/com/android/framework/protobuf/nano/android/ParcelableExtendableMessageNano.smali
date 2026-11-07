.class public abstract Lcom/android/framework/protobuf/nano/android/ParcelableExtendableMessageNano;
.super Lcom/android/framework/protobuf/nano/ExtendableMessageNano;
.source "ParcelableExtendableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;>",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/android/ParcelableExtendableMessageNano<TM;>;"
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/ExtendableMessageNano;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 47
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/android/ParcelableExtendableMessageNano<TM;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    .local p0, "this":Lcom/android/framework/protobuf/nano/android/ParcelableExtendableMessageNano;, "Lcom/android/framework/protobuf/nano/android/ParcelableExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/nano/android/ParcelableMessageNanoCreator;->writeToParcel(Ljava/lang/Class;Lcom/android/framework/protobuf/nano/MessageNano;Landroid/os/Parcel;)V

    .line 53
    return-void
.end method
