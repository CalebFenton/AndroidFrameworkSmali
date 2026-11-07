.class public final Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserServiceSupplier.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
        "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field private static final blacklist EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field private static final blacklist NO_MATCH_PACKAGE:Ljava/lang/String; = ""

.field private static final blacklist TAG:Ljava/lang/String; = "CurrentUserServiceSupplier"

.field private static final blacklist sBoundServiceInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityManager:Landroid/app/ActivityManagerInternal;

.field private final blacklist mCallerPermission:Ljava/lang/String;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private volatile blacklist mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

.field private final blacklist mMatchSystemAppsOnly:Z

.field private final blacklist mServicePermission:Ljava/lang/String;

.field private blacklist mUnstableService:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->sBoundServiceInfoComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "explicitPackage"    # Ljava/lang/String;
    .param p4, "callerPermission"    # Ljava/lang/String;
    .param p5, "servicePermission"    # Ljava/lang/String;
    .param p6, "matchSystemAppsOnly"    # Z

    .line 240
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    .line 242
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 243
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 242
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 246
    if-eqz p3, :cond_23

    .line 247
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :cond_23
    iput-object p4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    .line 251
    iput-object p5, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    .line 252
    iput-boolean p6, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    .line 253
    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "explicitPackage"    # Ljava/lang/String;
    .param p3, "callerPermission"    # Ljava/lang/String;
    .param p4, "servicePermission"    # Ljava/lang/String;

    .line 183
    const/4 v6, 0x1

    .line 184
    .local v6, "matchSystemAppsOnly":Z
    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "explicitPackage":Ljava/lang/String;
    .end local p3    # "callerPermission":Ljava/lang/String;
    .end local p4    # "servicePermission":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "action":Ljava/lang/String;
    .local v3, "explicitPackage":Ljava/lang/String;
    .local v4, "callerPermission":Ljava/lang/String;
    .local v5, "servicePermission":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableOverlayResId"    # I
    .param p3, "nonOverlayPackageResId"    # I

    .line 162
    invoke-static {p0, p2, p3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->retrieveExplicitPackage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "explicitPackage":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist createUnsafeForTestsOnly(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "explicitPackage"    # Ljava/lang/String;
    .param p3, "callerPermission"    # Ljava/lang/String;
    .param p4, "servicePermission"    # Ljava/lang/String;

    .line 197
    const/4 v6, 0x0

    .line 198
    .local v6, "matchSystemAppsOnly":Z
    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "explicitPackage":Ljava/lang/String;
    .end local p3    # "callerPermission":Ljava/lang/String;
    .end local p4    # "servicePermission":Ljava/lang/String;
    .local v1, "context":Landroid/content/Context;
    .local v2, "action":Ljava/lang/String;
    .local v3, "explicitPackage":Ljava/lang/String;
    .local v4, "callerPermission":Ljava/lang/String;
    .local v5, "servicePermission":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)I
    .registers 4
    .param p0, "o1"    # Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    .param p1, "o2"    # Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 82
    if-ne p0, p1, :cond_4

    .line 83
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_4
    if-nez p0, :cond_8

    .line 85
    const/4 v0, -0x1

    return v0

    .line 86
    :cond_8
    if-nez p1, :cond_c

    .line 87
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getVersion()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 94
    .local v0, "ret":I
    if-nez v0, :cond_35

    .line 95
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v1

    if-nez v1, :cond_28

    .line 96
    const/4 v0, -0x1

    goto :goto_35

    .line 97
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v1

    if-eqz v1, :cond_35

    .line 98
    const/4 v0, 0x1

    .line 101
    :cond_35
    :goto_35
    return v0
.end method

.method private static blacklist retrieveExplicitPackage(Landroid/content/Context;II)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enableOverlayResId"    # I
    .param p2, "nonOverlayPackageResId"    # I

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 206
    .local v1, "enableOverlay":Z
    if-nez v1, :cond_2c

    .line 207
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->fixServiceWatcher()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 209
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 210
    .local v2, "out":Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 211
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    .line 212
    .local v3, "explicitPackage":Ljava/lang/CharSequence;
    if-nez v3, :cond_22

    .line 213
    const-string v4, ""

    return-object v4

    .line 215
    :cond_22
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 218
    .end local v2    # "out":Landroid/util/TypedValue;
    .end local v3    # "explicitPackage":Ljava/lang/CharSequence;
    :cond_27
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 221
    :cond_2c
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public blacklist alertUnstableService(Ljava/lang/String;)V
    .registers 2
    .param p1, "unstableService"    # Ljava/lang/String;

    .line 364
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public blacklist getServiceInfo()Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    .registers 14

    .line 296
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->fixServiceWatcher()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 297
    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_16
    const/4 v0, 0x0

    .line 303
    .local v0, "bestServiceInfo":Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    const v1, 0x10000080

    .line 304
    .local v1, "intentQueryFlags":I
    iget-boolean v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    if-eqz v2, :cond_21

    .line 305
    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    .line 307
    :cond_21
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    .line 308
    .local v2, "currentUserId":I
    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 312
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 313
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ServiceInfo;

    .line 315
    .local v6, "service":Landroid/content/pm/ServiceInfo;
    iget-object v7, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    const-string v8, "CurrentUserServiceSupplier"

    if-eqz v7, :cond_80

    .line 316
    iget-object v7, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " disqualified due to not requiring "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    goto :goto_37

    .line 323
    :cond_80
    new-instance v7, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    iget-object v9, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, v5}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    .line 325
    .local v7, "serviceInfo":Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    iget-object v9, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    if-eqz v9, :cond_c2

    .line 326
    iget-object v9, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    const/4 v11, -0x1

    iget v12, v7, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_c2

    .line 328
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " disqualified due to not holding "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    goto/16 :goto_37

    .line 335
    :cond_c2
    iget-object v9, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    if-eqz v9, :cond_131

    if-eqz v0, :cond_131

    .line 336
    iget-object v9, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fc

    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not choosing unstable service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " as we already have a service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 338
    invoke-virtual {v0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 337
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    goto/16 :goto_37

    .line 340
    :cond_fc
    iget-object v9, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_131

    .line 341
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Choosing service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " over the unstable service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    move-object v0, v7

    .line 344
    goto/16 :goto_37

    .line 348
    :cond_131
    sget-object v8, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->sBoundServiceInfoComparator:Ljava/util/Comparator;

    invoke-interface {v8, v7, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_13a

    .line 349
    move-object v0, v7

    .line 351
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "service":Landroid/content/pm/ServiceInfo;
    .end local v7    # "serviceInfo":Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    :cond_13a
    goto/16 :goto_37

    .line 353
    :cond_13c
    return-object v0
.end method

.method public bridge synthetic blacklist getServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->getServiceInfo()Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasMatchingService()Z
    .registers 5

    .line 257
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->fixServiceWatcher()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 258
    return v1

    .line 261
    :cond_16
    const/high16 v0, 0xc0000

    .line 262
    .local v0, "intentQueryFlags":I
    iget-boolean v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    if-eqz v2, :cond_1f

    .line 263
    const/high16 v2, 0x100000

    or-int/2addr v0, v2

    .line 265
    :cond_1f
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 266
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 269
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 371
    return-void

    .line 373
    :cond_7
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 374
    .local v1, "userId":I
    if-ne v1, v2, :cond_12

    .line 375
    return-void

    .line 377
    :cond_12
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 378
    .local v2, "listener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;
    if-nez v2, :cond_17

    .line 379
    return-void

    .line 382
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4a

    :cond_1e
    goto :goto_33

    :sswitch_1f
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    goto :goto_34

    :sswitch_29
    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_34

    :goto_33
    const/4 v3, -0x1

    :goto_34
    packed-switch v3, :pswitch_data_54

    goto :goto_48

    .line 388
    :pswitch_38
    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v3

    if-ne v1, v3, :cond_48

    .line 389
    invoke-interface {v2}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;->onServiceChanged()V

    goto :goto_48

    .line 384
    :pswitch_44
    invoke-interface {v2}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;->onServiceChanged()V

    .line 385
    nop

    .line 395
    :cond_48
    :goto_48
    return-void

    nop

    :sswitch_data_4a
    .sparse-switch
        0x31af1c32 -> :sswitch_29
        0x392cb822 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_44
        :pswitch_38
    .end packed-switch
.end method

.method public blacklist register(Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 274
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 276
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 278
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v4, v0

    .line 279
    .local v4, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const/16 v0, 0x3e8

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 282
    iget-object v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 283
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 282
    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 284
    return-void
.end method

.method public blacklist unregister()V
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 291
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    return-void
.end method
