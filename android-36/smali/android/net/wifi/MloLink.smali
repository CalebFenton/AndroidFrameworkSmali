.class public final Landroid/net/wifi/MloLink;
.super Ljava/lang/Object;
.source "MloLink.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/MloLink$MloLinkState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID_MLO_LINK_ID:I = -0x1

.field public static final blacklist MAX_MLO_LINK_ID:I = 0xf

.field public static final blacklist MIN_MLO_LINK_ID:I = 0x0

.field public static final whitelist MLO_LINK_STATE_ACTIVE:I = 0x3

.field public static final whitelist MLO_LINK_STATE_IDLE:I = 0x2

.field public static final whitelist MLO_LINK_STATE_INVALID:I = 0x0

.field public static final whitelist MLO_LINK_STATE_UNASSOCIATED:I = 0x1


# instance fields
.field public blacklist lastPacketCountUpdateTimeStamp:J

.field private blacklist mApMacAddress:Landroid/net/MacAddress;

.field private blacklist mBand:I

.field private blacklist mChannel:I

.field private blacklist mLinkId:I

.field private blacklist mLostTxPacketsPerSecond:D

.field private blacklist mRssi:I

.field private blacklist mRxLinkSpeed:I

.field private blacklist mStaMacAddress:Landroid/net/MacAddress;

.field private blacklist mState:I

.field private blacklist mSuccessfulRxPacketsPerSecond:D

.field private blacklist mSuccessfulTxPacketsPerSecond:D

.field private blacklist mTxLinkSpeed:I

.field private blacklist mTxRetriedTxPacketsPerSecond:D

.field public blacklist rxSuccess:J

.field public blacklist txBad:J

.field public blacklist txRetries:J

.field public blacklist txSuccess:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmApMacAddress(Landroid/net/wifi/MloLink;Landroid/net/MacAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBand(Landroid/net/wifi/MloLink;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/MloLink;->mBand:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannel(Landroid/net/wifi/MloLink;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/MloLink;->mChannel:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLinkId(Landroid/net/wifi/MloLink;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/MloLink;->mLinkId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLostTxPacketsPerSecond(Landroid/net/wifi/MloLink;D)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/MloLink;->mLostTxPacketsPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRssi(Landroid/net/wifi/MloLink;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/MloLink;->mRssi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRxLinkSpeed(Landroid/net/wifi/MloLink;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/MloLink;->mRxLinkSpeed:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStaMacAddress(Landroid/net/wifi/MloLink;Landroid/net/MacAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/net/wifi/MloLink;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/MloLink;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuccessfulRxPacketsPerSecond(Landroid/net/wifi/MloLink;D)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/MloLink;->mSuccessfulRxPacketsPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuccessfulTxPacketsPerSecond(Landroid/net/wifi/MloLink;D)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/MloLink;->mSuccessfulTxPacketsPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxLinkSpeed(Landroid/net/wifi/MloLink;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/MloLink;->mTxLinkSpeed:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxRetriedTxPacketsPerSecond(Landroid/net/wifi/MloLink;D)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/MloLink;->mTxRetriedTxPacketsPerSecond:D

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 565
    new-instance v0, Landroid/net/wifi/MloLink$1;

    invoke-direct {v0}, Landroid/net/wifi/MloLink$1;-><init>()V

    sput-object v0, Landroid/net/wifi/MloLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/MloLink;->lastPacketCountUpdateTimeStamp:J

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/MloLink;->mBand:I

    .line 121
    iput v0, p0, Landroid/net/wifi/MloLink;->mChannel:I

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/MloLink;->mState:I

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    .line 124
    iput-object v0, p0, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/MloLink;->mLinkId:I

    .line 126
    const/16 v1, -0x7f

    iput v1, p0, Landroid/net/wifi/MloLink;->mRssi:I

    .line 127
    iput v0, p0, Landroid/net/wifi/MloLink;->mRxLinkSpeed:I

    .line 128
    iput v0, p0, Landroid/net/wifi/MloLink;->mTxLinkSpeed:I

    .line 129
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/MloLink;J)V
    .registers 10
    .param p1, "source"    # Landroid/net/wifi/MloLink;
    .param p2, "redactions"    # J

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/MloLink;->lastPacketCountUpdateTimeStamp:J

    .line 137
    iget v0, p1, Landroid/net/wifi/MloLink;->mBand:I

    iput v0, p0, Landroid/net/wifi/MloLink;->mBand:I

    .line 138
    iget v0, p1, Landroid/net/wifi/MloLink;->mChannel:I

    iput v0, p0, Landroid/net/wifi/MloLink;->mChannel:I

    .line 139
    iget v0, p1, Landroid/net/wifi/MloLink;->mLinkId:I

    iput v0, p0, Landroid/net/wifi/MloLink;->mLinkId:I

    .line 140
    iget v0, p1, Landroid/net/wifi/MloLink;->mState:I

    iput v0, p0, Landroid/net/wifi/MloLink;->mState:I

    .line 141
    iget v0, p1, Landroid/net/wifi/MloLink;->mRssi:I

    iput v0, p0, Landroid/net/wifi/MloLink;->mRssi:I

    .line 142
    iget v0, p1, Landroid/net/wifi/MloLink;->mRxLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/MloLink;->mRxLinkSpeed:I

    .line 143
    iget v0, p1, Landroid/net/wifi/MloLink;->mTxLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/MloLink;->mTxLinkSpeed:I

    .line 144
    iget-wide v0, p1, Landroid/net/wifi/MloLink;->mLostTxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/MloLink;->mLostTxPacketsPerSecond:D

    .line 145
    iget-wide v0, p1, Landroid/net/wifi/MloLink;->mTxRetriedTxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/MloLink;->mTxRetriedTxPacketsPerSecond:D

    .line 146
    iget-wide v0, p1, Landroid/net/wifi/MloLink;->mSuccessfulRxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/MloLink;->mSuccessfulRxPacketsPerSecond:D

    .line 147
    iget-wide v0, p1, Landroid/net/wifi/MloLink;->mSuccessfulTxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/MloLink;->mSuccessfulTxPacketsPerSecond:D

    .line 148
    iget-wide v0, p1, Landroid/net/wifi/MloLink;->txBad:J

    iput-wide v0, p0, Landroid/net/wifi/MloLink;->txBad:J

    .line 149
    iget-wide v0, p1, Landroid/net/wifi/MloLink;->txRetries:J

    iput-wide v0, p0, Landroid/net/wifi/MloLink;->txRetries:J

    .line 150
    iget-wide v0, p1, Landroid/net/wifi/MloLink;->txSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/MloLink;->txSuccess:J

    .line 151
    iget-wide v0, p1, Landroid/net/wifi/MloLink;->rxSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/MloLink;->rxSuccess:J

    .line 153
    nop

    .line 154
    const-wide/16 v0, 0x2

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_5e

    iget-object v0, p1, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    if-nez v0, :cond_53

    goto :goto_5e

    .line 155
    :cond_53
    iget-object v0, p1, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    goto :goto_5f

    :cond_5e
    :goto_5e
    move-object v0, v1

    :goto_5f
    iput-object v0, p0, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    .line 157
    nop

    .line 158
    const-wide/16 v4, 0x1

    and-long/2addr v4, p2

    cmp-long v0, v4, v2

    if-nez v0, :cond_79

    iget-object v0, p1, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    if-nez v0, :cond_6e

    goto :goto_79

    .line 159
    :cond_6e
    iget-object v0, p1, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    goto :goto_7a

    :cond_79
    :goto_79
    nop

    :goto_7a
    iput-object v1, p0, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    .line 160
    return-void
.end method

.method public static blacklist getStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 478
    packed-switch p0, :pswitch_data_12

    .line 488
    const-string v0, "Unknown MLO link state"

    return-object v0

    .line 486
    :pswitch_6
    const-string v0, "MLO_LINK_STATE_ACTIVE"

    return-object v0

    .line 484
    :pswitch_9
    const-string v0, "MLO_LINK_STATE_IDLE"

    return-object v0

    .line 482
    :pswitch_c
    const-string v0, "MLO_LINK_STATE_UNASSOCIATED"

    return-object v0

    .line 480
    :pswitch_f
    const-string v0, "MLO_LINK_STATE_INVALID"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist isValidState(I)Z
    .registers 2
    .param p0, "state"    # I

    .line 496
    packed-switch p0, :pswitch_data_8

    .line 503
    const/4 v0, 0x0

    return v0

    .line 501
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 539
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 432
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 433
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_97

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_97

    .line 434
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/net/wifi/MloLink;

    .line 435
    .local v2, "that":Landroid/net/wifi/MloLink;
    iget v3, p0, Landroid/net/wifi/MloLink;->mBand:I

    iget v4, v2, Landroid/net/wifi/MloLink;->mBand:I

    if-ne v3, v4, :cond_95

    iget v3, p0, Landroid/net/wifi/MloLink;->mChannel:I

    iget v4, v2, Landroid/net/wifi/MloLink;->mChannel:I

    if-ne v3, v4, :cond_95

    iget v3, p0, Landroid/net/wifi/MloLink;->mLinkId:I

    iget v4, v2, Landroid/net/wifi/MloLink;->mLinkId:I

    if-ne v3, v4, :cond_95

    iget-object v3, p0, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    iget-object v4, v2, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    .line 438
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    iget-object v3, p0, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    iget-object v4, v2, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    .line 439
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95

    iget v3, p0, Landroid/net/wifi/MloLink;->mState:I

    iget v4, v2, Landroid/net/wifi/MloLink;->mState:I

    if-ne v3, v4, :cond_95

    iget v3, p0, Landroid/net/wifi/MloLink;->mRssi:I

    iget v4, v2, Landroid/net/wifi/MloLink;->mRssi:I

    if-ne v3, v4, :cond_95

    iget v3, p0, Landroid/net/wifi/MloLink;->mRxLinkSpeed:I

    iget v4, v2, Landroid/net/wifi/MloLink;->mRxLinkSpeed:I

    if-ne v3, v4, :cond_95

    iget v3, p0, Landroid/net/wifi/MloLink;->mTxLinkSpeed:I

    iget v4, v2, Landroid/net/wifi/MloLink;->mTxLinkSpeed:I

    if-ne v3, v4, :cond_95

    iget-wide v3, p0, Landroid/net/wifi/MloLink;->mTxRetriedTxPacketsPerSecond:D

    iget-wide v5, v2, Landroid/net/wifi/MloLink;->mTxRetriedTxPacketsPerSecond:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_95

    iget-wide v3, p0, Landroid/net/wifi/MloLink;->mSuccessfulTxPacketsPerSecond:D

    iget-wide v5, v2, Landroid/net/wifi/MloLink;->mSuccessfulTxPacketsPerSecond:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_95

    iget-wide v3, p0, Landroid/net/wifi/MloLink;->mLostTxPacketsPerSecond:D

    iget-wide v5, v2, Landroid/net/wifi/MloLink;->mLostTxPacketsPerSecond:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_95

    iget-wide v3, p0, Landroid/net/wifi/MloLink;->mSuccessfulRxPacketsPerSecond:D

    iget-wide v5, v2, Landroid/net/wifi/MloLink;->mSuccessfulRxPacketsPerSecond:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_95

    iget-wide v3, p0, Landroid/net/wifi/MloLink;->txBad:J

    iget-wide v5, v2, Landroid/net/wifi/MloLink;->txBad:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_95

    iget-wide v3, p0, Landroid/net/wifi/MloLink;->txRetries:J

    iget-wide v5, v2, Landroid/net/wifi/MloLink;->txRetries:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_95

    iget-wide v3, p0, Landroid/net/wifi/MloLink;->txSuccess:J

    iget-wide v5, v2, Landroid/net/wifi/MloLink;->txSuccess:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_95

    iget-wide v3, p0, Landroid/net/wifi/MloLink;->rxSuccess:J

    iget-wide v5, v2, Landroid/net/wifi/MloLink;->rxSuccess:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_95

    goto :goto_96

    :cond_95
    move v0, v1

    .line 435
    :goto_96
    return v0

    .line 433
    .end local v2    # "that":Landroid/net/wifi/MloLink;
    :cond_97
    :goto_97
    return v1
.end method

.method public whitelist getApMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getBand()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/net/wifi/MloLink;->mBand:I

    return v0
.end method

.method public whitelist getChannel()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/net/wifi/MloLink;->mChannel:I

    return v0
.end method

.method public whitelist getLinkId()I
    .registers 2

    .line 185
    iget v0, p0, Landroid/net/wifi/MloLink;->mLinkId:I

    return v0
.end method

.method public blacklist getLostTxPacketsPerSecond()D
    .registers 3

    .line 374
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->mLostTxPacketsPerSecond:D

    return-wide v0
.end method

.method public blacklist getRetriedTxPacketsPerSecond()D
    .registers 3

    .line 390
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->mTxRetriedTxPacketsPerSecond:D

    return-wide v0
.end method

.method public whitelist getRssi()I
    .registers 2

    .line 332
    iget v0, p0, Landroid/net/wifi/MloLink;->mRssi:I

    return v0
.end method

.method public whitelist getRxLinkSpeedMbps()I
    .registers 2

    .line 290
    iget v0, p0, Landroid/net/wifi/MloLink;->mRxLinkSpeed:I

    return v0
.end method

.method public whitelist getStaMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 218
    iget-object v0, p0, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getState()I
    .registers 2

    .line 195
    iget v0, p0, Landroid/net/wifi/MloLink;->mState:I

    return v0
.end method

.method public blacklist getSuccessfulRxPacketsPerSecond()D
    .registers 3

    .line 422
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->mSuccessfulRxPacketsPerSecond:D

    return-wide v0
.end method

.method public blacklist getSuccessfulTxPacketsPerSecond()D
    .registers 3

    .line 406
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->mSuccessfulTxPacketsPerSecond:D

    return-wide v0
.end method

.method public whitelist getTxLinkSpeedMbps()I
    .registers 2

    .line 308
    iget v0, p0, Landroid/net/wifi/MloLink;->mTxLinkSpeed:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 20

    .line 456
    move-object/from16 v0, p0

    iget v1, v0, Landroid/net/wifi/MloLink;->mBand:I

    .line 457
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Landroid/net/wifi/MloLink;->mChannel:I

    .line 458
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Landroid/net/wifi/MloLink;->mLinkId:I

    .line 459
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    iget-object v6, v0, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    iget v1, v0, Landroid/net/wifi/MloLink;->mState:I

    .line 462
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/net/wifi/MloLink;->mRssi:I

    .line 463
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Landroid/net/wifi/MloLink;->mRxLinkSpeed:I

    .line 464
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Landroid/net/wifi/MloLink;->mTxLinkSpeed:I

    .line 465
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-wide v11, v0, Landroid/net/wifi/MloLink;->mTxRetriedTxPacketsPerSecond:D

    .line 466
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-wide v12, v0, Landroid/net/wifi/MloLink;->mSuccessfulTxPacketsPerSecond:D

    .line 467
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-wide v13, v0, Landroid/net/wifi/MloLink;->mLostTxPacketsPerSecond:D

    .line 468
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    iget-wide v14, v0, Landroid/net/wifi/MloLink;->mSuccessfulRxPacketsPerSecond:D

    .line 469
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    move-object v15, v2

    iget-wide v1, v0, Landroid/net/wifi/MloLink;->txBad:J

    .line 470
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v16, v1

    iget-wide v1, v0, Landroid/net/wifi/MloLink;->txRetries:J

    .line 471
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v17, v1

    iget-wide v1, v0, Landroid/net/wifi/MloLink;->txSuccess:J

    .line 472
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v18, v1

    iget-wide v1, v0, Landroid/net/wifi/MloLink;->rxSuccess:J

    .line 473
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v1

    filled-new-array/range {v2 .. v18}, [Ljava/lang/Object;

    move-result-object v1

    .line 456
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public blacklist setApMacAddress(Landroid/net/MacAddress;)V
    .registers 2
    .param p1, "address"    # Landroid/net/MacAddress;

    .line 263
    iput-object p1, p0, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    .line 264
    return-void
.end method

.method public blacklist setBand(I)V
    .registers 2
    .param p1, "band"    # I

    .line 236
    iput p1, p0, Landroid/net/wifi/MloLink;->mBand:I

    .line 237
    return-void
.end method

.method public blacklist setChannel(I)V
    .registers 2
    .param p1, "channel"    # I

    .line 227
    iput p1, p0, Landroid/net/wifi/MloLink;->mChannel:I

    .line 228
    return-void
.end method

.method public blacklist setLinkId(I)V
    .registers 2
    .param p1, "linkId"    # I

    .line 245
    iput p1, p0, Landroid/net/wifi/MloLink;->mLinkId:I

    .line 246
    return-void
.end method

.method public blacklist setLostTxPacketsPerSecond(D)V
    .registers 3
    .param p1, "lostTxPacketsPerSecond"    # D

    .line 379
    iput-wide p1, p0, Landroid/net/wifi/MloLink;->mLostTxPacketsPerSecond:D

    .line 380
    return-void
.end method

.method public blacklist setRetriedTxPacketsRate(D)V
    .registers 3
    .param p1, "txRetriedTxPacketsPerSecond"    # D

    .line 395
    iput-wide p1, p0, Landroid/net/wifi/MloLink;->mTxRetriedTxPacketsPerSecond:D

    .line 396
    return-void
.end method

.method public blacklist setRssi(I)V
    .registers 3
    .param p1, "rssi"    # I

    .line 318
    const/16 v0, -0x7f

    if-ge p1, v0, :cond_6

    const/16 p1, -0x7f

    .line 319
    :cond_6
    const/16 v0, 0xc8

    if-le p1, v0, :cond_c

    const/16 p1, 0xc8

    .line 320
    :cond_c
    iput p1, p0, Landroid/net/wifi/MloLink;->mRssi:I

    .line 321
    return-void
.end method

.method public blacklist setRxLinkSpeedMbps(I)V
    .registers 2
    .param p1, "rxLinkSpeed"    # I

    .line 280
    iput p1, p0, Landroid/net/wifi/MloLink;->mRxLinkSpeed:I

    .line 281
    return-void
.end method

.method public blacklist setStaMacAddress(Landroid/net/MacAddress;)V
    .registers 2
    .param p1, "address"    # Landroid/net/MacAddress;

    .line 272
    iput-object p1, p0, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    .line 273
    return-void
.end method

.method public blacklist setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 254
    iput p1, p0, Landroid/net/wifi/MloLink;->mState:I

    .line 255
    return-void
.end method

.method public blacklist setSuccessfulRxPacketsPerSecond(D)V
    .registers 3
    .param p1, "successfulRxPacketsPerSecond"    # D

    .line 427
    iput-wide p1, p0, Landroid/net/wifi/MloLink;->mSuccessfulRxPacketsPerSecond:D

    .line 428
    return-void
.end method

.method public blacklist setSuccessfulTxPacketsPerSecond(D)V
    .registers 3
    .param p1, "successfulTxPacketsPerSecond"    # D

    .line 411
    iput-wide p1, p0, Landroid/net/wifi/MloLink;->mSuccessfulTxPacketsPerSecond:D

    .line 412
    return-void
.end method

.method public blacklist setTxLinkSpeedMbps(I)V
    .registers 2
    .param p1, "txLinkSpeed"    # I

    .line 298
    iput p1, p0, Landroid/net/wifi/MloLink;->mTxLinkSpeed:I

    .line 299
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MloLink{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/net/wifi/MloLink;->mBand:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 510
    const-string v1, "2.4GHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 511
    :cond_12
    iget v1, p0, Landroid/net/wifi/MloLink;->mBand:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 512
    const-string v1, "5GHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 513
    :cond_1d
    iget v1, p0, Landroid/net/wifi/MloLink;->mBand:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_29

    .line 514
    const-string v1, "6GHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 516
    :cond_29
    const-string v1, "UNKNOWN BAND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    :goto_2e
    const-string v1, ", channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/MloLink;->mChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 519
    const-string v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/MloLink;->mLinkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/MloLink;->mState:I

    invoke-static {v2}, Landroid/net/wifi/MloLink;->getStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v1, ", RSSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/MloLink;->getRssi()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    const-string v1, ", Rx Link speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/MloLink;->getRxLinkSpeedMbps()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Mbps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v1, ", Tx Link speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/MloLink;->getTxLinkSpeedMbps()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v1, p0, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    if-eqz v1, :cond_97

    .line 527
    const-string v1, ", AP MAC Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_97
    iget-object v1, p0, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    if-eqz v1, :cond_aa

    .line 530
    const-string v1, ", STA MAC Address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_aa
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 545
    iget v0, p0, Landroid/net/wifi/MloLink;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    iget v0, p0, Landroid/net/wifi/MloLink;->mChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget v0, p0, Landroid/net/wifi/MloLink;->mLinkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    iget v0, p0, Landroid/net/wifi/MloLink;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    iget v0, p0, Landroid/net/wifi/MloLink;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    iget v0, p0, Landroid/net/wifi/MloLink;->mRxLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    iget v0, p0, Landroid/net/wifi/MloLink;->mTxLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget-object v0, p0, Landroid/net/wifi/MloLink;->mApMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 553
    iget-object v0, p0, Landroid/net/wifi/MloLink;->mStaMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 554
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->mLostTxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 555
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->mSuccessfulTxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 556
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->mSuccessfulRxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 557
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->mTxRetriedTxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 558
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->txBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 559
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->txRetries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 560
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->txSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 561
    iget-wide v0, p0, Landroid/net/wifi/MloLink;->rxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 562
    return-void
.end method
