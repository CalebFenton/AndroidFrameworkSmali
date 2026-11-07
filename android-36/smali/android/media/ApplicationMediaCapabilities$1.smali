.class Landroid/media/ApplicationMediaCapabilities$1;
.super Ljava/lang/Object;
.source "ApplicationMediaCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ApplicationMediaCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/ApplicationMediaCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/ApplicationMediaCapabilities;
    .registers 6

    .line 207
    new-instance p0, Landroid/media/ApplicationMediaCapabilities$Builder;

    invoke-direct {p0}, Landroid/media/ApplicationMediaCapabilities$Builder;-><init>()V

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_17

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 217
    :cond_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v2, v1

    :goto_1c
    if-ge v2, v0, :cond_28

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addUnsupportedVideoMimeType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 223
    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move v2, v1

    :goto_2d
    if-ge v2, v0, :cond_39

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/ApplicationMediaCapabilities$Builder;->addSupportedHdrType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 229
    :cond_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :goto_3d
    if-ge v1, v0, :cond_49

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/media/ApplicationMediaCapabilities$Builder;->addUnsupportedHdrType(Ljava/lang/String;)Landroid/media/ApplicationMediaCapabilities$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 234
    :cond_49
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 235
    invoke-virtual {p0, p1}, Landroid/media/ApplicationMediaCapabilities$Builder;->setSlowMotionSupported(Z)Landroid/media/ApplicationMediaCapabilities$Builder;

    .line 237
    invoke-virtual {p0}, Landroid/media/ApplicationMediaCapabilities$Builder;->build()Landroid/media/ApplicationMediaCapabilities;

    move-result-object p0

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

    .line 205
    invoke-virtual {p0, p1}, Landroid/media/ApplicationMediaCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/ApplicationMediaCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/ApplicationMediaCapabilities;
    .registers 2

    .line 241
    new-array p0, p1, [Landroid/media/ApplicationMediaCapabilities;

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

    .line 205
    invoke-virtual {p0, p1}, Landroid/media/ApplicationMediaCapabilities$1;->newArray(I)[Landroid/media/ApplicationMediaCapabilities;

    move-result-object p0

    return-object p0
.end method
