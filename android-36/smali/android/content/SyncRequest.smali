.class public Landroid/content/SyncRequest;
.super Ljava/lang/Object;
.source "SyncRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/SyncRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SyncRequest"


# instance fields
.field private final greylist mAccountToSync:Landroid/accounts/Account;

.field private final greylist-max-p mAuthority:Ljava/lang/String;

.field private final greylist-max-o mDisallowMetered:Z

.field private final greylist-max-p mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mIsAuthority:Z

.field private final greylist-max-o mIsExpedited:Z

.field private final greylist mIsPeriodic:Z

.field private final blacklist mIsScheduledAsExpeditedJob:Z

.field private final greylist-max-o mSyncFlexTimeSecs:J

.field private final greylist mSyncRunTimeSecs:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 136
    new-instance v0, Landroid/content/SyncRequest$1;

    invoke-direct {v0}, Landroid/content/SyncRequest$1;-><init>()V

    sput-object v0, Landroid/content/SyncRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/SyncRequest$Builder;)V
    .registers 6
    .param p1, "b"    # Landroid/content/SyncRequest$Builder;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmSyncFlexTimeSecs(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    .line 184
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmSyncRunTimeSecs(Landroid/content/SyncRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    .line 185
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmAccount(Landroid/content/SyncRequest$Builder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    .line 186
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmAuthority(Landroid/content/SyncRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    .line 187
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmSyncType(Landroid/content/SyncRequest$Builder;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    move v0, v2

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    .line 188
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmSyncTarget(Landroid/content/SyncRequest$Builder;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_30

    move v1, v2

    :cond_30
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    .line 189
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmExpedited(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    .line 190
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmScheduleAsExpeditedJob(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsScheduledAsExpeditedJob:Z

    .line 191
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmCustomExtras(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    .line 194
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmSyncConfigExtras(Landroid/content/SyncRequest$Builder;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 195
    invoke-static {p1}, Landroid/content/SyncRequest$Builder;->-$$Nest$fgetmDisallowMetered(Landroid/content/SyncRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    .line 196
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    move v0, v2

    :goto_2f
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    move v0, v1

    goto :goto_3a

    :cond_39
    move v0, v2

    :goto_3a
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44

    move v0, v1

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    iput-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    :goto_4f
    iput-boolean v1, p0, Landroid/content/SyncRequest;->mIsScheduledAsExpeditedJob:Z

    .line 177
    const/4 v0, 0x0

    const-class v1, Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    .line 179
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/SyncRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/SyncRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAccount()Landroid/accounts/Account;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    return-object v0
.end method

.method public greylist-max-o getBundle()Landroid/os/Bundle;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getProvider()Ljava/lang/String;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSyncFlexTime()J
    .registers 3

    .line 126
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    return-wide v0
.end method

.method public greylist-max-o getSyncRunTime()J
    .registers 3

    .line 133
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    return-wide v0
.end method

.method public greylist-max-o isExpedited()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    return v0
.end method

.method public greylist-max-o isPeriodic()Z
    .registers 2

    .line 72
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    return v0
.end method

.method public blacklist isScheduledAsExpeditedJob()Z
    .registers 2

    .line 88
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsScheduledAsExpeditedJob:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 156
    iget-object v0, p0, Landroid/content/SyncRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 157
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncFlexTimeSecs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 158
    iget-wide v0, p0, Landroid/content/SyncRequest;->mSyncRunTimeSecs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsPeriodic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mDisallowMetered:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsAuthority:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsExpedited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-boolean v0, p0, Landroid/content/SyncRequest;->mIsScheduledAsExpeditedJob:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Landroid/content/SyncRequest;->mAccountToSync:Landroid/accounts/Account;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    iget-object v0, p0, Landroid/content/SyncRequest;->mAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    return-void
.end method
