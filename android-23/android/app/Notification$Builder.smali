.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_NEEDS_REBUILD:Ljava/lang/String; = "android.rebuild"

.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.bigView"

.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.contentView"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field private static final EXTRA_REBUILD_CONTEXT_APPLICATION_INFO:Ljava/lang/String; = "android.rebuild.applicationInfo"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.hudView"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field public static final EXTRA_REBUILD_LARGE_ICON:Ljava/lang/String; = "android.rebuild.largeIcon"

.field private static final LARGE_TEXT_SCALE:F = 1.3f

.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final STRIP_AND_REBUILD:Z = true


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioStreamType:I

.field private mCategory:Ljava/lang/String;

.field private mColor:I

.field private final mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mGroupKey:Ljava/lang/String;

.field private mHasThreeLines:Z

.field private mLargeIcon:Landroid/graphics/drawable/Icon;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mOriginatingUserId:I

.field private mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mPublicVersion:Landroid/app/Notification;

.field private mRebuildBundle:Landroid/os/Bundle;

.field private mRebuildNotification:Landroid/app/Notification;

.field private mShowWhen:Z

.field private mSmallIcon:Landroid/graphics/drawable/Icon;

.field private mSmallIconLevel:I

.field private mSortKey:Ljava/lang/String;

.field private mSound:Landroid/net/Uri;

.field private mStyle:Landroid/app/Notification$Style;

.field private mSubText:Ljava/lang/CharSequence;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mUseChronometer:Z

.field private mVibrate:[J

.field private mVisibility:I

.field private mWhen:J


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/app/Notification$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/app/Notification$Builder;)Landroid/graphics/drawable/Icon;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/app/Notification$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/app/Notification$Builder;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/app/Notification$Builder;->mFlags:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "resId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Landroid/app/Notification$Builder;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap4(Landroid/app/Notification$Builder;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap5(Landroid/app/Notification$Builder;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap6(Landroid/app/Notification$Builder;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "bigContentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 2149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2096
    new-instance v1, Ljava/util/ArrayList;

    #@7
    const/4 v2, 0x3

    #@8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    iput-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@d
    .line 2099
    const/4 v1, 0x1

    #@e
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    #@10
    .line 2100
    iput v4, p0, Landroid/app/Notification$Builder;->mVisibility:I

    #@12
    .line 2101
    iput-object v0, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    #@14
    .line 2104
    iput v4, p0, Landroid/app/Notification$Builder;->mColor:I

    #@16
    .line 2114
    new-instance v1, Landroid/os/Bundle;

    #@18
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@1b
    iput-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    #@1d
    .line 2119
    iput-object v0, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@1f
    .line 2159
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@21
    .line 2162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@24
    move-result-wide v2

    #@25
    iput-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    #@27
    .line 2163
    const/4 v1, -0x1

    #@28
    iput v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    #@2a
    .line 2164
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@2c
    iput-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@2e
    .line 2165
    iput v4, p0, Landroid/app/Notification$Builder;->mPriority:I

    #@30
    .line 2166
    new-instance v1, Ljava/util/ArrayList;

    #@32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@35
    iput-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    #@37
    .line 2168
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3a
    move-result-object v1

    #@3b
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@3d
    const/16 v2, 0x15

    #@3f
    if-ge v1, v2, :cond_0

    #@41
    .line 2169
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@43
    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    #@46
    move-result-object v0

    #@47
    .line 2168
    :cond_0
    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    #@49
    .line 2149
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 2178
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@3
    .line 2179
    iput-object p2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@5
    .line 2180
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->restoreFromNotification(Landroid/app/Notification;)V

    #@8
    .line 2182
    const/4 v3, 0x0

    #@9
    .line 2183
    .local v3, "style":Landroid/app/Notification$Style;
    iget-object v2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@b
    .line 2184
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v7, "android.template"

    #@e
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    .line 2185
    .local v6, "templateClass":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v7

    #@16
    if-nez v7, :cond_1

    #@18
    .line 2186
    invoke-static {v6}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    #@1b
    move-result-object v4

    #@1c
    .line 2187
    .local v4, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-nez v4, :cond_0

    #@1e
    .line 2188
    const-string/jumbo v7, "Notification"

    #@21
    new-instance v8, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v9, "Unknown style class: "

    #@29
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v8

    #@35
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 2189
    return-void

    #@39
    .line 2193
    :cond_0
    const/4 v7, 0x0

    #@3a
    :try_start_0
    new-array v7, v7, [Ljava/lang/Class;

    #@3c
    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@3f
    move-result-object v1

    #@40
    .line 2194
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    const/4 v7, 0x1

    #@41
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@44
    .line 2195
    const/4 v7, 0x0

    #@45
    new-array v7, v7, [Ljava/lang/Object;

    #@47
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    move-result-object v7

    #@4b
    move-object v0, v7

    #@4c
    check-cast v0, Landroid/app/Notification$Style;

    #@4e
    move-object v3, v0

    #@4f
    .line 2196
    .local v3, "style":Landroid/app/Notification$Style;
    invoke-virtual {v3, v2}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 2202
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    .end local v3    # "style":Landroid/app/Notification$Style;
    .end local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    if-eqz v3, :cond_2

    #@54
    .line 2203
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    #@57
    .line 2177
    :cond_2
    return-void

    #@58
    .line 2197
    .restart local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :catch_0
    move-exception v5

    #@59
    .line 2198
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "Notification"

    #@5c
    const-string/jumbo v8, "Could not create Style"

    #@5f
    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@62
    .line 2199
    return-void
.end method

.method private addProfileBadge(Landroid/widget/RemoteViews;I)Z
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "resId"    # I

    #@0
    .prologue
    const v4, 0x1020380

    #@3
    const/16 v3, 0x8

    #@5
    const/4 v2, 0x0

    #@6
    .line 2896
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    #@9
    move-result-object v0

    #@a
    .line 2898
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    const v1, 0x102036d

    #@d
    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@10
    .line 2899
    const v1, 0x102037d

    #@13
    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@16
    .line 2900
    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@19
    .line 2902
    if-eqz v0, :cond_1

    #@1b
    .line 2903
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    #@1e
    .line 2904
    invoke-virtual {p1, p2, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@21
    .line 2908
    if-ne p2, v4, :cond_0

    #@23
    .line 2909
    const v1, 0x102037e

    #@26
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@29
    .line 2911
    :cond_0
    const/4 v1, 0x1

    #@2a
    return v1

    #@2b
    .line 2913
    :cond_1
    return v2
.end method

.method private applyLargeIconBackground(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    const v1, 0x1020006

    #@4
    .line 3246
    const-string/jumbo v0, "setBackgroundResource"

    #@7
    .line 3247
    const v4, 0x10804e5

    #@a
    .line 3246
    invoke-virtual {p1, v1, v0, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@d
    .line 3253
    invoke-direct {p0}, Landroid/app/Notification$Builder;->resolveColor()I

    #@10
    move-result v4

    #@11
    .line 3254
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@13
    .line 3251
    const/4 v2, 0x1

    #@14
    move-object v0, p1

    #@15
    move v6, v3

    #@16
    .line 3249
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@19
    .line 3257
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@1b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e
    move-result-object v0

    #@1f
    .line 3258
    const v3, 0x1050061

    #@22
    .line 3257
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@25
    move-result v2

    #@26
    .local v2, "padding":I
    move-object v0, p1

    #@27
    move v3, v2

    #@28
    move v4, v2

    #@29
    move v5, v2

    #@2a
    .line 3259
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    #@2d
    .line 3245
    return-void
.end method

.method private applyStandardTemplate(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 2952
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 18
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    #@0
    .prologue
    .line 2959
    new-instance v2, Landroid/app/Notification$BuilderRemoteViews;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@9
    move-result-object v3

    #@a
    move/from16 v0, p1

    #@c
    invoke-direct {v2, v3, v0}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    #@f
    .line 2961
    .local v2, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    #@11
    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    #@14
    .line 2963
    const/4 v13, 0x0

    #@15
    .line 2964
    .local v13, "showLine3":Z
    const/4 v12, 0x0

    #@16
    .line 2965
    .local v12, "showLine2":Z
    const/4 v10, 0x0

    #@17
    .line 2967
    .local v10, "contentTextInLine2":Z
    move-object/from16 v0, p0

    #@19
    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@1b
    if-eqz v3, :cond_5

    #@1d
    .line 2968
    move-object/from16 v0, p0

    #@1f
    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@21
    const v4, 0x1020006

    #@24
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    #@27
    .line 2969
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@2b
    move-object/from16 v0, p0

    #@2d
    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    #@30
    .line 2970
    move-object/from16 v0, p0

    #@32
    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@34
    const v4, 0x1020040

    #@37
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    #@3a
    .line 2971
    const v3, 0x1020040

    #@3d
    const/4 v4, 0x0

    #@3e
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@41
    .line 2972
    move-object/from16 v0, p0

    #@43
    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@45
    move-object/from16 v0, p0

    #@47
    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;->processSmallRightIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    #@4a
    .line 2978
    :goto_0
    move-object/from16 v0, p0

    #@4c
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@4e
    if-eqz v3, :cond_0

    #@50
    .line 2979
    move-object/from16 v0, p0

    #@52
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@54
    move-object/from16 v0, p0

    #@56
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@59
    move-result-object v3

    #@5a
    const v4, 0x1020016

    #@5d
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@60
    .line 2981
    :cond_0
    move-object/from16 v0, p0

    #@62
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@64
    if-eqz v3, :cond_1

    #@66
    .line 2982
    move-object/from16 v0, p0

    #@68
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@6a
    move-object/from16 v0, p0

    #@6c
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@6f
    move-result-object v3

    #@70
    const v4, 0x1020075

    #@73
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@76
    .line 2983
    const/4 v13, 0x1

    #@77
    .line 2985
    :cond_1
    move-object/from16 v0, p0

    #@79
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@7b
    if-eqz v3, :cond_6

    #@7d
    .line 2986
    move-object/from16 v0, p0

    #@7f
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@81
    move-object/from16 v0, p0

    #@83
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@86
    move-result-object v3

    #@87
    const v4, 0x102037f

    #@8a
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@8d
    .line 2987
    const v3, 0x102037f

    #@90
    const/4 v4, 0x0

    #@91
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@94
    .line 2988
    const/4 v13, 0x1

    #@95
    .line 3007
    :goto_1
    move-object/from16 v0, p0

    #@97
    iget-object v3, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    #@99
    if-eqz v3, :cond_a

    #@9b
    .line 3008
    move-object/from16 v0, p0

    #@9d
    iget-object v3, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    #@9f
    move-object/from16 v0, p0

    #@a1
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@a4
    move-result-object v3

    #@a5
    const v4, 0x1020075

    #@a8
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@ab
    .line 3009
    move-object/from16 v0, p0

    #@ad
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@af
    if-eqz v3, :cond_9

    #@b1
    .line 3010
    move-object/from16 v0, p0

    #@b3
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@b5
    move-object/from16 v0, p0

    #@b7
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@ba
    move-result-object v3

    #@bb
    const v4, 0x1020015

    #@be
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@c1
    .line 3011
    const v3, 0x1020015

    #@c4
    const/4 v4, 0x0

    #@c5
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@c8
    .line 3012
    const/4 v12, 0x1

    #@c9
    .line 3013
    const/4 v10, 0x1

    #@ca
    .line 3036
    :goto_2
    if-eqz v12, :cond_2

    #@cc
    .line 3039
    move-object/from16 v0, p0

    #@ce
    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V

    #@d1
    .line 3042
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    #@d4
    move-result v3

    #@d5
    if-eqz v3, :cond_3

    #@d7
    .line 3043
    move-object/from16 v0, p0

    #@d9
    iget-boolean v3, v0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    #@db
    if-eqz v3, :cond_e

    #@dd
    .line 3044
    const v3, 0x102037b

    #@e0
    const/4 v4, 0x0

    #@e1
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@e4
    .line 3045
    const-string/jumbo v3, "setBase"

    #@e7
    .line 3046
    move-object/from16 v0, p0

    #@e9
    iget-wide v4, v0, Landroid/app/Notification$Builder;->mWhen:J

    #@eb
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@ee
    move-result-wide v6

    #@ef
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f2
    move-result-wide v16

    #@f3
    sub-long v6, v6, v16

    #@f5
    add-long/2addr v4, v6

    #@f6
    .line 3045
    const v6, 0x102037b

    #@f9
    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    #@fc
    .line 3047
    const-string/jumbo v3, "setStarted"

    #@ff
    const v4, 0x102037b

    #@102
    const/4 v5, 0x1

    #@103
    invoke-virtual {v2, v4, v3, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    #@106
    .line 3055
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    #@108
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@10a
    .line 3056
    move-object/from16 v0, p0

    #@10c
    iget-boolean v4, v0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    #@10e
    move-object/from16 v0, p0

    #@110
    iget-object v5, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@112
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@115
    move-result-object v5

    #@116
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@119
    move-result-object v5

    #@11a
    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    #@11c
    .line 3055
    invoke-static {v3, v4, v5}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    #@11f
    move-result v5

    #@120
    const v3, 0x102037c

    #@123
    const/4 v4, 0x0

    #@124
    .line 3057
    const/4 v6, 0x0

    #@125
    const/4 v7, 0x0

    #@126
    .line 3055
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    #@129
    .line 3061
    if-eqz v10, :cond_f

    #@12b
    const v3, 0x102037d

    #@12e
    .line 3060
    :goto_4
    move-object/from16 v0, p0

    #@130
    invoke-direct {v0, v2, v3}, Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z

    #@133
    move-result v8

    #@134
    .line 3063
    .local v8, "addedBadge":Z
    if-eqz v8, :cond_4

    #@136
    if-eqz v10, :cond_10

    #@138
    .line 3068
    :cond_4
    :goto_5
    if-eqz v13, :cond_11

    #@13a
    const/4 v3, 0x0

    #@13b
    :goto_6
    const v4, 0x102037e

    #@13e
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@141
    .line 3069
    if-eqz v13, :cond_12

    #@143
    const/4 v3, 0x0

    #@144
    :goto_7
    const v4, 0x1020371

    #@147
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@14a
    .line 3070
    return-object v2

    #@14b
    .line 2974
    .end local v8    # "addedBadge":Z
    :cond_5
    move-object/from16 v0, p0

    #@14d
    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@14f
    const v4, 0x1020006

    #@152
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    #@155
    .line 2975
    const v3, 0x1020006

    #@158
    const/4 v4, 0x0

    #@159
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@15c
    .line 2976
    move-object/from16 v0, p0

    #@15e
    iget-object v3, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@160
    move-object/from16 v0, p0

    #@162
    invoke-direct {v0, v3, v2}, Landroid/app/Notification$Builder;->processSmallIconAsLarge(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    #@165
    goto/16 :goto_0

    #@167
    .line 2989
    :cond_6
    move-object/from16 v0, p0

    #@169
    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    #@16b
    if-lez v3, :cond_8

    #@16d
    .line 2990
    move-object/from16 v0, p0

    #@16f
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@171
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@174
    move-result-object v3

    #@175
    .line 2991
    const v4, 0x10e0003

    #@178
    .line 2990
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@17b
    move-result v14

    #@17c
    .line 2992
    .local v14, "tooBig":I
    move-object/from16 v0, p0

    #@17e
    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    #@180
    if-le v3, v14, :cond_7

    #@182
    .line 2994
    move-object/from16 v0, p0

    #@184
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@186
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@189
    move-result-object v3

    #@18a
    .line 2995
    const v4, 0x1040017

    #@18d
    .line 2994
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@190
    move-result-object v3

    #@191
    .line 2993
    move-object/from16 v0, p0

    #@193
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@196
    move-result-object v3

    #@197
    const v4, 0x102037f

    #@19a
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@19d
    .line 3000
    :goto_8
    const v3, 0x102037f

    #@1a0
    const/4 v4, 0x0

    #@1a1
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1a4
    .line 3001
    const/4 v13, 0x1

    #@1a5
    goto/16 :goto_1

    #@1a7
    .line 2997
    :cond_7
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    #@1aa
    move-result-object v11

    #@1ab
    .line 2998
    .local v11, "f":Ljava/text/NumberFormat;
    move-object/from16 v0, p0

    #@1ad
    iget v3, v0, Landroid/app/Notification$Builder;->mNumber:I

    #@1af
    int-to-long v4, v3

    #@1b0
    invoke-virtual {v11, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    #@1b3
    move-result-object v3

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1b9
    move-result-object v3

    #@1ba
    const v4, 0x102037f

    #@1bd
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@1c0
    goto :goto_8

    #@1c1
    .line 3003
    .end local v11    # "f":Ljava/text/NumberFormat;
    .end local v14    # "tooBig":I
    :cond_8
    const v3, 0x102037f

    #@1c4
    const/16 v4, 0x8

    #@1c6
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1c9
    goto/16 :goto_1

    #@1cb
    .line 3015
    :cond_9
    const v3, 0x1020015

    #@1ce
    const/16 v4, 0x8

    #@1d0
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1d3
    goto/16 :goto_2

    #@1d5
    .line 3018
    :cond_a
    const v3, 0x1020015

    #@1d8
    const/16 v4, 0x8

    #@1da
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1dd
    .line 3019
    if-eqz p2, :cond_d

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget v3, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    #@1e3
    if-nez v3, :cond_b

    #@1e5
    move-object/from16 v0, p0

    #@1e7
    iget-boolean v3, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    #@1e9
    if-eqz v3, :cond_d

    #@1eb
    .line 3020
    :cond_b
    const v3, 0x102000d

    #@1ee
    const/4 v4, 0x0

    #@1ef
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1f2
    .line 3022
    move-object/from16 v0, p0

    #@1f4
    iget v3, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    #@1f6
    move-object/from16 v0, p0

    #@1f8
    iget v4, v0, Landroid/app/Notification$Builder;->mProgress:I

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    iget-boolean v5, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    #@1fe
    const v6, 0x102000d

    #@201
    .line 3021
    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    #@204
    .line 3024
    move-object/from16 v0, p0

    #@206
    iget-object v3, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@208
    .line 3025
    const v4, 0x1060053

    #@20b
    .line 3024
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    #@20e
    move-result v3

    #@20f
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@212
    move-result-object v3

    #@213
    const v4, 0x102000d

    #@216
    .line 3023
    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    #@219
    .line 3026
    move-object/from16 v0, p0

    #@21b
    iget v3, v0, Landroid/app/Notification$Builder;->mColor:I

    #@21d
    if-eqz v3, :cond_c

    #@21f
    .line 3027
    move-object/from16 v0, p0

    #@221
    iget v3, v0, Landroid/app/Notification$Builder;->mColor:I

    #@223
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@226
    move-result-object v9

    #@227
    .line 3028
    .local v9, "colorStateList":Landroid/content/res/ColorStateList;
    const v3, 0x102000d

    #@22a
    invoke-virtual {v2, v3, v9}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    #@22d
    .line 3029
    const v3, 0x102000d

    #@230
    invoke-virtual {v2, v3, v9}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    #@233
    .line 3031
    .end local v9    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_c
    const/4 v12, 0x1

    #@234
    goto/16 :goto_2

    #@236
    .line 3033
    :cond_d
    const v3, 0x102000d

    #@239
    const/16 v4, 0x8

    #@23b
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@23e
    goto/16 :goto_2

    #@240
    .line 3049
    :cond_e
    const v3, 0x102008c

    #@243
    const/4 v4, 0x0

    #@244
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@247
    .line 3050
    const-string/jumbo v3, "setTime"

    #@24a
    move-object/from16 v0, p0

    #@24c
    iget-wide v4, v0, Landroid/app/Notification$Builder;->mWhen:J

    #@24e
    const v6, 0x102008c

    #@251
    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    #@254
    goto/16 :goto_3

    #@256
    .line 3061
    :cond_f
    const v3, 0x1020380

    #@259
    goto/16 :goto_4

    #@25b
    .line 3064
    .restart local v8    # "addedBadge":Z
    :cond_10
    const/4 v13, 0x1

    #@25c
    goto/16 :goto_5

    #@25e
    .line 3068
    :cond_11
    const/16 v3, 0x8

    #@260
    goto/16 :goto_6

    #@262
    .line 3069
    :cond_12
    const/16 v3, 0x8

    #@264
    goto/16 :goto_7
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "layoutId"    # I

    #@0
    .prologue
    const v6, 0x1020365

    #@3
    const/4 v5, 0x0

    #@4
    .line 3127
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    #@7
    move-result-object v1

    #@8
    .line 3129
    .local v1, "big":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    #@b
    .line 3131
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v0

    #@11
    .line 3132
    .local v0, "N":I
    if-lez v0, :cond_1

    #@13
    .line 3133
    invoke-virtual {v1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@16
    .line 3134
    const v4, 0x102036e

    #@19
    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1c
    .line 3135
    const/4 v4, 0x3

    #@1d
    if-le v0, v4, :cond_0

    #@1f
    const/4 v0, 0x3

    #@20
    .line 3136
    :cond_0
    const/4 v3, 0x0

    #@21
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    #@23
    .line 3137
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Landroid/app/Notification$Action;

    #@2b
    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    #@2e
    move-result-object v2

    #@2f
    .line 3138
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    #@32
    .line 3136
    add-int/lit8 v3, v3, 0x1

    #@34
    goto :goto_0

    #@35
    .line 3141
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public static calculateTopPadding(Landroid/content/Context;ZF)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "hasThreeLines"    # Z
    .param p2, "fontScale"    # F

    #@0
    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    #@2
    .line 3106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v4

    #@6
    if-eqz p1, :cond_0

    #@8
    .line 3107
    const v3, 0x105005e

    #@b
    .line 3106
    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@e
    move-result v2

    #@f
    .line 3109
    .local v2, "padding":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@12
    move-result-object v4

    #@13
    if-eqz p1, :cond_1

    #@15
    .line 3110
    const v3, 0x1050060

    #@18
    .line 3109
    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@1b
    move-result v1

    #@1c
    .line 3112
    .local v1, "largePadding":I
    const v3, 0x3fa66666    # 1.3f

    #@1f
    invoke-static {p2, v5, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    #@22
    move-result v3

    #@23
    sub-float/2addr v3, v5

    #@24
    .line 3113
    const v4, 0x3e999998    # 0.29999995f

    #@27
    .line 3112
    div-float v0, v3, v4

    #@29
    .line 3117
    .local v0, "largeFactor":F
    sub-float v3, v5, v0

    #@2b
    int-to-float v4, v2

    #@2c
    mul-float/2addr v3, v4

    #@2d
    int-to-float v4, v1

    #@2e
    mul-float/2addr v4, v0

    #@2f
    add-float/2addr v3, v4

    #@30
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    #@33
    move-result v3

    #@34
    return v3

    #@35
    .line 3108
    .end local v0    # "largeFactor":F
    .end local v1    # "largePadding":I
    .end local v2    # "padding":I
    :cond_0
    const v3, 0x105005d

    #@38
    goto :goto_0

    #@39
    .line 3111
    .restart local v2    # "padding":I
    :cond_1
    const v3, 0x105005f

    #@3c
    goto :goto_1
.end method

.method private generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const v1, 0x1020366

    #@4
    .line 3173
    iget-object v4, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@6
    if-nez v4, :cond_1

    #@8
    const/4 v6, 0x1

    #@9
    .line 3174
    .local v6, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    #@b
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@10
    move-result-object v5

    #@11
    .line 3175
    if-eqz v6, :cond_2

    #@13
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    #@16
    move-result v4

    #@17
    .line 3174
    :goto_1
    invoke-direct {v0, v5, v4}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    #@1a
    .line 3177
    .local v0, "button":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@1d
    move-result-object v2

    #@1e
    .local v2, "ai":Landroid/graphics/drawable/Icon;
    move-object v4, v3

    #@1f
    move-object v5, v3

    #@20
    .line 3178
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelative(ILandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V

    #@23
    .line 3179
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@25
    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@2c
    .line 3180
    if-nez v6, :cond_0

    #@2e
    .line 3181
    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@30
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    #@33
    .line 3183
    :cond_0
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@35
    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    #@38
    .line 3184
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->processLegacyAction(Landroid/app/Notification$Action;Landroid/widget/RemoteViews;)V

    #@3b
    .line 3185
    return-object v0

    #@3c
    .line 3173
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v2    # "ai":Landroid/graphics/drawable/Icon;
    .end local v6    # "tombstone":Z
    :cond_1
    const/4 v6, 0x0

    #@3d
    .restart local v6    # "tombstone":Z
    goto :goto_0

    #@3e
    .line 3176
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    #@41
    move-result v4

    #@42
    goto :goto_1
.end method

.method private getActionLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 3704
    const v0, 0x1090080

    #@3
    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 3708
    const v0, 0x1090082

    #@3
    return v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 3684
    const v0, 0x1090085

    #@3
    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 3688
    const v0, 0x1090086

    #@3
    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 3692
    const v0, 0x1090089

    #@3
    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 3696
    const v0, 0x109008a

    #@3
    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 3700
    const v0, 0x109008b

    #@3
    return v0
.end method

.method private static getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "templateClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3531
    const/4 v3, 0x4

    #@2
    new-array v0, v3, [Ljava/lang/Class;

    #@4
    .line 3532
    const-class v3, Landroid/app/Notification$BigTextStyle;

    #@6
    aput-object v3, v0, v2

    #@8
    const-class v3, Landroid/app/Notification$BigPictureStyle;

    #@a
    const/4 v4, 0x1

    #@b
    aput-object v3, v0, v4

    #@d
    const-class v3, Landroid/app/Notification$InboxStyle;

    #@f
    const/4 v4, 0x2

    #@10
    aput-object v3, v0, v4

    #@12
    const-class v3, Landroid/app/Notification$MediaStyle;

    #@14
    const/4 v4, 0x3

    #@15
    aput-object v3, v0, v4

    #@17
    .line 3533
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    array-length v3, v0

    #@18
    :goto_0
    if-ge v2, v3, :cond_1

    #@1a
    aget-object v1, v0, v2

    #@1c
    .line 3534
    .local v1, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 3535
    return-object v1

    #@27
    .line 3533
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 3538
    .end local v1    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    const/4 v2, 0x0

    #@2b
    return-object v2
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 2882
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    .line 2883
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    #@8
    .line 2884
    return-object v4

    #@9
    .line 2886
    :cond_0
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v4

    #@f
    .line 2887
    const v5, 0x1050062

    #@12
    .line 2886
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@15
    move-result v3

    #@16
    .line 2888
    .local v3, "size":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@18
    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1b
    move-result-object v1

    #@1c
    .line 2889
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    #@1e
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@21
    .line 2890
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@24
    .line 2891
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@27
    .line 2892
    return-object v1
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    #@0
    .prologue
    .line 2877
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v0

    #@6
    .line 2878
    new-instance v1, Landroid/os/UserHandle;

    #@8
    iget v2, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    #@a
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@d
    const/4 v2, 0x0

    #@e
    .line 2877
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method private hasThreeLines()Z
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 3089
    iget-object v6, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    #@3
    if-eqz v6, :cond_2

    #@5
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@7
    if-eqz v6, :cond_2

    #@9
    const/4 v1, 0x1

    #@a
    .line 3090
    .local v1, "contentTextInLine2":Z
    :goto_0
    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@c
    if-eqz v6, :cond_3

    #@e
    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@10
    invoke-virtual {v6}, Landroid/app/Notification$Style;->hasProgress()Z

    #@13
    move-result v4

    #@14
    .line 3092
    :goto_1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v6

    #@18
    if-eqz v6, :cond_0

    #@1a
    if-eqz v1, :cond_4

    #@1c
    :cond_0
    const/4 v0, 0x0

    #@1d
    .line 3093
    .local v0, "badgeInLine3":Z
    :goto_2
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@1f
    if-nez v6, :cond_1

    #@21
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@23
    if-eqz v6, :cond_5

    #@25
    :cond_1
    const/4 v3, 0x1

    #@26
    .line 3095
    :goto_3
    iget-object v6, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    #@28
    if-eqz v6, :cond_6

    #@2a
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@2c
    if-eqz v6, :cond_6

    #@2e
    const/4 v2, 0x1

    #@2f
    .line 3098
    :goto_4
    if-eqz v2, :cond_9

    #@31
    :goto_5
    return v3

    #@32
    .line 3089
    .end local v0    # "badgeInLine3":Z
    .end local v1    # "contentTextInLine2":Z
    :cond_2
    const/4 v1, 0x0

    #@33
    .restart local v1    # "contentTextInLine2":Z
    goto :goto_0

    #@34
    .line 3090
    :cond_3
    const/4 v4, 0x1

    #@35
    .local v4, "hasProgress":Z
    goto :goto_1

    #@36
    .line 3092
    .end local v4    # "hasProgress":Z
    :cond_4
    const/4 v0, 0x1

    #@37
    .restart local v0    # "badgeInLine3":Z
    goto :goto_2

    #@38
    .line 3093
    :cond_5
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    #@3a
    if-gtz v6, :cond_1

    #@3c
    .line 3094
    move v3, v0

    #@3d
    .local v3, "hasLine3":Z
    goto :goto_3

    #@3e
    .line 3096
    .end local v3    # "hasLine3":Z
    :cond_6
    if-eqz v4, :cond_8

    #@40
    iget-object v6, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    #@42
    if-nez v6, :cond_8

    #@44
    .line 3097
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    #@46
    if-nez v6, :cond_7

    #@48
    iget-boolean v2, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    #@4a
    .local v2, "hasLine2":Z
    goto :goto_4

    #@4b
    .end local v2    # "hasLine2":Z
    :cond_7
    const/4 v2, 0x1

    #@4c
    .local v2, "hasLine2":Z
    goto :goto_4

    #@4d
    .line 3096
    .end local v2    # "hasLine2":Z
    :cond_8
    const/4 v2, 0x0

    #@4e
    .restart local v2    # "hasLine2":Z
    goto :goto_4

    #@4f
    .end local v2    # "hasLine2":Z
    :cond_9
    move v3, v5

    #@50
    .line 3098
    goto :goto_5
.end method

.method private isLegacy()Z
    .locals 1

    #@0
    .prologue
    .line 3193
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 3160
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 3162
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    #@d
    move-result v0

    #@e
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 3145
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3146
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@6
    return-object v0

    #@7
    .line 3148
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    #@a
    move-result v0

    #@b
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    #@0
    .prologue
    .line 3166
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 3168
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    #@d
    move-result v0

    #@e
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3153
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 3154
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    #@7
    return-object v0

    #@8
    .line 3156
    :cond_0
    return-object v1
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 3234
    if-eqz p1, :cond_0

    #@2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 3235
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    #@a
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@c
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    #@f
    move-result v0

    #@10
    .line 3234
    if-eqz v0, :cond_0

    #@12
    .line 3236
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->applyLargeIconBackground(Landroid/widget/RemoteViews;)V

    #@15
    .line 3233
    :goto_0
    return-void

    #@16
    .line 3238
    :cond_0
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->removeLargeIconBackground(Landroid/widget/RemoteViews;)V

    #@19
    goto :goto_0
.end method

.method private processLegacyAction(Landroid/app/Notification$Action;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "button"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 3197
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    #@8
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@a
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 3199
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@16
    const v1, 0x1060050

    #@19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    #@1c
    move-result v0

    #@1d
    .line 3200
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@1f
    .line 3198
    const v2, 0x1020366

    #@22
    const/4 v3, 0x0

    #@23
    invoke-virtual {p2, v2, v3, v0, v1}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelativeColorFilter(IIILandroid/graphics/PorterDuff$Mode;)V

    #@26
    .line 3196
    :cond_1
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3205
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3206
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    #@8
    invoke-virtual {v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 3208
    :cond_0
    return-object p1
.end method

.method private processSmallIconAsLarge(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 3216
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_1

    #@7
    .line 3219
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@9
    .line 3217
    const v1, 0x1020006

    #@c
    const/4 v2, 0x0

    #@d
    move-object v0, p2

    #@e
    move v4, v3

    #@f
    move v6, v3

    #@10
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@13
    .line 3220
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->applyLargeIconBackground(Landroid/widget/RemoteViews;)V

    #@16
    .line 3215
    :cond_0
    :goto_0
    return-void

    #@17
    .line 3222
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    #@19
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@1b
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 3223
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->applyLargeIconBackground(Landroid/widget/RemoteViews;)V

    #@24
    goto :goto_0
.end method

.method private processSmallRightIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v1, 0x1020040

    #@3
    const/4 v3, -0x1

    #@4
    .line 3270
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 3273
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@c
    .line 3271
    const/4 v2, 0x0

    #@d
    move-object v0, p2

    #@e
    move v4, v3

    #@f
    move v6, v3

    #@10
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@13
    .line 3275
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_3

    #@19
    .line 3276
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    #@1c
    move-result v0

    #@1d
    const/4 v2, 0x2

    #@1e
    if-ne v0, v2, :cond_3

    #@20
    .line 3277
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    #@22
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    #@27
    move-result v4

    #@28
    invoke-virtual {v0, v2, v4}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    #@2b
    move-result v7

    #@2c
    .line 3278
    :goto_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@2f
    move-result v0

    #@30
    if-eqz v0, :cond_1

    #@32
    if-eqz v7, :cond_2

    #@34
    .line 3280
    :cond_1
    const-string/jumbo v0, "setBackgroundResource"

    #@37
    .line 3281
    const v2, 0x10804e5

    #@3a
    .line 3279
    invoke-virtual {p2, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@3d
    .line 3287
    invoke-direct {p0}, Landroid/app/Notification$Builder;->resolveColor()I

    #@40
    move-result v4

    #@41
    .line 3288
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@43
    .line 3285
    const/4 v2, 0x1

    #@44
    move-object v0, p2

    #@45
    move v6, v3

    #@46
    .line 3283
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@49
    .line 3269
    :cond_2
    return-void

    #@4a
    .line 3275
    :cond_3
    const/4 v7, 0x0

    #@4b
    .local v7, "gray":Z
    goto :goto_0
.end method

.method private rebuild()Landroid/app/Notification;
    .locals 3

    #@0
    .prologue
    .line 3490
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 3491
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "rebuild() only valid when in \'rebuild\' mode."

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 3493
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasThreeLines()Z

    #@10
    move-result v1

    #@11
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    #@13
    .line 3495
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@15
    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@17
    .line 3497
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.rebuild.largeIcon"

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 3498
    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@22
    const-string/jumbo v1, "android.largeIcon"

    #@25
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/graphics/Bitmap;

    #@2b
    iput-object v1, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@2d
    .line 3500
    :cond_1
    const-string/jumbo v1, "android.rebuild.largeIcon"

    #@30
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@33
    .line 3502
    const-string/jumbo v1, "android.rebuild.contentView"

    #@36
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@39
    move-result v1

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 3503
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@3e
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    #@41
    move-result-object v2

    #@42
    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@45
    .line 3504
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@47
    if-eqz v1, :cond_2

    #@49
    .line 3505
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@4b
    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@4d
    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateContentView(Landroid/app/Notification;)V

    #@50
    .line 3508
    :cond_2
    const-string/jumbo v1, "android.rebuild.contentView"

    #@53
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@56
    .line 3510
    const-string/jumbo v1, "android.rebuild.bigView"

    #@59
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_3

    #@5f
    .line 3511
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@61
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    #@64
    move-result-object v2

    #@65
    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@68
    .line 3512
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@6a
    if-eqz v1, :cond_3

    #@6c
    .line 3513
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@6e
    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@70
    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateBigContentView(Landroid/app/Notification;)V

    #@73
    .line 3516
    :cond_3
    const-string/jumbo v1, "android.rebuild.bigView"

    #@76
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@79
    .line 3518
    const-string/jumbo v1, "android.rebuild.hudView"

    #@7c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@7f
    move-result v1

    #@80
    if-eqz v1, :cond_4

    #@82
    .line 3519
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@84
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    #@87
    move-result-object v2

    #@88
    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@8b
    .line 3520
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@8d
    if-eqz v1, :cond_4

    #@8f
    .line 3521
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@91
    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@93
    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateHeadsUpContentView(Landroid/app/Notification;)V

    #@96
    .line 3524
    :cond_4
    const-string/jumbo v1, "android.rebuild.hudView"

    #@99
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@9c
    .line 3526
    const/4 v1, 0x0

    #@9d
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    #@9f
    .line 3527
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    #@a1
    return-object v1
.end method

.method public static rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 3460
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2
    .line 3461
    .local v4, "extras":Landroid/os/Bundle;
    const-string/jumbo v5, "android.rebuild"

    #@5
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_0

    #@b
    return-object p1

    #@c
    .line 3462
    :cond_0
    const-string/jumbo v5, "android.rebuild"

    #@f
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@12
    .line 3466
    const-string/jumbo v5, "android.rebuild.applicationInfo"

    #@15
    .line 3465
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@1b
    .line 3470
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x4

    #@1c
    .line 3469
    :try_start_0
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v2

    #@20
    .line 3476
    .local v2, "builderContext":Landroid/content/Context;
    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    #@22
    invoke-direct {v1, v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    #@25
    .line 3477
    .local v1, "b":Landroid/app/Notification$Builder;
    invoke-direct {v1}, Landroid/app/Notification$Builder;->rebuild()Landroid/app/Notification;

    #@28
    move-result-object v5

    #@29
    return-object v5

    #@2a
    .line 3471
    .end local v1    # "b":Landroid/app/Notification$Builder;
    .end local v2    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v3

    #@2b
    .line 3472
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "Notification"

    #@2e
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "ApplicationInfo "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    const-string/jumbo v7, " not found"

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 3473
    move-object v2, p0

    #@4d
    .restart local v2    # "builderContext":Landroid/content/Context;
    goto :goto_0
.end method

.method private removeLargeIconBackground(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 3263
    const-string/jumbo v0, "setBackgroundResource"

    #@3
    const v1, 0x1020006

    #@6
    const/4 v2, 0x0

    #@7
    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@a
    .line 3262
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const v7, 0x1020040

    #@4
    const v1, 0x1020006

    #@7
    const/16 v6, 0x8

    #@9
    const/4 v2, 0x0

    #@a
    .line 2929
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->removeLargeIconBackground(Landroid/widget/RemoteViews;)V

    #@d
    move-object v0, p1

    #@e
    move v3, v2

    #@f
    move v4, v2

    #@10
    move v5, v2

    #@11
    .line 2930
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    #@14
    .line 2931
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    #@17
    .line 2932
    const-string/jumbo v0, "setBackgroundResource"

    #@1a
    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@1d
    .line 2933
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@20
    .line 2934
    const-string/jumbo v0, "setBackgroundResource"

    #@23
    invoke-virtual {p1, v7, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@26
    .line 2935
    invoke-virtual {p1, v7, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    #@29
    .line 2936
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    #@2c
    .line 2937
    const v0, 0x1020016

    #@2f
    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@32
    .line 2938
    const v0, 0x1020075

    #@35
    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@38
    .line 2939
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->unshrinkLine3Text(Landroid/widget/RemoteViews;)V

    #@3b
    .line 2940
    const v0, 0x1020015

    #@3e
    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@41
    .line 2941
    const v0, 0x1020015

    #@44
    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@47
    .line 2942
    const v0, 0x102037f

    #@4a
    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@4d
    .line 2943
    const v0, 0x102008c

    #@50
    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@53
    .line 2944
    const v0, 0x102037e

    #@56
    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@59
    .line 2945
    const v0, 0x1020371

    #@5c
    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@5f
    .line 2946
    const v0, 0x102000d

    #@62
    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@65
    .line 2947
    const v0, 0x102037b

    #@68
    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@6b
    .line 2948
    const v0, 0x102008c

    #@6e
    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@71
    .line 2928
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "big"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v2, 0x1020365

    #@3
    const/16 v1, 0x8

    #@5
    .line 3121
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@8
    .line 3122
    const v0, 0x102036e

    #@b
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@e
    .line 3123
    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    #@11
    .line 3120
    return-void
.end method

.method private resolveColor()I
    .locals 2

    #@0
    .prologue
    .line 3301
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 3302
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@6
    const v1, 0x106004f

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    #@c
    move-result v0

    #@d
    return v0

    #@e
    .line 3304
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    #@10
    return v0
.end method

.method private restoreFromNotification(Landroid/app/Notification;)V
    .locals 4
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 3569
    iget-wide v2, p1, Landroid/app/Notification;->when:J

    #@2
    iput-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    #@4
    .line 3570
    invoke-static {p1}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@7
    move-result-object v1

    #@8
    iput-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@a
    .line 3571
    iget v1, p1, Landroid/app/Notification;->iconLevel:I

    #@c
    iput v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    #@e
    .line 3572
    iget v1, p1, Landroid/app/Notification;->number:I

    #@10
    iput v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    #@12
    .line 3574
    iget v1, p1, Landroid/app/Notification;->color:I

    #@14
    iput v1, p0, Landroid/app/Notification$Builder;->mColor:I

    #@16
    .line 3576
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@18
    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@1a
    .line 3577
    iget-object v1, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@1c
    iput-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    #@1e
    .line 3578
    iget-object v1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@20
    iput-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    #@22
    .line 3579
    iget-object v1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@24
    iput-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    #@26
    .line 3580
    iget-object v1, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@28
    iput-object v1, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    #@2a
    .line 3581
    invoke-static {p1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@2d
    move-result-object v1

    #@2e
    iput-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@30
    .line 3582
    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@32
    iput-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    #@34
    .line 3583
    iget v1, p1, Landroid/app/Notification;->audioStreamType:I

    #@36
    iput v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    #@38
    .line 3584
    iget-object v1, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@3a
    iput-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@3c
    .line 3586
    iget-object v1, p1, Landroid/app/Notification;->vibrate:[J

    #@3e
    iput-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    #@40
    .line 3587
    iget v1, p1, Landroid/app/Notification;->ledARGB:I

    #@42
    iput v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    #@44
    .line 3588
    iget v1, p1, Landroid/app/Notification;->ledOnMS:I

    #@46
    iput v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    #@48
    .line 3589
    iget v1, p1, Landroid/app/Notification;->ledOffMS:I

    #@4a
    iput v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    #@4c
    .line 3590
    iget v1, p1, Landroid/app/Notification;->defaults:I

    #@4e
    iput v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    #@50
    .line 3591
    iget v1, p1, Landroid/app/Notification;->flags:I

    #@52
    iput v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    #@54
    .line 3593
    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    #@56
    iput-object v1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    #@58
    .line 3594
    invoke-static {p1}, Landroid/app/Notification;->-get0(Landroid/app/Notification;)Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    iput-object v1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    #@5e
    .line 3595
    invoke-static {p1}, Landroid/app/Notification;->-get3(Landroid/app/Notification;)Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    iput-object v1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    #@64
    .line 3596
    iget v1, p1, Landroid/app/Notification;->priority:I

    #@66
    iput v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    #@68
    .line 3597
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@6d
    .line 3598
    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@6f
    if-eqz v1, :cond_0

    #@71
    .line 3599
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@73
    iget-object v2, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@75
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@78
    .line 3601
    :cond_0
    iget v1, p1, Landroid/app/Notification;->visibility:I

    #@7a
    iput v1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    #@7c
    .line 3603
    iget-object v1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@7e
    iput-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    #@80
    .line 3606
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@82
    .line 3607
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.originatingUserId"

    #@85
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@88
    move-result v1

    #@89
    iput v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    #@8b
    .line 3608
    const-string/jumbo v1, "android.title"

    #@8e
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@91
    move-result-object v1

    #@92
    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@94
    .line 3609
    const-string/jumbo v1, "android.text"

    #@97
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@9a
    move-result-object v1

    #@9b
    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@9d
    .line 3610
    const-string/jumbo v1, "android.subText"

    #@a0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@a3
    move-result-object v1

    #@a4
    iput-object v1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    #@a6
    .line 3611
    const-string/jumbo v1, "android.infoText"

    #@a9
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@ac
    move-result-object v1

    #@ad
    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@af
    .line 3612
    const-string/jumbo v1, "android.progress"

    #@b2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@b5
    move-result v1

    #@b6
    iput v1, p0, Landroid/app/Notification$Builder;->mProgress:I

    #@b8
    .line 3613
    const-string/jumbo v1, "android.progressMax"

    #@bb
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@be
    move-result v1

    #@bf
    iput v1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    #@c1
    .line 3614
    const-string/jumbo v1, "android.progressIndeterminate"

    #@c4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@c7
    move-result v1

    #@c8
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    #@ca
    .line 3615
    const-string/jumbo v1, "android.showChronometer"

    #@cd
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@d0
    move-result v1

    #@d1
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    #@d3
    .line 3616
    const-string/jumbo v1, "android.showWhen"

    #@d6
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@d9
    move-result v1

    #@da
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    #@dc
    .line 3617
    const-string/jumbo v1, "android.largeIcon"

    #@df
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@e2
    move-result v1

    #@e3
    if-eqz v1, :cond_1

    #@e5
    .line 3618
    const-string/jumbo v1, "android.largeIcon"

    #@e8
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@eb
    move-result-object v1

    #@ec
    check-cast v1, Landroid/graphics/drawable/Icon;

    #@ee
    iput-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@f0
    .line 3620
    :cond_1
    const-string/jumbo v1, "android.people"

    #@f3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@f6
    move-result v1

    #@f7
    if-eqz v1, :cond_2

    #@f9
    .line 3621
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    #@fb
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@fe
    .line 3622
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    #@100
    const-string/jumbo v2, "android.people"

    #@103
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@106
    move-result-object v2

    #@107
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@10a
    .line 3566
    :cond_2
    return-void
.end method

.method private sanitizeColor()I
    .locals 2

    #@0
    .prologue
    .line 3294
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3295
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    #@6
    const/high16 v1, -0x1000000

    #@8
    or-int/2addr v0, v1

    #@9
    iput v0, p0, Landroid/app/Notification$Builder;->mColor:I

    #@b
    .line 3297
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    #@d
    return v0
.end method

.method private setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "bigContentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 3550
    iput-object p2, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@2
    .line 3551
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3552
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    #@8
    const-string/jumbo v1, "android.rebuild.bigViewActionCount"

    #@b
    .line 3553
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@e
    move-result v2

    #@f
    .line 3552
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@12
    .line 3549
    :cond_0
    return-void
.end method

.method private setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 3542
    iput-object p2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@2
    .line 3543
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3544
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    #@8
    const-string/jumbo v1, "android.rebuild.contentViewActionCount"

    #@b
    .line 3545
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@e
    move-result v2

    #@f
    .line 3544
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@12
    .line 3541
    :cond_0
    return-void
.end method

.method private setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "headsUpContentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 3559
    iput-object p2, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@2
    .line 3560
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3561
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    #@8
    const-string/jumbo v1, "android.rebuild.hudViewActionCount"

    #@b
    .line 3562
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@e
    move-result v2

    #@f
    .line 3561
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@12
    .line 3558
    :cond_0
    return-void
.end method

.method private showsTimeOrChronometer()Z
    .locals 4

    #@0
    .prologue
    .line 3078
    iget-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private shrinkLine3Text(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 2917
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    .line 2918
    const v2, 0x105005c

    #@9
    .line 2917
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@c
    move-result v1

    #@d
    int-to-float v0, v1

    #@e
    .line 2919
    .local v0, "subTextSize":F
    const v1, 0x1020075

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    #@15
    .line 2916
    return-void
.end method

.method public static stripForDelivery(Landroid/app/Notification;)V
    .locals 8
    .param p0, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 3406
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@5
    const-string/jumbo v4, "android.template"

    #@8
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 3409
    .local v2, "templateClass":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_5

    #@12
    .line 3410
    invoke-static {v2}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    #@15
    move-result-object v3

    #@16
    if-eqz v3, :cond_6

    #@18
    const/4 v1, 0x1

    #@19
    .line 3412
    .local v1, "stripViews":Z
    :goto_0
    const/4 v0, 0x0

    #@1a
    .line 3414
    .local v0, "isStripped":Z
    iget-object v3, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@1c
    if-eqz v3, :cond_0

    #@1e
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@20
    const-string/jumbo v4, "android.largeIcon"

    #@23
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_0

    #@29
    .line 3417
    iput-object v5, p0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@2b
    .line 3418
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2d
    const-string/jumbo v4, "android.rebuild.largeIcon"

    #@30
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@33
    .line 3419
    const/4 v0, 0x1

    #@34
    .line 3423
    :cond_0
    if-eqz v1, :cond_1

    #@36
    .line 3424
    iget-object v3, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@38
    instance-of v3, v3, Landroid/app/Notification$BuilderRemoteViews;

    #@3a
    .line 3423
    if-eqz v3, :cond_1

    #@3c
    .line 3425
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@3e
    const-string/jumbo v4, "android.rebuild.contentViewActionCount"

    #@41
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@44
    move-result v3

    #@45
    .line 3426
    iget-object v4, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@47
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@4a
    move-result v4

    #@4b
    .line 3425
    if-ne v3, v4, :cond_1

    #@4d
    .line 3427
    iput-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@4f
    .line 3428
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@51
    const-string/jumbo v4, "android.rebuild.contentView"

    #@54
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@57
    .line 3429
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@59
    const-string/jumbo v4, "android.rebuild.contentViewActionCount"

    #@5c
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@5f
    .line 3430
    const/4 v0, 0x1

    #@60
    .line 3432
    :cond_1
    if-eqz v1, :cond_2

    #@62
    .line 3433
    iget-object v3, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@64
    instance-of v3, v3, Landroid/app/Notification$BuilderRemoteViews;

    #@66
    .line 3432
    if-eqz v3, :cond_2

    #@68
    .line 3434
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@6a
    const-string/jumbo v4, "android.rebuild.bigViewActionCount"

    #@6d
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@70
    move-result v3

    #@71
    .line 3435
    iget-object v4, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@73
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@76
    move-result v4

    #@77
    .line 3434
    if-ne v3, v4, :cond_2

    #@79
    .line 3436
    iput-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@7b
    .line 3437
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@7d
    const-string/jumbo v4, "android.rebuild.bigView"

    #@80
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@83
    .line 3438
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@85
    const-string/jumbo v4, "android.rebuild.bigViewActionCount"

    #@88
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@8b
    .line 3439
    const/4 v0, 0x1

    #@8c
    .line 3441
    :cond_2
    if-eqz v1, :cond_3

    #@8e
    .line 3442
    iget-object v3, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@90
    instance-of v3, v3, Landroid/app/Notification$BuilderRemoteViews;

    #@92
    .line 3441
    if-eqz v3, :cond_3

    #@94
    .line 3443
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@96
    const-string/jumbo v4, "android.rebuild.hudViewActionCount"

    #@99
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@9c
    move-result v3

    #@9d
    .line 3444
    iget-object v4, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@9f
    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@a2
    move-result v4

    #@a3
    .line 3443
    if-ne v3, v4, :cond_3

    #@a5
    .line 3445
    iput-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@a7
    .line 3446
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@a9
    const-string/jumbo v4, "android.rebuild.hudView"

    #@ac
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@af
    .line 3447
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@b1
    const-string/jumbo v4, "android.rebuild.hudViewActionCount"

    #@b4
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@b7
    .line 3448
    const/4 v0, 0x1

    #@b8
    .line 3451
    :cond_3
    if-eqz v0, :cond_4

    #@ba
    .line 3452
    iget-object v3, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@bc
    const-string/jumbo v4, "android.rebuild"

    #@bf
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@c2
    .line 3401
    :cond_4
    return-void

    #@c3
    .line 3409
    .end local v0    # "isStripped":Z
    .end local v1    # "stripViews":Z
    :cond_5
    const/4 v1, 0x1

    #@c4
    .restart local v1    # "stripViews":Z
    goto/16 :goto_0

    #@c6
    .line 3410
    .end local v1    # "stripViews":Z
    :cond_6
    const/4 v1, 0x0

    #@c7
    .restart local v1    # "stripViews":Z
    goto/16 :goto_0
.end method

.method private unshrinkLine3Text(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 2923
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v1

    #@6
    .line 2924
    const v2, 0x105005a

    #@9
    .line 2923
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@c
    move-result v1

    #@d
    int-to-float v0, v1

    #@e
    .line 2925
    .local v0, "regularTextSize":F
    const v1, 0x1020075

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    #@15
    .line 2922
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2779
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    new-instance v1, Landroid/app/Notification$Action;

    #@4
    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@7
    move-result-object v2

    #@8
    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    #@b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 2780
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    #@0
    .prologue
    .line 2799
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 2800
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2714
    if-eqz p1, :cond_0

    #@2
    .line 2715
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    #@4
    if-nez v0, :cond_1

    #@6
    .line 2716
    new-instance v0, Landroid/os/Bundle;

    #@8
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@b
    iput-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    #@d
    .line 2721
    :cond_0
    :goto_0
    return-object p0

    #@e
    .line 2718
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    #@10
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@13
    goto :goto_0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2657
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 2658
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3639
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 3640
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@7
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    #@a
    .line 3642
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 3643
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@10
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    #@13
    .line 3645
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@15
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    #@18
    move-result v1

    #@19
    iput v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    #@1b
    .line 3646
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasThreeLines()Z

    #@1e
    move-result v1

    #@1f
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    #@21
    .line 3648
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    #@24
    move-result-object v0

    #@25
    .line 3650
    .local v0, "n":Landroid/app/Notification;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 3651
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@2b
    invoke-virtual {v1}, Landroid/app/Notification$Style;->purgeResources()V

    #@2e
    .line 3652
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@30
    invoke-virtual {v1, v0}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    #@33
    move-result-object v0

    #@34
    .line 3655
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    #@36
    if-eqz v1, :cond_3

    #@38
    .line 3656
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@3a
    iget-object v2, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    #@3c
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@3f
    .line 3659
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    #@41
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    #@44
    move-result v1

    #@45
    if-lez v1, :cond_4

    #@47
    .line 3660
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@49
    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    #@4b
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@4e
    .line 3661
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    #@50
    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    #@53
    .line 3664
    :cond_4
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@55
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->populateExtras(Landroid/os/Bundle;)V

    #@58
    .line 3665
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@5a
    if-eqz v1, :cond_5

    #@5c
    .line 3666
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@5e
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@60
    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@63
    .line 3669
    :cond_5
    iput-boolean v3, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    #@65
    .line 3670
    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 3679
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    #@8
    .line 3680
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 3312
    new-instance v0, Landroid/app/Notification;

    #@3
    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    #@6
    .line 3313
    .local v0, "n":Landroid/app/Notification;
    iget-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    #@8
    iput-wide v2, v0, Landroid/app/Notification;->when:J

    #@a
    .line 3314
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@c
    invoke-static {v0, v1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@f
    .line 3315
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@11
    if-eqz v1, :cond_0

    #@13
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@15
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x2

    #@1a
    if-ne v1, v2, :cond_0

    #@1c
    .line 3316
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@1e
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    #@21
    move-result v1

    #@22
    iput v1, v0, Landroid/app/Notification;->icon:I

    #@24
    .line 3318
    :cond_0
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    #@26
    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    #@28
    .line 3319
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    #@2a
    iput v1, v0, Landroid/app/Notification;->number:I

    #@2c
    .line 3321
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()I

    #@2f
    move-result v1

    #@30
    iput v1, v0, Landroid/app/Notification;->color:I

    #@32
    .line 3323
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    #@35
    move-result-object v1

    #@36
    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@39
    .line 3324
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    #@3b
    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@3d
    .line 3325
    iget-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    #@3f
    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@41
    .line 3326
    iget-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    #@43
    iput-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@45
    .line 3327
    iget-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    #@47
    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@49
    .line 3328
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    #@4c
    move-result-object v1

    #@4d
    iput-object v1, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    #@4f
    .line 3329
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@51
    invoke-static {v0, v1}, Landroid/app/Notification;->-set1(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@54
    .line 3330
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@56
    if-eqz v1, :cond_1

    #@58
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@5a
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    #@5d
    move-result v1

    #@5e
    if-ne v1, v4, :cond_1

    #@60
    .line 3331
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@62
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    #@65
    move-result-object v1

    #@66
    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@68
    .line 3333
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    #@6a
    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@6c
    .line 3334
    iget v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    #@6e
    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    #@70
    .line 3335
    iget-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@72
    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@74
    .line 3336
    iget-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    #@76
    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    #@78
    .line 3337
    iget v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    #@7a
    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    #@7c
    .line 3338
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    #@7e
    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    #@80
    .line 3339
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    #@82
    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    #@84
    .line 3340
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    #@86
    iput v1, v0, Landroid/app/Notification;->defaults:I

    #@88
    .line 3341
    iget v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    #@8a
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@8c
    .line 3342
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    #@8f
    move-result-object v1

    #@90
    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@93
    .line 3343
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    #@96
    move-result-object v1

    #@97
    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    #@9a
    .line 3344
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    #@9c
    if-nez v1, :cond_2

    #@9e
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    #@a0
    if-eqz v1, :cond_3

    #@a2
    .line 3345
    :cond_2
    iget v1, v0, Landroid/app/Notification;->flags:I

    #@a4
    or-int/lit8 v1, v1, 0x1

    #@a6
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@a8
    .line 3347
    :cond_3
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    #@aa
    and-int/lit8 v1, v1, 0x4

    #@ac
    if-eqz v1, :cond_4

    #@ae
    .line 3348
    iget v1, v0, Landroid/app/Notification;->flags:I

    #@b0
    or-int/lit8 v1, v1, 0x1

    #@b2
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@b4
    .line 3350
    :cond_4
    iget-object v1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    #@b6
    iput-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@b8
    .line 3351
    iget-object v1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    #@ba
    invoke-static {v0, v1}, Landroid/app/Notification;->-set0(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    #@bd
    .line 3352
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    #@bf
    invoke-static {v0, v1}, Landroid/app/Notification;->-set3(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    #@c2
    .line 3353
    iget v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    #@c4
    iput v1, v0, Landroid/app/Notification;->priority:I

    #@c6
    .line 3354
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@c8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@cb
    move-result v1

    #@cc
    if-lez v1, :cond_5

    #@ce
    .line 3355
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@d0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@d3
    move-result v1

    #@d4
    new-array v1, v1, [Landroid/app/Notification$Action;

    #@d6
    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@d8
    .line 3356
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@da
    iget-object v2, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@dc
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@df
    .line 3358
    :cond_5
    iget v1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    #@e1
    iput v1, v0, Landroid/app/Notification;->visibility:I

    #@e3
    .line 3360
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    #@e5
    if-eqz v1, :cond_6

    #@e7
    .line 3361
    new-instance v1, Landroid/app/Notification;

    #@e9
    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    #@ec
    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@ee
    .line 3362
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    #@f0
    iget-object v2, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@f2
    invoke-virtual {v1, v2, v4}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    #@f5
    .line 3365
    :cond_6
    return-object v0
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    #@0
    .prologue
    .line 2847
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    #@3
    .line 2848
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 2752
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2753
    new-instance v0, Landroid/os/Bundle;

    #@6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@9
    iput-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    #@b
    .line 2755
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    #@d
    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3631
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public populateExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3375
    const-string/jumbo v0, "android.originatingUserId"

    #@3
    iget v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    #@5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8
    .line 3376
    const-string/jumbo v0, "android.rebuild.applicationInfo"

    #@b
    .line 3377
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@10
    move-result-object v1

    #@11
    .line 3376
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@14
    .line 3378
    const-string/jumbo v0, "android.title"

    #@17
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@19
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@1c
    .line 3379
    const-string/jumbo v0, "android.text"

    #@1f
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@21
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@24
    .line 3380
    const-string/jumbo v0, "android.subText"

    #@27
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    #@29
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@2c
    .line 3381
    const-string/jumbo v0, "android.infoText"

    #@2f
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@31
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@34
    .line 3382
    const-string/jumbo v0, "android.icon"

    #@37
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@39
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@3c
    .line 3383
    const-string/jumbo v0, "android.progress"

    #@3f
    iget v1, p0, Landroid/app/Notification$Builder;->mProgress:I

    #@41
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@44
    .line 3384
    const-string/jumbo v0, "android.progressMax"

    #@47
    iget v1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    #@49
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@4c
    .line 3385
    const-string/jumbo v0, "android.progressIndeterminate"

    #@4f
    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    #@51
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@54
    .line 3386
    const-string/jumbo v0, "android.showChronometer"

    #@57
    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    #@59
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@5c
    .line 3387
    const-string/jumbo v0, "android.showWhen"

    #@5f
    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    #@61
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@64
    .line 3388
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@66
    if-eqz v0, :cond_0

    #@68
    .line 3389
    const-string/jumbo v0, "android.largeIcon"

    #@6b
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@6d
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@70
    .line 3391
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    #@72
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@75
    move-result v0

    #@76
    if-nez v0, :cond_1

    #@78
    .line 3392
    const-string/jumbo v1, "android.people"

    #@7b
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    #@7d
    iget-object v2, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    #@7f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@82
    move-result v2

    #@83
    new-array v2, v2, [Ljava/lang/String;

    #@85
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@88
    move-result-object v0

    #@89
    check-cast v0, [Ljava/lang/String;

    #@8b
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@8e
    .line 3373
    :cond_1
    return-void
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    #@0
    .prologue
    .line 2585
    const/16 v0, 0x10

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    #@5
    .line 2586
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2630
    iput-object p1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    #@2
    .line 2631
    return-object p0
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "argb"    # I

    #@0
    .prologue
    .line 2870
    iput p1, p0, Landroid/app/Notification$Builder;->mColor:I

    #@2
    .line 2871
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 2358
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    #@2
    .line 2359
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "info"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2336
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    #@6
    .line 2337
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2374
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    #@2
    .line 2375
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2305
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    #@6
    .line 2306
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2297
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    #@6
    .line 2298
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "defaults"    # I

    #@0
    .prologue
    .line 2610
    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    #@2
    .line 2611
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2384
    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    #@2
    .line 2385
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2737
    iput-object p1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    #@2
    .line 2738
    return-object p0
.end method

.method public setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 2855
    if-eqz p2, :cond_0

    #@2
    .line 2856
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    #@7
    .line 2854
    :goto_0
    return-void

    #@8
    .line 2858
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    #@a
    not-int v1, p1

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    #@e
    goto :goto_0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    #@0
    .prologue
    .line 2409
    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    #@2
    .line 2410
    const/16 v0, 0x80

    #@4
    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    #@7
    .line 2411
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "groupKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2673
    iput-object p1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    #@2
    .line 2674
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    #@0
    .prologue
    .line 2685
    const/16 v0, 0x200

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    #@5
    .line 2686
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2443
    if-eqz p1, :cond_0

    #@3
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    #@6
    move-result-object v0

    #@7
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 2454
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    #@2
    .line 2455
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    #@0
    .prologue
    .line 2540
    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    #@2
    .line 2541
    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    #@4
    .line 2542
    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    #@6
    .line 2543
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    #@0
    .prologue
    .line 2596
    const/16 v0, 0x100

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    #@5
    .line 2597
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "number"    # I

    #@0
    .prologue
    .line 2325
    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    #@2
    .line 2326
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    #@0
    .prologue
    .line 2563
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    #@4
    .line 2564
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    #@0
    .prologue
    .line 2574
    const/16 v0, 0x8

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    #@5
    .line 2575
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "pri"    # I

    #@0
    .prologue
    .line 2620
    iput p1, p0, Landroid/app/Notification$Builder;->mPriority:I

    #@2
    .line 2621
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    #@0
    .prologue
    .line 2346
    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    #@2
    .line 2347
    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    #@4
    .line 2348
    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    #@6
    .line 2349
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 2838
    iput-object p1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    #@2
    .line 2839
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "show"    # Z

    #@0
    .prologue
    .line 2224
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    #@2
    .line 2225
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    #@0
    .prologue
    .line 2259
    if-eqz p1, :cond_0

    #@2
    .line 2260
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    #@7
    move-result-object v0

    #@8
    .line 2259
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 2261
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    #@0
    .prologue
    .line 2276
    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    #@2
    .line 2277
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 2289
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    #@2
    .line 2290
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sortKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2702
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    #@2
    .line 2703
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2471
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    #@2
    .line 2472
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@4
    iput-object v0, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@6
    .line 2473
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2489
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    #@2
    .line 2490
    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    #@4
    .line 2491
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 2505
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    #@2
    .line 2506
    iput-object p2, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@4
    .line 2507
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "style"    # Landroid/app/Notification$Style;

    #@0
    .prologue
    .line 2809
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 2810
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@6
    .line 2811
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 2812
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@c
    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    #@f
    .line 2815
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2315
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    #@6
    .line 2316
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2420
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    #@6
    .line 2421
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2430
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    #@6
    .line 2431
    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    #@8
    .line 2432
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 2240
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    #@2
    .line 2241
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "pattern"    # [J

    #@0
    .prologue
    .line 2523
    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    #@2
    .line 2524
    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 2827
    iput p1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    #@2
    .line 2828
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    #@0
    .prologue
    .line 2215
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    #@2
    .line 2216
    return-object p0
.end method
