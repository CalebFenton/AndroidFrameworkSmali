.class final Lcom/android/ims/ImsCallProfile$1;
.super Ljava/lang/Object;
.source "ImsCallProfile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCallProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/ims/ImsCallProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/ImsCallProfile;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 301
    new-instance v0, Lcom/android/ims/ImsCallProfile;

    #@2
    invoke-direct {v0, p1}, Lcom/android/ims/ImsCallProfile;-><init>(Landroid/os/Parcel;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCallProfile$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/ims/ImsCallProfile;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Lcom/android/ims/ImsCallProfile;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 306
    new-array v0, p1, [Lcom/android/ims/ImsCallProfile;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCallProfile$1;->newArray(I)[Lcom/android/ims/ImsCallProfile;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
