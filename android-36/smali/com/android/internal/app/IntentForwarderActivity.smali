.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IntentForwarderActivity$Injector;,
        Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;
    }
.end annotation


# static fields
.field private static final blacklist ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_SKIP_USER_CONFIRMATION:Ljava/lang/String; = "com.android.internal.app.EXTRA_SKIP_USER_CONFIRMATION"

.field public static blacklist FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String; = null

.field public static blacklist FORWARD_INTENT_TO_PARENT:Ljava/lang/String; = null

.field private static final blacklist RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static greylist-max-r TAG:Ljava/lang/String; = null

.field private static final blacklist TEL_SCHEME:Ljava/lang/String; = "tel"


# instance fields
.field protected blacklist mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private blacklist mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

.field private blacklist mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public static synthetic blacklist $r8$lambda$0hcY2bSsvhsO0uSE7N2yNdZqKcA(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getOpenInWorkMessage$6()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$1PQBLc64m4jEkb0W9YLJRuaQ7O4(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getForwardToWorkMessage$11()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$4B4TW-NWfsMvambXu92KuIUtPVI(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;ILandroid/view/View;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildMiniResolver$4(Landroid/content/Intent;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6nbD4uXbFVbAJDvC34Kras_NUHQ(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildAndExecuteForPrivateProfile$2(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AIC0F7pD1w8JZynzPklJpHgJn8E(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getForwardToPersonalMessage$10()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$DteU3l19bC1Rcku1FIRt1HqyuII(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;Landroid/content/pm/ResolveInfo;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildAndExecute$1(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VZL_aJxYqLtaKA0I_ylNEWkzVDA(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getWorkTelephonyInfoSectionMessage$9()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Zmp_Ag7wGqdFSDb_KODU_CNc4k4(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getWorkTelephonyInfoSectionMessage$8()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$pFXbvuMUDM3xSLrp4NnmoVgeoUU(Lcom/android/internal/app/IntentForwarderActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildMiniResolver$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qKW2xdvY9Vuo4MJ2AwVYUbnOn9o(Lcom/android/internal/app/IntentForwarderActivity;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getOpenInWorkMessage$5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xqInTMdKuDpvQzfA7mP_CUIMXwU(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$buildAndExecute$0(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zOE_9CeOMzpWiiDA4exCHseBb2E(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$getOpenInWorkMessage$7(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 92
    const-string v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 94
    const-string v0, "com.android.internal.app.ForwardIntentToParent"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 97
    const-string v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "mms"

    const-string v2, "mmsto"

    const-string/jumbo v3, "sms"

    const-string/jumbo v4, "smsto"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;

    .line 109
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/internal/app/ResolverActivity;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 109
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private blacklist buildAndExecute(Ljava/util/concurrent/CompletableFuture;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/UserInfo;)V
    .registers 16
    .param p2, "intentReceived"    # Landroid/content/Intent;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "newIntent"    # Landroid/content/Intent;
    .param p5, "callingUserId"    # I
    .param p6, "targetUserId"    # I
    .param p7, "userMessage"    # Ljava/lang/String;
    .param p8, "managedProfile"    # Landroid/content/pm/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "II",
            "Ljava/lang/String;",
            "Landroid/content/pm/UserInfo;",
            ")V"
        }
    .end annotation

    .line 200
    .local p1, "targetResolveInfoFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .end local p2    # "intentReceived":Landroid/content/Intent;
    .end local p3    # "className":Ljava/lang/String;
    .end local p4    # "newIntent":Landroid/content/Intent;
    .end local p5    # "callingUserId":I
    .end local p6    # "targetUserId":I
    .local v2, "intentReceived":Landroid/content/Intent;
    .local v3, "className":Ljava/lang/String;
    .local v4, "newIntent":Landroid/content/Intent;
    .local v5, "callingUserId":I
    .local v6, "targetUserId":I
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V

    move-object p3, v1

    move-object p5, v2

    move-object p4, v3

    .end local v2    # "intentReceived":Landroid/content/Intent;
    .end local v3    # "className":Ljava/lang/String;
    .local p4, "className":Ljava/lang/String;
    .local p5, "intentReceived":Landroid/content/Intent;
    iget-object p2, p3, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 201
    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/CompletableFuture;->thenApplyAsync(Ljava/util/function/Function;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance p2, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda11;

    move-object p6, p7

    move-object p7, v4

    .end local v4    # "newIntent":Landroid/content/Intent;
    .local p6, "userMessage":Ljava/lang/String;
    .local p7, "newIntent":Landroid/content/Intent;
    invoke-direct/range {p2 .. p8}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V

    .line 220
    .end local p7    # "newIntent":Landroid/content/Intent;
    .restart local v4    # "newIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 211
    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 221
    return-void
.end method

.method private blacklist buildAndExecuteForPrivateProfile(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V
    .registers 14
    .param p1, "intentReceived"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "newIntent"    # Landroid/content/Intent;
    .param p4, "callingUserId"    # I
    .param p5, "targetUserId"    # I

    .line 226
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 227
    const/high16 v1, 0x10000

    invoke-interface {v0, p3, v1, p5}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 228
    .local v0, "targetResolveInfoFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .end local p1    # "intentReceived":Landroid/content/Intent;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "newIntent":Landroid/content/Intent;
    .end local p4    # "callingUserId":I
    .end local p5    # "targetUserId":I
    .local v3, "intentReceived":Landroid/content/Intent;
    .local v4, "className":Ljava/lang/String;
    .local v5, "newIntent":Landroid/content/Intent;
    .local v6, "callingUserId":I
    .local v7, "targetUserId":I
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 229
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CompletableFuture;->thenAcceptAsync(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    .line 238
    return-void
.end method

.method private blacklist buildMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILjava/lang/String;Landroid/content/pm/PackageManager;)V
    .registers 11
    .param p1, "target"    # Landroid/content/pm/ResolveInfo;
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "targetUserId"    # I
    .param p4, "resolverTitle"    # Ljava/lang/String;
    .param p5, "pmForTargetUser"    # Landroid/content/pm/PackageManager;

    .line 337
    const v0, 0x10900b4

    .line 338
    .local v0, "layoutId":I
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->setContentView(I)V

    .line 340
    const v1, 0x102059e

    invoke-virtual {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    .line 342
    const v1, 0x1020006

    invoke-virtual {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 343
    .local v1, "icon":Landroid/widget/ImageView;
    nop

    .line 344
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/internal/app/IntentForwarderActivity;->getAppIcon(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 343
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->setMiniresolverPadding()V

    .line 348
    const v2, 0x102044a

    invoke-virtual {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    const v2, 0x10205de

    invoke-virtual {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 353
    invoke-virtual {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    const v2, 0x102025d

    invoke-virtual {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p2, p3}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    return-void
.end method

.method static blacklist canForward(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Landroid/content/Intent;
    .registers 8
    .param p0, "incomingIntent"    # Landroid/content/Intent;
    .param p1, "sourceUserId"    # I
    .param p2, "targetUserId"    # I
    .param p3, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p4, "contentResolver"    # Landroid/content/ContentResolver;

    .line 597
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 598
    .local v0, "forwardIntent":Landroid/content/Intent;
    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 600
    invoke-static {v0}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 602
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IntentForwarderActivity;->canForwardInner(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    .line 604
    return-object v2

    .line 606
    :cond_15
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 607
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 608
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IntentForwarderActivity;->canForwardInner(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 610
    return-object v2

    .line 613
    :cond_2d
    return-object v0
.end method

.method private static blacklist canForwardInner(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Z
    .registers 10
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "sourceUserId"    # I
    .param p2, "targetUserId"    # I
    .param p3, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p4, "contentResolver"    # Landroid/content/ContentResolver;

    .line 618
    const-string v0, "android.intent.action.CHOOSER"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 619
    return v1

    .line 621
    :cond_e
    invoke-virtual {p0, p4}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "resolvedType":Ljava/lang/String;
    :try_start_12
    invoke-interface {p3, p0, v0, p1, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_1b

    if-eqz v2, :cond_1a

    .line 625
    const/4 v1, 0x1

    return v1

    .line 629
    :cond_1a
    goto :goto_23

    .line 627
    :catch_1b
    move-exception v2

    .line 628
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v4, "PackageManagerService is dead?"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_23
    return v1
.end method

.method private blacklist findSelectedProfile(Ljava/lang/String;)I
    .registers 3
    .param p1, "className"    # Ljava/lang/String;

    .line 538
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 539
    const/4 v0, 0x0

    return v0

    .line 540
    :cond_a
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 541
    const/4 v0, 0x1

    return v0

    .line 543
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getAppIcon(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILandroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "target"    # Landroid/content/pm/ResolveInfo;
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "targetUserId"    # I
    .param p4, "packageManagerForTargetUser"    # Landroid/content/pm/PackageManager;

    .line 375
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 379
    nop

    .line 380
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 381
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    nop

    .line 382
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "defaultDialerPackageName":Ljava/lang/String;
    nop

    .line 385
    const/4 v2, 0x0

    :try_start_1e
    invoke-virtual {p4, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 386
    invoke-virtual {v2, p4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_26} :catch_27

    .line 384
    return-object v2

    .line 387
    :catch_27
    move-exception v2

    .line 390
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v4, "Cannot load icon for default dialer package"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    .end local v1    # "defaultDialerPackageName":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2f
    invoke-virtual {p1, p4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToPersonalMessage()Ljava/lang/String;
    .registers 4

    .line 440
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getForwardToWorkMessage()Ljava/lang/String;
    .registers 4

    .line 446
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.FORWARD_INTENT_TO_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getManagedProfile()Landroid/content/pm/UserInfo;
    .registers 5

    .line 639
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 640
    .local v0, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 641
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_25

    return-object v2

    .line 642
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_25
    goto :goto_12

    .line 643
    :cond_26
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been called, but there is no managed profile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getOpenInWorkButtonString(Landroid/content/Intent;)I
    .registers 3
    .param p1, "launchIntent"    # Landroid/content/Intent;

    .line 397
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 398
    const v0, 0x104066a

    return v0

    .line 400
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 401
    const v0, 0x1040673

    return v0

    .line 403
    :cond_14
    const v0, 0x1040ad3

    return v0
.end method

.method private blacklist getOpenInWorkMessage(Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "targetLabel"    # Ljava/lang/CharSequence;

    .line 407
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 408
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.MINIRESOLVER_CALL_FROM_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 412
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 413
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    const-string v2, "Core.MINIRESOLVER_SWITCH_TO_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 417
    :cond_3c
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p2}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Ljava/lang/CharSequence;)V

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Core.MINIRESOLVER_OPEN_WORK"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getPrivateProfile()Landroid/content/pm/UserInfo;
    .registers 5

    .line 653
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 654
    .local v0, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 655
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrivateProfile()Z

    move-result v3

    if-eqz v3, :cond_25

    return-object v2

    .line 656
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_25
    goto :goto_12

    .line 657
    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getProfileParent()I
    .registers 5

    .line 665
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    invoke-interface {v0}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 666
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_2d

    .line 667
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been called, but there is no parent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/16 v1, -0x2710

    return v1

    .line 671
    :cond_2d
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    return v1
.end method

.method private blacklist getWorkTelephonyInfoSectionMessage(Landroid/content/Intent;)Ljava/lang/String;
    .registers 5
    .param p1, "launchIntent"    # Landroid/content/Intent;

    .line 424
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v0

    const-string v1, "Core.MINIRESOLVER_WORK_TELEPHONY_INFORMATION"

    if-eqz v0, :cond_1e

    .line 425
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v2, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 429
    :cond_1e
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 430
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v2, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/IntentForwarderActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 434
    :cond_3a
    const-string v0, ""

    return-object v0
.end method

.method private blacklist isDeviceProvisioned()Z
    .registers 4

    .line 561
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    :cond_e
    return v2
.end method

.method private blacklist isDialerIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 571
    const-string v0, "android.intent.action.DIAL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 572
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 573
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 574
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 575
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isViewActionIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string/jumbo v0, "tel"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_46

    :cond_44
    const/4 v0, 0x0

    goto :goto_47

    :cond_46
    :goto_46
    const/4 v0, 0x1

    .line 571
    :goto_47
    return v0
.end method

.method private blacklist isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z
    .registers 6
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 452
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 453
    return v0

    .line 455
    :cond_4
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 456
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-nez v1, :cond_9

    .line 457
    return v0

    .line 459
    :cond_9
    const-string v2, "android"

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 460
    return v0

    .line 462
    :cond_14
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    :cond_28
    const/4 v0, 0x1

    .line 462
    :cond_29
    return v0
.end method

.method private blacklist isPrivateProfile(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 691
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPrivateProfile()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 692
    .local v0, "privateProfile":Landroid/content/pm/UserInfo;
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->privateSpaceFlagsEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_12

    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, p1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private blacklist isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z
    .registers 4
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 467
    if-eqz p1, :cond_16

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->RESOLVER_COMPONENT_NAME:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 469
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 467
    :goto_17
    return v0
.end method

.method private blacklist isTargetResolverOrChooserActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 584
    const-string v0, "android"

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 585
    return v1

    .line 587
    :cond_c
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-class v0, Lcom/android/internal/app/ChooserActivity;

    .line 588
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    const/4 v1, 0x1

    .line 587
    :cond_29
    return v1
.end method

.method private blacklist isTextMessageIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 566
    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isViewActionIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_12
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->ALLOWED_TEXT_MESSAGE_SCHEMES:Ljava/util/Set;

    .line 567
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 566
    :goto_21
    return v0
.end method

.method private blacklist isViewActionIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 579
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 580
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 579
    :goto_17
    return v0
.end method

.method private synthetic blacklist lambda$buildAndExecute$0(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .registers 15
    .param p1, "intentReceived"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "newIntent"    # Landroid/content/Intent;
    .param p4, "callingUserId"    # I
    .param p5, "targetUserId"    # I
    .param p6, "targetResolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 202
    invoke-direct {p0, p6}, Lcom/android/internal/app/IntentForwarderActivity;->isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 203
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "intentReceived":Landroid/content/Intent;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "newIntent":Landroid/content/Intent;
    .end local p4    # "callingUserId":I
    .end local p5    # "targetUserId":I
    .local v2, "intentReceived":Landroid/content/Intent;
    .local v3, "className":Ljava/lang/String;
    .local v4, "newIntent":Landroid/content/Intent;
    .local v5, "callingUserId":I
    .local v6, "targetUserId":I
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/IntentForwarderActivity;->launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IIZ)V

    goto :goto_22

    .line 206
    .end local v2    # "intentReceived":Landroid/content/Intent;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "newIntent":Landroid/content/Intent;
    .end local v5    # "callingUserId":I
    .end local v6    # "targetUserId":I
    .restart local p1    # "intentReceived":Landroid/content/Intent;
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "newIntent":Landroid/content/Intent;
    .restart local p4    # "callingUserId":I
    .restart local p5    # "targetUserId":I
    :cond_11
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "intentReceived":Landroid/content/Intent;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "newIntent":Landroid/content/Intent;
    .end local p4    # "callingUserId":I
    .end local p5    # "targetUserId":I
    .restart local v2    # "intentReceived":Landroid/content/Intent;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "newIntent":Landroid/content/Intent;
    .restart local v5    # "callingUserId":I
    .restart local v6    # "targetUserId":I
    sget-object p1, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 207
    invoke-direct {p0, v4, v6}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;I)V

    .line 209
    :cond_22
    :goto_22
    return-object p6
.end method

.method private synthetic blacklist lambda$buildAndExecute$1(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/UserInfo;Landroid/content/pm/ResolveInfo;)V
    .registers 8
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "intentReceived"    # Landroid/content/Intent;
    .param p3, "userMessage"    # Ljava/lang/String;
    .param p4, "newIntent"    # Landroid/content/Intent;
    .param p5, "managedProfile"    # Landroid/content/pm/UserInfo;
    .param p6, "result"    # Landroid/content/pm/ResolveInfo;

    .line 213
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 214
    invoke-direct {p0, p2, p6, p3}, Lcom/android/internal/app/IntentForwarderActivity;->maybeShowDisclosure(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    goto :goto_1a

    .line 217
    :cond_f
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 218
    invoke-direct {p0, p6, p4, p5}, Lcom/android/internal/app/IntentForwarderActivity;->maybeShowUserConsentMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V

    .line 220
    :cond_1a
    :goto_1a
    return-void
.end method

.method private synthetic blacklist lambda$buildAndExecuteForPrivateProfile$2(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)V
    .registers 15
    .param p1, "intentReceived"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "newIntent"    # Landroid/content/Intent;
    .param p4, "callingUserId"    # I
    .param p5, "targetUserId"    # I
    .param p6, "targetResolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 230
    invoke-direct {p0, p6}, Lcom/android/internal/app/IntentForwarderActivity;->isResolverActivityResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 231
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "intentReceived":Landroid/content/Intent;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "newIntent":Landroid/content/Intent;
    .end local p4    # "callingUserId":I
    .end local p5    # "targetUserId":I
    .local v2, "intentReceived":Landroid/content/Intent;
    .local v3, "className":Ljava/lang/String;
    .local v4, "newIntent":Landroid/content/Intent;
    .local v5, "callingUserId":I
    .local v6, "targetUserId":I
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/IntentForwarderActivity;->launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IIZ)V

    goto :goto_1a

    .line 234
    .end local v2    # "intentReceived":Landroid/content/Intent;
    .end local v3    # "className":Ljava/lang/String;
    .end local v4    # "newIntent":Landroid/content/Intent;
    .end local v5    # "callingUserId":I
    .end local v6    # "targetUserId":I
    .restart local p1    # "intentReceived":Landroid/content/Intent;
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "newIntent":Landroid/content/Intent;
    .restart local p4    # "callingUserId":I
    .restart local p5    # "targetUserId":I
    :cond_11
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .end local p1    # "intentReceived":Landroid/content/Intent;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "newIntent":Landroid/content/Intent;
    .end local p4    # "callingUserId":I
    .end local p5    # "targetUserId":I
    .restart local v2    # "intentReceived":Landroid/content/Intent;
    .restart local v3    # "className":Ljava/lang/String;
    .restart local v4    # "newIntent":Landroid/content/Intent;
    .restart local v5    # "callingUserId":I
    .restart local v6    # "targetUserId":I
    invoke-direct {p0, p6, v4, v6}, Lcom/android/internal/app/IntentForwarderActivity;->maybeShowUserConsentMiniResolverPrivate(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;I)V

    .line 237
    :goto_1a
    return-void
.end method

.method private synthetic blacklist lambda$buildMiniResolver$3(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .line 353
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void
.end method

.method private synthetic blacklist lambda$buildMiniResolver$4(Landroid/content/Intent;ILandroid/view/View;)V
    .registers 7
    .param p1, "launchIntent"    # Landroid/content/Intent;
    .param p2, "targetUserId"    # I
    .param p3, "v"    # Landroid/view/View;

    .line 356
    invoke-static {p1}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 357
    nop

    .line 360
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 359
    const v1, 0x10a000f

    const v2, 0x10a007c

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 357
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 367
    return-void
.end method

.method private synthetic blacklist lambda$getForwardToPersonalMessage$10()Ljava/lang/String;
    .registers 2

    .line 442
    const v0, 0x1040469

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getForwardToWorkMessage$11()Ljava/lang/String;
    .registers 2

    .line 448
    const v0, 0x104046a

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getOpenInWorkMessage$5()Ljava/lang/String;
    .registers 2

    .line 410
    const v0, 0x104066b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getOpenInWorkMessage$6()Ljava/lang/String;
    .registers 2

    .line 415
    const v0, 0x1040674

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getOpenInWorkMessage$7(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p1, "targetLabel"    # Ljava/lang/CharSequence;

    .line 419
    const v0, 0x104066f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkTelephonyInfoSectionMessage$8()Ljava/lang/String;
    .registers 2

    .line 427
    const v0, 0x104066c

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getWorkTelephonyInfoSectionMessage$9()Ljava/lang/String;
    .registers 2

    .line 432
    const v0, 0x1040672

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist launchChooserActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 8
    .param p1, "intentReceived"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;

    .line 499
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->findSelectedProfile(Ljava/lang/String;)I

    move-result v0

    .line 500
    .local v0, "selectedProfile":I
    invoke-static {p1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 501
    const-string v1, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v1, "android.intent.extra.INTENT"

    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 503
    .local v1, "innerIntent":Landroid/content/Intent;
    if-nez v1, :cond_20

    .line 504
    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string v3, "Cannot start a chooser intent with no extra android.intent.extra.INTENT"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void

    .line 507
    :cond_20
    invoke-static {v1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 508
    invoke-static {p1}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 509
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 510
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 511
    return-void
.end method

.method private blacklist launchResolverActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IIZ)V
    .registers 12
    .param p1, "intentReceived"    # Landroid/content/Intent;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "newIntent"    # Landroid/content/Intent;
    .param p4, "callingUserId"    # I
    .param p5, "targetUserId"    # I
    .param p6, "singleTabOnly"    # Z

    .line 521
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/high16 v1, 0x10000

    invoke-interface {v0, p3, v1, p4}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 523
    .local v0, "callingResolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 524
    move v1, p5

    goto :goto_17

    :cond_16
    move v1, p4

    .line 525
    .local v1, "userId":I
    :goto_17
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->findSelectedProfile(Ljava/lang/String;)I

    move-result v2

    .line 526
    .local v2, "selectedProfile":I
    invoke-static {p1}, Lcom/android/internal/app/IntentForwarderActivity;->sanitizeIntent(Landroid/content/Intent;)V

    .line 527
    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_SELECTED_PROFILE"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_CALLING_USER"

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 529
    if-eqz p6, :cond_34

    .line 530
    const-string v3, "com.android.internal.app.ResolverActivity.EXTRA_RESTRICT_TO_SINGLE_USER"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 532
    :cond_34
    invoke-static {p1}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 533
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 534
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 535
    return-void
.end method

.method private blacklist maybeShowDisclosure(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "intentReceived"    # Landroid/content/Intent;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p3, "message"    # Ljava/lang/String;

    .line 474
    invoke-direct {p0, p2, p1}, Lcom/android/internal/app/IntentForwarderActivity;->shouldShowDisclosure(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p3, :cond_e

    .line 475
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->showToast(Ljava/lang/String;I)V

    .line 477
    :cond_e
    return-void
.end method

.method private blacklist maybeShowUserConsentMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/content/pm/UserInfo;)V
    .registers 18
    .param p1, "target"    # Landroid/content/pm/ResolveInfo;
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "managedProfile"    # Landroid/content/pm/UserInfo;

    .line 242
    move-object/from16 v2, p2

    move-object/from16 v6, p3

    if-eqz p1, :cond_f3

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/app/IntentForwarderActivity;->isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-nez v0, :cond_f3

    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_f3

    .line 247
    :cond_14
    if-nez v6, :cond_19

    const/16 v0, -0x2710

    goto :goto_1b

    :cond_19
    iget v0, v6, Landroid/content/pm/UserInfo;->id:I

    :goto_1b
    move v3, v0

    .line 248
    .local v3, "targetUserId":I
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v7

    .line 249
    .local v7, "callingPackage":Ljava/lang/String;
    nop

    .line 250
    const-string v0, "com.android.internal.app.EXTRA_SKIP_USER_CONFIRMATION"

    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_3b

    if-eqz v7, :cond_3b

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v4, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3b

    move v0, v9

    goto :goto_3c

    :cond_3b
    move v0, v8

    :goto_3c
    move v10, v0

    .line 256
    .local v10, "privilegedCallerAskedToSkipUserConsent":Z
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 258
    .local v11, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v11, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v12

    .line 259
    .local v12, "profileOwnerName":Landroid/content/ComponentName;
    if-eqz v12, :cond_5e

    .line 260
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v0, v9

    goto :goto_5f

    :cond_5e
    move v0, v8

    :goto_5f
    move v13, v0

    .line 262
    .local v13, "intentToLaunchProfileOwner":Z
    const-string v0, "IntentForwarderActivity"

    if-nez v10, :cond_d6

    if-eqz v13, :cond_67

    goto :goto_d6

    .line 274
    :cond_67
    const-string v4, "Showing user consent for redirection into the managed profile for intent [%s] and  calling package [%s]"

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    nop

    .line 279
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/android/internal/app/IntentForwarderActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 281
    .local v5, "packageManagerForTargetUser":Landroid/content/pm/PackageManager;
    nop

    .line 282
    invoke-virtual {p1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/app/IntentForwarderActivity;->getOpenInWorkMessage(Landroid/content/Intent;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 281
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/IntentForwarderActivity;->buildMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILjava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 285
    const v0, 0x102025d

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->getOpenInWorkButtonString(Landroid/content/Intent;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 287
    const v0, 0x10203f5

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, "telephonyInfo":Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_b2

    invoke-direct {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 292
    :cond_b2
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/admin/ManagedSubscriptionsPolicy;->getPolicyType()I

    move-result v4

    if-ne v4, v9, :cond_d0

    .line 294
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 295
    const v4, 0x10203f7

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 296
    invoke-direct {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->getWorkTelephonyInfoSectionMessage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d5

    .line 298
    :cond_d0
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :goto_d5
    return-void

    .line 263
    .end local v0    # "telephonyInfo":Landroid/view/View;
    .end local v5    # "packageManagerForTargetUser":Landroid/content/pm/PackageManager;
    :cond_d6
    :goto_d6
    nop

    .line 267
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 268
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v2, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 263
    const-string v5, "Skipping user consent for redirection into the managed profile for intent [%s], privilegedCallerAskedToSkipUserConsent=[%s], intentToLaunchProfileOwner=[%s]"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;I)V

    .line 270
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 271
    return-void

    .line 243
    .end local v3    # "targetUserId":I
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v10    # "privilegedCallerAskedToSkipUserConsent":Z
    .end local v11    # "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    .end local v12    # "profileOwnerName":Landroid/content/ComponentName;
    .end local v13    # "intentToLaunchProfileOwner":Z
    :cond_f3
    :goto_f3
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 244
    return-void
.end method

.method private blacklist maybeShowUserConsentMiniResolverPrivate(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;I)V
    .registers 13
    .param p1, "target"    # Landroid/content/pm/ResolveInfo;
    .param p2, "launchIntent"    # Landroid/content/Intent;
    .param p3, "targetUserId"    # I

    .line 304
    if-eqz p1, :cond_72

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->isIntentForwarderResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    goto :goto_76

    .line 309
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "callingPackage":Ljava/lang/String;
    const-string v1, "Showing user consent for redirection into the main profile for intent [%s] and  calling package [%s]"

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IntentForwarderActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    nop

    .line 316
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IntentForwarderActivity;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 318
    .local v8, "packageManagerForTargetUser":Landroid/content/pm/PackageManager;
    nop

    .line 320
    invoke-virtual {p1, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 319
    const v3, 0x104066d

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 318
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .end local p1    # "target":Landroid/content/pm/ResolveInfo;
    .end local p2    # "launchIntent":Landroid/content/Intent;
    .end local p3    # "targetUserId":I
    .local v4, "target":Landroid/content/pm/ResolveInfo;
    .local v5, "launchIntent":Landroid/content/Intent;
    .local v6, "targetUserId":I
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/IntentForwarderActivity;->buildMiniResolver(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILjava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 323
    const p1, 0x10203f5

    invoke-virtual {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 324
    .local p1, "telephonyInfo":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    invoke-direct {p0, v5}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result p2

    const p3, 0x10203f7

    if-eqz p2, :cond_65

    .line 327
    invoke-virtual {p0, p3}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x1040670

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_71

    .line 330
    :cond_65
    invoke-virtual {p0, p3}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const p3, 0x1040671

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 333
    :goto_71
    return-void

    .line 304
    .end local v0    # "callingPackage":Ljava/lang/String;
    .end local v4    # "target":Landroid/content/pm/ResolveInfo;
    .end local v5    # "launchIntent":Landroid/content/Intent;
    .end local v6    # "targetUserId":I
    .end local v8    # "packageManagerForTargetUser":Landroid/content/pm/PackageManager;
    .local p1, "target":Landroid/content/pm/ResolveInfo;
    .restart local p2    # "launchIntent":Landroid/content/Intent;
    .restart local p3    # "targetUserId":I
    :cond_72
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    .line 305
    .end local p1    # "target":Landroid/content/pm/ResolveInfo;
    .end local p2    # "launchIntent":Landroid/content/Intent;
    .end local p3    # "targetUserId":I
    .restart local v4    # "target":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "launchIntent":Landroid/content/Intent;
    .restart local v6    # "targetUserId":I
    :goto_76
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 306
    return-void
.end method

.method private blacklist privateSpaceFlagsEnabled()Z
    .registers 2

    .line 697
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 698
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 699
    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceIntentRedirection()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 697
    :goto_15
    return v0
.end method

.method private static blacklist sanitizeIntent(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 679
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 681
    return-void
.end method

.method private blacklist setMiniresolverPadding()V
    .registers 6

    .line 703
    const v0, 0x102025b

    invoke-virtual {p0, v0}, Lcom/android/internal/app/IntentForwarderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 704
    .local v0, "buttonContainer":Landroid/view/View;
    if-eqz v0, :cond_30

    .line 705
    nop

    .line 706
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 707
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    .line 706
    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 708
    .local v1, "systemWindowInsets":Landroid/graphics/Insets;
    iget v2, v1, Landroid/graphics/Insets;->bottom:I

    .line 709
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 708
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 712
    .end local v1    # "systemWindowInsets":Landroid/graphics/Insets;
    :cond_30
    return-void
.end method

.method private blacklist shouldShowDisclosure(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Z
    .registers 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 547
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->isDeviceProvisioned()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 548
    return v1

    .line 550
    :cond_8
    const/4 v0, 0x1

    if-eqz p1, :cond_2f

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_10

    goto :goto_2f

    .line 553
    :cond_10
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 554
    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isDialerIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-direct {p0, p2}, Lcom/android/internal/app/IntentForwarderActivity;->isTextMessageIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 555
    :cond_26
    return v1

    .line 557
    :cond_27
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->isTargetResolverOrChooserActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 551
    :cond_2f
    :goto_2f
    return v0
.end method

.method private blacklist startActivityAsCaller(Landroid/content/Intent;I)V
    .registers 7
    .param p1, "newIntent"    # Landroid/content/Intent;
    .param p2, "userId"    # I

    .line 481
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 482
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8} :catch_9

    .line 491
    goto :goto_42

    .line 487
    :catch_9
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch as UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getLaunchedFromUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 489
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getLaunchedFromPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", while running in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 490
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 488
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 492
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_42
    return-void
.end method


# virtual methods
.method protected blacklist createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;
    .registers 3

    .line 716
    new-instance v0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;-><init>(Lcom/android/internal/app/IntentForwarderActivity;Lcom/android/internal/app/IntentForwarderActivity-IA;)V

    return-object v0
.end method

.method protected blacklist getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    .line 684
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v0, :cond_b

    .line 685
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 687
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->setMiniresolverPadding()V

    .line 127
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->createInjector()Lcom/android/internal/app/IntentForwarderActivity$Injector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 133
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 136
    .local v2, "intentReceived":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "className":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0x2710

    const/16 v4, 0x67d

    if-eqz v0, :cond_45

    .line 141
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToPersonalMessage()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "userMessage":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getProfileParent()I

    move-result v5

    .line 143
    .local v5, "targetUserId":I
    const/4 v6, 0x0

    .line 145
    .local v6, "managedProfile":Landroid/content/pm/UserInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v7

    new-instance v8, Landroid/metrics/LogMaker;

    invoke-direct {v8, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 147
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 145
    invoke-virtual {v7, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object v8, v0

    move-object v9, v6

    move v6, v5

    goto :goto_95

    .line 148
    .end local v0    # "userMessage":Ljava/lang/String;
    .end local v5    # "targetUserId":I
    .end local v6    # "managedProfile":Landroid/content/pm/UserInfo;
    :cond_45
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 149
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getForwardToWorkMessage()Ljava/lang/String;

    move-result-object v0

    .line 150
    .restart local v0    # "userMessage":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()Landroid/content/pm/UserInfo;

    move-result-object v6

    .line 151
    .restart local v6    # "managedProfile":Landroid/content/pm/UserInfo;
    if-nez v6, :cond_59

    move v5, v1

    goto :goto_5b

    :cond_59
    iget v5, v6, Landroid/content/pm/UserInfo;->id:I

    .line 153
    .restart local v5    # "targetUserId":I
    :goto_5b
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getMetricsLogger()Lcom/android/internal/logging/MetricsLogger;

    move-result-object v7

    new-instance v8, Landroid/metrics/LogMaker;

    invoke-direct {v8, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 155
    const/4 v4, 0x2

    invoke-virtual {v8, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 153
    invoke-virtual {v7, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    move-object v8, v0

    move-object v9, v6

    move v6, v5

    goto :goto_95

    .line 157
    .end local v0    # "userMessage":Ljava/lang/String;
    .end local v5    # "targetUserId":I
    .end local v6    # "managedProfile":Landroid/content/pm/UserInfo;
    :cond_70
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v5, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be called directly"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    .line 159
    .restart local v0    # "userMessage":Ljava/lang/String;
    const/16 v5, -0x2710

    .line 160
    .restart local v5    # "targetUserId":I
    const/4 v6, 0x0

    move-object v8, v0

    move-object v9, v6

    move v6, v5

    .line 162
    .end local v0    # "userMessage":Ljava/lang/String;
    .end local v5    # "targetUserId":I
    .local v6, "targetUserId":I
    .local v8, "userMessage":Ljava/lang/String;
    .local v9, "managedProfile":Landroid/content/pm/UserInfo;
    :goto_95
    if-ne v6, v1, :cond_9b

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 165
    return-void

    .line 167
    :cond_9b
    const-string v0, "android.intent.action.CHOOSER"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 168
    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->launchChooserActivityWithCorrectTab(Landroid/content/Intent;Ljava/lang/String;)V

    .line 169
    return-void

    .line 172
    :cond_ab
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v5

    .line 173
    .local v5, "callingUserId":I
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 174
    invoke-interface {v1}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 173
    invoke-static {v2, v0, v6, v1, v4}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;IILandroid/content/pm/IPackageManager;Landroid/content/ContentResolver;)Landroid/content/Intent;

    move-result-object v4

    .line 176
    .local v4, "newIntent":Landroid/content/Intent;
    if-nez v4, :cond_f4

    .line 177
    sget-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "the intent: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " cannot be forwarded from user "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " to user "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 180
    return-void

    .line 183
    :cond_f4
    invoke-virtual {v4, v5}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mInjector:Lcom/android/internal/app/IntentForwarderActivity$Injector;

    .line 185
    const/high16 v1, 0x10000

    invoke-interface {v0, v4, v1, v6}, Lcom/android/internal/app/IntentForwarderActivity$Injector;->resolveActivityAsUser(Landroid/content/Intent;II)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 187
    .local v0, "targetResolveInfoFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, v5}, Lcom/android/internal/app/IntentForwarderActivity;->isPrivateProfile(I)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 188
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/IntentForwarderActivity;->buildAndExecuteForPrivateProfile(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V

    goto :goto_119

    .line 191
    :cond_10a
    move-object v1, p0

    move v7, v6

    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    .end local v0    # "targetResolveInfoFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/pm/ResolveInfo;>;"
    .local v2, "targetResolveInfoFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/pm/ResolveInfo;>;"
    .local v3, "intentReceived":Landroid/content/Intent;
    .local v4, "className":Ljava/lang/String;
    .local v5, "newIntent":Landroid/content/Intent;
    .local v6, "callingUserId":I
    .local v7, "targetUserId":I
    invoke-direct/range {v1 .. v9}, Lcom/android/internal/app/IntentForwarderActivity;->buildAndExecute(Ljava/util/concurrent/CompletableFuture;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/UserInfo;)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    .line 195
    .end local v7    # "targetUserId":I
    .restart local v0    # "targetResolveInfoFuture":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/pm/ResolveInfo;>;"
    .local v2, "intentReceived":Landroid/content/Intent;
    .local v3, "className":Ljava/lang/String;
    .local v4, "newIntent":Landroid/content/Intent;
    .local v5, "callingUserId":I
    .local v6, "targetUserId":I
    :goto_119
    return-void
.end method

.method protected whitelist onDestroy()V
    .registers 2

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 120
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 121
    return-void
.end method
