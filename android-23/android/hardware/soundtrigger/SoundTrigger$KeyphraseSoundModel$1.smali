.class final Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel$1;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
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
        "Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 391
    invoke-static {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->-wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 390
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 395
    new-array v0, p1, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 394
    invoke-virtual {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel$1;->newArray(I)[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
