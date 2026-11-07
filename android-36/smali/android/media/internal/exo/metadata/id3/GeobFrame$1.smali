.class Landroid/media/internal/exo/metadata/id3/GeobFrame$1;
.super Ljava/lang/Object;
.source "GeobFrame.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/metadata/id3/GeobFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/internal/exo/metadata/id3/GeobFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/internal/exo/metadata/id3/GeobFrame;
    .registers 2

    .line 103
    new-instance p0, Landroid/media/internal/exo/metadata/id3/GeobFrame;

    invoke-direct {p0, p1}, Landroid/media/internal/exo/metadata/id3/GeobFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0
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

    .line 99
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/metadata/id3/GeobFrame$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/internal/exo/metadata/id3/GeobFrame;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/internal/exo/metadata/id3/GeobFrame;
    .registers 2

    .line 108
    new-array p0, p1, [Landroid/media/internal/exo/metadata/id3/GeobFrame;

    return-object p0
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

    .line 99
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/metadata/id3/GeobFrame$1;->newArray(I)[Landroid/media/internal/exo/metadata/id3/GeobFrame;

    move-result-object p0

    return-object p0
.end method
