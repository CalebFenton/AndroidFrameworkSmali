.class public Landroid/app/job/JobInfo;
.super Ljava/lang/Object;
.source "JobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/job/JobInfo$Builder;,
        Landroid/app/job/JobInfo$1;
    }
.end annotation


# static fields
.field public static final BACKOFF_POLICY_EXPONENTIAL:I = 0x1

.field public static final BACKOFF_POLICY_LINEAR:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_BACKOFF_POLICY:I = 0x1

.field public static final DEFAULT_INITIAL_BACKOFF_MILLIS:J = 0x7530L

.field public static final MAX_BACKOFF_DELAY_MILLIS:J = 0x112a880L

.field public static final NETWORK_TYPE_ANY:I = 0x1

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_UNMETERED:I = 0x2


# instance fields
.field private final backoffPolicy:I

.field private final extras:Landroid/os/PersistableBundle;

.field private final hasEarlyConstraint:Z

.field private final hasLateConstraint:Z

.field private final initialBackoffMillis:J

.field private final intervalMillis:J

.field private final isPeriodic:Z

.field private final isPersisted:Z

.field private final jobId:I

.field private final maxExecutionDelayMillis:J

.field private final minLatencyMillis:J

.field private final networkType:I

.field private final requireCharging:Z

.field private final requireDeviceIdle:Z

.field private final service:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 267
    new-instance v0, Landroid/app/job/JobInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/job/JobInfo$1;-><init>()V

    #@5
    sput-object v0, Landroid/app/job/JobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo$Builder;)V
    .locals 2
    .param p1, "b"    # Landroid/app/job/JobInfo$Builder;

    #@0
    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 226
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get8(Landroid/app/job/JobInfo$Builder;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    #@9
    .line 227
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get1(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    #@f
    .line 228
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get9(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    #@15
    .line 229
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get13(Landroid/app/job/JobInfo$Builder;)Z

    #@18
    move-result v0

    #@19
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    #@1b
    .line 230
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get14(Landroid/app/job/JobInfo$Builder;)Z

    #@1e
    move-result v0

    #@1f
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    #@21
    .line 231
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get12(Landroid/app/job/JobInfo$Builder;)I

    #@24
    move-result v0

    #@25
    iput v0, p0, Landroid/app/job/JobInfo;->networkType:I

    #@27
    .line 232
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get11(Landroid/app/job/JobInfo$Builder;)J

    #@2a
    move-result-wide v0

    #@2b
    iput-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    #@2d
    .line 233
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get10(Landroid/app/job/JobInfo$Builder;)J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    #@33
    .line 234
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get6(Landroid/app/job/JobInfo$Builder;)Z

    #@36
    move-result v0

    #@37
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    #@39
    .line 235
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get7(Landroid/app/job/JobInfo$Builder;)Z

    #@3c
    move-result v0

    #@3d
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    #@3f
    .line 236
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get5(Landroid/app/job/JobInfo$Builder;)J

    #@42
    move-result-wide v0

    #@43
    iput-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    #@45
    .line 237
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get4(Landroid/app/job/JobInfo$Builder;)J

    #@48
    move-result-wide v0

    #@49
    iput-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    #@4b
    .line 238
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get0(Landroid/app/job/JobInfo$Builder;)I

    #@4e
    move-result v0

    #@4f
    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    #@51
    .line 239
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get2(Landroid/app/job/JobInfo$Builder;)Z

    #@54
    move-result v0

    #@55
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    #@57
    .line 240
    invoke-static {p1}, Landroid/app/job/JobInfo$Builder;->-get3(Landroid/app/job/JobInfo$Builder;)Z

    #@5a
    move-result v0

    #@5b
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    #@5d
    .line 225
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo;)V
    .locals 0
    .param p1, "b"    # Landroid/app/job/JobInfo$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v0

    #@9
    iput v0, p0, Landroid/app/job/JobInfo;->jobId:I

    #@b
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    #@11
    .line 210
    const/4 v0, 0x0

    #@12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/content/ComponentName;

    #@18
    iput-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    #@1a
    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    if-ne v0, v1, :cond_0

    #@20
    move v0, v1

    #@21
    :goto_0
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    #@23
    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    if-ne v0, v1, :cond_1

    #@29
    move v0, v1

    #@2a
    :goto_1
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    #@2c
    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/app/job/JobInfo;->networkType:I

    #@32
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@35
    move-result-wide v4

    #@36
    iput-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    #@38
    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@3b
    move-result-wide v4

    #@3c
    iput-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    #@3e
    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v0

    #@42
    if-ne v0, v1, :cond_2

    #@44
    move v0, v1

    #@45
    :goto_2
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    #@47
    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4a
    move-result v0

    #@4b
    if-ne v0, v1, :cond_3

    #@4d
    move v0, v1

    #@4e
    :goto_3
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    #@50
    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@53
    move-result-wide v4

    #@54
    iput-wide v4, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    #@56
    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@59
    move-result-wide v4

    #@5a
    iput-wide v4, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    #@5c
    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5f
    move-result v0

    #@60
    iput v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    #@62
    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@65
    move-result v0

    #@66
    if-ne v0, v1, :cond_4

    #@68
    move v0, v1

    #@69
    :goto_4
    iput-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    #@6b
    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6e
    move-result v0

    #@6f
    if-ne v0, v1, :cond_5

    #@71
    :goto_5
    iput-boolean v1, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    #@73
    .line 207
    return-void

    #@74
    :cond_0
    move v0, v2

    #@75
    .line 211
    goto :goto_0

    #@76
    :cond_1
    move v0, v2

    #@77
    .line 212
    goto :goto_1

    #@78
    :cond_2
    move v0, v2

    #@79
    .line 216
    goto :goto_2

    #@7a
    :cond_3
    move v0, v2

    #@7b
    .line 217
    goto :goto_3

    #@7c
    :cond_4
    move v0, v2

    #@7d
    .line 221
    goto :goto_4

    #@7e
    :cond_5
    move v1, v2

    #@7f
    .line 222
    goto :goto_5
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/job/JobInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/job/JobInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 245
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getBackoffPolicy()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    #@2
    return v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    #@2
    return v0
.end method

.method public getInitialBackoffMillis()J
    .locals 2

    #@0
    .prologue
    .line 177
    iget-wide v0, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    #@2
    return-wide v0
.end method

.method public getIntervalMillis()J
    .locals 2

    #@0
    .prologue
    .line 168
    iget-wide v0, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    #@2
    return-wide v0
.end method

.method public getMaxExecutionDelayMillis()J
    .locals 2

    #@0
    .prologue
    .line 146
    iget-wide v0, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    #@2
    return-wide v0
.end method

.method public getMinLatencyMillis()J
    .locals 2

    #@0
    .prologue
    .line 138
    iget-wide v0, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    #@2
    return-wide v0
.end method

.method public getNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 130
    iget v0, p0, Landroid/app/job/JobInfo;->networkType:I

    #@2
    return v0
.end method

.method public getService()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public hasEarlyConstraint()Z
    .locals 1

    #@0
    .prologue
    .line 195
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    #@2
    return v0
.end method

.method public hasLateConstraint()Z
    .locals 1

    #@0
    .prologue
    .line 204
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    #@2
    return v0
.end method

.method public isPeriodic()Z
    .locals 1

    #@0
    .prologue
    .line 153
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    #@2
    return v0
.end method

.method public isPersisted()Z
    .locals 1

    #@0
    .prologue
    .line 160
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    #@2
    return v0
.end method

.method public isRequireCharging()Z
    .locals 1

    #@0
    .prologue
    .line 114
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    #@2
    return v0
.end method

.method public isRequireDeviceIdle()Z
    .locals 1

    #@0
    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "(job:"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/app/job/JobInfo;->jobId:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "/"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    #@1b
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, ")"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 250
    iget v0, p0, Landroid/app/job/JobInfo;->jobId:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 251
    iget-object v0, p0, Landroid/app/job/JobInfo;->extras:Landroid/os/PersistableBundle;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    #@c
    .line 252
    iget-object v0, p0, Landroid/app/job/JobInfo;->service:Landroid/content/ComponentName;

    #@e
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@11
    .line 253
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireCharging:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 254
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->requireDeviceIdle:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    move v0, v1

    #@1e
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 255
    iget v0, p0, Landroid/app/job/JobInfo;->networkType:I

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    .line 256
    iget-wide v4, p0, Landroid/app/job/JobInfo;->minLatencyMillis:J

    #@28
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@2b
    .line 257
    iget-wide v4, p0, Landroid/app/job/JobInfo;->maxExecutionDelayMillis:J

    #@2d
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@30
    .line 258
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPeriodic:Z

    #@32
    if-eqz v0, :cond_2

    #@34
    move v0, v1

    #@35
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 259
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->isPersisted:Z

    #@3a
    if-eqz v0, :cond_3

    #@3c
    move v0, v1

    #@3d
    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 260
    iget-wide v4, p0, Landroid/app/job/JobInfo;->intervalMillis:J

    #@42
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@45
    .line 261
    iget-wide v4, p0, Landroid/app/job/JobInfo;->initialBackoffMillis:J

    #@47
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@4a
    .line 262
    iget v0, p0, Landroid/app/job/JobInfo;->backoffPolicy:I

    #@4c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@4f
    .line 263
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasEarlyConstraint:Z

    #@51
    if-eqz v0, :cond_4

    #@53
    move v0, v1

    #@54
    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@57
    .line 264
    iget-boolean v0, p0, Landroid/app/job/JobInfo;->hasLateConstraint:Z

    #@59
    if-eqz v0, :cond_5

    #@5b
    :goto_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 249
    return-void

    #@5f
    :cond_0
    move v0, v2

    #@60
    .line 253
    goto :goto_0

    #@61
    :cond_1
    move v0, v2

    #@62
    .line 254
    goto :goto_1

    #@63
    :cond_2
    move v0, v2

    #@64
    .line 258
    goto :goto_2

    #@65
    :cond_3
    move v0, v2

    #@66
    .line 259
    goto :goto_3

    #@67
    :cond_4
    move v0, v2

    #@68
    .line 263
    goto :goto_4

    #@69
    :cond_5
    move v1, v2

    #@6a
    .line 264
    goto :goto_5
.end method
