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


# static fields
.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x1

.field public static final ROAMING_YES:I = 0x2

.field public static final STATE_ALL:I = -0x1

.field public static final STATE_DEFAULT:I = 0x1

.field public static final STATE_FOREGROUND:I = 0x2

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1

.field public static final UID_REMOVED:I = -0x4

.field public static final UID_TETHERING:I = -0x5


# instance fields
.field private mBeginTimeStamp:J

.field private mEndTimeStamp:J

.field private mRoaming:I

.field private mRxBytes:J

.field private mRxPackets:J

.field private mState:I

.field private mTag:I

.field private mTxBytes:J

.field private mTxPackets:J

.field private mUid:I


# direct methods
.method static synthetic -set0(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    #@2
    return-wide p1
.end method

.method static synthetic -set2(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    #@2
    return-wide p1
.end method

.method static synthetic -set4(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    #@2
    return-wide p1
.end method

.method static synthetic -set5(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTag:I

    #@2
    return p1
.end method

.method static synthetic -set7(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    #@2
    return-wide p1
.end method

.method static synthetic -set8(Landroid/app/usage/NetworkStats$Bucket;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    #@2
    return-wide p1
.end method

.method static synthetic -set9(Landroid/app/usage/NetworkStats$Bucket;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    #@2
    return p1
.end method

.method static synthetic -wrap0(I)I
    .locals 1
    .param p0, "roaming"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertRoaming(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(I)I
    .locals 1
    .param p0, "networkStatsSet"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertState(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap2(I)I
    .locals 1
    .param p0, "tag"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertTag(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(I)I
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/app/usage/NetworkStats$Bucket;->convertUid(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static convertRoaming(I)I
    .locals 1
    .param p0, "roaming"    # I

    #@0
    .prologue
    .line 236
    packed-switch p0, :pswitch_data_0

    #@3
    .line 241
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 237
    :pswitch_0
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 238
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 239
    :pswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 236
    nop

    #@c
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertState(I)I
    .locals 1
    .param p0, "networkStatsSet"    # I

    #@0
    .prologue
    .line 212
    packed-switch p0, :pswitch_data_0

    #@3
    .line 217
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 213
    :pswitch_0
    const/4 v0, -0x1

    #@6
    return v0

    #@7
    .line 214
    :pswitch_1
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 215
    :pswitch_2
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 212
    nop

    #@c
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static convertTag(I)I
    .locals 1
    .param p0, "tag"    # I

    #@0
    .prologue
    .line 229
    packed-switch p0, :pswitch_data_0

    #@3
    .line 232
    return p0

    #@4
    .line 230
    :pswitch_0
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static convertUid(I)I
    .locals 1
    .param p0, "uid"    # I

    #@0
    .prologue
    .line 221
    packed-switch p0, :pswitch_data_0

    #@3
    .line 225
    return p0

    #@4
    .line 222
    :pswitch_0
    const/4 v0, -0x4

    #@5
    return v0

    #@6
    .line 223
    :pswitch_1
    const/4 v0, -0x5

    #@7
    return v0

    #@8
    .line 221
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getEndTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 308
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mEndTimeStamp:J

    #@2
    return-wide v0
.end method

.method public getRoaming()I
    .locals 1

    #@0
    .prologue
    .line 290
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRoaming:I

    #@2
    return v0
.end method

.method public getRxBytes()J
    .locals 2

    #@0
    .prologue
    .line 317
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxBytes:J

    #@2
    return-wide v0
.end method

.method public getRxPackets()J
    .locals 2

    #@0
    .prologue
    .line 335
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mRxPackets:J

    #@2
    return-wide v0
.end method

.method public getStartTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 299
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mBeginTimeStamp:J

    #@2
    return-wide v0
.end method

.method public getState()I
    .locals 1

    #@0
    .prologue
    .line 278
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mState:I

    #@2
    return v0
.end method

.method public getTag()I
    .locals 1

    #@0
    .prologue
    .line 265
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTag:I

    #@2
    return v0
.end method

.method public getTxBytes()J
    .locals 2

    #@0
    .prologue
    .line 326
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxBytes:J

    #@2
    return-wide v0
.end method

.method public getTxPackets()J
    .locals 2

    #@0
    .prologue
    .line 344
    iget-wide v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mTxPackets:J

    #@2
    return-wide v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 257
    iget v0, p0, Landroid/app/usage/NetworkStats$Bucket;->mUid:I

    #@2
    return v0
.end method
