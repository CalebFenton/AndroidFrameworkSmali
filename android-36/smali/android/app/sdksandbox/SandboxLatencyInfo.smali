.class public final Landroid/app/sdksandbox/SandboxLatencyInfo;
.super Ljava/lang/Object;
.source "SandboxLatencyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/sdksandbox/SandboxLatencyInfo$ResultCode;,
        Landroid/app/sdksandbox/SandboxLatencyInfo$SandboxStatus;,
        Landroid/app/sdksandbox/SandboxLatencyInfo$Method;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/sdksandbox/SandboxLatencyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist METHOD_ADD_SDK_SANDBOX_LIFECYCLE_CALLBACK:I = 0x8

.field public static final blacklist METHOD_GET_APP_OWNED_SDK_SANDBOX_INTERFACES:I = 0xd

.field public static final blacklist METHOD_GET_SANDBOXED_SDKS:I = 0x5

.field public static final blacklist METHOD_GET_SANDBOXED_SDKS_VIA_CONTROLLER:I = 0xa

.field public static final blacklist METHOD_LOAD_SDK:I = 0x1

.field public static final blacklist METHOD_LOAD_SDK_VIA_CONTROLLER:I = 0xe

.field public static final blacklist METHOD_REGISTER_APP_OWNED_SDK_SANDBOX_INTERFACE:I = 0xb

.field public static final blacklist METHOD_REMOVE_SDK_SANDBOX_LIFECYCLE_CALLBACK:I = 0x9

.field public static final blacklist METHOD_REQUEST_SURFACE_PACKAGE:I = 0x3

.field public static final blacklist METHOD_SYNC_DATA_FROM_CLIENT:I = 0x6

.field public static final blacklist METHOD_UNLOAD_SDK:I = 0x7

.field public static final blacklist METHOD_UNREGISTER_APP_OWNED_SDK_SANDBOX_INTERFACE:I = 0xc

.field public static final blacklist METHOD_UNSPECIFIED:I = 0x0

.field public static final blacklist RESULT_CODE_LOAD_SDK_ALREADY_LOADED:I = 0x2

.field public static final blacklist RESULT_CODE_LOAD_SDK_INTERNAL_ERROR:I = 0x5

.field public static final blacklist RESULT_CODE_LOAD_SDK_NOT_FOUND:I = 0x1

.field public static final blacklist RESULT_CODE_LOAD_SDK_SDK_DEFINED_ERROR:I = 0x3

.field public static final blacklist RESULT_CODE_LOAD_SDK_SDK_SANDBOX_DISABLED:I = 0x4

.field public static final blacklist RESULT_CODE_SDK_SANDBOX_PROCESS_NOT_AVAILABLE:I = 0x6

.field public static final blacklist RESULT_CODE_UNSPECIFIED:I = 0x0

.field public static final blacklist SANDBOX_STATUS_FAILED_AT_APP_TO_SYSTEM_SERVER:I = 0x2

.field public static final blacklist SANDBOX_STATUS_FAILED_AT_LOAD_SANDBOX:I = 0x4

.field public static final blacklist SANDBOX_STATUS_FAILED_AT_SANDBOX:I = 0x6

.field public static final blacklist SANDBOX_STATUS_FAILED_AT_SANDBOX_TO_SYSTEM_SERVER:I = 0x8

.field public static final blacklist SANDBOX_STATUS_FAILED_AT_SDK:I = 0x7

.field public static final blacklist SANDBOX_STATUS_FAILED_AT_SYSTEM_SERVER_APP_TO_SANDBOX:I = 0x3

.field public static final blacklist SANDBOX_STATUS_FAILED_AT_SYSTEM_SERVER_SANDBOX_TO_APP:I = 0x9

.field public static final blacklist SANDBOX_STATUS_FAILED_AT_SYSTEM_SERVER_TO_APP:I = 0xa

.field public static final blacklist SANDBOX_STATUS_FAILED_AT_SYSTEM_SERVER_TO_SANDBOX:I = 0x5

.field public static final blacklist SANDBOX_STATUS_SUCCESS:I = 0x1


# instance fields
.field private final blacklist mMethod:I

.field private blacklist mResultCode:I

.field private blacklist mSandboxStatus:I

.field private blacklist mTimeAppCalledSystemServer:J

.field private blacklist mTimeAppReceivedCallFromSystemServer:J

.field private blacklist mTimeLoadSandboxStarted:J

.field private blacklist mTimeSandboxCalledSdk:J

.field private blacklist mTimeSandboxCalledSystemServer:J

.field private blacklist mTimeSandboxLoaded:J

.field private blacklist mTimeSandboxReceivedCallFromSystemServer:J

.field private blacklist mTimeSdkCallCompleted:J

.field private blacklist mTimeSystemServerCallFinished:J

.field private blacklist mTimeSystemServerCalledApp:J

.field private blacklist mTimeSystemServerReceivedCallFromApp:J

.field private blacklist mTimeSystemServerReceivedCallFromSandbox:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 136
    new-instance v0, Landroid/app/sdksandbox/SandboxLatencyInfo$1;

    invoke-direct {v0}, Landroid/app/sdksandbox/SandboxLatencyInfo$1;-><init>()V

    sput-object v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    .line 122
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    .line 123
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeLoadSandboxStarted:J

    .line 124
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxLoaded:J

    .line 125
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    .line 126
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    .line 127
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSdk:J

    .line 128
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSdkCallCompleted:J

    .line 129
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    .line 130
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    .line 131
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    .line 132
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mResultCode:I

    .line 153
    iput v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mMethod:I

    .line 154
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "method"    # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    .line 122
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    .line 123
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeLoadSandboxStarted:J

    .line 124
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxLoaded:J

    .line 125
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    .line 126
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    .line 127
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSdk:J

    .line 128
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSdkCallCompleted:J

    .line 129
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    .line 130
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    .line 131
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    .line 132
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mResultCode:I

    .line 149
    iput p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mMethod:I

    .line 150
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    .line 122
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    .line 123
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeLoadSandboxStarted:J

    .line 124
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxLoaded:J

    .line 125
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    .line 126
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    .line 127
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSdk:J

    .line 128
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSdkCallCompleted:J

    .line 129
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    .line 130
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    .line 131
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    .line 132
    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    .line 133
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mResultCode:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mMethod:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeLoadSandboxStarted:J

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxLoaded:J

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSdk:J

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSdkCallCompleted:J

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mResultCode:I

    .line 172
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/sdksandbox/SandboxLatencyInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/sdksandbox/SandboxLatencyInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist getLatency(JJ)I
    .registers 8
    .param p1, "timeEventStarted"    # J
    .param p3, "timeEventFinished"    # J

    .line 457
    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_e

    cmp-long v0, p3, v0

    if-eqz v0, :cond_e

    .line 458
    sub-long v0, p3, p1

    long-to-int v0, v0

    return v0

    .line 460
    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getTotalCallFinishTime()J
    .registers 3

    .line 432
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mMethod:I

    packed-switch v0, :pswitch_data_14

    .line 452
    :pswitch_5
    const-wide/16 v0, -0x1

    return-wide v0

    .line 450
    :pswitch_8
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    return-wide v0

    .line 448
    :pswitch_b
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    return-wide v0

    .line 444
    :pswitch_e
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    return-wide v0

    .line 436
    :pswitch_11
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    return-wide v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_5
        :pswitch_11
        :pswitch_5
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 176
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 177
    :cond_4
    instance-of v1, p1, Landroid/app/sdksandbox/SandboxLatencyInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 178
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/app/sdksandbox/SandboxLatencyInfo;

    .line 179
    .local v1, "that":Landroid/app/sdksandbox/SandboxLatencyInfo;
    iget v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mMethod:I

    iget v4, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mMethod:I

    if-ne v3, v4, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeLoadSandboxStarted:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeLoadSandboxStarted:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxLoaded:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxLoaded:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSdk:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSdk:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSdkCallCompleted:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSdkCallCompleted:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget-wide v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    iget-wide v5, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_80

    iget v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    iget v4, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    if-ne v3, v4, :cond_80

    iget v3, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mResultCode:I

    iget v4, v1, Landroid/app/sdksandbox/SandboxLatencyInfo;->mResultCode:I

    if-ne v3, v4, :cond_80

    goto :goto_81

    :cond_80
    move v0, v2

    :goto_81
    return v0
.end method

.method public blacklist getAppToSystemServerLatency()I
    .registers 5

    .line 314
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    iget-wide v2, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLatency(JJ)I

    move-result v0

    return v0
.end method

.method public blacklist getLoadSandboxLatency()I
    .registers 5

    .line 329
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeLoadSandboxStarted:J

    iget-wide v2, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxLoaded:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLatency(JJ)I

    move-result v0

    return v0
.end method

.method public blacklist getMethod()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mMethod:I

    return v0
.end method

.method public blacklist getResultCode()I
    .registers 2

    .line 418
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mResultCode:I

    return v0
.end method

.method public blacklist getSandboxLatency()I
    .registers 5

    .line 339
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    iget-wide v2, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    .line 340
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLatency(JJ)I

    move-result v0

    .line 342
    .local v0, "sandboxLatency":I
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getSdkLatency()I

    move-result v1

    .line 343
    .local v1, "sdkLatency":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 344
    sub-int/2addr v0, v1

    .line 346
    :cond_10
    return v0
.end method

.method public blacklist getSandboxToSystemServerLatency()I
    .registers 5

    .line 356
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    iget-wide v2, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLatency(JJ)I

    move-result v0

    return v0
.end method

.method public blacklist getSdkLatency()I
    .registers 5

    .line 351
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSdk:J

    iget-wide v2, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSdkCallCompleted:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLatency(JJ)I

    move-result v0

    return v0
.end method

.method public blacklist getSystemServerAppToSandboxLatency()I
    .registers 5

    .line 319
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    iget-wide v2, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    .line 320
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLatency(JJ)I

    move-result v0

    .line 321
    .local v0, "systemServerAppToSandboxLatency":I
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLoadSandboxLatency()I

    move-result v1

    .line 322
    .local v1, "loadSandboxLatency":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 323
    move v2, v0

    goto :goto_13

    .line 324
    :cond_11
    sub-int v2, v0, v1

    .line 322
    :goto_13
    return v2
.end method

.method public blacklist getSystemServerSandboxToAppLatency()I
    .registers 5

    .line 361
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    iget-wide v2, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLatency(JJ)I

    move-result v0

    return v0
.end method

.method public blacklist getSystemServerToAppLatency()I
    .registers 5

    .line 366
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    iget-wide v2, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLatency(JJ)I

    move-result v0

    return v0
.end method

.method public blacklist getSystemServerToSandboxLatency()I
    .registers 5

    .line 334
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    iget-wide v2, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLatency(JJ)I

    move-result v0

    return v0
.end method

.method public blacklist getTimeAppCalledSystemServer()J
    .registers 3

    .line 423
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    return-wide v0
.end method

.method public blacklist getTimeAppReceivedCallFromSystemServer()J
    .registers 3

    .line 428
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    return-wide v0
.end method

.method public blacklist getTimeSandboxCalledSystemServer()J
    .registers 3

    .line 284
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    return-wide v0
.end method

.method public blacklist getTimeSystemServerCallFinished()J
    .registers 3

    .line 263
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    return-wide v0
.end method

.method public blacklist getTotalCallLatency()I
    .registers 5

    .line 374
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    invoke-direct {p0}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getTotalCallFinishTime()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/sdksandbox/SandboxLatencyInfo;->getLatency(JJ)I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 18

    .line 200
    move-object/from16 v0, p0

    iget v1, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mMethod:I

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    .line 202
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    .line 203
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeLoadSandboxStarted:J

    .line 204
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxLoaded:J

    .line 205
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    .line 206
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    .line 207
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSdk:J

    .line 208
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-wide v10, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSdkCallCompleted:J

    .line 209
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v11, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    .line 210
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-wide v12, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    .line 211
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget-wide v13, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    .line 212
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    iget-wide v14, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    .line 213
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget v1, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mResultCode:I

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    filled-new-array/range {v2 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    .line 200
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public blacklist isSuccessfulAtAppToSystemServer()Z
    .registers 3

    .line 378
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isSuccessfulAtLoadSandbox()Z
    .registers 3

    .line 386
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isSuccessfulAtSandbox()Z
    .registers 3

    .line 398
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isSuccessfulAtSandboxToSystemServer()Z
    .registers 3

    .line 402
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSuccessfulAtSdk()Z
    .registers 3

    .line 394
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isSuccessfulAtSystemServerAppToSandbox()Z
    .registers 3

    .line 382
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isSuccessfulAtSystemServerSandboxToApp()Z
    .registers 3

    .line 406
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSuccessfulAtSystemServerToApp()Z
    .registers 3

    .line 410
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isSuccessfulAtSystemServerToSandbox()Z
    .registers 3

    .line 390
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isTotalCallSuccessful()Z
    .registers 3

    .line 414
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public blacklist setResultCode(I)V
    .registers 2
    .param p1, "resultCode"    # I

    .line 309
    iput p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mResultCode:I

    .line 310
    return-void
.end method

.method public blacklist setSandboxStatus(I)V
    .registers 2
    .param p1, "sandboxStatus"    # I

    .line 305
    iput p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    .line 306
    return-void
.end method

.method public blacklist setTimeAppCalledSystemServer(J)V
    .registers 3
    .param p1, "timeAppCalledSystemServer"    # J

    .line 247
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    .line 248
    return-void
.end method

.method public blacklist setTimeAppReceivedCallFromSystemServer(J)V
    .registers 3
    .param p1, "timeAppReceivedCallFromSystemServer"    # J

    .line 301
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    .line 302
    return-void
.end method

.method public blacklist setTimeLoadSandboxStarted(J)V
    .registers 3
    .param p1, "timeLoadSandboxStarted"    # J

    .line 255
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeLoadSandboxStarted:J

    .line 256
    return-void
.end method

.method public blacklist setTimeSandboxCalledSdk(J)V
    .registers 3
    .param p1, "timeSandboxCalledSdk"    # J

    .line 276
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSdk:J

    .line 277
    return-void
.end method

.method public blacklist setTimeSandboxCalledSystemServer(J)V
    .registers 3
    .param p1, "timeSandboxCalledSystemServer"    # J

    .line 288
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    .line 289
    return-void
.end method

.method public blacklist setTimeSandboxLoaded(J)V
    .registers 3
    .param p1, "timeSandboxLoaded"    # J

    .line 259
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxLoaded:J

    .line 260
    return-void
.end method

.method public blacklist setTimeSandboxReceivedCallFromSystemServer(J)V
    .registers 3
    .param p1, "timeSandboxReceivedCallFromSystemServer"    # J

    .line 272
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    .line 273
    return-void
.end method

.method public blacklist setTimeSdkCallCompleted(J)V
    .registers 3
    .param p1, "timeSdkCallCompleted"    # J

    .line 280
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSdkCallCompleted:J

    .line 281
    return-void
.end method

.method public blacklist setTimeSystemServerCallFinished(J)V
    .registers 3
    .param p1, "timeSystemServerCallFinished"    # J

    .line 267
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    .line 268
    return-void
.end method

.method public blacklist setTimeSystemServerCalledApp(J)V
    .registers 3
    .param p1, "timeSystemServerCalledApp"    # J

    .line 297
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    .line 298
    return-void
.end method

.method public blacklist setTimeSystemServerReceivedCallFromApp(J)V
    .registers 3
    .param p1, "timeSystemServerReceivedCallFromApp"    # J

    .line 251
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    .line 252
    return-void
.end method

.method public blacklist setTimeSystemServerReceivedCallFromSandbox(J)V
    .registers 3
    .param p1, "timeSystemServerReceivedCallFromSandbox"    # J

    .line 293
    iput-wide p1, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    .line 294
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 220
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mMethod:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppCalledSystemServer:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 222
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromApp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 223
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeLoadSandboxStarted:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 224
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxLoaded:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCallFinished:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxReceivedCallFromSystemServer:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 227
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSdk:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSdkCallCompleted:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSandboxCalledSystemServer:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerReceivedCallFromSandbox:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeSystemServerCalledApp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-wide v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mTimeAppReceivedCallFromSystemServer:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mSandboxStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget v0, p0, Landroid/app/sdksandbox/SandboxLatencyInfo;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    return-void
.end method
