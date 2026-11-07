.class abstract Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;
.super Ljava/lang/Object;
.source "E2eeContactKeysManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/E2eeContactKeysManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "E2eeBaseKey"
.end annotation


# instance fields
.field protected final blacklist mAccountId:Ljava/lang/String;

.field protected final blacklist mDeviceId:Ljava/lang/String;

.field protected final blacklist mKeyValue:[B

.field protected final blacklist mOwnerPackageName:Ljava/lang/String;

.field protected final blacklist mRemoteVerificationState:I

.field protected final blacklist mTimeUpdated:J


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[BI)V
    .registers 9
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "ownerPackageName"    # Ljava/lang/String;
    .param p4, "timeUpdated"    # J
    .param p6, "keyValue"    # [B
    .param p7, "remoteVerificationState"    # I

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1089
    iput-object p1, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mDeviceId:Ljava/lang/String;

    .line 1090
    iput-object p2, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mAccountId:Ljava/lang/String;

    .line 1091
    iput-object p3, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mOwnerPackageName:Ljava/lang/String;

    .line 1092
    iput-wide p4, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mTimeUpdated:J

    .line 1093
    if-nez p6, :cond_f

    const/4 v0, 0x0

    goto :goto_14

    :cond_f
    array-length v0, p6

    invoke-static {p6, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_14
    iput-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mKeyValue:[B

    .line 1094
    iput p7, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mRemoteVerificationState:I

    .line 1095
    return-void
.end method


# virtual methods
.method public blacklist getAccountId()Ljava/lang/String;
    .registers 2

    .line 1119
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDeviceId()Ljava/lang/String;
    .registers 2

    .line 1107
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKeyValue()[B
    .registers 3

    .line 1152
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mKeyValue:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_f

    :cond_6
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mKeyValue:[B

    iget-object v1, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mKeyValue:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    :goto_f
    return-object v0
.end method

.method public blacklist getOwnerPackageName()Ljava/lang/String;
    .registers 2

    .line 1129
    iget-object v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRemoteVerificationState()I
    .registers 2

    .line 1162
    iget v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mRemoteVerificationState:I

    return v0
.end method

.method public blacklist getTimeUpdated()J
    .registers 3

    .line 1140
    iget-wide v0, p0, Landroid/provider/E2eeContactKeysManager$E2eeBaseKey;->mTimeUpdated:J

    return-wide v0
.end method
