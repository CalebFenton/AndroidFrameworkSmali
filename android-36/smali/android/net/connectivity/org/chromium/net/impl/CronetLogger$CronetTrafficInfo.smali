.class public Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CronetTrafficInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    }
.end annotation


# instance fields
.field private final blacklist mDidConnectionMigrationSucceed:Z

.field private final blacklist mFailureReason:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

.field private final blacklist mFinalUserCallbackThrew:Z

.field private final blacklist mHeadersLatency:Ljava/time/Duration;

.field private final blacklist mIsBidiStream:Z

.field private final blacklist mNegotiatedProtocol:Ljava/lang/String;

.field private final blacklist mNetworkInternalErrorCode:I

.field private final blacklist mNonfinalUserCallbackExceptionCount:I

.field private final blacklist mOnUploadReadCount:I

.field private final blacklist mQuicErrorCode:I

.field private final blacklist mReadCount:I

.field private final blacklist mRequestBodySizeInBytes:J

.field private final blacklist mRequestHeaderSizeInBytes:J

.field private final blacklist mResponseBodySizeInBytes:J

.field private final blacklist mResponseHeaderSizeInBytes:J

.field private final blacklist mResponseStatusCode:I

.field private final blacklist mSocketReused:Z

.field private final blacklist mSource:I

.field private final blacklist mTerminalState:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

.field private final blacklist mTotalLatency:Ljava/time/Duration;

.field private final blacklist mUid:I

.field private final blacklist mWasConnectionMigrationAttempted:Z


# direct methods
.method public constructor blacklist <init>(JJJJILjava/time/Duration;Ljava/time/Duration;Ljava/lang/String;ZZLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;IIIZZIIIILandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;Z)V
    .registers 43
    .param p1, "requestHeaderSizeInBytes"    # J
    .param p3, "requestBodySizeInBytes"    # J
    .param p5, "responseHeaderSizeInBytes"    # J
    .param p7, "responseBodySizeInBytes"    # J
    .param p9, "responseStatusCode"    # I
    .param p10, "headersLatency"    # Ljava/time/Duration;
    .param p11, "totalLatency"    # Ljava/time/Duration;
    .param p12, "negotiatedProtocol"    # Ljava/lang/String;
    .param p13, "wasConnectionMigrationAttempted"    # Z
    .param p14, "didConnectionMigrationSucceed"    # Z
    .param p15, "terminalState"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
    .param p16, "nonfinalUserCallbackExceptionCount"    # I
    .param p17, "readCount"    # I
    .param p18, "uploadReadCount"    # I
    .param p19, "isBidiStream"    # Z
    .param p20, "finalUserCallbackThrew"    # Z
    .param p21, "uid"    # I
    .param p22, "networkInternalErrorCode"    # I
    .param p23, "quicErrorCode"    # I
    .param p24, "source"    # I
    .param p25, "failureReason"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    .param p26, "sockedReused"    # Z

    .line 252
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 253
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mRequestHeaderSizeInBytes:J

    .line 254
    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mRequestBodySizeInBytes:J

    .line 255
    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseHeaderSizeInBytes:J

    .line 256
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseBodySizeInBytes:J

    .line 257
    move/from16 v9, p9

    iput v9, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseStatusCode:I

    .line 258
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mHeadersLatency:Ljava/time/Duration;

    .line 259
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTotalLatency:Ljava/time/Duration;

    .line 260
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNegotiatedProtocol:Ljava/lang/String;

    .line 261
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mWasConnectionMigrationAttempted:Z

    .line 262
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mDidConnectionMigrationSucceed:Z

    .line 263
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTerminalState:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    .line 264
    move/from16 v1, p16

    iput v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNonfinalUserCallbackExceptionCount:I

    .line 265
    move/from16 v2, p17

    iput v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mReadCount:I

    .line 266
    move/from16 v1, p18

    iput v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mOnUploadReadCount:I

    .line 267
    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mIsBidiStream:Z

    .line 268
    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mFinalUserCallbackThrew:Z

    .line 269
    move/from16 v1, p21

    iput v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mUid:I

    .line 270
    move/from16 v1, p22

    iput v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNetworkInternalErrorCode:I

    .line 271
    move/from16 v1, p23

    iput v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mQuicErrorCode:I

    .line 272
    move/from16 v1, p24

    iput v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mSource:I

    .line 273
    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mFailureReason:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 274
    move/from16 v1, p26

    iput-boolean v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mSocketReused:Z

    .line 275
    return-void
.end method


# virtual methods
.method public blacklist didConnectionMigrationSucceed()Z
    .registers 2

    .line 336
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mDidConnectionMigrationSucceed:Z

    return v0
.end method

.method public blacklist getConnectionCloseSource()I
    .registers 2

    .line 376
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mSource:I

    return v0
.end method

.method public blacklist getFailureReason()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;
    .registers 2

    .line 380
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mFailureReason:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    return-object v0
.end method

.method public blacklist getFinalUserCallbackThrew()Z
    .registers 2

    .line 360
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mFinalUserCallbackThrew:Z

    return v0
.end method

.method public blacklist getHeadersLatency()Ljava/time/Duration;
    .registers 2

    .line 311
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mHeadersLatency:Ljava/time/Duration;

    return-object v0
.end method

.method public blacklist getIsBidiStream()Z
    .registers 2

    .line 356
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mIsBidiStream:Z

    return v0
.end method

.method public blacklist getIsSocketReused()Z
    .registers 2

    .line 384
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mSocketReused:Z

    return v0
.end method

.method public blacklist getNegotiatedProtocol()Ljava/lang/String;
    .registers 2

    .line 326
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNegotiatedProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNetworkInternalErrorCode()I
    .registers 2

    .line 368
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNetworkInternalErrorCode:I

    return v0
.end method

.method public blacklist getNonfinalUserCallbackExceptionCount()I
    .registers 2

    .line 344
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mNonfinalUserCallbackExceptionCount:I

    return v0
.end method

.method public blacklist getOnUploadReadCount()I
    .registers 2

    .line 352
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mOnUploadReadCount:I

    return v0
.end method

.method public blacklist getQuicErrorCode()I
    .registers 2

    .line 372
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mQuicErrorCode:I

    return v0
.end method

.method public blacklist getReadCount()I
    .registers 2

    .line 348
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mReadCount:I

    return v0
.end method

.method public blacklist getRequestBodySizeInBytes()J
    .registers 3

    .line 286
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mRequestBodySizeInBytes:J

    return-wide v0
.end method

.method public blacklist getRequestHeaderSizeInBytes()J
    .registers 3

    .line 281
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mRequestHeaderSizeInBytes:J

    return-wide v0
.end method

.method public blacklist getResponseBodySizeInBytes()J
    .registers 3

    .line 296
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseBodySizeInBytes:J

    return-wide v0
.end method

.method public blacklist getResponseHeaderSizeInBytes()J
    .registers 3

    .line 291
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseHeaderSizeInBytes:J

    return-wide v0
.end method

.method public blacklist getResponseStatusCode()I
    .registers 2

    .line 301
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mResponseStatusCode:I

    return v0
.end method

.method public blacklist getTerminalState()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
    .registers 2

    .line 340
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTerminalState:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    return-object v0
.end method

.method public blacklist getTotalLatency()Ljava/time/Duration;
    .registers 2

    .line 321
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mTotalLatency:Ljava/time/Duration;

    return-object v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 364
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mUid:I

    return v0
.end method

.method public blacklist wasConnectionMigrationAttempted()Z
    .registers 2

    .line 331
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->mWasConnectionMigrationAttempted:Z

    return v0
.end method
