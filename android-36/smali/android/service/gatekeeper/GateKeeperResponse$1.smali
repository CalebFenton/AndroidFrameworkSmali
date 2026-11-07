.class Landroid/service/gatekeeper/GateKeeperResponse$1;
.super Ljava/lang/Object;
.source "GateKeeperResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/GateKeeperResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/gatekeeper/GateKeeperResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .local v0, "responseCode":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->-$$Nest$smcreateRetryResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .local v1, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_2f

    .line 79
    .end local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_10
    if-nez v0, :cond_2b

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 81
    .local v1, "shouldReEnroll":Z
    :goto_1a
    const/4 v2, 0x0

    .line 82
    .local v2, "payload":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 83
    .local v3, "size":I
    if-lez v3, :cond_26

    .line 84
    new-array v2, v3, [B

    .line 85
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 87
    :cond_26
    invoke-static {v2, v1}, Landroid/service/gatekeeper/GateKeeperResponse;->createOkResponse([BZ)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .line 88
    .end local v2    # "payload":[B
    .end local v3    # "size":I
    .local v1, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    goto :goto_2f

    .line 89
    .end local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :cond_2b
    invoke-static {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->createGenericResponse(I)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1

    .line 91
    .restart local v1    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    :goto_2f
    return-object v1
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

    .line 72
    invoke-virtual {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/gatekeeper/GateKeeperResponse;
    .registers 3
    .param p1, "size"    # I

    .line 96
    new-array v0, p1, [Landroid/service/gatekeeper/GateKeeperResponse;

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

    .line 72
    invoke-virtual {p0, p1}, Landroid/service/gatekeeper/GateKeeperResponse$1;->newArray(I)[Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p1

    return-object p1
.end method
