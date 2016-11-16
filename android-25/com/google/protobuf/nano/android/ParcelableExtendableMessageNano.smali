.class public abstract Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ParcelableExtendableMessageNano.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<TM;>;>",
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<TM;>;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;, "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano<TM;>;"
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 47
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;, "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano<TM;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 52
    .local p0, "this":Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;, "Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano<TM;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/nano/android/ParcelableExtendableMessageNano;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->writeToParcel(Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Landroid/os/Parcel;)V

    #@7
    .line 51
    return-void
.end method
