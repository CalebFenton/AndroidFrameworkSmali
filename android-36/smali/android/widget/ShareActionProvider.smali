.class public Landroid/widget/ShareActionProvider;
.super Landroid/view/ActionProvider;
.source "ShareActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;,
        Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_INITIAL_ACTIVITY_COUNT:I = 0x4

.field public static final whitelist DEFAULT_SHARE_HISTORY_FILE_NAME:Ljava/lang/String; = "share_history.xml"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mMaxShownActivityCount:I

.field private greylist-max-o mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private final greylist-max-o mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

.field private greylist-max-o mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

.field private greylist-max-o mShareHistoryFileName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/widget/ShareActionProvider;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider;)Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShareHistoryFileName(Landroid/widget/ShareActionProvider;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 139
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/ShareActionProvider;->mMaxShownActivityCount:I

    .line 111
    new-instance v0, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;-><init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider-IA;)V

    iput-object v0, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 127
    const-string/jumbo v0, "share_history.xml"

    iput-object v0, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    .line 141
    return-void
.end method

.method private greylist-max-o setActivityChooserPolicyIfNeeded()V
    .registers 3

    .line 319
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-nez v0, :cond_5

    .line 320
    return-void

    .line 322
    :cond_5
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    if-nez v0, :cond_11

    .line 323
    new-instance v0, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ShareActionProvider$ShareActivityChooserModelPolicy;-><init>(Landroid/widget/ShareActionProvider;Landroid/widget/ShareActionProvider-IA;)V

    iput-object v0, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 325
    :cond_11
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 326
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mOnChooseActivityListener:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserModel;->setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V

    .line 327
    return-void
.end method


# virtual methods
.method public whitelist hasSubMenu()Z
    .registers 2

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onCreateActionView()Landroid/view/View;
    .registers 6

    .line 164
    new-instance v0, Landroid/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ActivityChooserView;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, "activityChooserView":Landroid/widget/ActivityChooserView;
    invoke-virtual {v0}, Landroid/widget/ActivityChooserView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_18

    .line 166
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v1

    .line 167
    .local v1, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-virtual {v0, v1}, Landroid/widget/ActivityChooserView;->setActivityChooserModel(Landroid/widget/ActivityChooserModel;)V

    .line 171
    .end local v1    # "dataModel":Landroid/widget/ActivityChooserModel;
    :cond_18
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 172
    .local v1, "outTypedValue":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010479

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 173
    iget-object v2, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 174
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/widget/ActivityChooserView;->setExpandActivityOverflowButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    invoke-virtual {v0, p0}, Landroid/widget/ActivityChooserView;->setProvider(Landroid/view/ActionProvider;)V

    .line 178
    const v3, 0x10409bd

    invoke-virtual {v0, v3}, Landroid/widget/ActivityChooserView;->setDefaultActionButtonContentDescription(I)V

    .line 180
    const v3, 0x10409bc

    invoke-virtual {v0, v3}, Landroid/widget/ActivityChooserView;->setExpandActivityOverflowButtonContentDescription(I)V

    .line 183
    return-object v0
.end method

.method public whitelist onPrepareSubMenu(Landroid/view/SubMenu;)V
    .registers 12
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .line 200
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 202
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 203
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 205
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/widget/ActivityChooserModel;->getActivityCount()I

    move-result v2

    .line 206
    .local v2, "expandedActivityCount":I
    iget v3, p0, Landroid/widget/ShareActionProvider;->mMaxShownActivityCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 209
    .local v3, "collapsedActivityCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    const/4 v5, 0x0

    if-ge v4, v3, :cond_3b

    .line 210
    invoke-virtual {v0, v4}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 211
    .local v6, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v5, v4, v4, v7}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v5

    .line 212
    invoke-virtual {v6, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v5

    iget-object v7, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 213
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 209
    .end local v6    # "activity":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 216
    .end local v4    # "i":I
    :cond_3b
    if-ge v3, v2, :cond_69

    .line 218
    iget-object v4, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    .line 220
    const v6, 0x104012b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 218
    invoke-interface {p1, v5, v3, v3, v4}, Landroid/view/SubMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v4

    .line 221
    .local v4, "expandedSubMenu":Landroid/view/SubMenu;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4b
    if-ge v6, v2, :cond_69

    .line 222
    invoke-virtual {v0, v6}, Landroid/widget/ActivityChooserModel;->getActivity(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 223
    .local v7, "activity":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v7, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v4, v5, v6, v6, v8}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v8

    .line 224
    invoke-virtual {v7, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/ShareActionProvider;->mOnMenuItemClickListener:Landroid/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;

    .line 225
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 221
    .end local v7    # "activity":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 228
    .end local v4    # "expandedSubMenu":Landroid/view/SubMenu;
    .end local v6    # "i":I
    :cond_69
    return-void
.end method

.method public whitelist setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 154
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;

    .line 155
    invoke-direct {p0}, Landroid/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 156
    return-void
.end method

.method public whitelist setShareHistoryFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "shareHistoryFile"    # Ljava/lang/String;

    .line 260
    iput-object p1, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    .line 261
    invoke-direct {p0}, Landroid/widget/ShareActionProvider;->setActivityChooserPolicyIfNeeded()V

    .line 262
    return-void
.end method

.method public whitelist setShareIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "shareIntent"    # Landroid/content/Intent;

    .line 279
    if-eqz p1, :cond_1b

    .line 280
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 282
    :cond_16
    const/high16 v1, 0x8080000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 286
    .end local v0    # "action":Ljava/lang/String;
    :cond_1b
    iget-object v0, p0, Landroid/widget/ShareActionProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/widget/ShareActionProvider;->mShareHistoryFileName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;

    move-result-object v0

    .line 288
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-virtual {v0, p1}, Landroid/widget/ActivityChooserModel;->setIntent(Landroid/content/Intent;)V

    .line 289
    return-void
.end method
