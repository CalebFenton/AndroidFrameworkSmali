.class Landroid/media/TranscodingSessionParcel$1;
.super Ljava/lang/Object;
.source "TranscodingSessionParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TranscodingSessionParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/TranscodingSessionParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/TranscodingSessionParcel;
    .registers 2

    .line 38
    new-instance p0, Landroid/media/TranscodingSessionParcel;

    invoke-direct {p0}, Landroid/media/TranscodingSessionParcel;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Landroid/media/TranscodingSessionParcel;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 35
    invoke-virtual {p0, p1}, Landroid/media/TranscodingSessionParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/TranscodingSessionParcel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/TranscodingSessionParcel;
    .registers 2

    .line 44
    new-array p0, p1, [Landroid/media/TranscodingSessionParcel;

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

    .line 35
    invoke-virtual {p0, p1}, Landroid/media/TranscodingSessionParcel$1;->newArray(I)[Landroid/media/TranscodingSessionParcel;

    move-result-object p0

    return-object p0
.end method
