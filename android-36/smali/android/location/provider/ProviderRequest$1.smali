.class Landroid/location/provider/ProviderRequest$1;
.super Ljava/lang/Object;
.source "ProviderRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/provider/ProviderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/provider/ProviderRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/location/provider/ProviderRequest;
    .registers 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 178
    .local v1, "intervalMillis":J
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v0, v1, v3

    if-nez v0, :cond_10

    .line 179
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    return-object v0

    .line 181
    :cond_10
    new-instance v0, Landroid/location/provider/ProviderRequest;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    sget-object v9, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 188
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/WorkSource;

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Landroid/location/provider/ProviderRequest;-><init>(JIJZZZLandroid/os/WorkSource;Landroid/location/provider/ProviderRequest-IA;)V

    .line 181
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

    .line 174
    invoke-virtual {p0, p1}, Landroid/location/provider/ProviderRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/provider/ProviderRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/location/provider/ProviderRequest;
    .registers 3
    .param p1, "size"    # I

    .line 194
    new-array v0, p1, [Landroid/location/provider/ProviderRequest;

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

    .line 174
    invoke-virtual {p0, p1}, Landroid/location/provider/ProviderRequest$1;->newArray(I)[Landroid/location/provider/ProviderRequest;

    move-result-object p1

    return-object p1
.end method
