.class public Landroid/app/usage/NetworkStats$Bucket;
.super Ljava/lang/Object;
.source "NetworkStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bucket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/NetworkStats$Bucket$DefaultNetworkStatus;,
        Landroid/app/usage/NetworkStats$Bucket$Roaming;,
        Landroid/app/usage/NetworkStats$Bucket$Metered;,
        Landroid/app/usage/NetworkStats$Bucket$State;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_NETWORK_ALL:I = -0x1

.field public static final whitelist DEFAULT_NETWORK_NO:I = 0x1

.field public static final whitelist DEFAULT_NETWORK_YES:I = 0x2

.field public static final whitelist METERED_ALL:I = -0x1

.field public static final whitelist METERED_NO:I = 0x1

.field public static final whitelist METERED_YES:I = 0x2

.field public static final whitelist ROAMING_ALL:I = -0x1

.field public static final whitelist ROAMING_NO:I = 0x1

.field public static final whitelist ROAMING_YES:I = 0x2

.field public static final whitelist STATE_ALL:I = -0x1

.field public static final whitelist STATE_DEFAULT:I = 0x1

.field public static final whitelist STATE_FOREGROUND:I = 0x2

.field public static final whitelist TAG_NONE:I = 0x0

.field public static final whitelist UID_ALL:I = -0x1

.field public static final whitelist UID_REMOVED:I = -0x4

.field public static final whitelist UID_TETHERING:I = -0x5


# instance fields
.field private greylist-max-o mBeginTimeStamp:J

.field private greylist-max-o mDefaultNetworkStatus:I

.field private greylist-max-o mEndTimeStamp:J

.field private greylist-max-o mMetered:I

.field private greylist-max-o mRoaming:I

.field private greylist-max-o mRxBytes:J

.field private greylist-max-o mRxPackets:J

.field private greylist-max-o mState:I

.field private greylist-max-o mTag:I

.field private greylist-max-o mTxBytes:J

.field private greylist-max-o mTxPackets:J

.field private greylist-max-o mUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmBeginTimeStamp(Landroid/app/usage/NetworkStats$Bucket;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDefaultNetworkStatus(Landroid/app/usage/NetworkStats$Bucket;I)V
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mDefaultNetworkStatus:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEndTimeStamp(Landroid/app/usage/NetworkStats$Bucket;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMetered(Landroid/app/usage/NetworkStats$Bucket;I)V
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mMetered:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRoaming(Landroid/app/usage/NetworkStats$Bucket;I)V
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRxBytes(Landroid/app/usage/NetworkStats$Bucket;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRxPackets(Landroid/app/usage/NetworkStats$Bucket;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/app/usage/NetworkStats$Bucket;I)V
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTag(Landroid/app/usage/NetworkStats$Bucket;I)V
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTag:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxBytes(Landroid/app/usage/NetworkStats$Bucket;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxPackets(Landroid/app/usage/NetworkStats$Bucket;J)V
    .registers 3

    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUid(Landroid/app/usage/NetworkStats$Bucket;I)V
    .registers 2

    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertDefaultNetworkStatus(I)I
    .registers 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertDefaultNetworkStatus(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertMetered(I)I
    .registers 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertMetered(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertRoaming(I)I
    .registers 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertRoaming(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertSet(I)I
    .registers 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertSet(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertState(I)I
    .registers 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertState(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertTag(I)I
    .registers 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertTag(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertUid(I)I
    .registers 1

    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertUid(I)I

    move-result p0

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    return-void
.end method

.method private static greylist-max-o convertDefaultNetworkStatus(I)I
    .registers 2
    .param p0, "defaultNetworkStatus"    # I

    .line 337
    packed-switch p0, :pswitch_data_c

    .line 342
    const/4 v0, 0x0

    return v0

    .line 340
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 339
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 338
    :pswitch_9
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o convertMetered(I)I
    .registers 2
    .param p0, "metered"    # I

    .line 318
    packed-switch p0, :pswitch_data_c

    .line 323
    const/4 v0, 0x0

    return v0

    .line 321
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 320
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 319
    :pswitch_9
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o convertRoaming(I)I
    .registers 2
    .param p0, "roaming"    # I

    .line 327
    packed-switch p0, :pswitch_data_c

    .line 332
    const/4 v0, 0x0

    return v0

    .line 330
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 329
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 328
    :pswitch_9
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o convertSet(I)I
    .registers 2
    .param p0, "state"    # I

    .line 285
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_a

    .line 290
    :pswitch_4
    return v0

    .line 288
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 287
    :pswitch_7
    return v0

    .line 286
    :pswitch_8
    const/4 v0, -0x1

    return v0

    :pswitch_data_a
    .packed-switch -0x1
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o convertState(I)I
    .registers 2
    .param p0, "networkStatsSet"    # I

    .line 294
    packed-switch p0, :pswitch_data_c

    .line 299
    const/4 v0, 0x0

    return v0

    .line 297
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 296
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 295
    :pswitch_9
    const/4 v0, -0x1

    return v0

    nop

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static greylist-max-o convertTag(I)I
    .registers 2
    .param p0, "tag"    # I

    .line 311
    packed-switch p0, :pswitch_data_6

    .line 314
    return p0

    .line 312
    :pswitch_4
    const/4 v0, 0x0

    return v0

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method private static greylist-max-o convertUid(I)I
    .registers 2
    .param p0, "uid"    # I

    .line 303
    packed-switch p0, :pswitch_data_8

    .line 307
    return p0

    .line 304
    :pswitch_4
    const/4 v0, -0x4

    return v0

    .line 305
    :pswitch_6
    const/4 v0, -0x5

    return v0

    :pswitch_data_8
    .packed-switch -0x5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public whitelist getDefaultNetworkStatus()I
    .registers 2

    .line 418
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mDefaultNetworkStatus:I

    return v0
.end method

.method public whitelist getEndTimeStamp()J
    .registers 3

    .line 436
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    return-wide v0
.end method

.method public whitelist getMetered()I
    .registers 2

    .line 394
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mMetered:I

    return v0
.end method

.method public whitelist getRoaming()I
    .registers 2

    .line 406
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I

    return v0
.end method

.method public whitelist getRxBytes()J
    .registers 3

    .line 445
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    return-wide v0
.end method

.method public whitelist getRxPackets()J
    .registers 3

    .line 463
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    return-wide v0
.end method

.method public whitelist getStartTimeStamp()J
    .registers 3

    .line 427
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    return-wide v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 379
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    return v0
.end method

.method public whitelist getTag()I
    .registers 2

    .line 366
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTag:I

    return v0
.end method

.method public whitelist getTxBytes()J
    .registers 3

    .line 454
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    return-wide v0
.end method

.method public whitelist getTxPackets()J
    .registers 3

    .line 472
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    return-wide v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 358
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    return v0
.end method
