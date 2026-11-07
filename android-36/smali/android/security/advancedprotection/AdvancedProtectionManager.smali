.class public final Landroid/security/advancedprotection/AdvancedProtectionManager;
.super Ljava/lang/Object;
.source "AdvancedProtectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;,
        Landroid/security/advancedprotection/AdvancedProtectionManager$SupportDialogType;,
        Landroid/security/advancedprotection/AdvancedProtectionManager$FeatureId;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG:Ljava/lang/String; = "android.security.advancedprotection.action.SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG"

.field public static final blacklist ADVANCED_PROTECTION_SYSTEM_ENTITY:Ljava/lang/String; = "android.security.advancedprotection"

.field private static final blacklist ALL_FEATURE_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_SUPPORT_DIALOG_FEATURE:Ljava/lang/String; = "android.security.advancedprotection.extra.SUPPORT_DIALOG_FEATURE"

.field public static final blacklist EXTRA_SUPPORT_DIALOG_TYPE:Ljava/lang/String; = "android.security.advancedprotection.extra.SUPPORT_DIALOG_TYPE"

.field public static final whitelist FEATURE_ID_DISALLOW_CELLULAR_2G:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_INSTALL_UNKNOWN_SOURCES:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_USB:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_WEP:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_ENABLE_MTE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist MEMORY_TAGGING_POLICY:Ljava/lang/String; = "memoryTagging"

.field private static final blacklist PKG_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final blacklist SUPPORT_DIALOG_TYPE_BLOCKED_INTERACTION:I = 0x1

.field public static final blacklist SUPPORT_DIALOG_TYPE_DISABLED_SETTING:I = 0x2

.field public static final blacklist SUPPORT_DIALOG_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AdvancedProtectionMgr"


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;",
            "Landroid/security/advancedprotection/IAdvancedProtectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/security/advancedprotection/IAdvancedProtectionService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 139
    nop

    .line 140
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 141
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 142
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 143
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 144
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 139
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_FEATURE_IDS:Ljava/util/Set;

    .line 219
    nop

    .line 220
    nop

    .line 221
    nop

    .line 222
    nop

    .line 219
    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/advancedprotection/IAdvancedProtectionService;)V
    .registers 3
    .param p1, "service"    # Landroid/security/advancedprotection/IAdvancedProtectionService;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 232
    iput-object p1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    .line 233
    return-void
.end method

.method public static blacklist createSupportIntent(II)Landroid/content/Intent;
    .registers 5
    .param p0, "featureId"    # I
    .param p1, "type"    # I

    .line 360
    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_FEATURE_IDS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 364
    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.advancedprotection.action.SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 372
    const-string v1, "android.security.advancedprotection.extra.SUPPORT_DIALOG_FEATURE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    const-string v1, "android.security.advancedprotection.extra.SUPPORT_DIALOG_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 374
    return-object v0

    .line 365
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid type. See SUPPORT_DIALOG_TYPE_* APIs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid feature ID. See FEATURE_ID_* APIs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createSupportIntentForPolicyIdentifierOrRestriction(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 6
    .param p0, "identifier"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 400
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 406
    move v0, p1

    .line 407
    .local v0, "dialogType":I
    const-string/jumbo v1, "no_install_unknown_sources_globally"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 408
    const/4 v1, 0x1

    .local v1, "featureId":I
    goto :goto_3b

    .line 409
    .end local v1    # "featureId":I
    :cond_1b
    const-string/jumbo v1, "no_cellular_2g"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2c

    .line 410
    const/4 v1, 0x0

    .line 411
    .restart local v1    # "featureId":I
    if-nez v0, :cond_29

    .line 412
    goto :goto_2a

    :cond_29
    move v2, v0

    :goto_2a
    move v0, v2

    goto :goto_3b

    .line 413
    .end local v1    # "featureId":I
    :cond_2c
    const-string/jumbo v1, "memoryTagging"

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 414
    const/4 v1, 0x4

    .line 415
    .restart local v1    # "featureId":I
    if-nez v0, :cond_39

    .line 416
    goto :goto_3a

    :cond_39
    move v2, v0

    :goto_3a
    move v0, v2

    .line 420
    :goto_3b
    invoke-static {v1, v0}, Landroid/security/advancedprotection/AdvancedProtectionManager;->createSupportIntent(II)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 418
    .end local v1    # "featureId":I
    :cond_40
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    .end local v0    # "dialogType":I
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid type. See SUPPORT_DIALOG_TYPE_* APIs."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist featureIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "featureId"    # I

    .line 129
    packed-switch p0, :pswitch_data_16

    .line 135
    const-string v0, "UNKNOWN"

    goto :goto_14

    .line 134
    :pswitch_6
    const-string v0, "ENABLE_MTE"

    goto :goto_14

    .line 133
    :pswitch_9
    const-string v0, "DISALLOW_WEP"

    goto :goto_14

    .line 132
    :pswitch_c
    const-string v0, "DISALLOW_USB"

    goto :goto_14

    .line 131
    :pswitch_f
    const-string v0, "DISALLOW_INSTALL_UNKNOWN_SOURCES"

    goto :goto_14

    .line 130
    :pswitch_12
    const-string v0, "DISALLOW_CELLULAR_2G"

    .line 129
    :goto_14
    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist supportDialogTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 211
    const-string v0, "UNKNOWN"

    packed-switch p0, :pswitch_data_e

    .line 215
    goto :goto_d

    .line 214
    :pswitch_6
    const-string v0, "DISABLED_SETTING"

    goto :goto_d

    .line 213
    :pswitch_9
    const-string v0, "BLOCKED_INTERACTION"

    goto :goto_d

    .line 212
    :pswitch_c
    nop

    .line 211
    :goto_d
    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public whitelist getAdvancedProtectionFeatures()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/advancedprotection/AdvancedProtectionFeature;",
            ">;"
        }
    .end annotation

    .line 336
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->getAdvancedProtectionFeatures()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 337
    :catch_7
    move-exception v0

    .line 338
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isAdvancedProtectionEnabled()Z
    .registers 3

    .line 243
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->isAdvancedProtectionEnabled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 244
    :catch_7
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist logDialogShown(IIZ)V
    .registers 6
    .param p1, "featureId"    # I
    .param p2, "type"    # I
    .param p3, "learnMoreClicked"    # Z

    .line 428
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/advancedprotection/IAdvancedProtectionService;->logDialogShown(IIZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 431
    nop

    .line 432
    return-void

    .line 429
    :catch_7
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist registerAdvancedProtectionCallback(Ljava/util/concurrent/Executor;Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V
    .registers 6
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;

    .line 262
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 263
    const-string v0, "AdvancedProtectionMgr"

    const-string/jumbo v1, "registerAdvancedProtectionCallback callback already present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 267
    :cond_11
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/advancedprotection/AdvancedProtectionManager$1;-><init>(Landroid/security/advancedprotection/AdvancedProtectionManager;Ljava/util/concurrent/Executor;Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V

    .line 280
    .local v0, "delegate":Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    :try_start_16
    iget-object v1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v1, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->registerAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_22

    .line 283
    nop

    .line 285
    iget-object v1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void

    .line 281
    :catch_22
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist setAdvancedProtectionEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 320
    :try_start_0
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v0, p1}, Landroid/security/advancedprotection/IAdvancedProtectionService;->setAdvancedProtectionEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 323
    nop

    .line 324
    return-void

    .line 321
    :catch_7
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;

    .line 295
    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    .line 296
    .local v0, "delegate":Landroid/security/advancedprotection/IAdvancedProtectionCallback;
    if-nez v0, :cond_13

    .line 297
    const-string v1, "AdvancedProtectionMgr"

    const-string/jumbo v2, "unregisterAdvancedProtectionCallback callback not present"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 302
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v1, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_1f

    .line 305
    nop

    .line 307
    iget-object v1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-void

    .line 303
    :catch_1f
    move-exception v1

    .line 304
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
