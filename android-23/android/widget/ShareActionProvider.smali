.class public Landroid/widget/ShareActionProvider;
.super Landroid/view/ActionProvider;
.source "ShareActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;,
        Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMaxShownActivityCount:I

.field private mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field private mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field private mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/widget/ShareActionProvider;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/ShareActionProvider;)Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/ShareActionProvider;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    #@3
    .line 106
    const/4 v0, 0x4

    #@4
    iput v0, p0, Landroid/widget/ShareActionProvider;->mMaxShownActivityCount:I

    #@6
    .line 112
    new-instance v0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {v0, p0, v1}, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;)V

    #@c
    .line 111
    iput-object v0, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    #@e
    .line 127
    const-string/jumbo v0, "share_history.xml"

    #@11
    iput-object v0, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    #@13
    .line 140
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@15
    .line 138
    return-void
.end method

.method private setActivityChooserPolicyIfNeeded()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 319
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 320
    return-void

    #@6
    .line 322
    :cond_0
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    #@8
    if-nez v1, :cond_1

    #@a
    .line 323
    new-instance v1, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;

    #@c
    invoke-direct {v1, p0, v2}, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;)V

    #@f
    iput-object v1, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    #@11
    .line 325
    :cond_1
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@13
    iget-object v2, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    #@15
    invoke-static {v1, v2}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    #@18
    move-result-object v0

    #@19
    .line 326
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    #@1b
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V

    #@1e
    .line 318
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    #@0
    .prologue
    .line 191
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 7

    #@0
    .prologue
    .line 164
    new-instance v0, Landroid/widget/ActivityChooserView;

    #@2
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v4}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    #@7
    .line 165
    .local v0, "activityChooserView":Landroid/widget/ActivityChooserView;
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->isInEditMode()Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    .line 166
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@f
    iget-object v5, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    #@11
    invoke-static {v4, v5}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    #@14
    move-result-object v1

    #@15
    .line 167
    .local v1, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserView;->setActivityChooserModel(Landroid/widget/ActivityChooserModel;)V

    #@18
    .line 171
    .end local v1    # "dataModel":Landroid/widget/ActivityChooserModel;
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    #@1a
    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    #@1d
    .line 172
    .local v3, "outTypedValue":Landroid/util/TypedValue;
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@1f
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@22
    move-result-object v4

    #@23
    const v5, 0x1010479

    #@26
    const/4 v6, 0x1

    #@27
    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@2a
    .line 173
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@2c
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    #@2e
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@31
    move-result-object v2

    #@32
    .line 174
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    #@35
    .line 175
    invoke-virtual {v0, p0}, Landroid/widget/ActivityChooserView;->setProvider(Landroid/view/ActionProvider;)V

    #@38
    .line 179
    const v4, 0x1040476

    #@3b
    .line 178
    invoke-virtual {v0, v4}, Landroid/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    #@3e
    .line 181
    const v4, 0x1040475

    #@41
    .line 180
    invoke-virtual {v0, v4}, Landroid/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    #@44
    .line 183
    return-object v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 10
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 200
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    #@4
    .line 202
    iget-object v7, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@6
    iget-object v8, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    #@8
    invoke-static {v7, v8}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    #@b
    move-result-object v2

    #@c
    .line 203
    .local v2, "dataModel":Landroid/widget/ActivityChooserModel;
    iget-object v7, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@e
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@11
    move-result-object v6

    #@12
    .line 205
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    #@15
    move-result v3

    #@16
    .line 206
    .local v3, "expandedActivityCount":I
    iget v7, p0, Landroid/widget/ShareActionProvider;->mMaxShownActivityCount:I

    #@18
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    #@1b
    move-result v1

    #@1c
    .line 209
    .local v1, "collapsedActivityCount":I
    const/4 v5, 0x0

    #@1d
    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    #@1f
    .line 210
    invoke-virtual {v2, v5}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    #@22
    move-result-object v0

    #@23
    .line 211
    .local v0, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@26
    move-result-object v7

    #@27
    invoke-interface {p1, v9, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@2a
    move-result-object v7

    #@2b
    .line 212
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@2e
    move-result-object v8

    #@2f
    .line 211
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    #@32
    move-result-object v7

    #@33
    .line 213
    iget-object v8, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    #@35
    .line 211
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@38
    .line 209
    add-int/lit8 v5, v5, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 216
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    :cond_0
    if-ge v1, v3, :cond_1

    #@3d
    .line 220
    iget-object v7, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@3f
    const v8, 0x10404a2

    #@42
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@45
    move-result-object v7

    #@46
    .line 218
    invoke-interface {p1, v9, v1, v1, v7}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    #@49
    move-result-object v4

    #@4a
    .line 221
    .local v4, "expandedSubMenu":Landroid/view/SubMenu;
    const/4 v5, 0x0

    #@4b
    :goto_1
    if-ge v5, v3, :cond_1

    #@4d
    .line 222
    invoke-virtual {v2, v5}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    #@50
    move-result-object v0

    #@51
    .line 223
    .restart local v0    # "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@54
    move-result-object v7

    #@55
    invoke-interface {v4, v9, v5, v5, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@58
    move-result-object v7

    #@59
    .line 224
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@5c
    move-result-object v8

    #@5d
    .line 223
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    #@60
    move-result-object v7

    #@61
    .line 225
    iget-object v8, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    #@63
    .line 223
    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@66
    .line 221
    add-int/lit8 v5, v5, 0x1

    #@68
    goto :goto_1

    #@69
    .line 198
    .end local v0    # "activity":Landroid/content/pm/ResolveInfo;
    .end local v4    # "expandedSubMenu":Landroid/view/SubMenu;
    :cond_1
    return-void
.end method

.method public setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    #@0
    .prologue
    .line 154
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    #@2
    .line 155
    invoke-direct {p0}, Landroid/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    #@5
    .line 153
    return-void
.end method

.method public setShareHistoryFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shareHistoryFile"    # Ljava/lang/String;

    #@0
    .prologue
    .line 260
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    #@2
    .line 261
    invoke-direct {p0}, Landroid/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    #@5
    .line 259
    return-void
.end method

.method public setShareIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "shareIntent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 279
    if-eqz p1, :cond_1

    #@2
    .line 280
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 281
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.SEND"

    #@9
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-nez v2, :cond_0

    #@f
    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    #@12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    .line 282
    :cond_0
    const/high16 v2, 0x8080000

    #@1a
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@1d
    .line 286
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    #@1f
    .line 287
    iget-object v3, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    #@21
    .line 286
    invoke-static {v2, v3}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    #@24
    move-result-object v1

    #@25
    .line 288
    .local v1, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-virtual {v1, p1}, Landroid/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    #@28
    .line 278
    return-void
.end method
