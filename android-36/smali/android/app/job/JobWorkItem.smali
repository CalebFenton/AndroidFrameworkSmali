.class public final Landroid/app/job/JobWorkItem;
.super Ljava/lang/Object;
.source "JobWorkItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobWorkItem$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field greylist-max-p mDeliveryCount:I

.field private final blacklist mExtras:Landroid/os/PersistableBundle;

.field greylist-max-p mGrants:Ljava/lang/Object;

.field final greylist-max-p mIntent:Landroid/content/Intent;

.field private final blacklist mMinimumChunkBytes:J

.field private final greylist-max-o mNetworkDownloadBytes:J

.field private final greylist-max-o mNetworkUploadBytes:J

.field greylist-max-p mWorkId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 442
    new-instance v0, Landroid/app/job/JobWorkItem$1;

    invoke-direct {v0}, Landroid/app/job/JobWorkItem$1;-><init>()V

    sput-object v0, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/job/JobWorkItem$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/app/job/JobWorkItem$Builder;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {p1}, Landroid/app/job/JobWorkItem$Builder;->-$$Nest$fgetmDeliveryCount(Landroid/app/job/JobWorkItem$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    .line 127
    invoke-static {p1}, Landroid/app/job/JobWorkItem$Builder;->-$$Nest$fgetmExtras(Landroid/app/job/JobWorkItem$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobWorkItem;->mExtras:Landroid/os/PersistableBundle;

    .line 128
    invoke-static {p1}, Landroid/app/job/JobWorkItem$Builder;->-$$Nest$fgetmIntent(Landroid/app/job/JobWorkItem$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    .line 129
    invoke-static {p1}, Landroid/app/job/JobWorkItem$Builder;->-$$Nest$fgetmNetworkDownloadBytes(Landroid/app/job/JobWorkItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    .line 130
    invoke-static {p1}, Landroid/app/job/JobWorkItem$Builder;->-$$Nest$fgetmNetworkUploadBytes(Landroid/app/job/JobWorkItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    .line 131
    invoke-static {p1}, Landroid/app/job/JobWorkItem$Builder;->-$$Nest$fgetmMinimumNetworkChunkBytes(Landroid/app/job/JobWorkItem$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    .line 132
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/job/JobWorkItem$Builder;Landroid/app/job/JobWorkItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/job/JobWorkItem;-><init>(Landroid/app/job/JobWorkItem$Builder;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 72
    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct/range {v0 .. v5}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;JJ)V

    .line 73
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;JJ)V
    .registers 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "downloadBytes"    # J
    .param p4, "uploadBytes"    # J

    .line 93
    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "intent":Landroid/content/Intent;
    .end local p2    # "downloadBytes":J
    .end local p4    # "uploadBytes":J
    .local v1, "intent":Landroid/content/Intent;
    .local v2, "downloadBytes":J
    .local v4, "uploadBytes":J
    invoke-direct/range {v0 .. v7}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;JJJ)V

    .line 94
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;JJJ)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "downloadBytes"    # J
    .param p4, "uploadBytes"    # J
    .param p6, "minimumChunkBytes"    # J

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/job/JobWorkItem;->mExtras:Landroid/os/PersistableBundle;

    .line 118
    iput-object p1, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    .line 119
    iput-wide p2, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    .line 120
    iput-wide p4, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    .line 121
    iput-wide p6, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    .line 122
    const-wide/32 v0, 0xf1e9ef7

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobWorkItem;->enforceValidity(Z)V

    .line 123
    return-void
.end method

.method constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 456
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    goto :goto_17

    .line 458
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    .line 460
    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 461
    .local v0, "extras":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_1f

    move-object v1, v0

    goto :goto_21

    :cond_1f
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    :goto_21
    iput-object v1, p0, Landroid/app/job/JobWorkItem;->mExtras:Landroid/os/PersistableBundle;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    .line 467
    return-void
.end method


# virtual methods
.method public greylist-max-o bumpDeliveryCount()V
    .registers 2

    .line 197
    iget v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    .line 198
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforceValidity(Z)V
    .registers 10
    .param p1, "rejectNegativeNetworkEstimates"    # Z

    .line 395
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    if-eqz p1, :cond_56

    .line 396
    iget-wide v4, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_2e

    iget-wide v4, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    cmp-long v4, v4, v0

    if-ltz v4, :cond_13

    goto :goto_2e

    .line 397
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network upload bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_2e
    :goto_2e
    iget-wide v4, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_56

    iget-wide v4, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    cmp-long v4, v4, v0

    if-ltz v4, :cond_3b

    goto :goto_56

    .line 401
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network download bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_56
    :goto_56
    iget-wide v4, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_5f

    .line 407
    iget-wide v4, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    .local v4, "estimatedTransfer":J
    goto :goto_6c

    .line 409
    .end local v4    # "estimatedTransfer":J
    :cond_5f
    iget-wide v4, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    .line 410
    iget-wide v6, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_69

    move-wide v6, v0

    goto :goto_6b

    :cond_69
    iget-wide v6, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    :goto_6b
    add-long/2addr v4, v6

    .line 412
    .restart local v4    # "estimatedTransfer":J
    :goto_6c
    iget-wide v6, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_85

    cmp-long v6, v4, v2

    if-eqz v6, :cond_85

    iget-wide v6, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    cmp-long v6, v6, v4

    if-gtz v6, :cond_7d

    goto :goto_85

    .line 415
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum chunk size can\'t be greater than estimated network usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_85
    :goto_85
    iget-wide v6, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    cmp-long v2, v6, v2

    if-eqz v2, :cond_9a

    iget-wide v2, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_92

    goto :goto_9a

    .line 419
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Minimum chunk size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_9a
    :goto_9a
    return-void
.end method

.method public whitelist getDeliveryCount()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    return v0
.end method

.method public whitelist getEstimatedNetworkDownloadBytes()J
    .registers 3

    .line 159
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    return-wide v0
.end method

.method public whitelist getEstimatedNetworkUploadBytes()J
    .registers 3

    .line 170
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 141
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public greylist-max-o getGrants()Ljava/lang/Object;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mGrants:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getMinimumNetworkChunkBytes()J
    .registers 3

    .line 180
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    return-wide v0
.end method

.method public greylist-max-o getWorkId()I
    .registers 2

    .line 211
    iget v0, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    return v0
.end method

.method public greylist-max-o setGrants(Ljava/lang/Object;)V
    .registers 2
    .param p1, "grants"    # Ljava/lang/Object;

    .line 218
    iput-object p1, p0, Landroid/app/job/JobWorkItem;->mGrants:Ljava/lang/Object;

    .line 219
    return-void
.end method

.method public greylist-max-o setWorkId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 204
    iput p1, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    .line 205
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 231
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "JobWorkItem{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget v1, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, " extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v1, p0, Landroid/app/job/JobWorkItem;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_37

    .line 238
    const-string v1, " downloadBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    :cond_37
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_47

    .line 242
    const-string v1, " uploadBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    :cond_47
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_57

    .line 246
    const-string v1, " minimumChunkBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 249
    :cond_57
    iget v1, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    if-eqz v1, :cond_65

    .line 250
    const-string v1, " dcount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget v1, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 253
    :cond_65
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 428
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 429
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 432
    :cond_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    :goto_12
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 435
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 436
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 437
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mMinimumChunkBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 438
    iget v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 439
    iget v0, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    return-void
.end method
