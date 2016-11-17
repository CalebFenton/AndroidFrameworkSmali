.class public final Landroid/location/LocationRequest;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationRequest$1;
    }
.end annotation


# static fields
.field public static final ACCURACY_BLOCK:I = 0x66

.field public static final ACCURACY_CITY:I = 0x68

.field public static final ACCURACY_FINE:I = 0x64

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final FASTEST_INTERVAL_FACTOR:D = 6.0

.field public static final POWER_HIGH:I = 0xcb

.field public static final POWER_LOW:I = 0xc9

.field public static final POWER_NONE:I = 0xc8


# instance fields
.field private mExpireAt:J

.field private mExplicitFastestInterval:Z

.field private mFastestInterval:J

.field private mHideFromAppOps:Z

.field private mInterval:J

.field private mNumUpdates:I

.field private mProvider:Ljava/lang/String;

.field private mQuality:I

.field private mSmallestDisplacement:F

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 589
    new-instance v0, Landroid/location/LocationRequest$1;

    #@2
    invoke-direct {v0}, Landroid/location/LocationRequest$1;-><init>()V

    #@5
    .line 588
    sput-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 89
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 144
    const/16 v0, 0xc9

    #@6
    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    #@8
    .line 145
    const-wide/32 v0, 0x36ee80

    #@b
    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    #@d
    .line 146
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    #@f
    long-to-double v0, v0

    #@10
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    #@12
    div-double/2addr v0, v2

    #@13
    double-to-long v0, v0

    #@14
    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    #@16
    .line 147
    iput-boolean v4, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    #@18
    .line 148
    const-wide v0, 0x7fffffffffffffffL

    #@1d
    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@1f
    .line 149
    const v0, 0x7fffffff

    #@22
    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@24
    .line 150
    const/4 v0, 0x0

    #@25
    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    #@27
    .line 151
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    #@2a
    .line 152
    iput-boolean v4, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    #@2c
    .line 154
    const-string/jumbo v0, "fused"

    #@2f
    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    #@31
    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/location/LocationRequest;)V
    .locals 5
    .param p1, "src"    # Landroid/location/LocationRequest;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 144
    const/16 v0, 0xc9

    #@6
    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    #@8
    .line 145
    const-wide/32 v0, 0x36ee80

    #@b
    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    #@d
    .line 146
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    #@f
    long-to-double v0, v0

    #@10
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    #@12
    div-double/2addr v0, v2

    #@13
    double-to-long v0, v0

    #@14
    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    #@16
    .line 147
    iput-boolean v4, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    #@18
    .line 148
    const-wide v0, 0x7fffffffffffffffL

    #@1d
    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@1f
    .line 149
    const v0, 0x7fffffff

    #@22
    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@24
    .line 150
    const/4 v0, 0x0

    #@25
    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    #@27
    .line 151
    const/4 v0, 0x0

    #@28
    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    #@2a
    .line 152
    iput-boolean v4, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    #@2c
    .line 154
    const-string/jumbo v0, "fused"

    #@2f
    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    #@31
    .line 236
    iget v0, p1, Landroid/location/LocationRequest;->mQuality:I

    #@33
    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    #@35
    .line 237
    iget-wide v0, p1, Landroid/location/LocationRequest;->mInterval:J

    #@37
    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    #@39
    .line 238
    iget-wide v0, p1, Landroid/location/LocationRequest;->mFastestInterval:J

    #@3b
    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    #@3d
    .line 239
    iget-boolean v0, p1, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    #@3f
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    #@41
    .line 240
    iget-wide v0, p1, Landroid/location/LocationRequest;->mExpireAt:J

    #@43
    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@45
    .line 241
    iget v0, p1, Landroid/location/LocationRequest;->mNumUpdates:I

    #@47
    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@49
    .line 242
    iget v0, p1, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    #@4b
    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    #@4d
    .line 243
    iget-object v0, p1, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    #@4f
    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    #@51
    .line 244
    iget-object v0, p1, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    #@53
    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    #@55
    .line 245
    iget-boolean v0, p1, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    #@57
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    #@59
    .line 235
    return-void
.end method

.method private static checkDisplacement(F)V
    .locals 3
    .param p0, "meters"    # F

    #@0
    .prologue
    .line 577
    const/4 v0, 0x0

    #@1
    cmpg-float v0, p0, v0

    #@3
    if-gez v0, :cond_0

    #@5
    .line 578
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "invalid displacement: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
    .line 576
    :cond_0
    return-void
.end method

.method private static checkInterval(J)V
    .locals 4
    .param p0, "millis"    # J

    #@0
    .prologue
    .line 557
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "invalid interval: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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
    .line 556
    :cond_0
    return-void
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 583
    if-nez p0, :cond_0

    #@2
    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "invalid provider: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 582
    :cond_0
    return-void
.end method

.method private static checkQuality(I)V
    .locals 3
    .param p0, "quality"    # I

    #@0
    .prologue
    .line 563
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "invalid quality: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 562
    :sswitch_0
    return-void

    #@1e
    .line 563
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x68 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xcb -> :sswitch_0
    .end sparse-switch
.end method

.method public static create()Landroid/location/LocationRequest;
    .locals 1

    #@0
    .prologue
    .line 166
    new-instance v0, Landroid/location/LocationRequest;

    #@2
    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    #@5
    .line 167
    .local v0, "request":Landroid/location/LocationRequest;
    return-object v0
.end method

.method public static createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;
    .locals 5
    .param p0, "criteria"    # Landroid/location/Criteria;
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "singleShot"    # Z

    #@0
    .prologue
    .line 200
    const-wide/16 v2, 0x0

    #@2
    cmp-long v2, p1, v2

    #@4
    if-gez v2, :cond_0

    #@6
    const-wide/16 p1, 0x0

    #@8
    .line 201
    :cond_0
    const/4 v2, 0x0

    #@9
    cmpg-float v2, p3, v2

    #@b
    if-gez v2, :cond_1

    #@d
    const/4 p3, 0x0

    #@e
    .line 204
    :cond_1
    invoke-virtual {p0}, Landroid/location/Criteria;->getAccuracy()I

    #@11
    move-result v2

    #@12
    packed-switch v2, :pswitch_data_0

    #@15
    .line 212
    invoke-virtual {p0}, Landroid/location/Criteria;->getPowerRequirement()I

    #@18
    move-result v2

    #@19
    packed-switch v2, :pswitch_data_1

    #@1c
    .line 217
    const/16 v0, 0xc9

    #@1e
    .line 222
    .local v0, "quality":I
    :goto_0
    new-instance v2, Landroid/location/LocationRequest;

    #@20
    invoke-direct {v2}, Landroid/location/LocationRequest;-><init>()V

    #@23
    invoke-virtual {v2, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    #@32
    move-result-object v1

    #@33
    .line 227
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz p4, :cond_2

    #@35
    const/4 v2, 0x1

    #@36
    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    #@39
    .line 228
    :cond_2
    return-object v1

    #@3a
    .line 206
    .end local v0    # "quality":I
    .end local v1    # "request":Landroid/location/LocationRequest;
    :pswitch_0
    const/16 v0, 0x66

    #@3c
    .line 207
    .restart local v0    # "quality":I
    goto :goto_0

    #@3d
    .line 209
    .end local v0    # "quality":I
    :pswitch_1
    const/16 v0, 0x64

    #@3f
    .line 210
    .restart local v0    # "quality":I
    goto :goto_0

    #@40
    .line 214
    .end local v0    # "quality":I
    :pswitch_2
    const/16 v0, 0xcb

    #@42
    .line 215
    .restart local v0    # "quality":I
    goto :goto_0

    #@43
    .line 204
    nop

    #@44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    #@4c
    .line 212
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method public static createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;
    .locals 5
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "minTime"    # J
    .param p3, "minDistance"    # F
    .param p4, "singleShot"    # Z

    #@0
    .prologue
    .line 174
    const-wide/16 v2, 0x0

    #@2
    cmp-long v2, p1, v2

    #@4
    if-gez v2, :cond_0

    #@6
    const-wide/16 p1, 0x0

    #@8
    .line 175
    :cond_0
    const/4 v2, 0x0

    #@9
    cmpg-float v2, p3, v2

    #@b
    if-gez v2, :cond_1

    #@d
    const/4 p3, 0x0

    #@e
    .line 178
    :cond_1
    const-string/jumbo v2, "passive"

    #@11
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_3

    #@17
    .line 179
    const/16 v0, 0xc8

    #@19
    .line 186
    .local v0, "quality":I
    :goto_0
    new-instance v2, Landroid/location/LocationRequest;

    #@1b
    invoke-direct {v2}, Landroid/location/LocationRequest;-><init>()V

    #@1e
    invoke-virtual {v2, p0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    #@31
    move-result-object v1

    #@32
    .line 192
    .local v1, "request":Landroid/location/LocationRequest;
    if-eqz p4, :cond_2

    #@34
    const/4 v2, 0x1

    #@35
    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    #@38
    .line 193
    :cond_2
    return-object v1

    #@39
    .line 180
    .end local v0    # "quality":I
    .end local v1    # "request":Landroid/location/LocationRequest;
    :cond_3
    const-string/jumbo v2, "gps"

    #@3c
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_4

    #@42
    .line 181
    const/16 v0, 0x64

    #@44
    .restart local v0    # "quality":I
    goto :goto_0

    #@45
    .line 183
    .end local v0    # "quality":I
    :cond_4
    const/16 v0, 0xc9

    #@47
    .restart local v0    # "quality":I
    goto :goto_0
.end method

.method public static qualityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "quality"    # I

    #@0
    .prologue
    .line 632
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 646
    const-string/jumbo v0, "???"

    #@6
    return-object v0

    #@7
    .line 634
    :sswitch_0
    const-string/jumbo v0, "ACCURACY_FINE"

    #@a
    return-object v0

    #@b
    .line 636
    :sswitch_1
    const-string/jumbo v0, "ACCURACY_BLOCK"

    #@e
    return-object v0

    #@f
    .line 638
    :sswitch_2
    const-string/jumbo v0, "ACCURACY_CITY"

    #@12
    return-object v0

    #@13
    .line 640
    :sswitch_3
    const-string/jumbo v0, "POWER_NONE"

    #@16
    return-object v0

    #@17
    .line 642
    :sswitch_4
    const-string/jumbo v0, "POWER_LOW"

    #@1a
    return-object v0

    #@1b
    .line 644
    :sswitch_5
    const-string/jumbo v0, "POWER_HIGH"

    #@1e
    return-object v0

    #@1f
    .line 632
    nop

    #@20
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_1
        0x68 -> :sswitch_2
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xcb -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public decrementNumUpdates()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 473
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@3
    const v1, 0x7fffffff

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 474
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@a
    add-int/lit8 v0, v0, -0x1

    #@c
    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@e
    .line 476
    :cond_0
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@10
    if-gez v0, :cond_1

    #@12
    .line 477
    iput v2, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@14
    .line 472
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 614
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getExpireAt()J
    .locals 2

    #@0
    .prologue
    .line 438
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@2
    return-wide v0
.end method

.method public getFastestInterval()J
    .locals 2

    #@0
    .prologue
    .line 376
    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    #@2
    return-wide v0
.end method

.method public getHideFromAppOps()Z
    .locals 1

    #@0
    .prologue
    .line 553
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    #@2
    return v0
.end method

.method public getInterval()J
    .locals 2

    #@0
    .prologue
    .line 327
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    #@2
    return-wide v0
.end method

.method public getNumUpdates()I
    .locals 1

    #@0
    .prologue
    .line 468
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@2
    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 493
    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getQuality()I
    .locals 1

    #@0
    .prologue
    .line 281
    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    #@2
    return v0
.end method

.method public getSmallestDisplacement()F
    .locals 1

    #@0
    .prologue
    .line 507
    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    #@2
    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .locals 1

    #@0
    .prologue
    .line 528
    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    #@2
    return-object v0
.end method

.method public setExpireAt(J)Landroid/location/LocationRequest;
    .locals 5
    .param p1, "millis"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 424
    iput-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@4
    .line 425
    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gez v0, :cond_0

    #@a
    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@c
    .line 426
    :cond_0
    return-object p0
.end method

.method public setExpireIn(J)Landroid/location/LocationRequest;
    .locals 9
    .param p1, "millis"    # J

    #@0
    .prologue
    const-wide v6, 0x7fffffffffffffffL

    #@5
    const-wide/16 v4, 0x0

    #@7
    .line 396
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v0

    #@b
    .line 399
    .local v0, "elapsedRealtime":J
    sub-long v2, v6, v0

    #@d
    cmp-long v2, p1, v2

    #@f
    if-lez v2, :cond_1

    #@11
    .line 400
    iput-wide v6, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@13
    .line 405
    :goto_0
    iget-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@15
    cmp-long v2, v2, v4

    #@17
    if-gez v2, :cond_0

    #@19
    iput-wide v4, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@1b
    .line 406
    :cond_0
    return-object p0

    #@1c
    .line 402
    :cond_1
    add-long v2, p1, v0

    #@1e
    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@20
    goto :goto_0
.end method

.method public setFastestInterval(J)Landroid/location/LocationRequest;
    .locals 1
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 360
    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    #@3
    .line 361
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    #@6
    .line 362
    iput-wide p1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    #@8
    .line 363
    return-object p0
.end method

.method public setHideFromAppOps(Z)V
    .locals 0
    .param p1, "hideFromAppOps"    # Z

    #@0
    .prologue
    .line 547
    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    #@2
    .line 546
    return-void
.end method

.method public setInterval(J)Landroid/location/LocationRequest;
    .locals 5
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 313
    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    #@3
    .line 314
    iput-wide p1, p0, Landroid/location/LocationRequest;->mInterval:J

    #@5
    .line 315
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 316
    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    #@b
    long-to-double v0, v0

    #@c
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    #@e
    div-double/2addr v0, v2

    #@f
    double-to-long v0, v0

    #@10
    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    #@12
    .line 318
    :cond_0
    return-object p0
.end method

.method public setNumUpdates(I)Landroid/location/LocationRequest;
    .locals 3
    .param p1, "numUpdates"    # I

    #@0
    .prologue
    .line 455
    if-gtz p1, :cond_0

    #@2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "invalid numUpdates: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 456
    :cond_0
    iput p1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@1e
    .line 457
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    #@0
    .prologue
    .line 485
    invoke-static {p1}, Landroid/location/LocationRequest;->checkProvider(Ljava/lang/String;)V

    #@3
    .line 486
    iput-object p1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    #@5
    .line 487
    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "quality"    # I

    #@0
    .prologue
    .line 270
    invoke-static {p1}, Landroid/location/LocationRequest;->checkQuality(I)V

    #@3
    .line 271
    iput p1, p0, Landroid/location/LocationRequest;->mQuality:I

    #@5
    .line 272
    return-object p0
.end method

.method public setSmallestDisplacement(F)Landroid/location/LocationRequest;
    .locals 0
    .param p1, "meters"    # F

    #@0
    .prologue
    .line 499
    invoke-static {p1}, Landroid/location/LocationRequest;->checkDisplacement(F)V

    #@3
    .line 500
    iput p1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    #@5
    .line 501
    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 0
    .param p1, "workSource"    # Landroid/os/WorkSource;

    #@0
    .prologue
    .line 522
    iput-object p1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    #@2
    .line 521
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 653
    .local v2, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "Request["

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v3

    #@c
    iget v4, p0, Landroid/location/LocationRequest;->mQuality:I

    #@e
    invoke-static {v4}, Landroid/location/LocationRequest;->qualityToString(I)Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 654
    iget-object v3, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    #@17
    if-eqz v3, :cond_0

    #@19
    const/16 v3, 0x20

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    iget-object v4, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 655
    :cond_0
    iget v3, p0, Landroid/location/LocationRequest;->mQuality:I

    #@26
    const/16 v4, 0xc8

    #@28
    if-eq v3, v4, :cond_1

    #@2a
    .line 656
    const-string/jumbo v3, " requested="

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 657
    iget-wide v4, p0, Landroid/location/LocationRequest;->mInterval:J

    #@32
    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@35
    .line 659
    :cond_1
    const-string/jumbo v3, " fastest="

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 660
    iget-wide v4, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    #@3d
    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@40
    .line 661
    iget-wide v4, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@42
    const-wide v6, 0x7fffffffffffffffL

    #@47
    cmp-long v3, v4, v6

    #@49
    if-eqz v3, :cond_2

    #@4b
    .line 662
    iget-wide v4, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@4d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@50
    move-result-wide v6

    #@51
    sub-long v0, v4, v6

    #@53
    .line 663
    .local v0, "expireIn":J
    const-string/jumbo v3, " expireIn="

    #@56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    .line 664
    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@5c
    .line 666
    .end local v0    # "expireIn":J
    :cond_2
    iget v3, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@5e
    const v4, 0x7fffffff

    #@61
    if-eq v3, v4, :cond_3

    #@63
    .line 667
    const-string/jumbo v3, " num="

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v3

    #@6a
    iget v4, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    .line 669
    :cond_3
    const/16 v3, 0x5d

    #@71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@74
    .line 670
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v3

    #@78
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 619
    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    #@3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 620
    iget-wide v2, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    #@8
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@b
    .line 621
    iget-wide v2, p0, Landroid/location/LocationRequest;->mInterval:J

    #@d
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@10
    .line 622
    iget-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    #@12
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    #@15
    .line 623
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    #@17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 624
    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    #@1c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    #@1f
    .line 625
    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    #@21
    if-eqz v0, :cond_0

    #@23
    const/4 v0, 0x1

    #@24
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 626
    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2c
    .line 627
    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    #@2e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@31
    .line 618
    return-void

    #@32
    :cond_0
    move v0, v1

    #@33
    .line 625
    goto :goto_0
.end method
