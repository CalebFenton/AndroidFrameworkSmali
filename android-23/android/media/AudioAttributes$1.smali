.class final Landroid/media/AudioAttributes$1;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
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
        "Landroid/media/AudioAttributes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioAttributes;
    .locals 2
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 623
    new-instance v0, Landroid/media/AudioAttributes;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;Landroid/media/AudioAttributes;)V

    #@6
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 622
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioAttributes;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/media/AudioAttributes;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 626
    new-array v0, p1, [Landroid/media/AudioAttributes;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 625
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$1;->newArray(I)[Landroid/media/AudioAttributes;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
