.class public Landroid/webkit/WebViewFactory$StartupTimestamps;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartupTimestamps"
.end annotation


# instance fields
.field blacklist mAddAssetsEnd:J

.field blacklist mAddAssetsStart:J

.field blacklist mCreateContextEnd:J

.field blacklist mCreateContextStart:J

.field blacklist mGetClassLoaderEnd:J

.field blacklist mGetClassLoaderStart:J

.field blacklist mNativeLoadEnd:J

.field blacklist mNativeLoadStart:J

.field blacklist mProviderClassForNameEnd:J

.field blacklist mProviderClassForNameStart:J

.field blacklist mWebViewLoadStart:J


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist getAddAssetsEnd()J
    .registers 3

    .line 139
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mAddAssetsEnd:J

    return-wide v0
.end method

.method public whitelist getAddAssetsStart()J
    .registers 3

    .line 133
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mAddAssetsStart:J

    return-wide v0
.end method

.method public whitelist getCreateContextEnd()J
    .registers 3

    .line 127
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextEnd:J

    return-wide v0
.end method

.method public whitelist getCreateContextStart()J
    .registers 3

    .line 121
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mCreateContextStart:J

    return-wide v0
.end method

.method public whitelist getGetClassLoaderEnd()J
    .registers 3

    .line 151
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mGetClassLoaderEnd:J

    return-wide v0
.end method

.method public whitelist getGetClassLoaderStart()J
    .registers 3

    .line 145
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mGetClassLoaderStart:J

    return-wide v0
.end method

.method public whitelist getNativeLoadEnd()J
    .registers 3

    .line 163
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mNativeLoadEnd:J

    return-wide v0
.end method

.method public whitelist getNativeLoadStart()J
    .registers 3

    .line 157
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mNativeLoadStart:J

    return-wide v0
.end method

.method public whitelist getProviderClassForNameEnd()J
    .registers 3

    .line 175
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameEnd:J

    return-wide v0
.end method

.method public whitelist getProviderClassForNameStart()J
    .registers 3

    .line 169
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mProviderClassForNameStart:J

    return-wide v0
.end method

.method public whitelist getWebViewLoadStart()J
    .registers 3

    .line 115
    iget-wide v0, p0, Landroid/webkit/WebViewFactory$StartupTimestamps;->mWebViewLoadStart:J

    return-wide v0
.end method
