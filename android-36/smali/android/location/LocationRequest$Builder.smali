.class public final Landroid/location/LocationRequest$Builder;
.super Ljava/lang/Object;
.source "LocationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAdasGnssBypass:Z

.field private blacklist mBypass:Z

.field private blacklist mDurationMillis:J

.field private blacklist mHiddenFromAppOps:Z

.field private blacklist mIntervalMillis:J

.field private blacklist mLowPower:Z

.field private blacklist mMaxUpdateDelayMillis:J

.field private blacklist mMaxUpdates:I

.field private blacklist mMinUpdateDistanceMeters:F

.field private blacklist mMinUpdateIntervalMillis:J

.field private blacklist mQuality:I

.field private blacklist mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor whitelist <init>(J)V
    .registers 5
    .param p1, "intervalMillis"    # J

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    invoke-virtual {p0, p1, p2}, Landroid/location/LocationRequest$Builder;->setIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    .line 940
    const/16 v0, 0x66

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 941
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    .line 942
    const v0, 0x7fffffff

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    .line 943
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 944
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    .line 945
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    .line 946
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    .line 947
    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    .line 948
    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    .line 949
    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 951
    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/LocationRequest;)V
    .registers 6
    .param p1, "locationRequest"    # Landroid/location/LocationRequest;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmIntervalMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    .line 958
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmQuality(Landroid/location/LocationRequest;)I

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 959
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmDurationMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    .line 960
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMaxUpdates(Landroid/location/LocationRequest;)I

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    .line 961
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMinUpdateIntervalMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 962
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMinUpdateDistanceMeters(Landroid/location/LocationRequest;)F

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    .line 963
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmMaxUpdateDelayMillis(Landroid/location/LocationRequest;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    .line 964
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmHideFromAppOps(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    .line 965
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmAdasGnssBypass(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    .line 966
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmBypass(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    .line 967
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmLowPower(Landroid/location/LocationRequest;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    .line 968
    invoke-static {p1}, Landroid/location/LocationRequest;->-$$Nest$fgetmWorkSource(Landroid/location/LocationRequest;)Landroid/os/WorkSource;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 972
    iget-wide v0, p0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_63

    iget-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_63

    .line 977
    const-wide/32 v0, 0x927c0

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 979
    :cond_63
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/location/LocationRequest;
    .registers 25

    .line 1218
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_18

    iget-wide v1, v0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    const-string v2, "passive location requests must have an explicit minimum update interval"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1222
    new-instance v3, Landroid/location/LocationRequest;

    iget-wide v5, v0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    iget v7, v0, Landroid/location/LocationRequest$Builder;->mQuality:I

    iget-wide v10, v0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    iget v12, v0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    iget-wide v1, v0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    iget-wide v8, v0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    .line 1229
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    iget v15, v0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    iget-wide v1, v0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    iget-boolean v4, v0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    iget-boolean v8, v0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    iget-boolean v9, v0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    move-wide/from16 v16, v1

    iget-boolean v1, v0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    new-instance v2, Landroid/os/WorkSource;

    move/from16 v21, v1

    iget-object v1, v0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {v2, v1}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    const/16 v23, 0x0

    move/from16 v18, v4

    const/4 v4, 0x0

    move/from16 v19, v8

    move/from16 v20, v9

    const-wide v8, 0x7fffffffffffffffL

    move-object/from16 v22, v2

    invoke-direct/range {v3 .. v23}, Landroid/location/LocationRequest;-><init>(Ljava/lang/String;JIJJIJFJZZZZLandroid/os/WorkSource;Landroid/location/LocationRequest-IA;)V

    .line 1222
    return-object v3
.end method

.method public whitelist clearMinUpdateIntervalMillis()Landroid/location/LocationRequest$Builder;
    .registers 3

    .line 1085
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 1086
    return-object p0
.end method

.method public whitelist setAdasGnssBypass(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .param p1, "adasGnssBypass"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1148
    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mAdasGnssBypass:Z

    .line 1149
    return-object p0
.end method

.method public whitelist setDurationMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10
    .param p1, "durationMillis"    # J

    .line 1039
    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "durationMillis"

    const-wide/16 v2, 0x1

    move-wide v0, p1

    .end local p1    # "durationMillis":J
    .local v0, "durationMillis":J
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/location/LocationRequest$Builder;->mDurationMillis:J

    .line 1041
    return-object p0
.end method

.method public whitelist setHiddenFromAppOps(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .param p1, "hiddenFromAppOps"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1128
    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mHiddenFromAppOps:Z

    .line 1129
    return-object p0
.end method

.method public whitelist setIntervalMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10
    .param p1, "intervalMillis"    # J

    .line 992
    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "intervalMillis"

    const-wide/16 v2, 0x0

    move-wide v0, p1

    .end local p1    # "intervalMillis":J
    .local v0, "intervalMillis":J
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/location/LocationRequest$Builder;->mIntervalMillis:J

    .line 994
    return-object p0
.end method

.method public whitelist setLocationSettingsIgnored(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .param p1, "locationSettingsIgnored"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1166
    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mBypass:Z

    .line 1167
    return-object p0
.end method

.method public whitelist setLowPower(Z)Landroid/location/LocationRequest$Builder;
    .registers 2
    .param p1, "lowPower"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1184
    iput-boolean p1, p0, Landroid/location/LocationRequest$Builder;->mLowPower:Z

    .line 1185
    return-object p0
.end method

.method public whitelist setMaxUpdateDelayMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10
    .param p1, "maxUpdateDelayMillis"    # J

    .line 1110
    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "maxUpdateDelayMillis"

    const-wide/16 v2, 0x0

    move-wide v0, p1

    .end local p1    # "maxUpdateDelayMillis":J
    .local v0, "maxUpdateDelayMillis":J
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdateDelayMillis:J

    .line 1112
    return-object p0
.end method

.method public whitelist setMaxUpdates(I)Landroid/location/LocationRequest$Builder;
    .registers 5
    .param p1, "maxUpdates"    # I

    .line 1051
    const v0, 0x7fffffff

    const-string v1, "maxUpdates"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMaxUpdates:I

    .line 1053
    return-object p0
.end method

.method public whitelist setMinUpdateDistanceMeters(F)Landroid/location/LocationRequest$Builder;
    .registers 5
    .param p1, "minUpdateDistanceMeters"    # F

    .line 1097
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const-string v1, "minUpdateDistanceMeters"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateDistanceMeters:F

    .line 1099
    return-object p0
.end method

.method public whitelist setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;
    .registers 10
    .param p1, "minUpdateIntervalMillis"    # J

    .line 1074
    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "minUpdateIntervalMillis"

    const-wide/16 v2, 0x0

    move-wide v0, p1

    .end local p1    # "minUpdateIntervalMillis":J
    .local v0, "minUpdateIntervalMillis":J
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/location/LocationRequest$Builder;->mMinUpdateIntervalMillis:J

    .line 1076
    return-object p0
.end method

.method public whitelist setQuality(I)Landroid/location/LocationRequest$Builder;
    .registers 5
    .param p1, "quality"    # I

    .line 1004
    const/16 v0, 0x68

    if-eq p1, v0, :cond_f

    const/16 v0, 0x66

    if-eq p1, v0, :cond_f

    const/16 v0, 0x64

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 1007
    :goto_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1004
    const-string v2, "quality must be a defined QUALITY constant, not %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    iput p1, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 1009
    return-object p0
.end method

.method public blacklist setQuality(Landroid/location/Criteria;)Landroid/location/LocationRequest$Builder;
    .registers 4
    .param p1, "criteria"    # Landroid/location/Criteria;

    .line 1016
    invoke-virtual {p1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 1024
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    .line 1025
    const/16 v0, 0xcb

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    goto :goto_21

    .line 1018
    :pswitch_13
    const/16 v0, 0x66

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 1019
    goto :goto_21

    .line 1021
    :pswitch_18
    const/16 v0, 0x64

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 1022
    goto :goto_21

    .line 1027
    :cond_1d
    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest$Builder;->mQuality:I

    .line 1031
    :goto_21
    return-object p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_13
    .end packed-switch
.end method

.method public whitelist setWorkSource(Landroid/os/WorkSource;)Landroid/location/LocationRequest$Builder;
    .registers 2
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1201
    iput-object p1, p0, Landroid/location/LocationRequest$Builder;->mWorkSource:Landroid/os/WorkSource;

    .line 1202
    return-object p0
.end method
