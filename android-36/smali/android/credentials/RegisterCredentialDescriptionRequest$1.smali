.class Landroid/credentials/RegisterCredentialDescriptionRequest$1;
.super Ljava/lang/Object;
.source "RegisterCredentialDescriptionRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/credentials/RegisterCredentialDescriptionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/credentials/RegisterCredentialDescriptionRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/credentials/RegisterCredentialDescriptionRequest;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    new-instance v0, Landroid/credentials/RegisterCredentialDescriptionRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/credentials/RegisterCredentialDescriptionRequest;-><init>(Landroid/os/Parcel;Landroid/credentials/RegisterCredentialDescriptionRequest-IA;)V

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

    .line 66
    invoke-virtual {p0, p1}, Landroid/credentials/RegisterCredentialDescriptionRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/credentials/RegisterCredentialDescriptionRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/credentials/RegisterCredentialDescriptionRequest;
    .registers 3
    .param p1, "size"    # I

    .line 74
    new-array v0, p1, [Landroid/credentials/RegisterCredentialDescriptionRequest;

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

    .line 66
    invoke-virtual {p0, p1}, Landroid/credentials/RegisterCredentialDescriptionRequest$1;->newArray(I)[Landroid/credentials/RegisterCredentialDescriptionRequest;

    move-result-object p1

    return-object p1
.end method
