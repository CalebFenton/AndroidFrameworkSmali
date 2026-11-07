.class public Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
.super Ljava/lang/Object;
.source "CronetLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CronetEngineBuilderInfo"
.end annotation


# instance fields
.field private final blacklist mBrotiEnabled:Z

.field private final blacklist mCronetInitializationRef:J

.field private final blacklist mExperimentalOptions:Ljava/lang/String;

.field private final blacklist mHttp2Enabled:Z

.field private final blacklist mHttpCacheMode:I

.field private final blacklist mNetworkQualityEstimatorEnabled:Z

.field private final blacklist mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

.field private final blacklist mQuicEnabled:Z

.field private final blacklist mStoragePath:Ljava/lang/String;

.field private final blacklist mThreadPriority:I

.field private final blacklist mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(ZLjava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ZIJ)V
    .registers 13
    .param p1, "publicKeyPinningBypassForLocalTrustAnchorsEnabled"    # Z
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/lang/String;
    .param p4, "quicEnabled"    # Z
    .param p5, "http2Enabled"    # Z
    .param p6, "brotiEnabled"    # Z
    .param p7, "httpCacheMode"    # I
    .param p8, "experimentalOptions"    # Ljava/lang/String;
    .param p9, "networkQualityEstimatorEnabled"    # Z
    .param p10, "threadPriority"    # I
    .param p11, "cronetInitializationRef"    # J

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    .line 119
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mUserAgent:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mStoragePath:Ljava/lang/String;

    .line 121
    iput-boolean p4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mQuicEnabled:Z

    .line 122
    iput-boolean p5, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttp2Enabled:Z

    .line 123
    iput-boolean p6, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mBrotiEnabled:Z

    .line 124
    iput p7, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttpCacheMode:I

    .line 125
    iput-object p8, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mExperimentalOptions:Ljava/lang/String;

    .line 126
    iput-boolean p9, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mNetworkQualityEstimatorEnabled:Z

    .line 127
    iput p10, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mThreadPriority:I

    .line 128
    iput-wide p11, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mCronetInitializationRef:J

    .line 129
    return-void
.end method


# virtual methods
.method public blacklist getCronetInitializationRef()J
    .registers 3

    .line 185
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mCronetInitializationRef:J

    return-wide v0
.end method

.method public blacklist getExperimentalOptions()Ljava/lang/String;
    .registers 2

    .line 171
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mExperimentalOptions:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHttpCacheMode()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttpCacheMode:I

    return v0
.end method

.method public blacklist getStoragePath()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getThreadPriority()I
    .registers 2

    .line 181
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mThreadPriority:I

    return v0
.end method

.method public blacklist getUserAgent()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isBrotliEnabled()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mBrotiEnabled:Z

    return v0
.end method

.method public blacklist isHttp2Enabled()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mHttp2Enabled:Z

    return v0
.end method

.method public blacklist isNetworkQualityEstimatorEnabled()Z
    .registers 2

    .line 176
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mNetworkQualityEstimatorEnabled:Z

    return v0
.end method

.method public blacklist isPublicKeyPinningBypassForLocalTrustAnchorsEnabled()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    return v0
.end method

.method public blacklist isQuicEnabled()Z
    .registers 2

    .line 148
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->mQuicEnabled:Z

    return v0
.end method
