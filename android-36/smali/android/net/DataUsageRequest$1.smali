.class Landroid/net/DataUsageRequest$1;
.super Ljava/lang/Object;
.source "DataUsageRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/DataUsageRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/DataUsageRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/DataUsageRequest;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    .local v0, "requestId":I
    const/4 v1, 0x0

    const-class v2, Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 79
    .local v1, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 80
    .local v2, "thresholdInBytes":J
    new-instance v4, Landroid/net/DataUsageRequest;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/net/DataUsageRequest;-><init>(ILandroid/net/NetworkTemplate;J)V

    .line 82
    .local v4, "result":Landroid/net/DataUsageRequest;
    return-object v4
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

    .line 74
    invoke-virtual {p0, p1}, Landroid/net/DataUsageRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/DataUsageRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/DataUsageRequest;
    .registers 3
    .param p1, "size"    # I

    .line 87
    new-array v0, p1, [Landroid/net/DataUsageRequest;

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

    .line 74
    invoke-virtual {p0, p1}, Landroid/net/DataUsageRequest$1;->newArray(I)[Landroid/net/DataUsageRequest;

    move-result-object p1

    return-object p1
.end method
