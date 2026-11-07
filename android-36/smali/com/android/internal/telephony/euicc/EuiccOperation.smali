.class public Lcom/android/internal/telephony/euicc/EuiccOperation;
.super Ljava/lang/Object;
.source "EuiccOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccOperation$Action;
    }
.end annotation


# static fields
.field static final blacklist ACTION_DOWNLOAD_CONFIRMATION_CODE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist ACTION_DOWNLOAD_DEACTIVATE_SIM:I = 0x2

.field static final blacklist ACTION_DOWNLOAD_NO_PRIVILEGES:I = 0x3

.field static final blacklist ACTION_DOWNLOAD_NO_PRIVILEGES_OR_DEACTIVATE_SIM_CHECK_METADATA:I = 0x9

.field static final blacklist ACTION_DOWNLOAD_RESOLVABLE_ERRORS:I = 0x7

.field static final blacklist ACTION_GET_DEFAULT_LIST_DEACTIVATE_SIM:I = 0x4

.field static final blacklist ACTION_GET_METADATA_DEACTIVATE_SIM:I = 0x1

.field static final blacklist ACTION_SWITCH_DEACTIVATE_SIM:I = 0x5

.field static final blacklist ACTION_SWITCH_NO_PRIVILEGES:I = 0x6

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/euicc/EuiccOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist mAction:I

.field private final blacklist mCallingPackage:Ljava/lang/String;

.field private final blacklist mCallingToken:J

.field private final blacklist mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

.field private final blacklist mResolvableErrors:I

.field private final blacklist mSubscriptionId:I

.field private final blacklist mSwitchAfterDownload:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccOperation$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/euicc/EuiccOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V
    .registers 8

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 229
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 230
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 231
    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 232
    iput-boolean p6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 233
    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 p1, 0x0

    .line 234
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    return-void
.end method

.method constructor blacklist <init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;I)V
    .registers 9

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 214
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 215
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 216
    iput p5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 217
    iput-boolean p6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 218
    iput-object p7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    .line 219
    iput p8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    .line 240
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/DownloadableSubscription;

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    return-void
.end method

.method private static blacklist fail(Landroid/app/PendingIntent;)V
    .registers 4

    .line 571
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public static blacklist forDownloadConfirmationCode(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x8

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forDownloadDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 13

    .line 131
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x2

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forDownloadNoPrivilegesOrDeactivateSimCheckMetadata(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 13

    .line 153
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/16 v1, 0x9

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forDownloadResolvableErrors(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;I)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 15

    .line 181
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v1, 0x7

    const/4 v5, 0x0

    move-wide v2, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;I)V

    return-object v0
.end method

.method static blacklist forGetDefaultListDeactivateSim(JLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 11

    .line 187
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x4

    const/4 v4, 0x0

    move-wide v2, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forGetMetadataDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 12

    .line 118
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-wide v2, p0

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forSwitchDeactivateSim(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 12

    .line 194
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x5

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method static blacklist forSwitchNoPrivileges(JILjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;
    .registers 12

    .line 201
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccOperation;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x6

    move-wide v2, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccOperation;-><init>(IJLandroid/telephony/euicc/DownloadableSubscription;IZLjava/lang/String;)V

    return-object v0
.end method

.method private blacklist resolvedDownloadConfirmationCode(ILjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 449
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 450
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void

    .line 452
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v0, p2}, Landroid/telephony/euicc/DownloadableSubscription;->setConfirmationCode(Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    move v2, p1

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedDownloadDeactivateSim(IIZLandroid/app/PendingIntent;)V
    .registers 14

    if-eqz p3, :cond_15

    .line 366
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void

    :cond_15
    move-object v8, p4

    .line 377
    invoke-static {v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedDownloadNoPrivileges(IZLandroid/app/PendingIntent;)V
    .registers 15

    if-eqz p2, :cond_22

    .line 385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 394
    :try_start_6
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    move v1, p1

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    .line 405
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 406
    throw p0

    :cond_22
    move-object v10, p3

    .line 409
    invoke-static {v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedDownloadNoPrivilegesOrDeactivateSimCheckMetadata(IIZLandroid/app/PendingIntent;)V
    .registers 16

    if-eqz p3, :cond_22

    .line 417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 423
    :try_start_6
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v7, 0x1

    move v1, p1

    move v2, p2

    move-object v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivilegedCheckMetadata(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    .line 434
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 435
    throw p0

    :cond_22
    move-object v10, p4

    .line 438
    invoke-static {v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedDownloadResolvableErrors(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 16

    .line 471
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 472
    const-string v0, "android.service.euicc.extra.RESOLUTION_ALLOW_POLICY_RULES"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    .line 476
    :goto_13
    iget v3, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_26

    .line 477
    const-string v2, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 481
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    move v0, v1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :cond_27
    :goto_27
    if-nez v0, :cond_2d

    .line 487
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void

    .line 489
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v0, v2}, Landroid/telephony/euicc/DownloadableSubscription;->setConfirmationCode(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v3

    const-string v0, "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

    .line 492
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    iget-object v8, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v9, 0x1

    move v4, p1

    move-object v10, p2

    move-object v11, p3

    .line 490
    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;ZLandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedGetDefaultListDeactivateSim(IZLandroid/app/PendingIntent;)V
    .registers 5

    if-eqz p2, :cond_d

    .line 508
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object p2

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, p0, p3}, Lcom/android/internal/telephony/euicc/EuiccController;->getDefaultDownloadableSubscriptionList(IZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 515
    :cond_d
    invoke-static {p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedGetMetadataDeactivateSim(IZLandroid/app/PendingIntent;)V
    .registers 10

    if-eqz p2, :cond_11

    .line 349
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccController;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    :cond_11
    move-object v5, p3

    .line 357
    invoke-static {v5}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedSwitchDeactivateSim(IIZLandroid/app/PendingIntent;Z)V
    .registers 14

    if-eqz p3, :cond_13

    .line 524
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    .line 525
    iget v2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    move v1, p1

    move v3, p2

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscription(IIIZLjava/lang/String;Landroid/app/PendingIntent;Z)V

    return-void

    :cond_13
    move-object v6, p4

    .line 535
    invoke-static {v6}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private blacklist resolvedSwitchNoPrivileges(IIZLandroid/app/PendingIntent;Z)V
    .registers 16

    if-eqz p3, :cond_20

    .line 543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 551
    :try_start_6
    invoke-static {}, Lcom/android/internal/telephony/euicc/EuiccController;->get()Lcom/android/internal/telephony/euicc/EuiccController;

    move-result-object v0

    .line 552
    iget v5, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    iget-object v7, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    const/4 v6, 0x1

    move v1, p1

    move v2, p2

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->switchToSubscriptionPrivileged(IIJIZLjava/lang/String;Landroid/app/PendingIntent;Z)V
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1a

    .line 562
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 563
    throw p0

    :cond_20
    move-object v8, p4

    .line 566
    invoke-static {v8}, Lcom/android/internal/telephony/euicc/EuiccOperation;->fail(Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public blacklist continueOperation(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 16

    .line 270
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 272
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    const-string v1, "android.service.euicc.extra.RESOLUTION_USE_PORT_INDEX"

    const-string v2, "android.service.euicc.extra.RESOLUTION_PORT_INDEX"

    const/4 v3, 0x0

    const-string v4, "android.service.euicc.extra.RESOLUTION_CONSENT"

    packed-switch v0, :pswitch_data_9c

    .line 339
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown action: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EuiccOperation"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 292
    :pswitch_2a
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 294
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 291
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoPrivilegesOrDeactivateSimCheckMetadata(IIZLandroid/app/PendingIntent;)V

    return-void

    .line 298
    :pswitch_36
    const-string v0, "android.service.euicc.extra.RESOLUTION_CONFIRMATION_CODE"

    .line 299
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 298
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadConfirmationCode(ILjava/lang/String;Landroid/app/PendingIntent;)V

    return-void

    .line 303
    :pswitch_40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadResolvableErrors(ILandroid/os/Bundle;Landroid/app/PendingIntent;)V

    return-void

    .line 326
    :pswitch_44
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 330
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 334
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    .line 333
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchNoPrivileges(IIZLandroid/app/PendingIntent;Z)V

    return-void

    :pswitch_57
    move-object v0, p0

    move v7, p1

    move-object v10, p3

    .line 312
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 316
    invoke-virtual {p2, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 320
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    move-object v6, v0

    .line 319
    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedSwitchDeactivateSim(IIZLandroid/app/PendingIntent;Z)V

    return-void

    :pswitch_6b
    move-object v0, p0

    move v7, p1

    move-object v10, p3

    .line 307
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 306
    invoke-direct {v0, v7, p0, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedGetDefaultListDeactivateSim(IZLandroid/app/PendingIntent;)V

    return-void

    :pswitch_76
    move-object v0, p0

    move v7, p1

    move-object v10, p3

    .line 287
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 286
    invoke-direct {v0, v7, p0, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadNoPrivileges(IZLandroid/app/PendingIntent;)V

    return-void

    :pswitch_81
    move-object v0, p0

    move v7, p1

    move-object v10, p3

    .line 280
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 282
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 279
    invoke-direct {v0, v7, p0, p1, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedDownloadDeactivateSim(IIZLandroid/app/PendingIntent;)V

    return-void

    :pswitch_90
    move-object v0, p0

    move v7, p1

    move-object v10, p3

    .line 275
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 274
    invoke-direct {v0, v7, p0, v10}, Lcom/android/internal/telephony/euicc/EuiccOperation;->resolvedGetMetadataDeactivateSim(IZLandroid/app/PendingIntent;)V

    return-void

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_90
        :pswitch_81
        :pswitch_76
        :pswitch_6b
        :pswitch_57
        :pswitch_44
        :pswitch_40
        :pswitch_36
        :pswitch_2a
    .end packed-switch
.end method

.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 249
    iget v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-wide v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingToken:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mDownloadableSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 252
    iget p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSubscriptionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-boolean p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mSwitchAfterDownload:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 254
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget p0, p0, Lcom/android/internal/telephony/euicc/EuiccOperation;->mResolvableErrors:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
