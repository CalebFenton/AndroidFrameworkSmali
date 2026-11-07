.class Landroid/content/UriPermission$1;
.super Ljava/lang/Object;
.source "UriPermission.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/UriPermission;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/UriPermission;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 109
    new-instance v0, Landroid/content/UriPermission;

    invoke-direct {v0, p1}, Landroid/content/UriPermission;-><init>(Landroid/os/Parcel;)V

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

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/UriPermission$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/UriPermission;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/UriPermission;
    .registers 3
    .param p1, "size"    # I

    .line 114
    new-array v0, p1, [Landroid/content/UriPermission;

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

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/UriPermission$1;->newArray(I)[Landroid/content/UriPermission;

    move-result-object p1

    return-object p1
.end method
