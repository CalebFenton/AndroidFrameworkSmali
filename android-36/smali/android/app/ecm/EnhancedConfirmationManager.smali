.class public final Landroid/app/ecm/EnhancedConfirmationManager;
.super Ljava/lang/Object;
.source "EnhancedConfirmationManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ecm/EnhancedConfirmationManager$EcmState;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_SHOW_ECM_RESTRICTED_SETTING_DIALOG:Ljava/lang/String; = "android.app.ecm.action.SHOW_ECM_RESTRICTED_SETTING_DIALOG"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist PROTECTED_SETTINGS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REASON_PACKAGE_RESTRICTED:Ljava/lang/String; = "package_restricted"

.field public static final blacklist REASON_PHONE_STATE:Ljava/lang/String; = "phone_state"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mPackageManager:Landroid/content/pm/PackageManager;

.field private final blacklist mService:Landroid/app/ecm/IEnhancedConfirmationManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 231
    const-class v0, Landroid/app/ecm/EnhancedConfirmationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/ecm/EnhancedConfirmationManager;->LOG_TAG:Ljava/lang/String;

    .line 233
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/app/ecm/EnhancedConfirmationManager;->PROTECTED_SETTINGS:Landroid/util/ArraySet;

    .line 236
    sget-object v0, Landroid/app/ecm/EnhancedConfirmationManager;->PROTECTED_SETTINGS:Landroid/util/ArraySet;

    const-string v1, "android:bind_accessibility_service"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 238
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/ecm/IEnhancedConfirmationManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/ecm/IEnhancedConfirmationManager;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mContext:Landroid/content/Context;

    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 252
    iput-object p2, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mService:Landroid/app/ecm/IEnhancedConfirmationManager;

    .line 253
    return-void
.end method

.method private blacklist getPackageUid(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mContext:Landroid/content/Context;

    .line 382
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 381
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method


# virtual methods
.method public whitelist clearRestriction(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 293
    :try_start_0
    iget-object v0, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mService:Landroid/app/ecm/IEnhancedConfirmationManager;

    iget-object v1, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/ecm/IEnhancedConfirmationManager;->clearRestriction(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 298
    nop

    .line 299
    return-void

    .line 296
    :catch_11
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 294
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist createRestrictedSettingDialogIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "settingIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.ecm.action.SHOW_ECM_RESTRICTED_SETTING_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    invoke-direct {p0, p1}, Landroid/app/ecm/EnhancedConfirmationManager;->getPackageUid(Ljava/lang/String;)I

    move-result v1

    .line 367
    .local v1, "uid":I
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    :try_start_1a
    iget-object v2, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mService:Landroid/app/ecm/IEnhancedConfirmationManager;

    .line 371
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 370
    invoke-interface {v2, p1, p2, v3}, Landroid/app/ecm/IEnhancedConfirmationManager;->getRestrictionReason(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "restrictionReason":Ljava/lang/String;
    const-string v3, "android.intent.extra.REASON"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2d
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_2d} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2d} :catch_2f

    .line 376
    nop

    .end local v2    # "restrictionReason":Ljava/lang/String;
    goto :goto_30

    .line 373
    :catch_2f
    move-exception v2

    .line 377
    :goto_30
    return-object v0
.end method

.method public whitelist isClearRestrictionAllowed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 317
    :try_start_0
    iget-object v0, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mService:Landroid/app/ecm/IEnhancedConfirmationManager;

    iget-object v1, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 317
    invoke-interface {v0, p1, v1}, Landroid/app/ecm/IEnhancedConfirmationManager;->isClearRestrictionAllowed(Ljava/lang/String;I)Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 321
    :catch_11
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isRestricted(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "settingIdentifier"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 271
    :try_start_0
    iget-object v0, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mService:Landroid/app/ecm/IEnhancedConfirmationManager;

    iget-object v1, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mContext:Landroid/content/Context;

    .line 272
    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 271
    invoke-interface {v0, p1, p2, v1}, Landroid/app/ecm/IEnhancedConfirmationManager;->isRestricted(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_10} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return v0

    .line 275
    :catch_11
    move-exception v0

    .line 276
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setClearRestrictionAllowed(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mService:Landroid/app/ecm/IEnhancedConfirmationManager;

    iget-object v1, p0, Landroid/app/ecm/EnhancedConfirmationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/ecm/IEnhancedConfirmationManager;->setClearRestrictionAllowed(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_f} :catch_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    .line 347
    nop

    .line 348
    return-void

    .line 345
    :catch_11
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_17
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v1, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
