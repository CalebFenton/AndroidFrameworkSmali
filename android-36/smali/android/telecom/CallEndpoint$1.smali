.class Landroid/telecom/CallEndpoint$1;
.super Ljava/lang/Object;
.source "CallEndpoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/CallEndpoint;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CallEndpoint;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    .line 210
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .local v1, "type":I
    sget-object v2, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    .line 213
    .local v2, "id":Landroid/os/ParcelUuid;
    new-instance v3, Landroid/telecom/CallEndpoint;

    invoke-direct {v3, v0, v1, v2}, Landroid/telecom/CallEndpoint;-><init>(Ljava/lang/CharSequence;ILandroid/os/ParcelUuid;)V

    return-object v3
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
    invoke-virtual {p0, p1}, Landroid/telecom/CallEndpoint$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/CallEndpoint;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telecom/CallEndpoint;
    .registers 3
    .param p1, "size"    # I

    .line 218
    new-array v0, p1, [Landroid/telecom/CallEndpoint;

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

    .line 205
    invoke-virtual {p0, p1}, Landroid/telecom/CallEndpoint$1;->newArray(I)[Landroid/telecom/CallEndpoint;

    move-result-object p1

    return-object p1
.end method
