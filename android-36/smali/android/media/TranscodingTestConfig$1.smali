.class Landroid/media/TranscodingTestConfig$1;
.super Ljava/lang/Object;
.source "TranscodingTestConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TranscodingTestConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/TranscodingTestConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/TranscodingTestConfig;
    .registers 2

    .line 32
    new-instance p0, Landroid/media/TranscodingTestConfig;

    invoke-direct {p0}, Landroid/media/TranscodingTestConfig;-><init>()V

    .line 33
    invoke-virtual {p0, p1}, Landroid/media/TranscodingTestConfig;->readFromParcel(Landroid/os/Parcel;)V

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

    .line 29
    invoke-virtual {p0, p1}, Landroid/media/TranscodingTestConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/TranscodingTestConfig;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/TranscodingTestConfig;
    .registers 2

    .line 38
    new-array p0, p1, [Landroid/media/TranscodingTestConfig;

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

    .line 29
    invoke-virtual {p0, p1}, Landroid/media/TranscodingTestConfig$1;->newArray(I)[Landroid/media/TranscodingTestConfig;

    move-result-object p0

    return-object p0
.end method
