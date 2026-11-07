.class public final Landroid/provider/E2eeContactKeysManager$E2eeContactKey;
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
    name = "E2eeContactKey"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/provider/E2eeContactKeysManager$E2eeContactKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDisplayName:Ljava/lang/String;

.field private final blacklist mEmailAddress:Ljava/lang/String;

.field private final blacklist mLocalVerificationState:I

.field private final blacklist mPhoneNumber:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 931
    new-instance v0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey$1;

    invoke-direct {v0}, Landroid/provider/E2eeContactKeysManager$E2eeContactKey$1;-><init>()V

    sput-object v0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "ownerPackageName"    # Ljava/lang/String;
    .param p4, "timeUpdated"    # J
    .param p6, "keyValue"    # [B
    .param p7, "localVerificationState"    # I
    .param p8, "remoteVerificationState"    # I
    .param p9, "displayName"    # Ljava/lang/String;
    .param p10, "phoneNumber"    # Ljava/lang/String;
    .param p11, "emailAddress"    # Ljava/lang/String;

    .line 833
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)V

    .line 835
    iput p7, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mLocalVerificationState:I

    .line 836
    move-object/from16 v1, p9

    iput-object v1, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mDisplayName:Ljava/lang/String;

    .line 837
    move-object/from16 v2, p10

    iput-object v2, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mPhoneNumber:Ljava/lang/String;

    .line 838
    move-object/from16 v3, p11

    iput-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mEmailAddress:Ljava/lang/String;

    .line 839
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 927
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 889
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 890
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    .line 892
    :cond_8
    instance-of v2, p1, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    if-eqz v2, :cond_6d

    move-object v2, p1

    check-cast v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;

    .line 896
    .local v2, "toCompare":Landroid/provider/E2eeContactKeysManager$E2eeContactKey;
    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mDeviceId:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mDeviceId:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mAccountId:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mAccountId:Ljava/lang/String;

    .line 897
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mOwnerPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mOwnerPackageName:Ljava/lang/String;

    .line 898
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-wide v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mTimeUpdated:J

    iget-wide v5, v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mTimeUpdated:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6b

    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mKeyValue:[B

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mKeyValue:[B

    .line 900
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mLocalVerificationState:I

    iget v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mLocalVerificationState:I

    if-ne v3, v4, :cond_6b

    iget v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mRemoteVerificationState:I

    iget v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mRemoteVerificationState:I

    if-ne v3, v4, :cond_6b

    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mDisplayName:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mDisplayName:Ljava/lang/String;

    .line 903
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mPhoneNumber:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mPhoneNumber:Ljava/lang/String;

    .line 904
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget-object v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mEmailAddress:Ljava/lang/String;

    iget-object v4, v2, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mEmailAddress:Ljava/lang/String;

    .line 905
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    move v0, v1

    goto :goto_6c

    :cond_6b
    nop

    .line 896
    :goto_6c
    return v0

    .line 893
    .end local v2    # "toCompare":Landroid/provider/E2eeContactKeysManager$E2eeContactKey;
    :cond_6d
    return v0
.end method

.method public bridge synthetic whitelist getAccountId()Ljava/lang/String;
    .registers 2

    .line 801
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist getDeviceId()Ljava/lang/String;
    .registers 2

    .line 801
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplayName()Ljava/lang/String;
    .registers 2

    .line 857
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEmailAddress()Ljava/lang/String;
    .registers 2

    .line 877
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic whitelist getKeyValue()[B
    .registers 2

    .line 801
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getKeyValue()[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLocalVerificationState()I
    .registers 2

    .line 847
    iget v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mLocalVerificationState:I

    return v0
.end method

.method public bridge synthetic whitelist getOwnerPackageName()Ljava/lang/String;
    .registers 2

    .line 801
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPhoneNumber()Ljava/lang/String;
    .registers 2

    .line 867
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic whitelist getRemoteVerificationState()I
    .registers 2

    .line 801
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getRemoteVerificationState()I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist getTimeUpdated()J
    .registers 3

    .line 801
    invoke-super {p0}, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->getTimeUpdated()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 882
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mDeviceId:Ljava/lang/String;

    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mAccountId:Ljava/lang/String;

    iget-object v2, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mOwnerPackageName:Ljava/lang/String;

    iget-wide v3, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mTimeUpdated:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mKeyValue:[B

    .line 883
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mLocalVerificationState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mRemoteVerificationState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mDisplayName:Ljava/lang/String;

    iget-object v8, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mPhoneNumber:Ljava/lang/String;

    iget-object v9, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mEmailAddress:Ljava/lang/String;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 882
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 910
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mAccountId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 913
    iget-wide v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mTimeUpdated:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 914
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mKeyValue:[B

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mKeyValue:[B

    array-length v0, v0

    goto :goto_1d

    :cond_1c
    const/4 v0, -0x1

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 915
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mKeyValue:[B

    if-eqz v0, :cond_29

    .line 916
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mKeyValue:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 918
    :cond_29
    iget v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mLocalVerificationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    iget v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mRemoteVerificationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 922
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeContactKey;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 923
    return-void
.end method
