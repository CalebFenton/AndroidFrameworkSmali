.class Landroid/media/audiopolicy/AudioMix$1;
.super Ljava/lang/Object;
.source "AudioMix.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/audiopolicy/AudioMix;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioMix;
    .registers 5
    .param p1, "p"    # Landroid/os/Parcel;

    .line 339
    new-instance v0, Landroid/media/audiopolicy/AudioMix$Builder;

    invoke-direct {v0}, Landroid/media/audiopolicy/AudioMix$Builder;-><init>()V

    .line 341
    .local v0, "mixBuilder":Landroid/media/audiopolicy/AudioMix$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;->setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;->setCallbackFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/audiopolicy/AudioMix$Builder;->setDevice(ILjava/lang/String;)Landroid/media/audiopolicy/AudioMix$Builder;

    .line 346
    sget-object v1, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioFormat;

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;->setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;

    .line 347
    sget-object v1, Landroid/media/audiopolicy/AudioMixingRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/AudioMixingRule;

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;->setMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)Landroid/media/audiopolicy/AudioMix$Builder;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;->setToken(Landroid/os/IBinder;)Landroid/media/audiopolicy/AudioMix$Builder;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/audiopolicy/AudioMix$Builder;->setVirtualDeviceId(I)Landroid/media/audiopolicy/AudioMix$Builder;

    .line 350
    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioMix$Builder;->build()Landroid/media/audiopolicy/AudioMix;

    move-result-object v1

    return-object v1
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

    .line 331
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioMix$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/audiopolicy/AudioMix;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/audiopolicy/AudioMix;
    .registers 3
    .param p1, "size"    # I

    .line 354
    new-array v0, p1, [Landroid/media/audiopolicy/AudioMix;

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

    .line 331
    invoke-virtual {p0, p1}, Landroid/media/audiopolicy/AudioMix$1;->newArray(I)[Landroid/media/audiopolicy/AudioMix;

    move-result-object p1

    return-object p1
.end method
