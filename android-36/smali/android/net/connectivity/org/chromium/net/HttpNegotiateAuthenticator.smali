.class public Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;
.super Ljava/lang/Object;
.source "HttpNegotiateAuthenticator.java"


# annotations
.annotation runtime Landroid/net/connectivity/org/jni_zero/JNINamespace;
    value = "net::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;,
        Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;,
        Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;,
        Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "net_auth"


# instance fields
.field private final blacklist mAccountType:Ljava/lang/String;

.field private blacklist mSpnegoContext:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mprocessResult(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;Landroid/os/Bundle;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->processResult(Landroid/os/Bundle;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    .line 62
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "accountType"    # Ljava/lang/String;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    nop

    .line 238
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->mAccountType:Ljava/lang/String;

    .line 239
    return-void
.end method

.method static blacklist create(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;
    .registers 2
    .param p0, "accountType"    # Ljava/lang/String;

    .line 247
    new-instance v0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private blacklist processResult(Landroid/os/Bundle;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V
    .registers 10
    .param p1, "result"    # Landroid/os/Bundle;
    .param p2, "requestData"    # Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    .line 298
    const-string v0, "spnegoContext"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->mSpnegoContext:Landroid/os/Bundle;

    .line 300
    const-string v0, "spnegoResult"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    .line 333
    const/16 v0, -0x9

    move v5, v0

    .local v0, "status":I
    goto :goto_3b

    .line 330
    .end local v0    # "status":I
    :pswitch_16
    const/16 v0, -0x149

    .line 331
    .restart local v0    # "status":I
    move v5, v0

    goto :goto_3b

    .line 327
    .end local v0    # "status":I
    :pswitch_1a
    const/16 v0, -0x158

    .line 328
    .restart local v0    # "status":I
    move v5, v0

    goto :goto_3b

    .line 324
    .end local v0    # "status":I
    :pswitch_1e
    const/16 v0, -0x155

    .line 325
    .restart local v0    # "status":I
    move v5, v0

    goto :goto_3b

    .line 321
    .end local v0    # "status":I
    :pswitch_22
    const/16 v0, -0x153

    .line 322
    .restart local v0    # "status":I
    move v5, v0

    goto :goto_3b

    .line 318
    .end local v0    # "status":I
    :pswitch_26
    const/16 v0, -0x152

    .line 319
    .restart local v0    # "status":I
    move v5, v0

    goto :goto_3b

    .line 315
    .end local v0    # "status":I
    :pswitch_2a
    const/16 v0, -0x140

    .line 316
    .restart local v0    # "status":I
    move v5, v0

    goto :goto_3b

    .line 312
    .end local v0    # "status":I
    :pswitch_2e
    const/16 v0, -0x156

    .line 313
    .restart local v0    # "status":I
    move v5, v0

    goto :goto_3b

    .line 309
    .end local v0    # "status":I
    :pswitch_32
    const/4 v0, -0x3

    .line 310
    .restart local v0    # "status":I
    move v5, v0

    goto :goto_3b

    .line 306
    .end local v0    # "status":I
    :pswitch_35
    const/16 v0, -0x9

    .line 307
    .restart local v0    # "status":I
    move v5, v0

    goto :goto_3b

    .line 303
    .end local v0    # "status":I
    :pswitch_39
    const/4 v0, 0x0

    .line 304
    .restart local v0    # "status":I
    move v5, v0

    .line 335
    .end local v0    # "status":I
    .local v5, "status":I
    :goto_3b
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticatorJni;->get()Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v1

    iget-wide v2, p2, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    .line 340
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    move-object v4, p0

    invoke-interface/range {v1 .. v6}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLandroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    .line 341
    return-void

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_39
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
    .end packed-switch
.end method

.method private blacklist requestTokenWithActivity(Landroid/content/Context;Landroid/app/Activity;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;[Ljava/lang/String;)V
    .registers 24
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "requestData"    # Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;
    .param p4, "features"    # [Ljava/lang/String;

    .line 396
    move-object/from16 v3, p0

    move-object/from16 v6, p3

    const/4 v0, 0x0

    move v7, v0

    .line 398
    .local v7, "isPreM":Z
    if-eqz v7, :cond_b

    const-string v0, "android.permission.MANAGE_ACCOUNTS"

    goto :goto_d

    :cond_b
    const-string v0, "android.permission.GET_ACCOUNTS"

    :goto_d
    move-object v8, v0

    .line 407
    .local v8, "permission":Ljava/lang/String;
    move-object/from16 v9, p1

    invoke-virtual {v3, v9, v8, v7}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->lacksPermission(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 408
    const-string v0, "net_auth"

    const-string v1, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: %s permission not granted. Aborting authentication"

    invoke-static {v0, v1, v8}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 413
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticatorJni;->get()Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v0

    iget-wide v1, v6, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    .line 414
    const/16 v4, -0x157

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLandroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    .line 419
    return-void

    .line 422
    :cond_2a
    iget-object v10, v6, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->accountManager:Landroid/accounts/AccountManager;

    iget-object v11, v3, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->mAccountType:Ljava/lang/String;

    iget-object v12, v6, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->authTokenType:Ljava/lang/String;

    iget-object v0, v6, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    invoke-direct {v1, v3, v6}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;-><init>(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    new-instance v2, Landroid/os/Handler;

    .line 430
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 422
    const/4 v15, 0x0

    move-object/from16 v14, p2

    move-object/from16 v13, p4

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-virtual/range {v10 .. v18}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 431
    return-void
.end method

.method private blacklist requestTokenWithoutActivity(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;[Ljava/lang/String;)V
    .registers 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "requestData"    # Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;
    .param p3, "features"    # [Ljava/lang/String;

    .line 353
    const-string v0, "android.permission.GET_ACCOUNTS"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->lacksPermission(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 361
    const-string v0, "net_auth"

    const-string v1, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: GET_ACCOUNTS permission not granted. Aborting authentication."

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticatorJni;->get()Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v2

    iget-wide v3, p2, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    .line 366
    const/16 v6, -0x157

    const/4 v7, 0x0

    move-object v5, p0

    invoke-interface/range {v2 .. v7}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLandroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    .line 371
    return-void

    .line 373
    :cond_1e
    move-object v5, p0

    iget-object v0, p2, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->accountManager:Landroid/accounts/AccountManager;

    iget-object v1, v5, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->mAccountType:Ljava/lang/String;

    new-instance v2, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;

    invoke-direct {v2, p0, p2}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;-><init>(Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    new-instance v3, Landroid/os/Handler;

    .line 377
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 373
    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 378
    return-void
.end method


# virtual methods
.method blacklist getNextAuthToken(JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "nativeResultObject"    # J
    .param p3, "principal"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;
    .param p5, "canDelegate"    # Z

    .line 265
    nop

    .line 267
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    .local v0, "applicationContext":Landroid/content/Context;
    new-instance v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;

    invoke-direct {v1}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;-><init>()V

    .line 269
    .local v1, "requestData":Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPNEGO:HOSTBASED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->authTokenType:Ljava/lang/String;

    .line 270
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->accountManager:Landroid/accounts/AccountManager;

    .line 271
    iput-wide p1, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    .line 272
    const-string v2, "SPNEGO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "features":[Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    .line 275
    if-eqz p4, :cond_3d

    .line 276
    iget-object v3, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    const-string v4, "incomingAuthToken"

    invoke-virtual {v3, v4, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_3d
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->mSpnegoContext:Landroid/os/Bundle;

    if-eqz v3, :cond_4a

    .line 280
    iget-object v3, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    const-string v4, "spnegoContext"

    iget-object v5, p0, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->mSpnegoContext:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 283
    :cond_4a
    iget-object v3, v1, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    const-string v4, "canDelegate"

    invoke-virtual {v3, v4, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v3

    .line 286
    .local v3, "activity":Landroid/app/Activity;
    if-nez v3, :cond_5b

    .line 287
    invoke-direct {p0, v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->requestTokenWithoutActivity(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;[Ljava/lang/String;)V

    goto :goto_5e

    .line 289
    :cond_5b
    invoke-direct {p0, v0, v3, v1, v2}, Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator;->requestTokenWithActivity(Landroid/content/Context;Landroid/app/Activity;Landroid/net/connectivity/org/chromium/net/HttpNegotiateAuthenticator$RequestData;[Ljava/lang/String;)V

    .line 291
    :goto_5e
    return-void
.end method

.method blacklist lacksPermission(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "onlyPreM"    # Z

    .line 439
    const/4 v0, 0x0

    if-eqz p3, :cond_4

    return v0

    .line 441
    :cond_4
    nop

    .line 442
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 443
    .local v1, "permissionResult":I
    if-eqz v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method
