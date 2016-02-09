.class public final Lcom/android/server/am/LaunchWarningWindow;
.super Landroid/app/Dialog;
.source "LaunchWarningWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cur"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "next"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    .line 31
    const v3, 0x103047a

    #@6
    invoke-direct {p0, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #@9
    .line 33
    invoke-virtual {p0, v5}, Lcom/android/server/am/LaunchWarningWindow;->requestWindowFeature(I)Z

    #@c
    .line 34
    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    #@f
    move-result-object v3

    #@10
    const/16 v4, 0x7d3

    #@12
    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    #@15
    .line 35
    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    #@18
    move-result-object v3

    #@19
    const/16 v4, 0x18

    #@1b
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    #@1e
    .line 38
    const v3, 0x1090071

    #@21
    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->setContentView(I)V

    #@24
    .line 39
    const v3, 0x1040363

    #@27
    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->setTitle(Ljava/lang/CharSequence;)V

    #@2e
    .line 41
    new-instance v1, Landroid/util/TypedValue;

    #@30
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@33
    .line 42
    .local v1, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getContext()Landroid/content/Context;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@3a
    move-result-object v3

    #@3b
    const v4, 0x1010355

    #@3e
    invoke-virtual {v3, v4, v1, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@41
    .line 43
    invoke-virtual {p0}, Lcom/android/server/am/LaunchWarningWindow;->getWindow()Landroid/view/Window;

    #@44
    move-result-object v3

    #@45
    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    #@47
    invoke-virtual {v3, v5, v4}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    #@4a
    .line 45
    const v3, 0x1020350

    #@4d
    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    #@50
    move-result-object v0

    #@51
    check-cast v0, Landroid/widget/ImageView;

    #@53
    .line 46
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v3, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@55
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5a
    move-result-object v4

    #@5b
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@62
    .line 47
    const v3, 0x1020351

    #@65
    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    #@68
    move-result-object v2

    #@69
    check-cast v2, Landroid/widget/TextView;

    #@6b
    .line 48
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6e
    move-result-object v3

    #@6f
    new-array v4, v7, [Ljava/lang/Object;

    #@71
    .line 49
    iget-object v5, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@73
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@7c
    move-result-object v5

    #@7d
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@80
    move-result-object v5

    #@81
    aput-object v5, v4, v8

    #@83
    .line 48
    const v5, 0x1040364

    #@86
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@8d
    .line 50
    const v3, 0x1020352

    #@90
    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    #@93
    move-result-object v0

    #@94
    .end local v0    # "icon":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    #@96
    .line 51
    .restart local v0    # "icon":Landroid/widget/ImageView;
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@98
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@9a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@9d
    move-result-object v4

    #@9e
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@a1
    move-result-object v3

    #@a2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@a5
    .line 52
    const v3, 0x1020353

    #@a8
    invoke-virtual {p0, v3}, Lcom/android/server/am/LaunchWarningWindow;->findViewById(I)Landroid/view/View;

    #@ab
    move-result-object v2

    #@ac
    .end local v2    # "text":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    #@ae
    .line 53
    .restart local v2    # "text":Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b1
    move-result-object v3

    #@b2
    new-array v4, v7, [Ljava/lang/Object;

    #@b4
    .line 54
    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@b6
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@b8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@bb
    move-result-object v6

    #@bc
    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@bf
    move-result-object v5

    #@c0
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c3
    move-result-object v5

    #@c4
    aput-object v5, v4, v8

    #@c6
    .line 53
    const v5, 0x1040365

    #@c9
    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@cc
    move-result-object v3

    #@cd
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@d0
    .line 30
    return-void
.end method
