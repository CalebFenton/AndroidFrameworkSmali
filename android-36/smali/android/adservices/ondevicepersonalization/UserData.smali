.class public final Landroid/adservices/ondevicepersonalization/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/UserData$Orientation;,
        Landroid/adservices/ondevicepersonalization/UserData$NetworkType;,
        Landroid/adservices/ondevicepersonalization/UserData$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/UserData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mAppInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/adservices/ondevicepersonalization/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAvailableStorageBytes:J

.field blacklist mBatteryPercentage:I

.field blacklist mCarrier:Ljava/lang/String;

.field blacklist mDataNetworkType:I

.field blacklist mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field blacklist mOrientation:I

.field blacklist mTimezoneUtcOffsetMins:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 379
    new-instance v0, Landroid/adservices/ondevicepersonalization/UserData$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/UserData$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/UserData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(IIJILjava/lang/String;Landroid/net/NetworkCapabilities;ILjava/util/Map;)V
    .registers 26
    .param p1, "timezoneUtcOffsetMins"    # I
    .param p2, "orientation"    # I
    .param p3, "availableStorageBytes"    # J
    .param p5, "batteryPercentage"    # I
    .param p6, "carrier"    # Ljava/lang/String;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "dataNetworkType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJI",
            "Ljava/lang/String;",
            "Landroid/net/NetworkCapabilities;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/adservices/ondevicepersonalization/AppInfo;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p9, "appInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/adservices/ondevicepersonalization/AppInfo;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v1, 0x0

    iput v1, v0, Landroid/adservices/ondevicepersonalization/UserData;->mTimezoneUtcOffsetMins:I

    .line 70
    iput v1, v0, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    .line 73
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    .line 76
    iput v1, v0, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    .line 79
    const-string v2, ""

    iput-object v2, v0, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    .line 124
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 130
    iput v1, v0, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    .line 133
    nop

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    .line 166
    move/from16 v1, p1

    iput v1, v0, Landroid/adservices/ondevicepersonalization/UserData;->mTimezoneUtcOffsetMins:I

    .line 167
    move/from16 v3, p2

    iput v3, v0, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    .line 168
    const-class v4, Landroid/adservices/ondevicepersonalization/UserData$Orientation;

    iget v5, v0, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    invoke-static {v4, v2, v5}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 170
    move-wide/from16 v4, p3

    iput-wide v4, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    .line 171
    const-class v6, Landroid/annotation/IntRange;

    iget-wide v8, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    const-string v10, "from"

    const-wide/16 v11, 0x0

    const/4 v7, 0x0

    invoke-static/range {v6 .. v12}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 174
    move/from16 v6, p5

    iput v6, v0, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    .line 175
    const-class v7, Landroid/annotation/IntRange;

    iget v9, v0, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    const-string v13, "to"

    const-wide/16 v14, 0x64

    const/4 v8, 0x0

    const-string v10, "from"

    invoke-static/range {v7 .. v15}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 179
    move-object/from16 v7, p6

    iput-object v7, v0, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    .line 180
    const-class v8, Landroid/annotation/NonNull;

    iget-object v9, v0, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    invoke-static {v8, v2, v9}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 182
    move-object/from16 v8, p7

    iput-object v8, v0, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 183
    move/from16 v9, p8

    iput v9, v0, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    .line 184
    const-class v10, Landroid/adservices/ondevicepersonalization/UserData$NetworkType;

    iget v11, v0, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    invoke-static {v10, v2, v11}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 186
    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    .line 187
    const-class v11, Landroid/annotation/NonNull;

    iget-object v12, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    invoke-static {v11, v2, v12}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 33
    .param p1, "in"    # Landroid/os/Parcel;

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v2, 0x0

    iput v2, v0, Landroid/adservices/ondevicepersonalization/UserData;->mTimezoneUtcOffsetMins:I

    .line 70
    iput v2, v0, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    .line 73
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    .line 76
    iput v2, v0, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    .line 79
    const-string v3, ""

    iput-object v3, v0, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    .line 124
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 130
    iput v2, v0, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    .line 133
    nop

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 341
    .local v2, "flg":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 342
    .local v4, "timezoneUtcOffsetMins":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 343
    .local v5, "orientation":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 344
    .local v6, "availableStorageBytes":J
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 345
    .local v8, "batteryPercentage":I
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, "carrier":Ljava/lang/String;
    and-int/lit8 v10, v2, 0x20

    if-nez v10, :cond_40

    move-object v10, v3

    goto :goto_48

    :cond_40
    sget-object v10, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkCapabilities;

    .line 347
    .local v10, "networkCapabilities":Landroid/net/NetworkCapabilities;
    :goto_48
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 348
    .local v11, "dataNetworkType":I
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V

    .line 349
    .local v12, "appInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/adservices/ondevicepersonalization/AppInfo;>;"
    const-class v13, Landroid/adservices/ondevicepersonalization/AppInfo;

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 351
    iput v4, v0, Landroid/adservices/ondevicepersonalization/UserData;->mTimezoneUtcOffsetMins:I

    .line 352
    iput v5, v0, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    .line 353
    const-class v13, Landroid/adservices/ondevicepersonalization/UserData$Orientation;

    iget v14, v0, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    invoke-static {v13, v3, v14}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 355
    iput-wide v6, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    .line 356
    const-class v15, Landroid/annotation/IntRange;

    iget-wide v13, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    const-string v19, "from"

    const-wide/16 v20, 0x0

    const/16 v16, 0x0

    move-wide/from16 v17, v13

    invoke-static/range {v15 .. v21}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;JLjava/lang/String;J)V

    .line 359
    iput v8, v0, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    .line 360
    const-class v22, Landroid/annotation/IntRange;

    iget v13, v0, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    const-string v28, "to"

    const-wide/16 v29, 0x64

    const/16 v23, 0x0

    const-string v25, "from"

    const-wide/16 v26, 0x0

    move/from16 v24, v13

    invoke-static/range {v22 .. v30}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 364
    iput-object v9, v0, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    .line 365
    const-class v13, Landroid/annotation/NonNull;

    iget-object v14, v0, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    invoke-static {v13, v3, v14}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 367
    iput-object v10, v0, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 368
    iput v11, v0, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    .line 369
    const-class v13, Landroid/adservices/ondevicepersonalization/UserData$NetworkType;

    iget v14, v0, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    invoke-static {v13, v3, v14}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 371
    iput-object v12, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    .line 372
    const-class v13, Landroid/annotation/NonNull;

    iget-object v14, v0, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    invoke-static {v13, v3, v14}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 577
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 276
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 277
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_56

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_56

    .line 279
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/UserData;

    .line 281
    .local v2, "that":Landroid/adservices/ondevicepersonalization/UserData;
    iget v3, p0, Landroid/adservices/ondevicepersonalization/UserData;->mTimezoneUtcOffsetMins:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/UserData;->mTimezoneUtcOffsetMins:I

    if-ne v3, v4, :cond_54

    iget v3, p0, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    if-ne v3, v4, :cond_54

    iget-wide v3, p0, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    iget-wide v5, v2, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_54

    iget v3, p0, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    if-ne v3, v4, :cond_54

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    .line 286
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 287
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    iget v3, p0, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    iget v4, v2, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    if-ne v3, v4, :cond_54

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    .line 289
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    goto :goto_55

    :cond_54
    move v0, v1

    .line 281
    :goto_55
    return v0

    .line 277
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/UserData;
    :cond_56
    :goto_56
    return v1
.end method

.method public whitelist getAppInfos()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/adservices/ondevicepersonalization/AppInfo;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getAvailableStorageBytes()J
    .registers 3

    .line 218
    iget-wide v0, p0, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    return-wide v0
.end method

.method public whitelist getBatteryPercentage()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    return v0
.end method

.method public whitelist getCarrier()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDataNetworkType()I
    .registers 2

    .line 258
    iget v0, p0, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    return v0
.end method

.method public whitelist getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object v0
.end method

.method public whitelist getOrientation()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    return v0
.end method

.method public whitelist getTimezoneUtcOffset()Ljava/time/Duration;
    .registers 3

    .line 138
    iget v0, p0, Landroid/adservices/ondevicepersonalization/UserData;->mTimezoneUtcOffsetMins:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTimezoneUtcOffsetMins()I
    .registers 2

    .line 200
    iget v0, p0, Landroid/adservices/ondevicepersonalization/UserData;->mTimezoneUtcOffsetMins:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 298
    const/4 v0, 0x1

    .line 299
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/UserData;->mTimezoneUtcOffsetMins:I

    add-int/2addr v1, v2

    .line 300
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    add-int/2addr v0, v2

    .line 301
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    .line 302
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    add-int/2addr v0, v2

    .line 303
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 304
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 305
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    add-int/2addr v1, v2

    .line 306
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 307
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, "flg":I
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 318
    :cond_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v1, p0, Landroid/adservices/ondevicepersonalization/UserData;->mTimezoneUtcOffsetMins:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v1, p0, Landroid/adservices/ondevicepersonalization/UserData;->mOrientation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget-wide v1, p0, Landroid/adservices/ondevicepersonalization/UserData;->mAvailableStorageBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 322
    iget v1, p0, Landroid/adservices/ondevicepersonalization/UserData;->mBatteryPercentage:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/UserData;->mCarrier:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/UserData;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 325
    :cond_2c
    iget v1, p0, Landroid/adservices/ondevicepersonalization/UserData;->mDataNetworkType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/UserData;->mAppInfos:Ljava/util/Map;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 327
    return-void
.end method
