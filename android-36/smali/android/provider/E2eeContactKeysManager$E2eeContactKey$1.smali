.class Landroid/provider/E2eeContactKeysManager$E2eeContactKey$1;
.super Ljava/lang/Object;
.source "E2eeContactKeysManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/E2eeContactKeysManager$E2eeContactKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/E2eeContactKeysManager$E2eeContactKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/provider/E2eeContactKeysManager$E2eeContactKey;
    .registers 15
    .param p1, "source"    # Landroid/os/Parcel;

    .line 935
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 936
    .local v1, "deviceId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "accountId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    .line 938
    .local v3, "ownerPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 939
    .local v4, "timeUpdated":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 941
    .local v12, "keyValueLength":I
    if-lez v12, :cond_1d

    .line 942
    new-array v0, v12, [B

    .line 943
    .local v0, "keyValue":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    move-object v6, v0

    goto :goto_1f

    .line 945
    .end local v0    # "keyValue":[B
    :cond_1d
    const/4 v0, 0x0

    move-object v6, v0

    .line 947
    .local v6, "keyValue":[B
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 948
    .local v7, "localVerificationState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 949
    .local v8, "remoteVerificationState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v9

    .line 950
    .local v9, "displayName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v10

    .line 951
    .local v10, "number":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v11

    .line 952
    .local v11, "address":Ljava/lang/String;
    new-instance v0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    invoke-direct/range {v0 .. v11}, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    .line 932
    invoke-virtual {p0, p1}, Landroid/provider/E2eeContactKeysManager$E2eeContactKey$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/provider/E2eeContactKeysManager$E2eeContactKey;
    .registers 3
    .param p1, "size"    # I

    .line 959
    new-array v0, p1, [Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

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

    .line 932
    invoke-virtual {p0, p1}, Landroid/provider/E2eeContactKeysManager$E2eeContactKey$1;->newArray(I)[Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    move-result-object p1

    return-object p1
.end method
