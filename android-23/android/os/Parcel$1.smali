.class final Landroid/os/Parcel$1;
.super Ljava/lang/Object;
.source "Parcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Parcel;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 291
    invoke-virtual {p0, p1}, Landroid/os/Parcel$1;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 294
    invoke-virtual {p0, p1}, Landroid/os/Parcel$1;->newArray(I)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 295
    new-array v0, p1, [Ljava/lang/String;

    #@2
    return-object v0
.end method
