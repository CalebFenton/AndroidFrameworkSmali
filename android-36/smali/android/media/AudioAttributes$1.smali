.class Landroid/media/AudioAttributes$1;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioAttributes;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioAttributes;
    .registers 4
    .param p1, "p"    # Landroid/os/Parcel;

    .line 1422
    new-instance v0, Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/os/Parcel;Landroid/media/AudioAttributes-IA;)V

    return-object v0
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

    .line 1415
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioAttributes;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/AudioAttributes;
    .registers 3
    .param p1, "size"    # I

    .line 1425
    new-array v0, p1, [Landroid/media/AudioAttributes;

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

    .line 1415
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$1;->newArray(I)[Landroid/media/AudioAttributes;

    move-result-object p1

    return-object p1
.end method
