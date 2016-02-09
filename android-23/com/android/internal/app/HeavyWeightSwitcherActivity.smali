.class public Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.super Landroid/app/Activity;
.source "HeavyWeightSwitcherActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;,
        Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;,
        Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;
    }
.end annotation


# static fields
.field public static final KEY_CUR_APP:Ljava/lang/String; = "cur_app"

.field public static final KEY_CUR_TASK:Ljava/lang/String; = "cur_task"

.field public static final KEY_HAS_RESULT:Ljava/lang/String; = "has_result"

.field public static final KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final KEY_NEW_APP:Ljava/lang/String; = "new_app"


# instance fields
.field private mCancelListener:Landroid/view/View$OnClickListener;

.field mCurApp:Ljava/lang/String;

.field mCurTask:I

.field mHasResult:Z

.field mNewApp:Ljava/lang/String;

.field mStartIntent:Landroid/content/IntentSender;

.field private mSwitchNewListener:Landroid/view/View$OnClickListener;

.field private mSwitchOldListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    .line 122
    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;

    #@5
    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$1;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    #@8
    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchOldListener:Landroid/view/View$OnClickListener;

    #@a
    .line 132
    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;

    #@c
    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$2;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    #@f
    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchNewListener:Landroid/view/View$OnClickListener;

    #@11
    .line 153
    new-instance v0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;

    #@13
    invoke-direct {v0, p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;-><init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V

    #@16
    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    #@18
    .line 43
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v2, 0x0

    #@2
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@5
    .line 65
    invoke-virtual {p0, v9}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->requestWindowFeature(I)Z

    #@8
    .line 67
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, "intent"

    #@f
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/content/IntentSender;

    #@15
    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mStartIntent:Landroid/content/IntentSender;

    #@17
    .line 68
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, "has_result"

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    #@21
    move-result v0

    #@22
    iput-boolean v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mHasResult:Z

    #@24
    .line 69
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    #@27
    move-result-object v0

    #@28
    const-string/jumbo v1, "cur_app"

    #@2b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    #@31
    .line 70
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    #@34
    move-result-object v0

    #@35
    const-string/jumbo v1, "cur_task"

    #@38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    #@3b
    move-result v0

    #@3c
    iput v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurTask:I

    #@3e
    .line 71
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getIntent()Landroid/content/Intent;

    #@41
    move-result-object v0

    #@42
    const-string/jumbo v1, "new_app"

    #@45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    iput-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    #@4b
    .line 73
    const v0, 0x1090065

    #@4e
    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setContentView(I)V

    #@51
    .line 76
    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    #@53
    .line 75
    const v1, 0x102033a

    #@56
    const v2, 0x102033b

    #@59
    const v3, 0x102033c

    #@5c
    .line 76
    const v5, 0x1040376

    #@5f
    const v6, 0x1040377

    #@62
    move-object v0, p0

    #@63
    .line 75
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setIconAndText(IIILjava/lang/String;II)V

    #@66
    .line 78
    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mNewApp:Ljava/lang/String;

    #@68
    .line 77
    const v1, 0x102033e

    #@6b
    const v2, 0x102033f

    #@6e
    const v3, 0x1020340

    #@71
    .line 78
    const v5, 0x1040378

    #@74
    const v6, 0x1040379

    #@77
    move-object v0, p0

    #@78
    .line 77
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setIconAndText(IIILjava/lang/String;II)V

    #@7b
    .line 80
    const v0, 0x1020339

    #@7e
    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    #@81
    move-result-object v7

    #@82
    .line 81
    .local v7, "button":Landroid/view/View;
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchOldListener:Landroid/view/View$OnClickListener;

    #@84
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@87
    .line 82
    const v0, 0x102033d

    #@8a
    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    #@8d
    move-result-object v7

    #@8e
    .line 83
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mSwitchNewListener:Landroid/view/View$OnClickListener;

    #@90
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@93
    .line 84
    const v0, 0x1020311

    #@96
    invoke-virtual {p0, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    #@99
    move-result-object v7

    #@9a
    .line 85
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCancelListener:Landroid/view/View$OnClickListener;

    #@9c
    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@9f
    .line 87
    new-instance v8, Landroid/util/TypedValue;

    #@a1
    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    #@a4
    .line 88
    .local v8, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getTheme()Landroid/content/res/Resources$Theme;

    #@a7
    move-result-object v0

    #@a8
    const v1, 0x1010355

    #@ab
    const/4 v2, 0x1

    #@ac
    invoke-virtual {v0, v1, v8, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@af
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getWindow()Landroid/view/Window;

    #@b2
    move-result-object v0

    #@b3
    .line 90
    iget v1, v8, Landroid/util/TypedValue;->resourceId:I

    #@b5
    .line 89
    invoke-virtual {v0, v9, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    #@b8
    .line 62
    return-void
.end method

.method setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 98
    if-eqz p2, :cond_0

    #@2
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/widget/ImageView;

    #@8
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@b
    .line 97
    :cond_0
    return-void
.end method

.method setIconAndText(IIILjava/lang/String;II)V
    .locals 7
    .param p1, "iconId"    # I
    .param p2, "actionId"    # I
    .param p3, "descriptionId"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "actionStr"    # I
    .param p6, "descriptionStr"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 105
    const-string/jumbo v1, ""

    #@4
    .line 106
    .local v1, "appName":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    #@5
    .line 107
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->mCurApp:Ljava/lang/String;

    #@7
    if-eqz v4, :cond_0

    #@9
    .line 109
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v4

    #@d
    .line 110
    const/4 v5, 0x0

    #@e
    .line 109
    invoke-virtual {v4, p4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@11
    move-result-object v3

    #@12
    .line 111
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@15
    move-result-object v4

    #@16
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@19
    move-result-object v1

    #@1a
    .line 112
    invoke-virtual {p0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@21
    move-result-object v0

    #@22
    .line 117
    .end local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    #@25
    .line 118
    const/4 v4, 0x1

    #@26
    new-array v4, v4, [Ljava/lang/Object;

    #@28
    aput-object v1, v4, v6

    #@2a
    invoke-virtual {p0, p5, v4}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {p0, p2, v4}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setText(ILjava/lang/CharSequence;)V

    #@31
    .line 119
    invoke-virtual {p0, p6}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->getText(I)Ljava/lang/CharSequence;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p0, p3, v4}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->setText(ILjava/lang/CharSequence;)V

    #@38
    .line 104
    return-void

    #@39
    .line 113
    .restart local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    #@3a
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method setText(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->findViewById(I)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/widget/TextView;

    #@6
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@9
    .line 93
    return-void
.end method
