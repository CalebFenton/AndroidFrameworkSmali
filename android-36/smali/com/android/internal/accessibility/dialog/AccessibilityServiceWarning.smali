.class public Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;
.super Ljava/lang/Object;
.source "AccessibilityServiceWarning.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createAccessibilityServiceWarningDialog(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p2, "allowListener"    # Landroid/view/View$OnClickListener;
    .param p3, "denyListener"    # Landroid/view/View$OnClickListener;
    .param p4, "uninstallListener"    # Landroid/view/View$OnClickListener;

    .line 59
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;->createAccessibilityServiceWarningDialogContentView(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 64
    .local v0, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 65
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 66
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x80000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 67
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 68
    return-object v0
.end method

.method public static blacklist createAccessibilityServiceWarningDialogContentView(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;
    .param p2, "allowListener"    # Landroid/view/View$OnClickListener;
    .param p3, "denyListener"    # Landroid/view/View$OnClickListener;
    .param p4, "uninstallListener"    # Landroid/view/View$OnClickListener;

    .line 77
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 78
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x109001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "content":Landroid/view/View;
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    if-nez v2, :cond_22

    .line 82
    const v2, 0x1080399

    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_2e

    .line 84
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_22
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 86
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2e
    const v3, 0x10201c8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 88
    .local v3, "permissionDialogIcon":Landroid/widget/ImageView;
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    const v4, 0x10201c9

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 92
    .local v4, "permissionDialogTitle":Landroid/widget/TextView;
    nop

    .line 93
    invoke-static {p0, p1}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;->getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 92
    const v6, 0x10400f1

    invoke-virtual {p0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v5, 0x10201ca

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 97
    .local v5, "permissionAllowButton":Landroid/widget/Button;
    const v6, 0x10201cb

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 99
    .local v6, "permissionDenyButton":Landroid/widget/Button;
    invoke-virtual {v5, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-static {}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning;->getTouchConsumingListener()Landroid/view/View$OnTouchListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    invoke-virtual {v6, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v7, 0x10201cc

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 106
    .local v7, "uninstallButton":Landroid/widget/Button;
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-nez v8, :cond_93

    .line 107
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    invoke-virtual {v7, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_93
    return-object v1
.end method

.method private static blacklist getServiceName(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 134
    .local v0, "locale":Ljava/util/Locale;
    nop

    .line 135
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 136
    .local v1, "label":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getTouchConsumingListener()Landroid/view/View$OnTouchListener;
    .registers 1

    .line 116
    new-instance v0, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/accessibility/dialog/AccessibilityServiceWarning$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method static synthetic blacklist lambda$getTouchConsumingListener$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_12

    goto :goto_13

    .line 127
    :cond_12
    return v2

    .line 120
    :cond_13
    :goto_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_27

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x10400ee

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 125
    :cond_27
    return v1
.end method
