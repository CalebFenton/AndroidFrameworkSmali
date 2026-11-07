.class public Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;
.super Landroid/app/Activity;
.source "AccessibilityButtonChooserActivity.java"


# static fields
.field public static final blacklist EXTRA_TYPE_TO_CHOOSE:Ljava/lang/String; = "TYPE"


# instance fields
.field private final blacklist mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ZySi-3ZUvS9dQl9HfdDQerZ-nzo(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->lambda$onCreate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    return-void
.end method

.method private synthetic blacklist lambda$onCreate$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 91
    const-string v0, "accessibility_button_target_component"

    .line 92
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "name":Ljava/lang/String;
    const-string v2, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 94
    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 96
    :cond_1c
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 97
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static {v2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityButtonLongPressStatus(Landroid/content/ComponentName;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "accessibility_button_target_component"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->finish()V

    .line 100
    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x109001a

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->setContentView(I)V

    .line 55
    const v0, 0x1020295

    invoke-virtual {p0, v0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ResolverDrawerLayout;

    .line 56
    .local v0, "rdl":Lcom/android/internal/widget/ResolverDrawerLayout;
    if-eqz v0, :cond_1c

    .line 57
    new-instance v1, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 60
    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_button_target_component"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "component":Ljava/lang/String;
    const-class v2, Landroid/view/accessibility/AccessibilityManager;

    .line 64
    invoke-virtual {p0, v2}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 65
    .local v2, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    nop

    .line 66
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    .line 67
    .local v3, "isTouchExploreOn":Z
    nop

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e00df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v6, v4, :cond_45

    move v4, v5

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    .line 71
    .local v4, "isGestureNavigateEnabled":Z
    :goto_46
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/Flags;->a11yStandaloneGestureEnabled()Z

    move-result v6

    if-eqz v6, :cond_57

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "TYPE"

    invoke-virtual {v6, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    goto :goto_58

    :cond_57
    nop

    .line 74
    .local v5, "targetType":I
    :goto_58
    if-eqz v4, :cond_84

    .line 75
    const v6, 0x10201bd

    invoke-virtual {p0, v6}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 76
    .local v6, "promptPrologue":Landroid/widget/TextView;
    if-eqz v3, :cond_69

    .line 77
    const v7, 0x10400f3

    goto :goto_6c

    .line 78
    :cond_69
    const v7, 0x10400f5

    .line 76
    :goto_6c
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 80
    const v7, 0x10201bc

    invoke-virtual {p0, v7}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 81
    .local v7, "prompt":Landroid/widget/TextView;
    if-eqz v3, :cond_7e

    .line 82
    const v8, 0x10400f2

    goto :goto_81

    .line 83
    :cond_7e
    const v8, 0x10400f4

    .line 81
    :goto_81
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 86
    .end local v6    # "promptPrologue":Landroid/widget/TextView;
    .end local v7    # "prompt":Landroid/widget/TextView;
    :cond_84
    iget-object v6, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-static {p0, v5}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    const v6, 0x10201bb

    invoke-virtual {p0, v6}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 89
    .local v6, "gridview":Landroid/widget/GridView;
    new-instance v7, Lcom/android/internal/accessibility/dialog/ButtonTargetAdapter;

    iget-object v8, p0, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;->mTargets:Ljava/util/List;

    invoke-direct {v7, v8}, Lcom/android/internal/accessibility/dialog/ButtonTargetAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    new-instance v7, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/dialog/AccessibilityButtonChooserActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 101
    return-void
.end method
