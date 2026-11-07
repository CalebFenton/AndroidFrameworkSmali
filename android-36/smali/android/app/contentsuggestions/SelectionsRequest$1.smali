.class Landroid/app/contentsuggestions/SelectionsRequest$1;
.super Ljava/lang/Object;
.source "SelectionsRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/SelectionsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/contentsuggestions/SelectionsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/contentsuggestions/SelectionsRequest;
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .line 88
    new-instance v0, Landroid/app/contentsuggestions/SelectionsRequest;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/contentsuggestions/SelectionsRequest;-><init>(ILandroid/graphics/Point;Landroid/os/Bundle;Landroid/app/contentsuggestions/SelectionsRequest-IA;)V

    .line 88
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

    .line 85
    invoke-virtual {p0, p1}, Landroid/app/contentsuggestions/SelectionsRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/contentsuggestions/SelectionsRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/contentsuggestions/SelectionsRequest;
    .registers 3
    .param p1, "size"    # I

    .line 94
    new-array v0, p1, [Landroid/app/contentsuggestions/SelectionsRequest;

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

    .line 85
    invoke-virtual {p0, p1}, Landroid/app/contentsuggestions/SelectionsRequest$1;->newArray(I)[Landroid/app/contentsuggestions/SelectionsRequest;

    move-result-object p1

    return-object p1
.end method
