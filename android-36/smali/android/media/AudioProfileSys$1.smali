.class Landroid/media/AudioProfileSys$1;
.super Ljava/lang/Object;
.source "AudioProfileSys.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioProfileSys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/AudioProfileSys;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioProfileSys;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 25
    new-instance v0, Landroid/media/AudioProfileSys;

    invoke-direct {v0}, Landroid/media/AudioProfileSys;-><init>()V

    .line 26
    .local v0, "_aidl_out":Landroid/media/AudioProfileSys;
    invoke-virtual {v0, p1}, Landroid/media/AudioProfileSys;->readFromParcel(Landroid/os/Parcel;)V

    .line 27
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

    .line 22
    invoke-virtual {p0, p1}, Landroid/media/AudioProfileSys$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/AudioProfileSys;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/AudioProfileSys;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 31
    new-array v0, p1, [Landroid/media/AudioProfileSys;

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

    .line 22
    invoke-virtual {p0, p1}, Landroid/media/AudioProfileSys$1;->newArray(I)[Landroid/media/AudioProfileSys;

    move-result-object p1

    return-object p1
.end method
