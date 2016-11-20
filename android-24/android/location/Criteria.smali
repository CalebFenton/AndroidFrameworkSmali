.class public Landroid/location/Criteria;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Criteria$1;
    }
.end annotation


# static fields
.field public static final ACCURACY_COARSE:I = 0x2

.field public static final ACCURACY_FINE:I = 0x1

.field public static final ACCURACY_HIGH:I = 0x3

.field public static final ACCURACY_LOW:I = 0x1

.field public static final ACCURACY_MEDIUM:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Criteria;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_REQUIREMENT:I = 0x0

.field public static final POWER_HIGH:I = 0x3

.field public static final POWER_LOW:I = 0x1

.field public static final POWER_MEDIUM:I = 0x2


# instance fields
.field private mAltitudeRequired:Z

.field private mBearingAccuracy:I

.field private mBearingRequired:Z

.field private mCostAllowed:Z

.field private mHorizontalAccuracy:I

.field private mPowerRequirement:I

.field private mSpeedAccuracy:I

.field private mSpeedRequired:Z

.field private mVerticalAccuracy:I


# direct methods
.method static synthetic -set0(Landroid/location/Criteria;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/location/Criteria;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    #@2
    return p1
.end method

.method static synthetic -set2(Landroid/location/Criteria;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/location/Criteria;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/location/Criteria;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@2
    return p1
.end method

.method static synthetic -set5(Landroid/location/Criteria;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/Criteria;->mPowerRequirement:I

    #@2
    return p1
.end method

.method static synthetic -set6(Landroid/location/Criteria;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    #@2
    return p1
.end method

.method static synthetic -set7(Landroid/location/Criteria;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    #@2
    return p1
.end method

.method static synthetic -set8(Landroid/location/Criteria;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 328
    new-instance v0, Landroid/location/Criteria$1;

    #@2
    invoke-direct {v0}, Landroid/location/Criteria$1;-><init>()V

    #@5
    .line 327
    sput-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 84
    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@6
    .line 85
    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    #@8
    .line 86
    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    #@a
    .line 87
    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    #@c
    .line 88
    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    #@e
    .line 89
    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    #@10
    .line 90
    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    #@12
    .line 91
    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    #@14
    .line 92
    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    #@16
    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/location/Criteria;)V
    .locals 1
    .param p1, "criteria"    # Landroid/location/Criteria;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 84
    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@6
    .line 85
    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    #@8
    .line 86
    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    #@a
    .line 87
    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    #@c
    .line 88
    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    #@e
    .line 89
    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    #@10
    .line 90
    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    #@12
    .line 91
    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    #@14
    .line 92
    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    #@16
    .line 106
    iget v0, p1, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@18
    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@1a
    .line 107
    iget v0, p1, Landroid/location/Criteria;->mVerticalAccuracy:I

    #@1c
    iput v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    #@1e
    .line 108
    iget v0, p1, Landroid/location/Criteria;->mSpeedAccuracy:I

    #@20
    iput v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    #@22
    .line 109
    iget v0, p1, Landroid/location/Criteria;->mBearingAccuracy:I

    #@24
    iput v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    #@26
    .line 110
    iget v0, p1, Landroid/location/Criteria;->mPowerRequirement:I

    #@28
    iput v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    #@2a
    .line 111
    iget-boolean v0, p1, Landroid/location/Criteria;->mAltitudeRequired:Z

    #@2c
    iput-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    #@2e
    .line 112
    iget-boolean v0, p1, Landroid/location/Criteria;->mBearingRequired:Z

    #@30
    iput-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    #@32
    .line 113
    iget-boolean v0, p1, Landroid/location/Criteria;->mSpeedRequired:Z

    #@34
    iput-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    #@36
    .line 114
    iget-boolean v0, p1, Landroid/location/Criteria;->mCostAllowed:Z

    #@38
    iput-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    #@3a
    .line 105
    return-void
.end method

.method private static accuracyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "accuracy"    # I

    #@0
    .prologue
    .line 384
    packed-switch p0, :pswitch_data_0

    #@3
    .line 394
    const-string/jumbo v0, "???"

    #@6
    return-object v0

    #@7
    .line 386
    :pswitch_0
    const-string/jumbo v0, "---"

    #@a
    return-object v0

    #@b
    .line 388
    :pswitch_1
    const-string/jumbo v0, "HIGH"

    #@e
    return-object v0

    #@f
    .line 390
    :pswitch_2
    const-string/jumbo v0, "MEDIUM"

    #@12
    return-object v0

    #@13
    .line 392
    :pswitch_3
    const-string/jumbo v0, "LOW"

    #@16
    return-object v0

    #@17
    .line 384
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static powerToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "power"    # I

    #@0
    .prologue
    .line 369
    packed-switch p0, :pswitch_data_0

    #@3
    .line 379
    const-string/jumbo v0, "???"

    #@6
    return-object v0

    #@7
    .line 371
    :pswitch_0
    const-string/jumbo v0, "NO_REQ"

    #@a
    return-object v0

    #@b
    .line 373
    :pswitch_1
    const-string/jumbo v0, "LOW"

    #@e
    return-object v0

    #@f
    .line 375
    :pswitch_2
    const-string/jumbo v0, "MEDIUM"

    #@12
    return-object v0

    #@13
    .line 377
    :pswitch_3
    const-string/jumbo v0, "HIGH"

    #@16
    return-object v0

    #@17
    .line 369
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 352
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAccuracy()I
    .locals 2

    #@0
    .prologue
    .line 238
    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@2
    const/4 v1, 0x3

    #@3
    if-lt v0, v1, :cond_0

    #@5
    .line 239
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 241
    :cond_0
    const/4 v0, 0x2

    #@8
    return v0
.end method

.method public getBearingAccuracy()I
    .locals 1

    #@0
    .prologue
    .line 210
    iget v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    #@2
    return v0
.end method

.method public getHorizontalAccuracy()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@2
    return v0
.end method

.method public getPowerRequirement()I
    .locals 1

    #@0
    .prologue
    .line 262
    iget v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    #@2
    return v0
.end method

.method public getSpeedAccuracy()I
    .locals 1

    #@0
    .prologue
    .line 186
    iget v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    #@2
    return v0
.end method

.method public getVerticalAccuracy()I
    .locals 1

    #@0
    .prologue
    .line 162
    iget v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    #@2
    return v0
.end method

.method public isAltitudeRequired()Z
    .locals 1

    #@0
    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    #@2
    return v0
.end method

.method public isBearingRequired()Z
    .locals 1

    #@0
    .prologue
    .line 324
    iget-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    #@2
    return v0
.end method

.method public isCostAllowed()Z
    .locals 1

    #@0
    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    #@2
    return v0
.end method

.method public isSpeedRequired()Z
    .locals 1

    #@0
    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    #@2
    return v0
.end method

.method public setAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 222
    if-ltz p1, :cond_0

    #@3
    const/4 v0, 0x2

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "accuracy="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 225
    :cond_1
    if-ne p1, v1, :cond_2

    #@22
    .line 226
    const/4 v0, 0x3

    #@23
    iput v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@25
    .line 221
    :goto_0
    return-void

    #@26
    .line 228
    :cond_2
    iput v1, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@28
    goto :goto_0
.end method

.method public setAltitudeRequired(Z)V
    .locals 0
    .param p1, "altitudeRequired"    # Z

    #@0
    .prologue
    .line 284
    iput-boolean p1, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    #@2
    .line 283
    return-void
.end method

.method public setBearingAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I

    #@0
    .prologue
    .line 198
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "accuracy="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 201
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    #@21
    .line 197
    return-void
.end method

.method public setBearingRequired(Z)V
    .locals 0
    .param p1, "bearingRequired"    # Z

    #@0
    .prologue
    .line 316
    iput-boolean p1, p0, Landroid/location/Criteria;->mBearingRequired:Z

    #@2
    .line 315
    return-void
.end method

.method public setCostAllowed(Z)V
    .locals 0
    .param p1, "costAllowed"    # Z

    #@0
    .prologue
    .line 269
    iput-boolean p1, p0, Landroid/location/Criteria;->mCostAllowed:Z

    #@2
    .line 268
    return-void
.end method

.method public setHorizontalAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I

    #@0
    .prologue
    .line 126
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "accuracy="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 129
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@21
    .line 125
    return-void
.end method

.method public setPowerRequirement(I)V
    .locals 3
    .param p1, "level"    # I

    #@0
    .prologue
    .line 251
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "level="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 254
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mPowerRequirement:I

    #@21
    .line 250
    return-void
.end method

.method public setSpeedAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I

    #@0
    .prologue
    .line 174
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 175
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "accuracy="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 177
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    #@21
    .line 173
    return-void
.end method

.method public setSpeedRequired(Z)V
    .locals 0
    .param p1, "speedRequired"    # Z

    #@0
    .prologue
    .line 300
    iput-boolean p1, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    #@2
    .line 299
    return-void
.end method

.method public setVerticalAccuracy(I)V
    .locals 3
    .param p1, "accuracy"    # I

    #@0
    .prologue
    .line 150
    if-ltz p1, :cond_0

    #@2
    const/4 v0, 0x3

    #@3
    if-le p1, v0, :cond_1

    #@5
    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "accuracy="

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 153
    :cond_1
    iput p1, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    #@21
    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 401
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Criteria[power="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/location/Criteria;->mPowerRequirement:I

    #@e
    invoke-static {v2}, Landroid/location/Criteria;->powerToString(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 402
    const-string/jumbo v1, " acc="

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget v2, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@1e
    invoke-static {v2}, Landroid/location/Criteria;->accuracyToString(I)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 403
    const/16 v1, 0x5d

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 404
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 357
    iget v0, p0, Landroid/location/Criteria;->mHorizontalAccuracy:I

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 358
    iget v0, p0, Landroid/location/Criteria;->mVerticalAccuracy:I

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 359
    iget v0, p0, Landroid/location/Criteria;->mSpeedAccuracy:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 360
    iget v0, p0, Landroid/location/Criteria;->mBearingAccuracy:I

    #@13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@16
    .line 361
    iget v0, p0, Landroid/location/Criteria;->mPowerRequirement:I

    #@18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1b
    .line 362
    iget-boolean v0, p0, Landroid/location/Criteria;->mAltitudeRequired:Z

    #@1d
    if-eqz v0, :cond_0

    #@1f
    move v0, v1

    #@20
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@23
    .line 363
    iget-boolean v0, p0, Landroid/location/Criteria;->mBearingRequired:Z

    #@25
    if-eqz v0, :cond_1

    #@27
    move v0, v1

    #@28
    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 364
    iget-boolean v0, p0, Landroid/location/Criteria;->mSpeedRequired:Z

    #@2d
    if-eqz v0, :cond_2

    #@2f
    move v0, v1

    #@30
    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 365
    iget-boolean v0, p0, Landroid/location/Criteria;->mCostAllowed:Z

    #@35
    if-eqz v0, :cond_3

    #@37
    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 356
    return-void

    #@3b
    :cond_0
    move v0, v2

    #@3c
    .line 362
    goto :goto_0

    #@3d
    :cond_1
    move v0, v2

    #@3e
    .line 363
    goto :goto_1

    #@3f
    :cond_2
    move v0, v2

    #@40
    .line 364
    goto :goto_2

    #@41
    :cond_3
    move v1, v2

    #@42
    .line 365
    goto :goto_3
.end method
