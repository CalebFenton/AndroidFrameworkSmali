.class public final Lcom/android/internal/app/chooser/SelectableTargetInfo;
.super Ljava/lang/Object;
.source "SelectableTargetInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/ChooserTargetInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SelectableTargetInfo"


# instance fields
.field private final blacklist mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

.field private blacklist mBadgeContentDescription:Ljava/lang/CharSequence;

.field private blacklist mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final blacklist mDisplayLabel:Ljava/lang/String;

.field private final blacklist mFillInFlags:I

.field private final blacklist mFillInIntent:Landroid/content/Intent;

.field private final blacklist mIsPinned:Z

.field private blacklist mIsSuspended:Z

.field private final blacklist mModifiedScore:F

.field private final blacklist mPm:Landroid/content/pm/PackageManager;

.field private final blacklist mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

.field private blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private final blacklist mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;FLcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;Landroid/content/pm/ShortcutInfo;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceInfo"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "chooserTarget"    # Landroid/service/chooser/ChooserTarget;
    .param p4, "modifiedScore"    # F
    .param p5, "selectableTargetInfoComunicator"    # Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;
    .param p6, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    .line 79
    iput-object p1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 81
    iput-object p3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 82
    iput p4, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    .line 83
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 84
    iput-object p5, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 85
    iput-object p6, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 86
    const/4 v2, 0x1

    if-eqz p6, :cond_28

    invoke-virtual {p6}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_28

    move v3, v2

    goto :goto_29

    :cond_28
    move v3, v1

    :goto_29
    iput-boolean v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    .line 87
    if-eqz p2, :cond_5e

    .line 88
    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 89
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_5e

    .line 90
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 91
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_5e

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_5e

    .line 92
    iget-object v5, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 93
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 95
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_5b

    goto :goto_5c

    :cond_5b
    move v2, v1

    :goto_5c
    iput-boolean v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    .line 101
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_5e
    if-eqz p2, :cond_63

    .line 102
    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_73

    .line 104
    :cond_63
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 108
    :goto_73
    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 109
    iput v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    .line 111
    invoke-virtual {p3}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    .line 112
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/chooser/SelectableTargetInfo;Landroid/content/Intent;I)V
    .registers 5
    .param p1, "other"    # Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flags"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    .line 116
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    .line 117
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 118
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    .line 119
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 120
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 121
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 122
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 124
    monitor-enter p1

    .line 125
    :try_start_2a
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 126
    iget-object v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 127
    monitor-exit p1
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_4c

    .line 128
    iput-object p2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 129
    iput p3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    .line 130
    iget v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    iput v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    .line 131
    iget-boolean v0, p1, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    .line 133
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    .line 134
    return-void

    .line 127
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method private blacklist getBaseIntentToSend()Landroid/content/Intent;
    .registers 4

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 237
    .local v0, "result":Landroid/content/Intent;
    if-nez v0, :cond_e

    .line 238
    const-string v1, "SelectableTargetInfo"

    const-string v2, "ChooserTargetInfo: no base intent available to send"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 240
    :cond_e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    .line 241
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1f

    .line 242
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInIntent:Landroid/content/Intent;

    iget v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mFillInFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 244
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->getReferrerFillInIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 246
    :goto_29
    return-object v0
.end method

.method private blacklist getChooserTargetIconDrawable(Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p1, "target"    # Landroid/service/chooser/ChooserTarget;
    .param p2, "shortcutInfo"    # Landroid/content/pm/ShortcutInfo;

    .line 173
    const/4 v0, 0x0

    .line 176
    .local v0, "directShareIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 177
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 178
    iget-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1f

    .line 179
    :cond_f
    if-eqz p2, :cond_1f

    .line 180
    iget-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    const-string v4, "launcherapps"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    .line 182
    .local v3, "launcherApps":Landroid/content/pm/LauncherApps;
    invoke-virtual {v3, p2, v2}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    .end local v3    # "launcherApps":Landroid/content/pm/LauncherApps;
    :cond_1f
    :goto_1f
    const/4 v3, 0x0

    if-nez v0, :cond_23

    return-object v3

    .line 187
    :cond_23
    const/4 v4, 0x0

    .line 189
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    :try_start_24
    iget-object v5, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2e} :catch_30

    move-object v4, v2

    .line 192
    goto :goto_38

    .line 190
    :catch_30
    move-exception v2

    .line 191
    .local v2, "error":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "SelectableTargetInfo"

    const-string v6, "Could not find activity associated with ChooserTarget"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v2    # "error":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_38
    if-nez v4, :cond_3b

    return-object v3

    .line 197
    :cond_3b
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v2, v4}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->makePresentationGetter(Landroid/content/pm/ActivityInfo;)Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;

    move-result-object v2

    .line 198
    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverListAdapter$ActivityInfoPresentationGetter;->getIconBitmap(Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 201
    .local v2, "appIcon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/app/SimpleIconFactory;->obtain(Landroid/content/Context;)Lcom/android/internal/app/SimpleIconFactory;

    move-result-object v3

    .line 202
    .local v3, "sif":Lcom/android/internal/app/SimpleIconFactory;
    invoke-virtual {v3, v0, v2}, Lcom/android/internal/app/SimpleIconFactory;->createAppBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 203
    .local v5, "directShareBadgedIcon":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Lcom/android/internal/app/SimpleIconFactory;->recycle()V

    .line 205
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v6
.end method

.method private blacklist sanitizeDisplayLabel(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p1, "label"    # Ljava/lang/CharSequence;

    .line 137
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    .local v0, "sb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 139
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .registers 4
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 319
    new-instance v0, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/app/chooser/SelectableTargetInfo;-><init>(Lcom/android/internal/app/chooser/SelectableTargetInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public blacklist getAllSourceIntents()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v1, :cond_19

    .line 327
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_19
    return-object v0
.end method

.method public blacklist getChooserTarget()Landroid/service/chooser/ChooserTarget;
    .registers 2

    .line 314
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    return-object v0
.end method

.method public declared-synchronized blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 303
    .end local p0    # "this":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public blacklist getDisplayLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDisplayResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    return-object v0
.end method

.method public blacklist getExtendedInfo()Ljava/lang/CharSequence;
    .registers 2

    .line 298
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getModifiedScore()F
    .registers 2

    .line 209
    iget v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mModifiedScore:F

    return v0
.end method

.method public blacklist getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    :goto_d
    return-object v0
.end method

.method public blacklist getResolvedComponentName()Landroid/content/ComponentName;
    .registers 4

    .line 226
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_b

    .line 227
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 228
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_21

    .line 229
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 232
    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResolvedIntent()Landroid/content/Intent;
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 218
    :cond_b
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSelectableTargetInfoCommunicator:Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;

    invoke-interface {v1}, Lcom/android/internal/app/chooser/SelectableTargetInfo$SelectableTargetInfoCommunicator;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 219
    .local v0, "targetIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 221
    return-object v0
.end method

.method public declared-synchronized blacklist hasDisplayIcon()Z
    .registers 2

    monitor-enter p0

    .line 310
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 310
    .end local p0    # "this":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public blacklist isPinned()Z
    .registers 2

    .line 334
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsPinned:Z

    return v0
.end method

.method public blacklist isSuspended()Z
    .registers 2

    .line 143
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mIsSuspended:Z

    return v0
.end method

.method public blacklist loadIcon()Z
    .registers 5

    .line 156
    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 158
    .local v0, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    iget-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 159
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_22

    .line 160
    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 161
    .local v2, "shouldLoadIcon":Z
    :goto_d
    if-eqz v2, :cond_21

    .line 162
    iget-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getChooserTargetIconDrawable(Landroid/service/chooser/ChooserTarget;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 163
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    monitor-enter p0

    .line 164
    :try_start_16
    iput-object v3, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 166
    monitor-exit p0

    move-object v1, v3

    goto :goto_21

    :catchall_1e
    move-exception v1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw v1

    .line 168
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_21
    :goto_21
    return v2

    .line 159
    .end local v0    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "shouldLoadIcon":Z
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .registers 9
    .param p1, "activity"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 256
    invoke-direct {p0}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getBaseIntentToSend()Landroid/content/Intent;

    move-result-object v0

    .line 257
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 258
    return v1

    .line 260
    :cond_8
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 261
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 262
    invoke-static {v0, p3}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    .line 263
    invoke-static {v0}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    .line 273
    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mSourceInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 274
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/chooser/SelectableTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 275
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    move v1, v3

    goto :goto_42

    :cond_41
    nop

    .line 276
    .local v1, "ignoreTargetSecurity":Z
    :goto_42
    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 277
    return v3
.end method

.method public blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 282
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
