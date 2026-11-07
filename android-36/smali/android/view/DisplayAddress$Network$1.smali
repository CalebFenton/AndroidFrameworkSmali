.class Landroid/view/DisplayAddress$Network$1;
.super Ljava/lang/Object;
.source "DisplayAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayAddress$Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/DisplayAddress$Network;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayAddress$Network;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 225
    new-instance v0, Landroid/view/DisplayAddress$Network;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/DisplayAddress$Network;-><init>(Ljava/lang/String;Landroid/view/DisplayAddress-IA;)V

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

    .line 222
    invoke-virtual {p0, p1}, Landroid/view/DisplayAddress$Network$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/DisplayAddress$Network;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/view/DisplayAddress$Network;
    .registers 3
    .param p1, "size"    # I

    .line 230
    new-array v0, p1, [Landroid/view/DisplayAddress$Network;

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

    .line 222
    invoke-virtual {p0, p1}, Landroid/view/DisplayAddress$Network$1;->newArray(I)[Landroid/view/DisplayAddress$Network;

    move-result-object p1

    return-object p1
.end method
