.class Landroid/media/TranscodingRequestParcel$1;
.super Ljava/lang/Object;
.source "TranscodingRequestParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TranscodingRequestParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/TranscodingRequestParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/TranscodingRequestParcel;
    .registers 2

    .line 83
    new-instance p0, Landroid/media/TranscodingRequestParcel;

    invoke-direct {p0}, Landroid/media/TranscodingRequestParcel;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Landroid/media/TranscodingRequestParcel;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 80
    invoke-virtual {p0, p1}, Landroid/media/TranscodingRequestParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/TranscodingRequestParcel;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/TranscodingRequestParcel;
    .registers 2

    .line 89
    new-array p0, p1, [Landroid/media/TranscodingRequestParcel;

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

    .line 80
    invoke-virtual {p0, p1}, Landroid/media/TranscodingRequestParcel$1;->newArray(I)[Landroid/media/TranscodingRequestParcel;

    move-result-object p0

    return-object p0
.end method
