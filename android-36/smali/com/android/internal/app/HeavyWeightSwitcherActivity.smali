.class public Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.super Landroid/app/Activity;
.source "HeavyWeightSwitcherActivity.java"


# static fields
.field public static final blacklist KEY_CUR_APP:Ljava/lang/String; = "cur_app"

.field public static final blacklist KEY_CUR_TASK:Ljava/lang/String; = "cur_task"

.field public static final blacklist KEY_HAS_RESULT:Ljava/lang/String; = "has_result"

.field public static final blacklist KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final blacklist KEY_NEW_APP:Ljava/lang/String; = "new_app"


# instance fields
.field blacklist mCurApp:Ljava/lang/String;

.field blacklist mCurTask:I

.field blacklist mHasResult:Z

.field blacklist mNewApp:Ljava/lang/String;

.field blacklist mStartIntent:Landroid/content/IntentSender;

.field private blacklist mSwitchNewListener:Landroid/view/View$OnClickListener;

.field private blacklist mSwitchOldListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 129
    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchOldListener:Landroid/view/View$OnClickListener;

    .line 142
    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchNewListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 66
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->requestWindowFeature(I)Z

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    const-class v3, Landroid/content/IntentSender;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    iput-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    .line 71
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "has_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mHasResult:Z

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cur_app"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cur_task"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurTask:I

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "new_app"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    .line 76
    const v1, 0x109008c

    invoke-virtual {p0, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setContentView(I)V

    .line 78
    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    const v6, 0x10406f6

    const/4 v7, 0x0

    const v1, 0x1020445

    const v2, 0x1020444

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setIconAndText(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 80
    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    const v6, 0x10406a4

    const v7, 0x10406a5

    const v1, 0x1020414

    const v2, 0x1020412

    const v3, 0x1020413

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setIconAndText(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 83
    const v1, 0x1020563

    invoke-virtual {p0, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "button":Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchOldListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v2, 0x1020562

    invoke-virtual {p0, v2}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchNewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method blacklist setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 94
    if-eqz p2, :cond_b

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_b
    return-void
.end method

.method blacklist setIconAndText(IIILjava/lang/String;Ljava/lang/String;II)V
    .registers 13
    .param p1, "iconId"    # I
    .param p2, "actionId"    # I
    .param p3, "descriptionId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "otherPackageName"    # Ljava/lang/String;
    .param p6, "actionStr"    # I
    .param p7, "descriptionStr"    # I

    .line 101
    move-object v0, p4

    .line 102
    .local v0, "appName":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 103
    .local v1, "appIcon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    if-eqz p4, :cond_21

    .line 105
    :try_start_5
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 107
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    .line 108
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_1e} :catch_20

    move-object v1, v4

    .line 110
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_21

    .line 109
    :catch_20
    move-exception v3

    .line 113
    :cond_21
    :goto_21
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 114
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, p6, v3}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setText(ILjava/lang/CharSequence;)V

    .line 115
    if-eqz p3, :cond_52

    .line 116
    move-object v3, p5

    .line 117
    .local v3, "otherAppName":Ljava/lang/CharSequence;
    if-eqz p5, :cond_47

    .line 119
    :try_start_34
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 121
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4
    :try_end_44
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_44} :catch_46

    move-object v3, v4

    .line 123
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_47

    .line 122
    :catch_46
    move-exception v2

    .line 125
    :cond_47
    :goto_47
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p7, v2}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, v2}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setText(ILjava/lang/CharSequence;)V

    .line 127
    .end local v3    # "otherAppName":Ljava/lang/CharSequence;
    :cond_52
    return-void
.end method

.method blacklist setText(ILjava/lang/CharSequence;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method
