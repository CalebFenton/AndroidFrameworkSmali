.class public Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
.super Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
.source "ExperimentalCronetEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 101
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;-><init>(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;)V
    .registers 2
    .param p1, "builderDelegate"    # Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    .line 113
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;)V

    .line 114
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 5
    .param p1, "hostName"    # Ljava/lang/String;
    .param p3, "includeSubdomains"    # Z
    .param p4, "expirationDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "[B>;Z",
            "Ljava/util/Date;",
            ")",
            "Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;"
        }
    .end annotation

    .line 215
    .local p2, "pinsSha256":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 216
    return-object p0
.end method

.method public bridge synthetic blacklist addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "alternatePort"    # I

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 206
    return-object p0
.end method

.method public bridge synthetic blacklist build()Landroid/net/connectivity/org/chromium/net/CronetEngine;
    .registers 2

    .line 91
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->build()Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    move-result-object v0

    return-object v0
.end method

.method public blacklist build()Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;
    .registers 2

    .line 239
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->buildExperimental()Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 167
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 168
    return-object p0
.end method

.method public bridge synthetic blacklist enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 4
    .param p1, "cacheMode"    # I
    .param p2, "maxSize"    # J

    .line 199
    invoke-super {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 200
    return-object p0
.end method

.method public bridge synthetic blacklist enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 227
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 228
    return-object p0
.end method

.method public bridge synthetic blacklist enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 221
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 222
    return-object p0
.end method

.method public bridge synthetic blacklist enableQuic(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enableQuic(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableQuic(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 161
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->enableQuic(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 162
    return-object p0
.end method

.method public bridge synthetic blacklist enableSdch(Z)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->enableSdch(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableSdch(Z)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 194
    return-object p0
.end method

.method public blacklist getBuilderDelegate()Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->mBuilderDelegate:Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;

    return-object v0
.end method

.method public bridge synthetic blacklist setConnectionMigrationOptions(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->setConnectionMigrationOptions(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setConnectionMigrationOptions(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "options"    # Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;

    .line 188
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->setConnectionMigrationOptions(Landroid/net/connectivity/org/chromium/net/ConnectionMigrationOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 189
    return-object p0
.end method

.method public bridge synthetic blacklist setDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->setDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "options"    # Landroid/net/connectivity/org/chromium/net/DnsOptions;

    .line 181
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->setDnsOptions(Landroid/net/connectivity/org/chromium/net/DnsOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 182
    return-object p0
.end method

.method public blacklist setExperimentalOptions(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 3
    .param p1, "options"    # Ljava/lang/String;

    .line 123
    nop

    .line 124
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalOptionsTranslator;->toJsonExperimentalOptions(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->mParsedExperimentalOptions:Lorg/json/JSONObject;

    .line 125
    return-object p0
.end method

.method public bridge synthetic blacklist setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "loader"    # Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;

    .line 155
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 156
    return-object p0
.end method

.method public bridge synthetic blacklist setQuicOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->setQuicOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setQuicOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "options"    # Landroid/net/connectivity/org/chromium/net/QuicOptions;

    .line 174
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->setQuicOptions(Landroid/net/connectivity/org/chromium/net/QuicOptions;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 175
    return-object p0
.end method

.method public bridge synthetic blacklist setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 149
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 150
    return-object p0
.end method

.method public bridge synthetic blacklist setThreadPriority(I)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->setThreadPriority(I)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setThreadPriority(I)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "priority"    # I

    .line 233
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->setThreadPriority(I)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 234
    return-object p0
.end method

.method public bridge synthetic blacklist setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;->setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ExperimentalCronetEngine$Builder;
    .registers 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 143
    invoke-super {p0, p1}, Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;->setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder;

    .line 144
    return-object p0
.end method
