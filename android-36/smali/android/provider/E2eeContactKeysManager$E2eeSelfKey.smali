.class public final Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;
.super Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;
.source "E2eeContactKeysManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/E2eeContactKeysManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "E2eeSelfKey"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1020
    new-instance v0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey$1;

    invoke-direct {v0}, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey$1;-><init>()V

    sput-object v0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)V
    .registers 8
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "ownerPackageName"    # Ljava/lang/String;
    .param p4, "timeUpdated"    # J
    .param p6, "keyValue"    # [B
    .param p7, "remoteVerificationState"    # I

    .line 974
    invoke-direct/range {p0 .. p7}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)V

    .line 976
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1016
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 986
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 987
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 989
    :cond_8
    instance-of v2, p1, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    if-eqz v2, :cond_49

    move-object v2, p1

    check-cast v2, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;

    .line 993
    .local v2, "toCompare":Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;
    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mDeviceId:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mDeviceId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mAccountId:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mAccountId:Ljava/lang/String;

    .line 994
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mOwnerPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mOwnerPackageName:Ljava/lang/String;

    .line 995
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-wide v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mTimeUpdated:J

    iget-wide v5, v2, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mTimeUpdated:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_47

    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mKeyValue:[B

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mKeyValue:[B

    .line 997
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_47

    iget v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mRemoteVerificationState:I

    iget v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mRemoteVerificationState:I

    if-ne v3, v4, :cond_47

    move v0, v1

    goto :goto_48

    :cond_47
    nop

    .line 993
    :goto_48
    return v0

    .line 990
    .end local v2    # "toCompare":Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;
    :cond_49
    return v0
.end method

.method public bridge synthetic whitelist getAccountId()Ljava/lang/String;
    .registers 2

    .line 967
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getDeviceId()Ljava/lang/String;
    .registers 2

    .line 967
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getKeyValue()[B
    .registers 2

    .line 967
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getKeyValue()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getOwnerPackageName()Ljava/lang/String;
    .registers 2

    .line 967
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getRemoteVerificationState()I
    .registers 2

    .line 967
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getRemoteVerificationState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist getTimeUpdated()J
    .registers 3

    .line 967
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getTimeUpdated()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 980
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mDeviceId:Ljava/lang/String;

    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mOwnerPackageName:Ljava/lang/String;

    iget-wide v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mTimeUpdated:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mKeyValue:[B

    .line 981
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mRemoteVerificationState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 980
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1003
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mAccountId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 1006
    iget-wide v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mTimeUpdated:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1007
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mKeyValue:[B

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mKeyValue:[B

    array-length v0, v0

    goto :goto_1d

    :cond_1c
    const/4 v0, -0x1

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mKeyValue:[B

    if-eqz v0, :cond_29

    .line 1009
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mKeyValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1011
    :cond_29
    iget v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeSelfKey;->mRemoteVerificationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1012
    return-void
.end method
