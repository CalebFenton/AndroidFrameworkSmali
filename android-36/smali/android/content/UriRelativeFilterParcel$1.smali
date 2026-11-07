.class Landroid/content/UriRelativeFilterParcel$1;
.super Ljava/lang/Object;
.source "UriRelativeFilterParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/UriRelativeFilterParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/UriRelativeFilterParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/UriRelativeFilterParcel;
    .registers 3
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 22
    new-instance v0, Landroid/content/UriRelativeFilterParcel;

    invoke-direct {v0}, Landroid/content/UriRelativeFilterParcel;-><init>()V

    .line 23
    .local v0, "_aidl_out":Landroid/content/UriRelativeFilterParcel;
    invoke-virtual {v0, p1}, Landroid/content/UriRelativeFilterParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 24
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

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/UriRelativeFilterParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/UriRelativeFilterParcel;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/UriRelativeFilterParcel;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 28
    new-array v0, p1, [Landroid/content/UriRelativeFilterParcel;

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

    .line 19
    invoke-virtual {p0, p1}, Landroid/content/UriRelativeFilterParcel$1;->newArray(I)[Landroid/content/UriRelativeFilterParcel;

    move-result-object p1

    return-object p1
.end method
