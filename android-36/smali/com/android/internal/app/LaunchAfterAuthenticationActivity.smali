.class public Lcom/android/internal/app/LaunchAfterAuthenticationActivity;
.super Landroid/app/Activity;
.source "LaunchAfterAuthenticationActivity.java"


# static fields
.field private static final blacklist EXTRA_ON_SUCCESS_INTENT:Ljava/lang/String; = "com.android.internal.app.extra.ON_SUCCESS_INTENT"

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monUnlocked(Lcom/android/internal/app/LaunchAfterAuthenticationActivity;Landroid/content/IntentSender;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/app/LaunchAfterAuthenticationActivity;->onUnlocked(Landroid/content/IntentSender;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/app/LaunchAfterAuthenticationActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 34
    const-class v0, Lcom/android/internal/app/LaunchAfterAuthenticationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LaunchAfterAuthenticationActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static blacklist createLaunchAfterAuthenticationIntent(Landroid/content/IntentSender;)Landroid/content/Intent;
    .registers 4
    .param p0, "onSuccessIntent"    # Landroid/content/IntentSender;

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    const-class v1, Lcom/android/internal/app/LaunchAfterAuthenticationActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    const-string v1, "com.android.internal.app.extra.ON_SUCCESS_INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method private blacklist onUnlocked(Landroid/content/IntentSender;)V
    .registers 9
    .param p1, "targetIntent"    # Landroid/content/IntentSender;

    .line 92
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v1, p1

    .end local p1    # "targetIntent":Landroid/content/IntentSender;
    .local v1, "targetIntent":Landroid/content/IntentSender;
    :try_start_6
    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_9
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_6 .. :try_end_9} :catch_a

    .line 100
    goto :goto_13

    .line 98
    :catch_a
    move-exception v0

    move-object p1, v0

    .line 99
    .local p1, "e":Landroid/content/IntentSender$SendIntentException;
    sget-object v0, Lcom/android/internal/app/LaunchAfterAuthenticationActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error while sending original intent"

    invoke-static {v0, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .end local p1    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_13
    return-void
.end method

.method private blacklist requestDismissKeyguardIfNeeded(Landroid/content/IntentSender;)V
    .registers 4
    .param p1, "onSuccessIntent"    # Landroid/content/IntentSender;

    .line 62
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LaunchAfterAuthenticationActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 63
    .local v0, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 64
    new-instance v1, Lcom/android/internal/app/LaunchAfterAuthenticationActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/LaunchAfterAuthenticationActivity$1;-><init>(Lcom/android/internal/app/LaunchAfterAuthenticationActivity;Landroid/content/IntentSender;)V

    invoke-virtual {v0, p0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_20

    .line 86
    :cond_1d
    invoke-virtual {p0}, Lcom/android/internal/app/LaunchAfterAuthenticationActivity;->finish()V

    .line 88
    :goto_20
    return-void
.end method


# virtual methods
.method public whitelist onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/app/LaunchAfterAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.internal.app.extra.ON_SUCCESS_INTENT"

    const-class v2, Landroid/content/IntentSender;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 58
    .local v0, "onSuccessIntent":Landroid/content/IntentSender;
    invoke-direct {p0, v0}, Lcom/android/internal/app/LaunchAfterAuthenticationActivity;->requestDismissKeyguardIfNeeded(Landroid/content/IntentSender;)V

    .line 59
    return-void
.end method
