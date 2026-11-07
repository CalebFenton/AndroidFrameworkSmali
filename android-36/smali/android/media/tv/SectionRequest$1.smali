.class Landroid/media/tv/SectionRequest$1;
.super Ljava/lang/Object;
.source "SectionRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/SectionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/SectionRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/SectionRequest;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 35
    invoke-static {p1}, Landroid/media/tv/SectionRequest;->createFromParcelBody(Landroid/os/Parcel;)Landroid/media/tv/SectionRequest;

    move-result-object v0

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

    .line 31
    invoke-virtual {p0, p1}, Landroid/media/tv/SectionRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/SectionRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/media/tv/SectionRequest;
    .registers 3
    .param p1, "size"    # I

    .line 40
    new-array v0, p1, [Landroid/media/tv/SectionRequest;

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

    .line 31
    invoke-virtual {p0, p1}, Landroid/media/tv/SectionRequest$1;->newArray(I)[Landroid/media/tv/SectionRequest;

    move-result-object p1

    return-object p1
.end method
