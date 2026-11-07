.class Landroid/app/contentsuggestions/ClassificationsRequest$1;
.super Ljava/lang/Object;
.source "ClassificationsRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/contentsuggestions/ClassificationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/contentsuggestions/ClassificationsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/contentsuggestions/ClassificationsRequest;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 78
    new-instance v0, Landroid/app/contentsuggestions/ClassificationsRequest;

    sget-object v1, Landroid/app/contentsuggestions/ContentSelection;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/contentsuggestions/ClassificationsRequest;-><init>(Ljava/util/List;Landroid/os/Bundle;Landroid/app/contentsuggestions/ClassificationsRequest-IA;)V

    .line 78
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

    .line 75
    invoke-virtual {p0, p1}, Landroid/app/contentsuggestions/ClassificationsRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/contentsuggestions/ClassificationsRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/contentsuggestions/ClassificationsRequest;
    .registers 3
    .param p1, "size"    # I

    .line 85
    new-array v0, p1, [Landroid/app/contentsuggestions/ClassificationsRequest;

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

    .line 75
    invoke-virtual {p0, p1}, Landroid/app/contentsuggestions/ClassificationsRequest$1;->newArray(I)[Landroid/app/contentsuggestions/ClassificationsRequest;

    move-result-object p1

    return-object p1
.end method
