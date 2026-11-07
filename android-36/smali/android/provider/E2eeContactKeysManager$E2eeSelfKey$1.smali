.class Landroid/provider/E2eeContactKeysManager$E2eeSelfKey$1;
.super Ljava/lang/Object;
.source "E2eeContactKeysManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;
    .registers 11
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1024
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 1025
    .local v1, "deviceId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 1026
    .local v2, "accountId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    .line 1027
    .local v3, "ownerPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 1028
    .local v4, "timeUpdated":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1030
    .local v8, "keyValueLength":I
    if-lez v8, :cond_1d

    .line 1031
    new-array v0, v8, [B

    .line 1032
    .local v0, "keyValue":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    move-object v6, v0

    goto :goto_1f

    .line 1034
    .end local v0    # "keyValue":[B
    :cond_1d
    const/4 v0, 0x0

    move-object v6, v0

    .line 1036
    .local v6, "keyValue":[B
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1037
    .local v7, "remoteVerificationState":I
    new-instance v0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    invoke-direct/range {v0 .. v7}, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)V

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

    .line 1021
    invoke-virtual {p0, p1}, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;
    .registers 3
    .param p1, "size"    # I

    .line 1043
    new-array v0, p1, [Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

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

    .line 1021
    invoke-virtual {p0, p1}, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey$1;->newArray(I)[Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    move-result-object p1

    return-object p1
.end method
