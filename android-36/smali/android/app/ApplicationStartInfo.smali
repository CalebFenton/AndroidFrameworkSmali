.class public final Landroid/app/ApplicationStartInfo;
.super Ljava/lang/Object;
.source "ApplicationStartInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationStartInfo$StartComponent;,
        Landroid/app/ApplicationStartInfo$LaunchMode;,
        Landroid/app/ApplicationStartInfo$StartType;,
        Landroid/app/ApplicationStartInfo$StartReason;,
        Landroid/app/ApplicationStartInfo$StartupState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LAUNCH_MODE_SINGLE_INSTANCE:I = 0x2

.field public static final whitelist LAUNCH_MODE_SINGLE_INSTANCE_PER_TASK:I = 0x4

.field public static final whitelist LAUNCH_MODE_SINGLE_TASK:I = 0x3

.field public static final whitelist LAUNCH_MODE_SINGLE_TOP:I = 0x1

.field public static final whitelist LAUNCH_MODE_STANDARD:I = 0x0

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_INTENT:Ljava/lang/String; = "intent"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_KEY:Ljava/lang/String; = "key"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TIMESTAMPS:Ljava/lang/String; = "timestamps"

.field private static final blacklist PROTO_SERIALIZER_ATTRIBUTE_TS:Ljava/lang/String; = "ts"

.field public static final whitelist STARTUP_STATE_ERROR:I = 0x1

.field public static final whitelist STARTUP_STATE_FIRST_FRAME_DRAWN:I = 0x2

.field public static final whitelist STARTUP_STATE_STARTED:I = 0x0

.field public static final whitelist START_COMPONENT_ACTIVITY:I = 0x1

.field public static final whitelist START_COMPONENT_BROADCAST:I = 0x2

.field public static final whitelist START_COMPONENT_CONTENT_PROVIDER:I = 0x3

.field public static final whitelist START_COMPONENT_OTHER:I = 0x5

.field public static final whitelist START_COMPONENT_SERVICE:I = 0x4

.field public static final whitelist START_REASON_ALARM:I = 0x0

.field public static final whitelist START_REASON_BACKUP:I = 0x1

.field public static final whitelist START_REASON_BOOT_COMPLETE:I = 0x2

.field public static final whitelist START_REASON_BROADCAST:I = 0x3

.field public static final whitelist START_REASON_CONTENT_PROVIDER:I = 0x4

.field public static final whitelist START_REASON_JOB:I = 0x5

.field public static final whitelist START_REASON_LAUNCHER:I = 0x6

.field public static final whitelist START_REASON_LAUNCHER_RECENTS:I = 0x7

.field public static final whitelist START_REASON_OTHER:I = 0x8

.field public static final whitelist START_REASON_PUSH:I = 0x9

.field public static final whitelist START_REASON_SERVICE:I = 0xa

.field public static final whitelist START_REASON_START_ACTIVITY:I = 0xb

.field public static final whitelist START_TIMESTAMP_APPLICATION_ONCREATE:I = 0x2

.field public static final whitelist START_TIMESTAMP_BIND_APPLICATION:I = 0x3

.field public static final whitelist START_TIMESTAMP_FIRST_FRAME:I = 0x4

.field public static final whitelist START_TIMESTAMP_FORK:I = 0x1

.field public static final whitelist START_TIMESTAMP_FULLY_DRAWN:I = 0x5

.field public static final whitelist START_TIMESTAMP_INITIAL_RENDERTHREAD_FRAME:I = 0x6

.field public static final whitelist START_TIMESTAMP_LAUNCH:I = 0x0

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_DEVELOPER:I = 0x1e

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_DEVELOPER_START:I = 0x15

.field public static final whitelist START_TIMESTAMP_RESERVED_RANGE_SYSTEM:I = 0x14

.field public static final whitelist START_TIMESTAMP_SURFACEFLINGER_COMPOSITION_COMPLETE:I = 0x7

.field public static final whitelist START_TYPE_COLD:I = 0x1

.field public static final whitelist START_TYPE_HOT:I = 0x3

.field public static final whitelist START_TYPE_UNSET:I = 0x0

.field public static final whitelist START_TYPE_WARM:I = 0x2


# instance fields
.field private blacklist mDefiningUid:I

.field private blacklist mLaunchMode:I

.field private blacklist mMonotonicCreationTimeMs:J

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPackageUid:I

.field private blacklist mPid:I

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mRealUid:I

.field private blacklist mReason:I

.field private blacklist mStartComponent:I

.field private blacklist mStartIntent:Landroid/content/Intent;

.field private blacklist mStartType:I

.field private blacklist mStartupState:I

.field private blacklist mStartupTimestampsNs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWasForceStopped:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 815
    new-instance v0, Landroid/app/ApplicationStartInfo$1;

    invoke-direct {v0}, Landroid/app/ApplicationStartInfo$1;-><init>()V

    sput-object v0, Landroid/app/ApplicationStartInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 3
    .param p1, "monotonicCreationTimeMs"    # J

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iput-wide p1, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    .line 762
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/ApplicationStartInfo;)V
    .registers 4
    .param p1, "other"    # Landroid/app/ApplicationStartInfo;

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mStartupState:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    .line 767
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mPid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    .line 768
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mRealUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    .line 769
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    .line 770
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    .line 771
    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    .line 772
    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    .line 773
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mReason:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    .line 774
    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 775
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mStartType:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    .line 776
    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    .line 777
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    .line 778
    iget-boolean v0, p1, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    iput-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    .line 779
    iget-wide v0, p1, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    iput-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    .line 780
    iget v0, p1, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    .line 781
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    .line 791
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    .line 792
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    .line 793
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    .line 794
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    .line 795
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 796
    .local v0, "starupTimestampCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    if-ge v1, v0, :cond_50

    .line 797
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 798
    .local v2, "key":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 799
    .local v3, "val":J
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 796
    .end local v2    # "key":I
    .end local v3    # "val":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 801
    .end local v1    # "i":I
    :cond_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    .line 802
    const-class v1, Landroid/content/Intent;

    .line 803
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    .line 804
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    .line 805
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    .line 806
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    .line 807
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    .line 808
    return-void
.end method

.method private static blacklist intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "source"    # Ljava/lang/String;

    .line 812
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private static blacklist reasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "reason"    # I

    .line 1037
    packed-switch p0, :pswitch_data_2a

    .line 1050
    const-string v0, ""

    goto :goto_29

    .line 1049
    :pswitch_6
    const-string v0, "START ACTIVITY"

    goto :goto_29

    .line 1048
    :pswitch_9
    const-string v0, "SERVICE"

    goto :goto_29

    .line 1047
    :pswitch_c
    const-string v0, "PUSH"

    goto :goto_29

    .line 1046
    :pswitch_f
    const-string v0, "OTHER"

    goto :goto_29

    .line 1045
    :pswitch_12
    const-string v0, "LAUNCHER RECENTS"

    goto :goto_29

    .line 1044
    :pswitch_15
    const-string v0, "LAUNCHER"

    goto :goto_29

    .line 1043
    :pswitch_18
    const-string v0, "JOB"

    goto :goto_29

    .line 1042
    :pswitch_1b
    const-string v0, "CONTENT PROVIDER"

    goto :goto_29

    .line 1041
    :pswitch_1e
    const-string v0, "BROADCAST"

    goto :goto_29

    .line 1040
    :pswitch_21
    const-string v0, "BOOT COMPLETE"

    goto :goto_29

    .line 1039
    :pswitch_24
    const-string v0, "BACKUP"

    goto :goto_29

    .line 1038
    :pswitch_27
    const-string v0, "ALARM"

    .line 1037
    :goto_29
    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist startComponentToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "startComponent"    # I

    .line 1066
    packed-switch p0, :pswitch_data_16

    .line 1072
    const-string v0, ""

    goto :goto_14

    .line 1071
    :pswitch_6
    const-string v0, "OTHER"

    goto :goto_14

    .line 1070
    :pswitch_9
    const-string v0, "SERVICE"

    goto :goto_14

    .line 1069
    :pswitch_c
    const-string v0, "CONTENT PROVIDER"

    goto :goto_14

    .line 1068
    :pswitch_f
    const-string v0, "BROADCAST"

    goto :goto_14

    .line 1067
    :pswitch_12
    const-string v0, "ACTIVITY"

    .line 1066
    :goto_14
    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static blacklist startTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "startType"    # I

    .line 1055
    packed-switch p0, :pswitch_data_12

    .line 1060
    const-string v0, ""

    goto :goto_11

    .line 1059
    :pswitch_6
    const-string v0, "HOT"

    goto :goto_11

    .line 1058
    :pswitch_9
    const-string v0, "WARM"

    goto :goto_11

    .line 1057
    :pswitch_c
    const-string v0, "COLD"

    goto :goto_11

    .line 1056
    :pswitch_f
    const-string v0, "UNSET"

    .line 1055
    :goto_11
    return-object v0

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private blacklist timestampsEquals(Landroid/app/ApplicationStartInfo;)Z
    .registers 4
    .param p1, "other"    # Landroid/app/ApplicationStartInfo;

    .line 1120
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_a

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_a

    .line 1121
    const/4 v0, 0x1

    return v0

    .line 1123
    :cond_a
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_13

    goto :goto_1c

    .line 1126
    :cond_13
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1124
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addStartupTimestamp(IJ)V
    .registers 7
    .param p1, "key"    # I
    .param p2, "timestampNs"    # J

    .line 456
    if-ltz p1, :cond_20

    const/16 v0, 0x1e

    if-le p1, v0, :cond_7

    goto :goto_20

    .line 459
    :cond_7
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    .line 460
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 462
    :cond_12
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    return-void

    .line 457
    :cond_20
    :goto_20
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "seqSuffix"    # Ljava/lang/String;
    .param p4, "sdf"    # Landroid/icu/text/SimpleDateFormat;

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 999
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1000
    const-string v2, "ApplicationStartInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1001
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1002
    const-string v3, " monotonicCreationTimeMs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1003
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1004
    const-string v3, " pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1005
    const-string v3, " realUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1006
    const-string v3, " packageUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1007
    const-string v3, " definingUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1008
    const-string v3, " user="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1009
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1010
    const-string v3, " package="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1011
    const-string v3, " process="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1012
    const-string v3, " startupState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1013
    const-string v3, " reason="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-static {v3}, Landroid/app/ApplicationStartInfo;->reasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1014
    const-string v3, " startType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-static {v3}, Landroid/app/ApplicationStartInfo;->startTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1015
    const-string v3, " launchMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1016
    const-string v3, " wasForceStopped="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1017
    invoke-static {}, Landroid/app/Flags;->appStartInfoComponent()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 1018
    const-string v1, " startComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-static {v3}, Landroid/app/ApplicationStartInfo;->startComponentToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    :cond_e3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1021
    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-eqz v1, :cond_fd

    .line 1022
    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1023
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1025
    :cond_fd
    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz v1, :cond_13c

    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_13c

    .line 1026
    const-string v1, " timestamps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10f
    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_139

    .line 1028
    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 1029
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 1028
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1029
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    add-int/lit8 v1, v1, 0x1

    goto :goto_10f

    .line 1031
    .end local v1    # "i":I
    :cond_139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1033
    :cond_13c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "other"    # Ljava/lang/Object;

    .line 1079
    const/4 v0, 0x0

    if-eqz p1, :cond_8d

    instance-of v1, p1, Landroid/app/ApplicationStartInfo;

    if-nez v1, :cond_9

    goto/16 :goto_8d

    .line 1083
    :cond_9
    move-object v1, p1

    check-cast v1, Landroid/app/ApplicationStartInfo;

    .line 1085
    .local v1, "o":Landroid/app/ApplicationStartInfo;
    const/4 v2, 0x1

    .line 1086
    .local v2, "intentEquals":Z
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->intentSaveToXmlPackage()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_29

    .line 1087
    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-nez v3, :cond_21

    .line 1088
    iget-object v3, v1, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-nez v3, :cond_1e

    move v3, v4

    goto :goto_1f

    :cond_1e
    move v3, v0

    :goto_1f
    move v2, v3

    goto :goto_29

    .line 1090
    :cond_21
    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    iget-object v5, v1, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    .line 1094
    :cond_29
    :goto_29
    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    iget v5, v1, Landroid/app/ApplicationStartInfo;->mPid:I

    if-ne v3, v5, :cond_8b

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    iget v5, v1, Landroid/app/ApplicationStartInfo;->mRealUid:I

    if-ne v3, v5, :cond_8b

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    iget v5, v1, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    if-ne v3, v5, :cond_8b

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    iget v5, v1, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    if-ne v3, v5, :cond_8b

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    iget v5, v1, Landroid/app/ApplicationStartInfo;->mReason:I

    if-ne v3, v5, :cond_8b

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    iget v5, v1, Landroid/app/ApplicationStartInfo;->mStartupState:I

    if-ne v3, v5, :cond_8b

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    iget v5, v1, Landroid/app/ApplicationStartInfo;->mStartType:I

    if-ne v3, v5, :cond_8b

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    iget v5, v1, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    if-ne v3, v5, :cond_8b

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    .line 1102
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-object v3, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iget-object v5, v1, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    .line 1103
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 1104
    invoke-direct {p0, v1}, Landroid/app/ApplicationStartInfo;->timestampsEquals(Landroid/app/ApplicationStartInfo;)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-boolean v3, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    iget-boolean v5, v1, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    if-ne v3, v5, :cond_8b

    iget-wide v5, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    iget-wide v7, v1, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    cmp-long v3, v5, v7

    if-nez v3, :cond_8b

    iget v3, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    iget v5, v1, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    if-ne v3, v5, :cond_8b

    if-eqz v2, :cond_8b

    move v0, v4

    goto :goto_8c

    :cond_8b
    nop

    .line 1094
    :goto_8c
    return v0

    .line 1080
    .end local v1    # "o":Landroid/app/ApplicationStartInfo;
    .end local v2    # "intentEquals":Z
    :cond_8d
    :goto_8d
    return v0
.end method

.method public whitelist getDefiningUid()I
    .registers 2

    .line 595
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    return v0
.end method

.method public whitelist getIntent()Landroid/content/Intent;
    .registers 2

    .line 676
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public whitelist getLaunchMode()I
    .registers 2

    .line 694
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    return v0
.end method

.method public blacklist getMonotonicCreationTimeMs()J
    .registers 3

    .line 549
    iget-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    return-wide v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 604
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageUid()I
    .registers 2

    .line 581
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    return v0
.end method

.method public whitelist getPid()I
    .registers 2

    .line 558
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    return v0
.end method

.method public whitelist getProcessName()Ljava/lang/String;
    .registers 2

    .line 613
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRealUid()I
    .registers 2

    .line 571
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    return v0
.end method

.method public whitelist getReason()I
    .registers 2

    .line 627
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    return v0
.end method

.method public whitelist getStartComponent()I
    .registers 2

    .line 724
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    return v0
.end method

.method public whitelist getStartType()I
    .registers 2

    .line 663
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    return v0
.end method

.method public whitelist getStartupState()I
    .registers 2

    .line 540
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    return v0
.end method

.method public whitelist getStartupTimestamps()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 651
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 653
    :cond_b
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 16

    .line 1113
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    .line 1114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    iget-object v10, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    iget-object v11, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    iget-wide v12, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    .line 1115
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1116
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/flags/Flags;->intentSaveToXmlPackage()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    move-object v14, v0

    filled-new-array/range {v1 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 1113
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;JLjava/io/ByteArrayInputStream;Ljava/io/ObjectInputStream;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 16
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .param p4, "byteArrayInputStream"    # Ljava/io/ByteArrayInputStream;
    .param p5, "objectInputStream"    # Ljava/io/ObjectInputStream;
    .param p6, "typedXmlPullParser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 909
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 910
    .local v0, "token":J
    :goto_4
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_13e

    .line 911
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    packed-switch v2, :pswitch_data_142

    goto/16 :goto_13c

    .line 987
    :pswitch_14
    const-wide v2, 0x1050000000eL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    goto/16 :goto_13c

    .line 983
    :pswitch_21
    const-wide v2, 0x1030000000dL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    .line 985
    goto/16 :goto_13c

    .line 979
    :pswitch_2e
    const-wide v2, 0x1080000000cL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readBoolean(J)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    .line 981
    goto/16 :goto_13c

    .line 976
    :pswitch_3b
    const-wide v2, 0x10e0000000bL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    .line 977
    goto/16 :goto_13c

    .line 962
    :pswitch_48
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-wide v3, 0x10c0000000aL

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 964
    .end local p4    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .local v2, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    new-instance p4, Ljava/io/ObjectInputStream;

    invoke-direct {p4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 966
    .end local p5    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local p4, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_5b
    invoke-static {p4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p5

    move-object p6, p5

    .line 967
    const-string/jumbo p5, "intent"

    invoke-static {p6, p5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 969
    invoke-static {p6}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object p5

    iput-object p5, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_6c} :catch_6d

    .line 972
    goto :goto_6e

    .line 970
    :catch_6d
    move-exception p5

    .line 973
    :goto_6e
    invoke-virtual {p4}, Ljava/io/ObjectInputStream;->close()V

    .line 974
    move-object p5, p4

    move-object p4, v2

    goto/16 :goto_13c

    .line 959
    .end local v2    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .local p4, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local p5    # "objectInputStream":Ljava/io/ObjectInputStream;
    :pswitch_75
    const-wide v2, 0x10e00000009L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    .line 960
    goto/16 :goto_13c

    .line 934
    :pswitch_82
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-wide v3, 0x10c00000008L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readBytes(J)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 936
    .end local p4    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .restart local v2    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    new-instance p4, Ljava/io/ObjectInputStream;

    invoke-direct {p4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 937
    .end local p5    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local p4, "objectInputStream":Ljava/io/ObjectInputStream;
    new-instance p5, Landroid/util/ArrayMap;

    invoke-direct {p5}, Landroid/util/ArrayMap;-><init>()V

    iput-object p5, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 939
    :try_start_9c
    invoke-static {p4}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p5

    move-object p6, p5

    .line 940
    const-string/jumbo p5, "timestamps"

    invoke-static {p6, p5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 942
    invoke-interface {p6}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p5

    .line 943
    .local p5, "depth":I
    :cond_ab
    :goto_ab
    invoke-static {p6, p5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 944
    const-string/jumbo v3, "timestamp"

    .line 945
    invoke-interface {p6}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 944
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 946
    const-string/jumbo v3, "key"

    const/4 v4, 0x0

    invoke-interface {p6, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 948
    .local v3, "key":I
    const-string/jumbo v5, "ts"

    invoke-interface {p6, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 950
    .local v4, "ts":J
    iget-object v6, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_da
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9c .. :try_end_da} :catch_dd

    .line 951
    nop

    .end local v3    # "key":I
    .end local v4    # "ts":J
    goto :goto_ab

    .line 955
    .end local p5    # "depth":I
    :cond_dc
    goto :goto_de

    .line 953
    :catch_dd
    move-exception p5

    .line 956
    :goto_de
    invoke-virtual {p4}, Ljava/io/ObjectInputStream;->close()V

    .line 957
    move-object p5, p4

    move-object p4, v2

    goto :goto_13c

    .line 931
    .end local v2    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .local p4, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .local p5, "objectInputStream":Ljava/io/ObjectInputStream;
    :pswitch_e4
    const-wide v2, 0x10e00000007L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    .line 932
    goto :goto_13c

    .line 928
    :pswitch_f0
    const-wide v2, 0x10e00000006L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    .line 929
    goto :goto_13c

    .line 925
    :pswitch_fc
    const-wide v2, 0x10900000005L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    .line 926
    goto :goto_13c

    .line 922
    :pswitch_10c
    const-wide v2, 0x10500000004L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    .line 923
    goto :goto_13c

    .line 919
    :pswitch_118
    const-wide v2, 0x10500000003L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    .line 920
    goto :goto_13c

    .line 916
    :pswitch_124
    const-wide v2, 0x10500000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    .line 917
    goto :goto_13c

    .line 913
    :pswitch_130
    const-wide v2, 0x10500000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    iput v2, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    .line 914
    nop

    .line 988
    :goto_13c
    goto/16 :goto_4

    .line 991
    :cond_13e
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 992
    return-void

    :pswitch_data_142
    .packed-switch 0x1
        :pswitch_130
        :pswitch_124
        :pswitch_118
        :pswitch_10c
        :pswitch_fc
        :pswitch_f0
        :pswitch_e4
        :pswitch_82
        :pswitch_75
        :pswitch_48
        :pswitch_3b
        :pswitch_2e
        :pswitch_21
        :pswitch_14
    .end packed-switch
.end method

.method public blacklist setDefiningUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 424
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    .line 425
    return-void
.end method

.method public blacklist setForceStopped(Z)V
    .registers 2
    .param p1, "wasForceStopped"    # Z

    .line 520
    iput-boolean p1, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    .line 521
    return-void
.end method

.method public blacklist setIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "startIntent"    # Landroid/content/Intent;

    .line 483
    if-eqz p1, :cond_31

    .line 484
    invoke-virtual {p1}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 486
    invoke-virtual {p1}, Landroid/content/Intent;->maybeStripForHistory()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    goto :goto_23

    .line 487
    :cond_f
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 491
    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    goto :goto_23

    .line 495
    :cond_1c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    .line 500
    :goto_23
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getOriginalIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 501
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setOriginalIntent(Landroid/content/Intent;)V

    .line 504
    :cond_31
    return-void
.end method

.method public blacklist setLaunchMode(I)V
    .registers 2
    .param p1, "launchMode"    # I

    .line 511
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    .line 512
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 432
    invoke-static {p1}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public blacklist setPackageUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 416
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    .line 417
    return-void
.end method

.method public blacklist setPid(I)V
    .registers 2
    .param p1, "pid"    # I

    .line 400
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    .line 401
    return-void
.end method

.method public blacklist setProcessName(Ljava/lang/String;)V
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 440
    invoke-static {p1}, Landroid/app/ApplicationStartInfo;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public blacklist setRealUid(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 408
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    .line 409
    return-void
.end method

.method public blacklist setReason(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 448
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    .line 449
    return-void
.end method

.method public blacklist setStartComponent(I)V
    .registers 2
    .param p1, "startComponent"    # I

    .line 528
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    .line 529
    return-void
.end method

.method public blacklist setStartType(I)V
    .registers 2
    .param p1, "startType"    # I

    .line 470
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    .line 471
    return-void
.end method

.method public blacklist setStartupState(I)V
    .registers 2
    .param p1, "startupState"    # I

    .line 392
    iput p1, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    .line 393
    return-void
.end method

.method public whitelist wasForceStopped()Z
    .registers 2

    .line 708
    iget-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 735
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 737
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 739
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 742
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_34

    :cond_2e
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    if-eqz v0, :cond_65

    .line 745
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 746
    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget-object v1, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 745
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 750
    .end local v0    # "i":I
    :cond_65
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    iget-object v0, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 752
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 753
    iget-boolean v0, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 754
    iget-wide v0, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 755
    iget v0, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 20
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "byteArrayOutputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p5, "objectOutputStream"    # Ljava/io/ObjectOutputStream;
    .param p6, "typedXmlSerializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 846
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 847
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    iget v4, p0, Landroid/app/ApplicationStartInfo;->mPid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 848
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/app/ApplicationStartInfo;->mRealUid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 849
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/ApplicationStartInfo;->mPackageUid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 850
    const-wide v2, 0x10500000004L

    iget v4, p0, Landroid/app/ApplicationStartInfo;->mDefiningUid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 851
    const-wide v2, 0x10900000005L

    iget-object v4, p0, Landroid/app/ApplicationStartInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 852
    const-wide v2, 0x10e00000006L

    iget v4, p0, Landroid/app/ApplicationStartInfo;->mStartupState:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 853
    const-wide v2, 0x10e00000007L

    iget v4, p0, Landroid/app/ApplicationStartInfo;->mReason:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 854
    iget-object v2, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    const/4 v3, 0x1

    .line 879
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 854
    const/4 v4, 0x0

    if-eqz v2, :cond_c3

    iget-object v2, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_c3

    .line 855
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 856
    .end local p4    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 857
    .end local p5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    invoke-static {v5}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v6

    .line 858
    .end local p6    # "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    .local v6, "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    invoke-interface {v6, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 859
    const-string/jumbo v7, "timestamps"

    invoke-interface {v6, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_74
    iget-object v9, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_ac

    .line 861
    const-string/jumbo v9, "timestamp"

    invoke-interface {v6, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 862
    iget-object v10, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 863
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 862
    const-string/jumbo v11, "key"

    invoke-interface {v6, v4, v11, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 864
    iget-object v10, p0, Landroid/app/ApplicationStartInfo;->mStartupTimestampsNs:Landroid/util/ArrayMap;

    .line 865
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 864
    const-string/jumbo v12, "ts"

    invoke-interface {v6, v4, v12, v10, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 866
    invoke-interface {v6, v4, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 860
    add-int/lit8 v8, v8, 0x1

    goto :goto_74

    .line 868
    .end local v8    # "i":I
    :cond_ac
    invoke-interface {v6, v4, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 869
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 870
    nop

    .line 871
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 870
    const-wide v8, 0x10c00000008L

    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 872
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_c9

    .line 874
    .end local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local v6    # "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    .restart local p4    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local p5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local p6    # "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :cond_c3
    move-object/from16 v2, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .end local p4    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local p5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local p6    # "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    .restart local v2    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v6    # "typedXmlSerializer":Lcom/android/modules/utils/TypedXmlSerializer;
    :goto_c9
    const-wide v7, 0x10e00000009L

    iget v9, p0, Landroid/app/ApplicationStartInfo;->mStartType:I

    invoke-virtual {p1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 875
    iget-object v7, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    if-eqz v7, :cond_10b

    .line 876
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v7

    .line 877
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v7

    .line 878
    invoke-static {v5}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v6

    .line 879
    invoke-interface {v6, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 880
    const-string/jumbo v3, "intent"

    invoke-interface {v6, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 881
    iget-object v7, p0, Landroid/app/ApplicationStartInfo;->mStartIntent:Landroid/content/Intent;

    invoke-virtual {v7, v6}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 882
    invoke-interface {v6, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 883
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 884
    nop

    .line 885
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 884
    const-wide v7, 0x10c0000000aL

    invoke-virtual {p1, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 886
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 888
    :cond_10b
    const-wide v3, 0x10e0000000bL

    iget v7, p0, Landroid/app/ApplicationStartInfo;->mLaunchMode:I

    invoke-virtual {p1, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 889
    const-wide v3, 0x1080000000cL

    iget-boolean v7, p0, Landroid/app/ApplicationStartInfo;->mWasForceStopped:Z

    invoke-virtual {p1, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 890
    const-wide v3, 0x1030000000dL

    iget-wide v7, p0, Landroid/app/ApplicationStartInfo;->mMonotonicCreationTimeMs:J

    invoke-virtual {p1, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 891
    const-wide v3, 0x1050000000eL

    iget v7, p0, Landroid/app/ApplicationStartInfo;->mStartComponent:I

    invoke-virtual {p1, v3, v4, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 892
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 893
    return-void
.end method
