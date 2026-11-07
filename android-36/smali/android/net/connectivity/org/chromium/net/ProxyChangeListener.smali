.class public Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;
.super Ljava/lang/Object;
.source "ProxyChangeListener.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;,
        Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;,
        Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;,
        Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ProxyChangeListener"

.field private static blacklist sEnabled:Z


# instance fields
.field private blacklist mDelegate:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private blacklist mNativePtr:J

.field private blacklist mProxyReceiver:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;

.field private blacklist mRealProxyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic blacklist $r8$lambda$Au2hn8Ba9pQhj0QXTp4m-2VZbBM(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->lambda$setDelegateForTesting$0(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tPX-t8FAmA9Uwj_rRp6kHiJ6ryQ(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->lambda$updateProxyConfigFromConnectivityManager$1(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mproxySettingsChanged(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->proxySettingsChanged(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrunOnThread(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->runOnThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smextractNewProxy(Landroid/content/Intent;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;
    .registers 1

    invoke-static {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->extractNewProxy(Landroid/content/Intent;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    nop

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->sEnabled:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mLooper:Landroid/os/Looper;

    .line 121
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mHandler:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method private blacklist assertOnThread()V
    .registers 3

    .line 353
    sget-boolean v0, Landroid/net/connectivity/org/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->onThread()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 354
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on ProxyChangeListener thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_13
    :goto_13
    return-void
.end method

.method public static blacklist create()Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;
    .registers 1

    .line 136
    new-instance v0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;-><init>()V

    return-object v0
.end method

.method private static blacklist extractNewProxy(Landroid/content/Intent;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 180
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_8

    .line 181
    const/4 v1, 0x0

    return-object v1

    .line 183
    :cond_8
    nop

    .line 184
    nop

    .line 185
    const-string v1, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    .line 184
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->-$$Nest$smfromProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "property"    # Ljava/lang/String;

    .line 141
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getProxyConfig(Landroid/content/Intent;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 262
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 263
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 264
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    nop

    .line 265
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->-$$Nest$smfromProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    move-result-object v1

    .line 267
    .local v1, "configFromConnectivityManager":Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;
    if-nez v1, :cond_1a

    .line 268
    sget-object v2, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->DIRECT:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    return-object v2

    .line 269
    :cond_1a
    iget-object v2, v1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mHost:Ljava/lang/String;

    .line 270
    const-string v3, "localhost"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    iget v2, v1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mPort:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_46

    .line 272
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->extractNewProxy(Landroid/content/Intent;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    move-result-object v2

    .line 273
    .local v2, "configFromIntent":Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;
    const-string v3, "ProxyChangeListener"

    const-string v4, "configFromConnectivityManager = %s, configFromIntent = %s"

    invoke-static {v3, v4, v1, v2}, Landroid/net/connectivity/org/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    if-nez v2, :cond_38

    const/4 v3, 0x0

    return-object v3

    .line 286
    :cond_38
    iget-object v3, v2, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mHost:Ljava/lang/String;

    .line 287
    .local v3, "correctHost":Ljava/lang/String;
    iget v4, v2, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mPort:I

    .line 288
    .local v4, "correctPort":I
    new-instance v5, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    iget-object v6, v1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mPacUrl:Ljava/lang/String;

    iget-object v7, v1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mExclusionList:[Ljava/lang/String;

    invoke-direct {v5, v3, v4, v6, v7}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v5

    .line 294
    .end local v2    # "configFromIntent":Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;
    .end local v3    # "correctHost":Ljava/lang/String;
    .end local v4    # "correctPort":I
    :cond_46
    return-object v1
.end method

.method private synthetic blacklist lambda$setDelegateForTesting$0(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;)V
    .registers 2
    .param p1, "oldValue"    # Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;

    .line 131
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mDelegate:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;

    return-void
.end method

.method private synthetic blacklist lambda$updateProxyConfigFromConnectivityManager$1(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 299
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->getProxyConfig(Landroid/content/Intent;)Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->proxySettingsChanged(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;)V

    return-void
.end method

.method private blacklist onThread()Z
    .registers 3

    .line 349
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private blacklist proxySettingsChanged(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;)V
    .registers 11
    .param p1, "cfg"    # Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;

    .line 231
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->assertOnThread()V

    .line 233
    sget-boolean v0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->sEnabled:Z

    if-nez v0, :cond_8

    .line 234
    return-void

    .line 236
    :cond_8
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mDelegate:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;

    if-eqz v0, :cond_11

    .line 238
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mDelegate:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;->proxySettingsChanged()V

    .line 240
    :cond_11
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 241
    return-void

    .line 244
    :cond_1a
    if-eqz p1, :cond_2f

    .line 245
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListenerJni;->get()Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mNativePtr:J

    iget-object v5, p1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mHost:Ljava/lang/String;

    iget v6, p1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mPort:I

    iget-object v7, p1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mPacUrl:Ljava/lang/String;

    iget-object v8, p1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyConfig;->mExclusionList:[Ljava/lang/String;

    .line 246
    move-object v4, p0

    invoke-interface/range {v1 .. v8}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;->proxySettingsChangedTo(JLandroid/net/connectivity/org/chromium/net/ProxyChangeListener;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_39

    .line 254
    :cond_2f
    move-object v4, p0

    invoke-static {}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListenerJni;->get()Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;

    move-result-object v0

    iget-wide v1, v4, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mNativePtr:J

    invoke-interface {v0, v1, v2, p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Natives;->proxySettingsChanged(JLandroid/net/connectivity/org/chromium/net/ProxyChangeListener;)V

    .line 256
    :goto_39
    return-void
.end method

.method private blacklist registerBroadcastReceiver()V
    .registers 5

    .line 303
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->assertOnThread()V

    .line 304
    nop

    .line 305
    nop

    .line 307
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 308
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    new-instance v1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;-><init>(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;Landroid/net/connectivity/org/chromium/net/ProxyChangeListener-IA;)V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mProxyReceiver:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;

    .line 311
    nop

    .line 317
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->isSdkSandboxProcess()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 325
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mProxyReceiver:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 324
    invoke-static {v1, v2, v3}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerNonExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 330
    :cond_2c
    new-instance v1, Landroid/net/connectivity/org/chromium/net/ProxyBroadcastReceiver;

    invoke-direct {v1, p0}, Landroid/net/connectivity/org/chromium/net/ProxyBroadcastReceiver;-><init>(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;)V

    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mRealProxyReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mRealProxyReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    invoke-static {v1, v2, v0}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->registerProtectedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 334
    return-void
.end method

.method private blacklist runOnThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 359
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->onThread()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 360
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_f

    .line 362
    :cond_a
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    :goto_f
    return-void
.end method

.method public static blacklist setEnabled(Z)V
    .registers 1
    .param p0, "enabled"    # Z

    .line 125
    sput-boolean p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->sEnabled:Z

    .line 126
    return-void
.end method

.method private blacklist unregisterBroadcastReceiver()V
    .registers 3

    .line 337
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->assertOnThread()V

    .line 338
    nop

    .line 340
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mProxyReceiver:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mRealProxyReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    .line 342
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mRealProxyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 344
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mProxyReceiver:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$ProxyReceiver;

    .line 345
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mRealProxyReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    return-void
.end method


# virtual methods
.method public blacklist setDelegateForTesting(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;)V
    .registers 4
    .param p1, "delegate"    # Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;

    .line 129
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mDelegate:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;

    .line 130
    .local v0, "oldValue":Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mDelegate:Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;

    .line 131
    new-instance v1, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$Delegate;)V

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public blacklist start(J)V
    .registers 6
    .param p1, "nativePtr"    # J

    .line 146
    const-string v0, "ProxyChangeListener.start"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0

    .line 147
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_6
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->assertOnThread()V

    .line 148
    nop

    .line 149
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mNativePtr:J

    .line 150
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->registerBroadcastReceiver()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_15

    .line 151
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V

    .line 152
    .end local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_14
    return-void

    .line 146
    .restart local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_15
    move-exception v1

    if-eqz v0, :cond_20

    :try_start_18
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    throw v1
.end method

.method public blacklist stop()V
    .registers 3

    .line 156
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->assertOnThread()V

    .line 157
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->mNativePtr:J

    .line 158
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->unregisterBroadcastReceiver()V

    .line 159
    return-void
.end method

.method blacklist updateProxyConfigFromConnectivityManager(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 299
    new-instance v0, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/ProxyChangeListener;->runOnThread(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method
