.class public final Landroid/service/notification/NotificationStats;
.super Ljava/lang/Object;
.source "NotificationStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationStats$DismissalSentiment;,
        Landroid/service/notification/NotificationStats$DismissalSurface;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DISMISSAL_AOD:I = 0x2

.field public static final blacklist DISMISSAL_BUBBLE:I = 0x4

.field public static final blacklist DISMISSAL_LOCKSCREEN:I = 0x5

.field public static final whitelist DISMISSAL_NOT_DISMISSED:I = -0x1

.field public static final whitelist DISMISSAL_OTHER:I = 0x0

.field public static final whitelist DISMISSAL_PEEK:I = 0x1

.field public static final whitelist DISMISSAL_SHADE:I = 0x3

.field public static final whitelist DISMISS_SENTIMENT_NEGATIVE:I = 0x0

.field public static final whitelist DISMISS_SENTIMENT_NEUTRAL:I = 0x1

.field public static final whitelist DISMISS_SENTIMENT_POSITIVE:I = 0x2

.field public static final whitelist DISMISS_SENTIMENT_UNKNOWN:I = -0x3e8


# instance fields
.field private greylist-max-o mDirectReplied:Z

.field private blacklist mDismissalSentiment:I

.field private greylist-max-o mDismissalSurface:I

.field private greylist-max-o mExpanded:Z

.field private greylist-max-o mInteracted:Z

.field private greylist-max-o mSeen:Z

.field private blacklist mSmartReplied:Z

.field private greylist-max-o mSnoozed:Z

.field private greylist-max-o mViewedSettings:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 162
    new-instance v0, Landroid/service/notification/NotificationStats$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationStats$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    .line 118
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    .line 122
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    .line 118
    const/16 v0, -0x3e8

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    goto :goto_20

    :cond_1f
    move v0, v2

    :goto_20
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    .line 132
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    goto :goto_3c

    :cond_3b
    move v0, v2

    :goto_3c
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    .line 135
    :cond_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_46

    move v0, v1

    goto :goto_47

    :cond_46
    move v0, v2

    :goto_47
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_51

    move v0, v1

    goto :goto_52

    :cond_51
    move v0, v2

    :goto_52
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5b

    goto :goto_5c

    :cond_5b
    move v1, v2

    :goto_5c
    iput-boolean v1, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 309
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 310
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_55

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_55

    .line 312
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/notification/NotificationStats;

    .line 314
    .local v2, "that":Landroid/service/notification/NotificationStats;
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mSeen:Z

    if-eq v3, v4, :cond_1c

    return v1

    .line 315
    :cond_1c
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mExpanded:Z

    if-eq v3, v4, :cond_23

    return v1

    .line 316
    :cond_23
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    if-eq v3, v4, :cond_2a

    return v1

    .line 317
    :cond_2a
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 318
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    if-eq v3, v4, :cond_37

    return v1

    .line 320
    :cond_37
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    if-eq v3, v4, :cond_3e

    return v1

    .line 321
    :cond_3e
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    if-eq v3, v4, :cond_45

    return v1

    .line 322
    :cond_45
    iget-boolean v3, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    iget-boolean v4, v2, Landroid/service/notification/NotificationStats;->mInteracted:Z

    if-eq v3, v4, :cond_4c

    return v1

    .line 323
    :cond_4c
    iget v3, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    iget v4, v2, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    if-ne v3, v4, :cond_53

    goto :goto_54

    :cond_53
    move v0, v1

    :goto_54
    return v0

    .line 310
    .end local v2    # "that":Landroid/service/notification/NotificationStats;
    :cond_55
    :goto_55
    return v1
.end method

.method public whitelist getDismissalSentiment()I
    .registers 2

    .line 304
    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    return v0
.end method

.method public whitelist getDismissalSurface()I
    .registers 2

    .line 282
    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    return v0
.end method

.method public whitelist hasDirectReplied()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    return v0
.end method

.method public whitelist hasExpanded()Z
    .registers 2

    .line 192
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    return v0
.end method

.method public whitelist hasInteracted()Z
    .registers 2

    .line 275
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    return v0
.end method

.method public whitelist hasSeen()Z
    .registers 2

    .line 178
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    return v0
.end method

.method public whitelist hasSmartReplied()Z
    .registers 2

    .line 227
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    return v0
.end method

.method public whitelist hasSnoozed()Z
    .registers 2

    .line 244
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    return v0
.end method

.method public whitelist hasViewedSettings()Z
    .registers 2

    .line 260
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 328
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    .line 329
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    add-int/2addr v1, v2

    .line 330
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    add-int/2addr v0, v2

    .line 331
    .end local v1    # "result":I
    .restart local v0    # "result":I
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 332
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    add-int v0, v1, v2

    .line 334
    :cond_18
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    add-int/2addr v1, v2

    .line 335
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    add-int/2addr v0, v2

    .line 336
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    add-int/2addr v1, v2

    .line 337
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    add-int/2addr v0, v2

    .line 338
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist setDirectReplied()V
    .registers 2

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    .line 219
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    .line 220
    return-void
.end method

.method public whitelist setDismissalSentiment(I)V
    .registers 2
    .param p1, "dismissalSentiment"    # I

    .line 297
    iput p1, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    .line 298
    return-void
.end method

.method public whitelist setDismissalSurface(I)V
    .registers 2
    .param p1, "dismissalSurface"    # I

    .line 289
    iput p1, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    .line 290
    return-void
.end method

.method public whitelist setExpanded()V
    .registers 2

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    .line 200
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    .line 201
    return-void
.end method

.method public whitelist setSeen()V
    .registers 2

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    .line 186
    return-void
.end method

.method public whitelist setSmartReplied()V
    .registers 2

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    .line 237
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    .line 238
    return-void
.end method

.method public whitelist setSnoozed()V
    .registers 2

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    .line 252
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    .line 253
    return-void
.end method

.method public whitelist setViewedSettings()V
    .registers 2

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    .line 268
    iput-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    .line 269
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationStats{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mSeen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 346
    const-string v1, ", mExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 347
    const-string v1, ", mDirectReplied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 349
    const-string v1, ", mSmartReplied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 351
    :cond_3a
    const-string v1, ", mSnoozed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 352
    const-string v1, ", mViewedSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, ", mInteracted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 354
    const-string v1, ", mDismissalSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 144
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSeen:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 145
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mExpanded:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 146
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mDirectReplied:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 147
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 148
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSmartReplied:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    :cond_1e
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mSnoozed:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mViewedSettings:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 152
    iget-boolean v0, p0, Landroid/service/notification/NotificationStats;->mInteracted:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 153
    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSurface:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Landroid/service/notification/NotificationStats;->mDismissalSentiment:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
