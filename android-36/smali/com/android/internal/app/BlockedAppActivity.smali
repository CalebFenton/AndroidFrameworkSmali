.class public Lcom/android/internal/app/BlockedAppActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BlockedAppActivity.java"


# static fields
.field private static final blacklist EXTRA_BLOCKED_PACKAGE:Ljava/lang/String; = "com.android.internal.app.extra.BLOCKED_PACKAGE"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.android.internal.app"

.field private static final blacklist TAG:Ljava/lang/String; = "BlockedAppActivity"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static blacklist createIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    const-class v1, Lcom/android/internal/app/BlockedAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 84
    const-string v1, "com.android.internal.app.extra.BLOCKED_PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method private blacklist getAppLabel(ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 69
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 70
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 71
    .local v1, "aInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v2

    .line 72
    .end local v1    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :catch_f
    move-exception v1

    .line 73
    .local v1, "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BlockedAppActivity"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v1    # "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p2
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.USER_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, "userId":I
    const-string v2, "BlockedAppActivity"

    if-gez v1, :cond_2c

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppActivity;->finish()V

    .line 48
    return-void

    .line 51
    :cond_2c
    const-string v3, "com.android.internal.app.extra.BLOCKED_PACKAGE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppActivity;->finish()V

    .line 55
    return-void

    .line 58
    :cond_52
    invoke-direct {p0, v1, v3}, Lcom/android/internal/app/BlockedAppActivity;->getAppLabel(ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 60
    .local v2, "appLabel":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x104015d

    invoke-virtual {p0, v5}, Lcom/android/internal/app/BlockedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 61
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x104015c

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/app/BlockedAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 62
    iget-object v4, p0, Lcom/android/internal/app/BlockedAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/android/internal/app/BlockedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/BlockedAppActivity;->setupAlert()V

    .line 64
    return-void
.end method
