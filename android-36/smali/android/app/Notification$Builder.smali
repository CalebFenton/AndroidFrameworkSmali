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
.field public static final greylist-max-o EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final greylist-max-o EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final greylist-max-o EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final greylist-max-o USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z


# instance fields
.field private greylist mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

.field blacklist mColors:Landroid/app/Notification$Colors;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mInNightMode:Z

.field private greylist-max-o mIsLegacy:Z

.field private greylist-max-o mIsLegacyInitialized:Z

.field private greylist-max-o mN:Landroid/app/Notification;

.field greylist-max-o mParams:Landroid/app/Notification$StandardTemplateParams;

.field private greylist-max-o mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mStyle:Landroid/app/Notification$Style;

.field private greylist-max-o mTintActionButtons:Z

.field private greylist-max-o mUserExtras:Landroid/os/Bundle;


# direct methods
.method public static synthetic blacklist $r8$lambda$FuZgZf2nf0-xGXGRIhDoNQbrc5o(Landroid/app/Notification$Builder;)Landroid/graphics/drawable/Drawable;
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getDefaultProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgenerateActionButton(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBigPictureLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBigTextLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedBaseLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedCallLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedCallLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedConversationLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedConversationLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedMediaLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMediaLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCollapsedMessagingLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMessagingLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetColors(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetConversationLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getConversationLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedBaseLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedCallLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedCallLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedConversationLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedConversationLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedMediaLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedMediaLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetExpandedMessagingLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedMessagingLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetInboxLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMessagingCompactHeadsUpLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingCompactHeadsUpLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNonContextualActions(Landroid/app/Notification$Builder;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getNonContextualActions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPrimaryAccentColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetProgressLayoutResource(Landroid/app/Notification$Builder;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProgressLayoutResource()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStandardActionColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasValidRemoteInput(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misCallActionColorCustomizable(Landroid/app/Notification$Builder;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isCallActionColorCustomizable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetTextViewColorPrimary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smensureColorContrast(IID)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->ensureColorContrast(IID)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsetHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/app/Notification$Builder;->setHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 4532
    nop

    .line 4533
    const-string/jumbo v0, "notifications.only_title"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    .line 4532
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4579
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 4580
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toAdopt"    # Landroid/app/Notification;

    .line 4585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4537
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 4539
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 4541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 4550
    new-instance v0, Landroid/app/Notification$StandardTemplateParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Notification$StandardTemplateParams;-><init>(Landroid/app/Notification-IA;)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 4551
    new-instance v0, Landroid/app/Notification$Colors;

    invoke-direct {v0}, Landroid/app/Notification$Colors;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    .line 4586
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4587
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4588
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x111027e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    .line 4590
    const v1, 0x1110184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_55

    .line 4591
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4592
    .local v1, "currentConfig":Landroid/content/res/Configuration;
    iget v4, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-ne v4, v5, :cond_52

    move v4, v2

    goto :goto_53

    :cond_52
    move v4, v3

    :goto_53
    iput-boolean v4, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 4596
    .end local v1    # "currentConfig":Landroid/content/res/Configuration;
    :cond_55
    if-nez p2, :cond_7b

    .line 4597
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 4598
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v1, v4, :cond_71

    .line 4599
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.showWhen"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4601
    :cond_71
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, v1, Landroid/app/Notification;->priority:I

    .line 4602
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, v1, Landroid/app/Notification;->visibility:I

    goto/16 :goto_12d

    .line 4604
    :cond_7b
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 4605
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_8c

    .line 4606
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4609
    :cond_8c
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.people.list"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 4610
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v5, Landroid/app/Person;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4612
    .local v1, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v1, :cond_af

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_af

    .line 4613
    iget-object v4, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4617
    .end local v1    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    :cond_af
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_c4

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    if-eqz v1, :cond_c4

    .line 4618
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4621
    :cond_c4
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_d9

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_d9

    .line 4622
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 4625
    :cond_d9
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.template"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4626
    .local v1, "templateClass":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12d

    .line 4627
    nop

    .line 4628
    invoke-static {v1}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 4629
    .local v4, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    const-string v5, "Notification"

    if-nez v4, :cond_109

    .line 4630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown style class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12d

    .line 4633
    :cond_109
    :try_start_109
    new-array v6, v3, [Ljava/lang/Class;

    .line 4634
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 4635
    .local v6, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 4636
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Style;

    .line 4637
    .local v2, "style":Landroid/app/Notification$Style;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4639
    if-eqz v2, :cond_126

    .line 4640
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_126
    .catchall {:try_start_109 .. :try_end_126} :catchall_127

    .line 4644
    .end local v2    # "style":Landroid/app/Notification$Style;
    .end local v6    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    :cond_126
    goto :goto_12d

    .line 4642
    :catchall_127
    move-exception v2

    .line 4643
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "Could not create Style"

    invoke-static {v5, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4648
    .end local v1    # "templateClass":Ljava/lang/String;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_12d
    :goto_12d
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 4569
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 4570
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p2}, Landroid/app/Notification;->-$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4571
    return-void
.end method

.method private blacklist adjustExpandButtonPadding(Landroid/widget/RemoteViews;Z)V
    .registers 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "rightIconVisible"    # Z

    .line 6193
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6194
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6195
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x105028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6196
    .local v1, "normalPadding":I
    const v2, 0x1050283

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 6198
    .local v2, "iconSpacing":I
    nop

    .line 6199
    if-eqz p2, :cond_1f

    move v3, v2

    goto :goto_20

    :cond_1f
    move v3, v1

    .line 6198
    :goto_20
    const v4, 0x10202ef

    const-string/jumbo v5, "setStartPadding"

    invoke-virtual {p1, v4, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6201
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "normalPadding":I
    .end local v2    # "iconSpacing":I
    :cond_29
    return-void
.end method

.method private greylist-max-o applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .registers 14
    .param p1, "resId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 5991
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedBaseLayoutResource()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3b

    .line 5992
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_3b

    .line 5993
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCompactHeadsUpBaseLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_3b

    .line 5994
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingCompactHeadsUpLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_3b

    .line 5995
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMessagingLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_3b

    .line 5996
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedMediaLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_3b

    .line 5997
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedConversationLayoutResource()I

    move-result v0

    if-eq p1, v0, :cond_3b

    .line 5998
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 5999
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedCallLayoutResource()I

    move-result v0

    if-ne p1, v0, :cond_39

    goto :goto_3b

    :cond_39
    move v0, v2

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v0, v1

    .line 5991
    :goto_3c
    invoke-virtual {p2, v0}, Landroid/app/Notification$StandardTemplateParams;->headerless(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 6000
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-direct {v0, v3, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 6002
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 6004
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6005
    .local v3, "ex":Landroid/os/Bundle;
    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->updateBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6006
    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6007
    invoke-direct {p0, v0, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIconAndApplyMargin(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6008
    invoke-direct {p0, v0, v3, p2}, Landroid/app/Notification$Builder;->handleProgressBar(Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v4

    .line 6009
    .local v4, "showProgress":Z
    move v5, v4

    .line 6010
    .local v5, "hasSecondLine":Z
    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-eqz v6, :cond_7e

    .line 6011
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6012
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    iget-object v9, p2, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    .line 6013
    invoke-virtual {p0, v9, p2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 6012
    invoke-virtual {v0, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6014
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-direct {p0, v0, v6, p2}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_8f

    .line 6015
    :cond_7e
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    const v9, 0x1020016

    if-eq v6, v9, :cond_8f

    .line 6017
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6018
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6020
    :cond_8f
    :goto_8f
    iget-object v6, p2, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_b8

    iget-object v6, p2, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_b8

    if-eqz v4, :cond_a1

    iget-boolean v6, p2, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    if-eqz v6, :cond_b8

    .line 6022
    :cond_a1
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6023
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    iget-object v7, p2, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    .line 6024
    invoke-virtual {p0, v7, p2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 6023
    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6025
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-direct {p0, v0, v6, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6026
    const/4 v5, 0x1

    goto :goto_c9

    .line 6027
    :cond_b8
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    const v9, 0x1020574

    if-eq v6, v9, :cond_c9

    .line 6029
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, v6, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6030
    iget v6, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6033
    :cond_c9
    :goto_c9
    invoke-static {v0, p2, v5}, Landroid/app/Notification$Builder;->updateExpanderAlignment(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    .line 6034
    invoke-static {v0, p2, v5}, Landroid/app/Notification$Builder;->setHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    .line 6039
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v6

    if-eqz v6, :cond_e9

    iget-boolean v6, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez v6, :cond_e9

    .line 6040
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v7, 0x1050279

    invoke-static {v6, v7}, Landroid/app/Notification$Builder;->getContentMarginTop(Landroid/content/Context;I)I

    move-result v6

    .line 6042
    .local v6, "margin":I
    const v7, 0x102042f

    int-to-float v8, v6

    invoke-virtual {v0, v7, v1, v8, v2}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    .line 6046
    .end local v6    # "margin":I
    :cond_e9
    return-object v0
.end method

.method private greylist-max-o applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .registers 21
    .param p1, "layoutId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 6574
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 6576
    .local v1, "contentView":Landroid/widget/RemoteViews;
    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 6577
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;->bindSnoozeAction(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v9

    .line 6579
    .local v9, "snoozeEnabled":Z
    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    .line 6580
    .local v10, "actionColor":Landroid/content/res/ColorStateList;
    const v3, 0x1020536

    const-string/jumbo v4, "setImageTintList"

    invoke-virtual {v1, v3, v4, v10}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 6581
    const v3, 0x102024f

    invoke-virtual {v1, v3, v4, v10}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 6585
    invoke-direct {v0}, Landroid/app/Notification$Builder;->getNonContextualActions()Ljava/util/List;

    move-result-object v11

    .line 6587
    .local v11, "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 6588
    .local v12, "numActions":I
    iget-object v3, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v3, :cond_4a

    iget-boolean v3, v2, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    if-nez v3, :cond_4a

    iget-object v3, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_48

    goto :goto_4a

    :cond_48
    move v5, v14

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v5, v13

    :goto_4b
    move v15, v5

    .line 6592
    .local v15, "emphasizedMode":Z
    iget-boolean v3, v2, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    const v4, 0x10201ef

    if-eqz v3, :cond_87

    .line 6595
    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, v4

    const v4, 0x10201ef

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v16, v3

    move-object v3, v1

    move/from16 v1, v16

    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    .local v3, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 6596
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v4

    if-nez v4, :cond_72

    .line 6600
    const-string/jumbo v4, "setCollapsibleIndentDimen"

    const v5, 0x105007c

    invoke-virtual {v3, v1, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6603
    :cond_72
    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 6605
    const-string v4, "Notification"

    const-string/jumbo v5, "setting evenly divided mode on action list"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6607
    const-string/jumbo v4, "setEvenlyDividedMode"

    invoke-virtual {v3, v1, v4, v13}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_89

    .line 6592
    .end local v3    # "contentView":Landroid/widget/RemoteViews;
    .restart local v1    # "contentView":Landroid/widget/RemoteViews;
    :cond_87
    move-object v3, v1

    move v1, v4

    .line 6610
    .end local v1    # "contentView":Landroid/widget/RemoteViews;
    .restart local v3    # "contentView":Landroid/widget/RemoteViews;
    :cond_89
    :goto_89
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v4

    if-nez v4, :cond_95

    .line 6611
    const-string/jumbo v4, "setEmphasizedMode"

    invoke-virtual {v3, v1, v4, v15}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6614
    :cond_95
    const/4 v6, 0x0

    .line 6617
    .local v6, "validRemoteInput":Z
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 6618
    const v4, 0x10201f1

    goto :goto_a3

    :cond_a0
    const v4, 0x10201f0

    :goto_a3
    move v7, v4

    .line 6619
    .local v7, "actionsContainerForVisibilityChange":I
    const/16 v8, 0x8

    if-lez v12, :cond_c3

    iget-boolean v4, v2, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    if-nez v4, :cond_c3

    .line 6620
    invoke-virtual {v3, v7, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6621
    invoke-virtual {v3, v1, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6622
    invoke-direct {v0, v3, v15}, Landroid/app/Notification$Builder;->updateMarginsForActions(Landroid/widget/RemoteViews;Z)V

    .line 6623
    move-object v1, v3

    move-object v3, v11

    move v4, v12

    move v5, v15

    .end local v11    # "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v12    # "numActions":I
    .end local v15    # "emphasizedMode":Z
    .restart local v1    # "contentView":Landroid/widget/RemoteViews;
    .local v3, "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .local v4, "numActions":I
    .local v5, "emphasizedMode":Z
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$Builder;->populateActionsContainer(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Ljava/util/List;IZ)Z

    move-result v6

    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    .local v1, "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .local v3, "contentView":Landroid/widget/RemoteViews;
    goto :goto_c9

    .line 6619
    .end local v1    # "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v4    # "numActions":I
    .end local v5    # "emphasizedMode":Z
    .restart local v11    # "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .restart local v12    # "numActions":I
    .restart local v15    # "emphasizedMode":Z
    :cond_c3
    move-object v1, v11

    move v4, v12

    move v5, v15

    .line 6626
    .end local v11    # "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v12    # "numActions":I
    .end local v15    # "emphasizedMode":Z
    .restart local v1    # "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .restart local v4    # "numActions":I
    .restart local v5    # "emphasizedMode":Z
    invoke-virtual {v3, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6629
    :goto_c9
    iget-object v11, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v11, v11, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.remoteInputHistoryItems"

    const-class v15, Landroid/app/RemoteInputHistoryItem;

    invoke-static {v11, v12, v15}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, [Landroid/app/RemoteInputHistoryItem;

    .line 6631
    .local v11, "replyText":[Landroid/app/RemoteInputHistoryItem;
    if-eqz v6, :cond_183

    if-eqz v11, :cond_183

    array-length v12, v11

    if-lez v12, :cond_183

    aget-object v12, v11, v14

    .line 6632
    invoke-virtual {v12}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_183

    iget v12, v2, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-lez v12, :cond_183

    .line 6634
    iget-object v12, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v12, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.remoteInputSpinner"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 6635
    .local v12, "showSpinner":Z
    const v15, 0x1020430

    invoke-virtual {v3, v15, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6637
    const v15, 0x1020433

    invoke-virtual {v3, v15, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6639
    aget-object v15, v11, v14

    .line 6640
    invoke-virtual {v15}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v0, v15, v2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 6639
    const v8, 0x1020432

    invoke-virtual {v3, v8, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6641
    invoke-direct {v0, v3, v8, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6642
    nop

    .line 6643
    if-eqz v12, :cond_11c

    move v8, v14

    goto :goto_11e

    :cond_11c
    const/16 v8, 0x8

    .line 6642
    :goto_11e
    const v15, 0x1020431

    invoke-virtual {v3, v15, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6644
    nop

    .line 6646
    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v8

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 6644
    invoke-virtual {v3, v15, v8}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 6648
    array-length v8, v11

    if-le v8, v13, :cond_183

    aget-object v8, v11, v13

    invoke-virtual {v8}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_183

    iget v8, v2, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v8, v13, :cond_183

    .line 6650
    const v8, 0x1020434

    invoke-virtual {v3, v8, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6652
    aget-object v13, v11, v13

    .line 6653
    invoke-virtual {v13}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v0, v13, v2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 6652
    invoke-virtual {v3, v8, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6654
    invoke-direct {v0, v3, v8, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6657
    array-length v8, v11

    const/4 v13, 0x2

    if-le v8, v13, :cond_183

    aget-object v8, v11, v13

    invoke-virtual {v8}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_183

    iget v8, v2, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v8, v13, :cond_183

    .line 6659
    const v8, 0x1020435

    invoke-virtual {v3, v8, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6661
    aget-object v13, v11, v13

    .line 6662
    invoke-virtual {v13}, Landroid/app/RemoteInputHistoryItem;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v0, v13, v2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 6661
    invoke-virtual {v3, v8, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6663
    invoke-direct {v0, v3, v8, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6669
    .end local v12    # "showSpinner":Z
    :cond_183
    return-object v3
.end method

.method private blacklist bindAlertedIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5931
    nop

    .line 5934
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getSecondaryTextColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 5931
    const v2, 0x1020202

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 5936
    return-void
.end method

.method private blacklist bindCloseButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 8
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6338
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 6339
    .local v0, "bgColor":I
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Colors;->getProtectionColor()I

    move-result v1

    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v1

    .line 6340
    .local v1, "backgroundColor":I
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    invoke-static {v2, v1}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v2

    .line 6341
    .local v2, "foregroundColor":I
    const-string/jumbo v3, "setForegroundColor"

    const v4, 0x1020286

    invoke-virtual {p1, v4, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6342
    const-string/jumbo v3, "setBackgroundColor"

    invoke-virtual {p1, v4, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6343
    return-void
.end method

.method private blacklist bindExpandButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 8
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6320
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 6321
    .local v0, "bgColor":I
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Colors;->getProtectionColor()I

    move-result v1

    invoke-static {v1, v0}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v1

    .line 6322
    .local v1, "pillColor":I
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    invoke-static {v2, v1}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v2

    .line 6323
    .local v2, "textColor":I
    const-string/jumbo v3, "setDefaultTextColor"

    const v4, 0x10202ef

    invoke-virtual {p1, v4, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6324
    const-string/jumbo v3, "setDefaultPillColor"

    invoke-virtual {p1, v4, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6326
    iget-boolean v3, p2, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    if-eqz v3, :cond_45

    .line 6327
    nop

    .line 6328
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Colors;->getTertiaryFixedDimAccentColor()I

    move-result v3

    .line 6327
    invoke-static {v3, v0}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v1

    .line 6329
    nop

    .line 6330
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Colors;->getOnTertiaryFixedAccentTextColor()I

    move-result v3

    .line 6329
    invoke-static {v3, v1}, Landroid/app/Notification$Colors;->-$$Nest$smflattenAlpha(II)I

    move-result v2

    .line 6332
    :cond_45
    const-string/jumbo v3, "setHighlightTextColor"

    invoke-virtual {p1, v4, v3, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6333
    const-string/jumbo v3, "setHighlightPillColor"

    invoke-virtual {p1, v4, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6334
    return-void
.end method

.method private blacklist bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .registers 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "force"    # Z

    .line 6442
    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    if-nez p3, :cond_a

    .line 6444
    return v2

    .line 6446
    :cond_a
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6449
    return v1

    .line 6451
    :cond_16
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    if-eqz v0, :cond_1f

    .line 6454
    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result v0

    return v0

    .line 6456
    :cond_1f
    const v0, 0x1020219

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6457
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6458
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 6459
    return v1
.end method

.method private blacklist bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .registers 12
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "hasTextToLeft"    # Z

    .line 6347
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    const-string/jumbo v1, "setTime"

    const v2, 0x1020594

    if-nez v0, :cond_6c

    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 6348
    const/4 v0, 0x0

    if-eqz p3, :cond_1c

    .line 6349
    const v3, 0x1020598

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6350
    invoke-direct {p0, p1, v3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6352
    :cond_1c
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.showChronometer"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 6353
    const v1, 0x102027c

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6354
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide v2

    .line 6355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 6354
    const-string/jumbo v0, "setBase"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 6356
    const-string/jumbo v0, "setStarted"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6357
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.chronometerCountDown"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 6358
    .local v0, "countsDown":Z
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 6359
    invoke-direct {p0, p1, v1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6360
    .end local v0    # "countsDown":Z
    goto :goto_89

    .line 6361
    :cond_5c
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6362
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide v3

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 6363
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_89

    .line 6368
    :cond_6c
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_7f

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide v3

    goto :goto_83

    .line 6369
    :cond_7f
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v3, v0, Landroid/app/Notification;->creationTime:J

    .line 6368
    :goto_83
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 6370
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6372
    :goto_89
    return-void
.end method

.method private blacklist bindHeaderText(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .registers 8
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "hasTextToLeft"    # Z

    .line 6379
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 6380
    return v1

    .line 6382
    :cond_6
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    .line 6383
    .local v0, "headerText":Ljava/lang/CharSequence;
    if-nez v0, :cond_20

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v2, :cond_20

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-boolean v2, v2, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v2, :cond_20

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 6384
    invoke-virtual {v2}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 6385
    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v2, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 6387
    :cond_20
    if-nez v0, :cond_42

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6388
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_42

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 6389
    const-string v3, "android.infoText"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 6390
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6392
    :cond_42
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 6393
    nop

    .line 6394
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 6393
    invoke-virtual {p0, v2, p2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x1020352

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6395
    invoke-direct {p0, p1, v3, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6396
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6397
    if-eqz p3, :cond_68

    .line 6398
    const v2, 0x1020353

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6399
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6401
    :cond_68
    const/4 v1, 0x1

    return v1

    .line 6403
    :cond_6a
    return v1
.end method

.method private blacklist bindHeaderTextSecondary(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z
    .registers 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "hasTextToLeft"    # Z

    .line 6411
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 6412
    return v1

    .line 6414
    :cond_6
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderTextSecondary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 6415
    iget-object v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderTextSecondary:Ljava/lang/CharSequence;

    .line 6417
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6416
    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 6415
    const v2, 0x1020354

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6418
    invoke-direct {p0, p1, v2, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6419
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6420
    if-eqz p3, :cond_2f

    .line 6421
    const v0, 0x1020355

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6422
    invoke-direct {p0, p1, v0, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 6424
    :cond_2f
    const/4 v0, 0x1

    return v0

    .line 6426
    :cond_31
    return v1
.end method

.method private blacklist bindLargeIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .registers 12
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 6254
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    .line 6255
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 6259
    :cond_1b
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    move-object v0, v1

    goto :goto_28

    :cond_22
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 6260
    .local v0, "leftIcon":Landroid/graphics/drawable/Icon;
    :goto_28
    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    if-eqz v2, :cond_2e

    move-object v2, v1

    goto :goto_3b

    .line 6261
    :cond_2e
    iget-object v2, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_35

    iget-object v2, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    goto :goto_3b

    :cond_35
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    :goto_3b
    nop

    .line 6264
    .local v2, "rightIcon":Landroid/graphics/drawable/Icon;
    const v3, 0x1020573

    const v4, 0x10203bc

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v2, :cond_4d

    if-nez v0, :cond_49

    goto :goto_4d

    .line 6272
    :cond_49
    invoke-virtual {p1, v4, v3, v5}, Landroid/widget/RemoteViews;->setIntTag(III)V

    goto :goto_53

    .line 6267
    :cond_4d
    :goto_4d
    invoke-virtual {p1, v4, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6268
    invoke-virtual {p1, v4, v3, v6}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 6276
    :goto_53
    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_59

    move v3, v5

    goto :goto_5a

    :cond_59
    move v3, v6

    .line 6277
    .local v3, "isPromotedPicture":Z
    :goto_5a
    invoke-direct {p0, v2, v3, p3}, Landroid/app/Notification$Builder;->calculateRightIconDimens(Landroid/graphics/drawable/Icon;ZLandroid/app/Notification$TemplateBindResult;)V

    .line 6280
    const v4, 0x102056d

    const v7, 0x10204d0

    if-eqz v2, :cond_81

    .line 6281
    iget v1, p3, Landroid/app/Notification$TemplateBindResult;->mRightIconWidthDp:F

    invoke-virtual {p1, v7, v1, v5}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 6283
    iget v1, p3, Landroid/app/Notification$TemplateBindResult;->mRightIconHeightDp:F

    invoke-virtual {p1, v7, v1, v5}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 6285
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6286
    invoke-virtual {p1, v7, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6287
    nop

    .line 6288
    if-eqz v3, :cond_79

    goto :goto_7a

    :cond_79
    move v5, v6

    .line 6287
    :goto_7a
    invoke-virtual {p1, v7, v4, v5}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 6289
    invoke-direct {p0, v2, p1, p2}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    goto :goto_87

    .line 6294
    :cond_81
    invoke-virtual {p1, v7, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6295
    invoke-virtual {p1, v7, v4, v6}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 6297
    :goto_87
    return-void
.end method

.method private blacklist bindLargeIconAndApplyMargin(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .registers 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 6175
    if-nez p3, :cond_9

    .line 6176
    new-instance v0, Landroid/app/Notification$TemplateBindResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    move-object p3, v0

    .line 6178
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6179
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez v0, :cond_35

    .line 6181
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mHeadingExtraMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v1, 0x102042c

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 6182
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    const v1, 0x1020016

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 6184
    iget-object v0, p3, Landroid/app/Notification$TemplateBindResult;->mTitleMarginSet:Landroid/app/Notification$TemplateBindResult$MarginSet;

    iget v1, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification$TemplateBindResult$MarginSet;->applyToView(Landroid/widget/RemoteViews;I)V

    .line 6185
    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    invoke-virtual {p2}, Landroid/app/Notification$StandardTemplateParams;->hasTitle()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string/jumbo v2, "setNumIndentLines"

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6189
    :cond_35
    iget-boolean v0, p3, Landroid/app/Notification$TemplateBindResult;->mRightIconVisible:Z

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->adjustExpandButtonPadding(Landroid/widget/RemoteViews;Z)V

    .line 6190
    return-void
.end method

.method private blacklist bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6300
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6302
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v0

    .line 6303
    .local v0, "hasTextToLeft":Z
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderTextSecondary(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6304
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 6305
    const/4 v1, 0x1

    if-nez v0, :cond_1a

    .line 6307
    invoke-direct {p0, p1, p2, v1}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 6309
    :cond_1a
    invoke-direct {p0, p1, p2, v0}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V

    .line 6310
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindPhishingAlertIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6311
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6312
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindAlertedIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6313
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6314
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindCloseButton(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6315
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2, v1}, Landroid/app/Notification;->-$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V

    .line 6316
    return-void
.end method

.method private blacklist bindPhishingAlertIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5866
    nop

    .line 5869
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getErrorColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 5866
    const v2, 0x1020475

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 5871
    return-void
.end method

.method private blacklist bindProfileBadge(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 8
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 5914
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5916
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_37

    .line 5917
    const v1, 0x1020490

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 5918
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5919
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 5920
    nop

    .line 5921
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 5920
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 5923
    :cond_20
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    .line 5925
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5926
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileAccessibilityString(I)Ljava/lang/String;

    move-result-object v2

    .line 5923
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 5928
    :cond_37
    return-void
.end method

.method private blacklist bindSmallIcon(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6481
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_1d

    .line 6482
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-$$Nest$fputmSmallIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 6484
    :cond_1d
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 6485
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    const-string/jumbo v2, "setImageLevel"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6486
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmSmallIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6487
    return-void
.end method

.method private blacklist bindSnoozeAction(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)Z
    .registers 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6522
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1f

    .line 6524
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, p2, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    if-eq v0, v3, :cond_1d

    goto :goto_1f

    :cond_1d
    move v0, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v0, v1

    .line 6526
    .local v0, "hideSnoozeButton":Z
    :goto_20
    if-nez v0, :cond_24

    move v3, v1

    goto :goto_25

    :cond_24
    move v3, v2

    :goto_25
    const v4, 0x1020536

    const-string/jumbo v5, "setEnabled"

    invoke-virtual {p1, v4, v5, v3}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6527
    if-eqz v0, :cond_35

    .line 6529
    const/16 v3, 0x8

    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6532
    :cond_35
    if-nez v0, :cond_46

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6533
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 6534
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isSnoozeSettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_46

    goto :goto_47

    :cond_46
    move v1, v2

    .line 6535
    .local v1, "snoozeEnabled":Z
    :goto_47
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v3

    if-nez v3, :cond_56

    if-eqz v1, :cond_56

    .line 6536
    const v3, 0x102042a

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6539
    :cond_56
    return v1
.end method

.method private blacklist calculateRightIconDimens(Landroid/graphics/drawable/Icon;ZLandroid/app/Notification$TemplateBindResult;)V
    .registers 20
    .param p1, "rightIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "isPromotedPicture"    # Z
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 6210
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 6211
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 6212
    .local v3, "density":F
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 6213
    const v4, 0x105028f

    goto :goto_1d

    .line 6214
    :cond_1a
    const v4, 0x10502e3

    :goto_1d
    nop

    .line 6215
    .local v4, "iconMarginId":I
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    div-float/2addr v5, v3

    .line 6216
    .local v5, "iconMarginDp":F
    const v6, 0x10502a9

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    div-float/2addr v6, v3

    .line 6219
    .local v6, "contentMarginDp":F
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 6220
    const v7, 0x1050290

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    div-float/2addr v7, v3

    sub-float/2addr v7, v6

    move v13, v7

    .local v7, "spaceForExpanderDp":F
    goto :goto_46

    .line 6224
    .end local v7    # "spaceForExpanderDp":F
    :cond_3c
    const v7, 0x10502b7

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    div-float/2addr v7, v3

    sub-float/2addr v7, v6

    move v13, v7

    .line 6227
    .local v13, "spaceForExpanderDp":F
    :goto_46
    const v7, 0x10502e5

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    div-float v11, v7, v3

    .line 6229
    .local v11, "viewHeightDp":F
    move v7, v11

    .line 6230
    .local v7, "viewWidthDp":F
    if-eqz v1, :cond_82

    if-nez p2, :cond_60

    iget-object v8, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6231
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x1f

    if-lt v8, v9, :cond_82

    .line 6232
    :cond_60
    iget-object v8, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 6233
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_82

    .line 6234
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 6235
    .local v9, "iconWidth":I
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    .line 6236
    .local v10, "iconHeight":I
    if-le v9, v10, :cond_82

    if-lez v10, :cond_82

    .line 6237
    const v12, 0x3fe38e39

    mul-float/2addr v12, v11

    .line 6238
    .local v12, "maxViewWidthDp":F
    int-to-float v14, v9

    mul-float/2addr v14, v11

    int-to-float v15, v10

    div-float/2addr v14, v15

    invoke-static {v14, v12}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v10, v7

    goto :goto_83

    .line 6244
    .end local v8    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "iconWidth":I
    .end local v10    # "iconHeight":I
    .end local v12    # "maxViewWidthDp":F
    :cond_82
    move v10, v7

    .end local v7    # "viewWidthDp":F
    .local v10, "viewWidthDp":F
    :goto_83
    add-float v12, v10, v5

    .line 6245
    .local v12, "extraMarginEndDpIfVisible":F
    if-eqz v1, :cond_89

    const/4 v7, 0x1

    goto :goto_8a

    :cond_89
    const/4 v7, 0x0

    :goto_8a
    move v9, v7

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/app/Notification$TemplateBindResult;->setRightIconState(ZFFFF)V

    .line 6247
    return-void
.end method

.method private blacklist createExpandedContentView()Landroid/widget/RemoteViews;
    .registers 5

    .line 6887
    const/4 v0, 0x0

    .line 6888
    .local v0, "result":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 6889
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 6890
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->minimallyDecoratedExpandedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_1f

    .line 6891
    :cond_1b
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 6889
    :goto_1f
    return-object v1

    .line 6893
    :cond_20
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v2, 0x1

    if-eqz v1, :cond_35

    .line 6894
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeExpandedContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6895
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 6896
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedExpandedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6899
    :cond_35
    if-nez v0, :cond_5a

    .line 6900
    invoke-direct {p0}, Landroid/app/Notification$Builder;->expandedContentViewRequired()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 6901
    iget-object v1, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 6902
    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 6903
    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 6904
    invoke-virtual {v1, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 6905
    .local v1, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedBaseLayoutResource()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6909
    .end local v1    # "p":Landroid/app/Notification$StandardTemplateParams;
    :cond_5a
    invoke-static {v0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 6910
    return-object v0
.end method

.method private greylist-max-o createSummaryText()Ljava/lang/CharSequence;
    .registers 7

    .line 7137
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7138
    .local v0, "titleText":Ljava/lang/CharSequence;
    sget-boolean v1, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    if-eqz v1, :cond_f

    .line 7139
    return-object v0

    .line 7141
    :cond_f
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 7142
    .local v1, "summary":Landroid/text/SpannableStringBuilder;
    if-nez v0, :cond_20

    .line 7143
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title.big"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 7145
    :cond_20
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 7146
    .local v2, "bidi":Landroid/text/BidiFormatter;
    if-eqz v0, :cond_2d

    .line 7147
    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7149
    :cond_2d
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 7150
    .local v3, "contentText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_4b

    if-eqz v3, :cond_4b

    .line 7151
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v5, 0x10406e3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7154
    :cond_4b
    if-eqz v3, :cond_54

    .line 7155
    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7157
    :cond_54
    return-object v1
.end method

.method public static blacklist ensureButtonFillContrast(II)I
    .registers 4
    .param p0, "color"    # I
    .param p1, "bg"    # I

    .line 7383
    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    invoke-static {p0, p1, v0, v1}, Landroid/app/Notification$Builder;->ensureColorContrast(IID)I

    move-result v0

    return v0
.end method

.method private static blacklist ensureColorContrast(IID)I
    .registers 6
    .param p0, "color"    # I
    .param p1, "bg"    # I
    .param p2, "contrastRatio"    # D

    .line 7388
    invoke-static {p1}, Landroid/app/Notification$Builder;->isColorDark(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 7389
    invoke-static {p0, p1, v1, p2, p3}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v0

    goto :goto_10

    .line 7390
    :cond_c
    invoke-static {p0, p1, v1, p2, p3}, Lcom/android/internal/util/ContrastColorUtil;->findContrastColor(IIZD)I

    move-result v0

    .line 7388
    :goto_10
    return v0
.end method

.method private blacklist expandedContentViewRequired()Z
    .registers 5

    .line 6920
    invoke-static {}, Landroid/app/Flags;->notificationExpansionOptional()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    .line 6922
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-nez v0, :cond_1c

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 6923
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    .line 6924
    .local v0, "exempt":Z
    :goto_1d
    if-nez v0, :cond_20

    move v1, v2

    :cond_20
    return v1

    .line 6926
    .end local v0    # "exempt":Z
    :cond_21
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1f

    if-lt v0, v3, :cond_2e

    .line 6927
    return v2

    .line 6932
    :cond_2e
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_48

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-nez v0, :cond_48

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 6933
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_48

    move v0, v2

    goto :goto_49

    :cond_48
    move v0, v1

    .line 6934
    .restart local v0    # "exempt":Z
    :goto_49
    if-nez v0, :cond_4c

    move v1, v2

    :cond_4c
    return v1
.end method

.method private blacklist fullyCustomViewRequiresDecoration(Z)Z
    .registers 5
    .param p1, "fromStyle"    # Z

    .line 6800
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-static {v1}, Landroid/app/Notification;->-$$Nest$smisPlatformStyle(Landroid/app/Notification$Style;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6801
    return v0

    .line 6803
    :cond_c
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private blacklist generateActionButton(Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .registers 20
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "emphasizedMode"    # Z
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 7162
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v4, :cond_e

    const/4 v4, 0x1

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    .line 7163
    .local v4, "tombstone":Z
    :goto_f
    new-instance v6, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v7, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 7164
    invoke-direct {v0, v2, v4}, Landroid/app/Notification$Builder;->getActionButtonLayoutResource(ZZ)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 7165
    .local v6, "button":Landroid/widget/RemoteViews;
    const v7, 0x10201d6

    if-nez v4, :cond_28

    .line 7166
    iget-object v8, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 7168
    :cond_28
    iget-object v8, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 7169
    invoke-static {v1}, Landroid/app/Notification$Action;->-$$Nest$fgetmRemoteInputs(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v8

    if-eqz v8, :cond_3a

    .line 7170
    invoke-static {v1}, Landroid/app/Notification$Action;->-$$Nest$fgetmRemoteInputs(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 7172
    :cond_3a
    if-eqz v2, :cond_14f

    .line 7174
    iget-object v8, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 7175
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification$Colors;->getSecondaryAccentColor()I

    move-result v9

    .line 7176
    .local v9, "buttonFillColor":I
    if-eqz v4, :cond_61

    .line 7177
    iget-object v10, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 7179
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v12

    iget-boolean v13, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 7178
    invoke-static {v11, v12, v13}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v11

    .line 7177
    const v12, 0x1050295

    invoke-static {v10, v11, v12}, Landroid/app/Notification$Builder;->setAlphaComponentByFloatDimen(Landroid/content/Context;II)I

    move-result v9

    .line 7182
    :cond_61
    invoke-static {}, Landroid/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v10

    if-eqz v10, :cond_85

    .line 7183
    invoke-direct {v0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v10

    if-nez v10, :cond_ab

    .line 7185
    invoke-static {v8}, Landroid/app/Notification$Builder;->getFullLengthSpanColor(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v10

    .line 7186
    .local v10, "fullLengthColor":Ljava/lang/Integer;
    if-eqz v10, :cond_84

    .line 7188
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v11

    .line 7189
    .local v11, "notifBackgroundColor":I
    nop

    .line 7190
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 7189
    invoke-static {v12, v11}, Landroid/app/Notification$Builder;->ensureButtonFillContrast(II)I

    move-result v9

    .line 7192
    .end local v10    # "fullLengthColor":Ljava/lang/Integer;
    .end local v11    # "notifBackgroundColor":I
    :cond_84
    goto :goto_ab

    .line 7194
    :cond_85
    invoke-direct {v0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v10

    if-eqz v10, :cond_90

    .line 7195
    invoke-static {v8}, Lcom/android/internal/util/ContrastColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_ab

    .line 7198
    :cond_90
    invoke-static {v8}, Landroid/app/Notification$Builder;->getFullLengthSpanColor(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v10

    .line 7199
    .restart local v10    # "fullLengthColor":Ljava/lang/Integer;
    if-eqz v10, :cond_a7

    .line 7201
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v11

    .line 7202
    .restart local v11    # "notifBackgroundColor":I
    nop

    .line 7203
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 7202
    invoke-static {v12, v11}, Landroid/app/Notification$Builder;->ensureButtonFillContrast(II)I

    move-result v9

    .line 7207
    .end local v11    # "notifBackgroundColor":I
    :cond_a7
    invoke-static {v8, v9}, Lcom/android/internal/util/ContrastColorUtil;->ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 7212
    .end local v10    # "fullLengthColor":Ljava/lang/Integer;
    :cond_ab
    :goto_ab
    invoke-virtual {v0, v8, v3}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 7213
    .local v10, "label":Ljava/lang/CharSequence;
    iget-boolean v11, v3, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    const-string v12, "Notification"

    if-eqz v11, :cond_c8

    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v11

    if-eqz v11, :cond_c8

    .line 7215
    const-string/jumbo v11, "new action layout enabled, gluing instead of setting text"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7217
    const-string/jumbo v11, "glueLabel"

    invoke-virtual {v6, v7, v11, v10}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_cb

    .line 7219
    :cond_c8
    invoke-virtual {v6, v7, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7221
    :goto_cb
    iget-object v11, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-boolean v13, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {v11, v9, v13}, Lcom/android/internal/util/ContrastColorUtil;->resolvePrimaryColor(Landroid/content/Context;IZ)I

    move-result v11

    .line 7223
    .local v11, "textColor":I
    if-eqz v4, :cond_ee

    .line 7224
    iget-object v13, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v14, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 7226
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v15

    iget-boolean v5, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 7225
    invoke-static {v14, v15, v5}, Lcom/android/internal/util/ContrastColorUtil;->resolveSecondaryColor(Landroid/content/Context;IZ)I

    move-result v5

    .line 7224
    const v14, 0x1050296

    invoke-static {v13, v5, v14}, Landroid/app/Notification$Builder;->setAlphaComponentByFloatDimen(Landroid/content/Context;II)I

    move-result v11

    .line 7229
    :cond_ee
    invoke-virtual {v6, v7, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 7231
    const v5, 0xffffff

    and-int/2addr v5, v11

    const/high16 v13, 0x33000000

    or-int/2addr v5, v13

    .line 7232
    .local v5, "rippleColor":I
    nop

    .line 7233
    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 7232
    const-string/jumbo v14, "setRippleColor"

    invoke-virtual {v6, v7, v14, v13}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 7234
    nop

    .line 7235
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    .line 7234
    const-string/jumbo v14, "setButtonBackground"

    invoke-virtual {v6, v7, v14, v13}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 7236
    iget-boolean v13, v3, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    if-eqz v13, :cond_14e

    .line 7237
    invoke-static {}, Landroid/app/Flags;->evenlyDividedCallStyleActionLayout()Z

    move-result v13

    if-eqz v13, :cond_129

    .line 7239
    const-string/jumbo v13, "new action layout enabled, gluing instead of setting icon"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7241
    const-string/jumbo v12, "glueIcon"

    invoke-virtual {v1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v6, v7, v12, v13}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    goto :goto_130

    .line 7243
    :cond_129
    invoke-virtual {v1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    invoke-virtual {v6, v7, v12}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 7245
    :goto_130
    invoke-virtual {v1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "key_action_priority"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 7246
    .local v12, "priority":Z
    const-string/jumbo v13, "setIsPriority"

    invoke-virtual {v6, v7, v13, v12}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7248
    if-eqz v12, :cond_147

    const v13, 0x105007d

    goto :goto_148

    :cond_147
    const/4 v13, 0x0

    .line 7249
    .local v13, "minWidthDimen":I
    :goto_148
    const-string/jumbo v14, "setMinimumWidth"

    invoke-virtual {v6, v7, v14, v13}, Landroid/widget/RemoteViews;->setIntDimen(ILjava/lang/String;I)V

    .line 7251
    .end local v5    # "rippleColor":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    .end local v9    # "buttonFillColor":I
    .end local v10    # "label":Ljava/lang/CharSequence;
    .end local v11    # "textColor":I
    .end local v12    # "priority":Z
    .end local v13    # "minWidthDimen":I
    :cond_14e
    goto :goto_15f

    .line 7252
    :cond_14f
    iget-object v5, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5, v3}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7254
    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;->getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v5

    invoke-virtual {v6, v7, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 7258
    :goto_15f
    iget-object v5, v0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 7259
    .local v5, "actionIndex":I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_16e

    .line 7260
    const v8, 0x1020429

    invoke-virtual {v6, v7, v8, v5}, Landroid/widget/RemoteViews;->setIntTag(III)V

    .line 7262
    :cond_16e
    return-object v6
.end method

.method private blacklist getActionButtonLayoutResource(ZZ)I
    .registers 4
    .param p1, "emphasizedMode"    # Z
    .param p2, "tombstone"    # Z

    .line 7266
    if-eqz p1, :cond_e

    .line 7267
    if-eqz p2, :cond_9

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedTombstoneActionLayoutResource()I

    move-result v0

    goto :goto_d

    .line 7268
    :cond_9
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    move-result v0

    .line 7267
    :goto_d
    return v0

    .line 7270
    :cond_e
    if-eqz p2, :cond_15

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v0

    goto :goto_19

    .line 7271
    :cond_15
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v0

    .line 7270
    :goto_19
    return v0
.end method

.method private greylist-max-o getActionLayoutResource()I
    .registers 2

    .line 7856
    const v0, 0x10900d5

    return v0
.end method

.method private greylist-max-o getActionTombstoneLayoutResource()I
    .registers 2

    .line 7868
    const v0, 0x10900d9

    return v0
.end method

.method private blacklist getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 3
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 7872
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getBigPictureLayoutResource()I
    .registers 2

    .line 7762
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7763
    const v0, 0x10900c5

    return v0

    .line 7765
    :cond_a
    const v0, 0x10900e4

    return v0
.end method

.method private greylist-max-o getBigTextLayoutResource()I
    .registers 2

    .line 7770
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7771
    const v0, 0x10900c6

    return v0

    .line 7773
    :cond_a
    const v0, 0x10900e5

    return v0
.end method

.method private greylist getCollapsedBaseLayoutResource()I
    .registers 2

    .line 7722
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7723
    const v0, 0x10900bd

    return v0

    .line 7725
    :cond_a
    const v0, 0x10900df

    return v0
.end method

.method private blacklist getCollapsedCallLayoutResource()I
    .registers 2

    .line 7832
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7833
    const v0, 0x10900be

    return v0

    .line 7835
    :cond_a
    const v0, 0x10900e6

    return v0
.end method

.method private blacklist getCollapsedConversationLayoutResource()I
    .registers 2

    .line 7824
    const v0, 0x10900bf

    return v0
.end method

.method private blacklist getCollapsedMediaLayoutResource()I
    .registers 2

    .line 7802
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7803
    const v0, 0x10900c0

    return v0

    .line 7805
    :cond_a
    const v0, 0x10900eb

    return v0
.end method

.method private blacklist getCollapsedMessagingLayoutResource()I
    .registers 2

    .line 7786
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7787
    const v0, 0x10900c1

    return v0

    .line 7789
    :cond_a
    const v0, 0x10900ec

    return v0
.end method

.method private blacklist getColorUtil()Lcom/android/internal/util/ContrastColorUtil;
    .registers 2

    .line 4651
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    if-nez v0, :cond_c

    .line 4652
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    .line 4654
    :cond_c
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/ContrastColorUtil;

    return-object v0
.end method

.method private blacklist getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;
    .registers 7
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6111
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v3

    iget-boolean v4, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification$Colors;->resolvePalette(Landroid/content/Context;IZZ)V

    .line 6112
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    return-object v0
.end method

.method private blacklist getCompactHeadsUpBaseLayoutResource()I
    .registers 2

    .line 7738
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7739
    const v0, 0x10900c2

    return v0

    .line 7741
    :cond_a
    const v0, 0x10900e7

    return v0
.end method

.method public static blacklist getContentMarginTop(Landroid/content/Context;I)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spacingRes"    # I

    .line 6727
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6729
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x105028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6731
    .local v1, "notifMargin":I
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 6733
    .local v2, "spacing":I
    const v3, 0x10502ea

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 6736
    .local v3, "textSize":I
    add-int v4, v1, v2

    add-int/2addr v4, v3

    return v4
.end method

.method private blacklist getConversationLayoutResource()I
    .registers 2

    .line 7820
    const v0, 0x10900e8

    return v0
.end method

.method private blacklist getDefaultProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 5893
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5894
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 5893
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getEmphasizedActionLayoutResource()I
    .registers 2

    .line 7860
    const v0, 0x10900d6

    return v0
.end method

.method private blacklist getEmphasizedTombstoneActionLayoutResource()I
    .registers 2

    .line 7864
    const v0, 0x10900d7

    return v0
.end method

.method private blacklist getExpandedBaseLayoutResource()I
    .registers 2

    .line 7754
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7755
    const v0, 0x10900c4

    return v0

    .line 7757
    :cond_a
    const v0, 0x10900e0

    return v0
.end method

.method private blacklist getExpandedCallLayoutResource()I
    .registers 2

    .line 7840
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7841
    const v0, 0x10900c7

    return v0

    .line 7843
    :cond_a
    const v0, 0x10900e1

    return v0
.end method

.method private blacklist getExpandedConversationLayoutResource()I
    .registers 2

    .line 7828
    const v0, 0x10900c8

    return v0
.end method

.method private blacklist getExpandedMediaLayoutResource()I
    .registers 2

    .line 7810
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7811
    const v0, 0x10900ca

    return v0

    .line 7813
    :cond_a
    const v0, 0x10900e2

    return v0
.end method

.method private blacklist getExpandedMessagingLayoutResource()I
    .registers 2

    .line 7794
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7795
    const v0, 0x10900cb

    return v0

    .line 7797
    :cond_a
    const v0, 0x10900e3

    return v0
.end method

.method public static blacklist getFullLengthSpanColor(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .registers 14
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 7298
    const/4 v0, 0x0

    .line 7299
    .local v0, "result":Ljava/lang/Integer;
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_57

    .line 7300
    move-object v1, p0

    check-cast v1, Landroid/text/Spanned;

    .line 7301
    .local v1, "ss":Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 7304
    .local v2, "spans":[Ljava/lang/Object;
    array-length v3, v2

    move v5, v4

    :goto_15
    if-ge v5, v3, :cond_57

    aget-object v6, v2, v5

    .line 7305
    .local v6, "span":Ljava/lang/Object;
    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 7306
    .local v7, "spanStart":I
    invoke-interface {v1, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 7307
    .local v8, "spanEnd":I
    sub-int v9, v8, v7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ne v9, v10, :cond_2b

    const/4 v9, 0x1

    goto :goto_2c

    :cond_2b
    move v9, v4

    .line 7308
    .local v9, "fullLength":Z
    :goto_2c
    if-nez v9, :cond_2f

    .line 7309
    goto :goto_54

    .line 7311
    :cond_2f
    instance-of v10, v6, Landroid/text/style/TextAppearanceSpan;

    if-eqz v10, :cond_45

    .line 7312
    move-object v10, v6

    check-cast v10, Landroid/text/style/TextAppearanceSpan;

    .line 7313
    .local v10, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v10}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 7314
    .local v11, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v11, :cond_44

    .line 7315
    invoke-virtual {v11}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7317
    .end local v10    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v11    # "textColor":Landroid/content/res/ColorStateList;
    :cond_44
    goto :goto_54

    :cond_45
    instance-of v10, v6, Landroid/text/style/ForegroundColorSpan;

    if-eqz v10, :cond_44

    .line 7318
    move-object v10, v6

    check-cast v10, Landroid/text/style/ForegroundColorSpan;

    .line 7319
    .local v10, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v10}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7304
    .end local v6    # "span":Ljava/lang/Object;
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    .end local v9    # "fullLength":Z
    .end local v10    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    :goto_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 7323
    .end local v1    # "ss":Landroid/text/Spanned;
    .end local v2    # "spans":[Ljava/lang/Object;
    :cond_57
    return-object v0
.end method

.method private blacklist getHeaderLayoutResource()I
    .registers 2

    .line 7713
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7714
    const v0, 0x10900cd

    return v0

    .line 7716
    :cond_a
    const v0, 0x10900de

    return v0
.end method

.method private blacklist getHeadsUpBaseLayoutResource()I
    .registers 2

    .line 7730
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7731
    const v0, 0x10900ce

    return v0

    .line 7733
    :cond_a
    const v0, 0x10900e9

    return v0
.end method

.method private greylist-max-o getInboxLayoutResource()I
    .registers 2

    .line 7778
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7779
    const v0, 0x10900c9

    return v0

    .line 7781
    :cond_a
    const v0, 0x10900ea

    return v0
.end method

.method private blacklist getMessagingCompactHeadsUpLayoutResource()I
    .registers 2

    .line 7746
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7747
    const v0, 0x10900c3

    return v0

    .line 7749
    :cond_a
    const v0, 0x10900ed

    return v0
.end method

.method private blacklist getNonContextualActions()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 6557
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 6558
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6559
    .local v0, "standardActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    .line 6561
    .local v2, "action":Landroid/app/Notification$Action;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 6562
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 6563
    goto :goto_14

    .line 6565
    :cond_2f
    invoke-virtual {v2}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v3

    if-nez v3, :cond_38

    .line 6566
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6568
    .end local v2    # "action":Landroid/app/Notification$Action;
    :cond_38
    goto :goto_14

    .line 6569
    :cond_39
    return-object v0
.end method

.method private blacklist getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 3
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 7485
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getPrimaryAccentColor()I

    move-result v0

    return v0
.end method

.method private greylist-max-o getProfileBadge()Landroid/graphics/Bitmap;
    .registers 6

    .line 5898
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5899
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_8

    .line 5900
    const/4 v1, 0x0

    return-object v1

    .line 5902
    :cond_8
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5903
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 5904
    const v2, 0x1050277

    goto :goto_1b

    .line 5905
    :cond_18
    const v2, 0x105029f

    .line 5902
    :goto_1b
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5906
    .local v1, "size":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5907
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5908
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5909
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5910
    return-object v2
.end method

.method private greylist-max-o getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 5874
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_a

    .line 5877
    const/4 v0, 0x0

    return-object v0

    .line 5881
    :cond_a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5882
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    .line 5883
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getUpdatableProfileBadgeId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder$$ExternalSyntheticLambda0;-><init>(Landroid/app/Notification$Builder;)V

    .line 5882
    const-string v4, "SOLID_COLORED"

    const-string v5, "NOTIFICATION"

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/app/admin/DevicePolicyResourcesManager;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Supplier;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getProgressLayoutResource()I
    .registers 2

    .line 7848
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7849
    const v0, 0x10900cc

    return v0

    .line 7851
    :cond_a
    const v0, 0x10900ee

    return v0
.end method

.method private blacklist getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 3
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 7463
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getContrastColor()I

    move-result v0

    return v0
.end method

.method private blacklist getStandardActionColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 3
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 7454
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_10

    .line 7455
    :cond_b
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    goto :goto_14

    :cond_10
    :goto_10
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 7454
    :goto_14
    return v0
.end method

.method private blacklist getUpdatableProfileBadgeId()Ljava/lang/String;
    .registers 3

    .line 5888
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5889
    const-string v0, "WORK_PROFILE_ICON"

    goto :goto_15

    :cond_13
    const-string v0, "UNDEFINED"

    .line 5888
    :goto_15
    return-object v0
.end method

.method private blacklist handleProgressBar(Landroid/widget/RemoteViews;Landroid/os/Bundle;Landroid/app/Notification$StandardTemplateParams;)Z
    .registers 10
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ex"    # Landroid/os/Bundle;
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6154
    const-string v0, "android.progressMax"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 6155
    .local v0, "max":I
    const-string v2, "android.progress"

    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 6156
    .local v2, "progress":I
    const-string v3, "android.progressIndeterminate"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 6157
    .local v3, "ind":Z
    iget-boolean v4, p3, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    const v5, 0x102000d

    if-nez v4, :cond_40

    if-nez v0, :cond_1e

    if-eqz v3, :cond_40

    .line 6158
    :cond_1e
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6159
    invoke-virtual {p1, v5, v0, v2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 6160
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 6161
    const v4, 0x1060301

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 6160
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 6162
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getPrimaryAccentColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 6163
    .local v1, "progressTint":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 6164
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 6165
    const/4 v4, 0x1

    return v4

    .line 6167
    .end local v1    # "progressTint":Landroid/content/res/ColorStateList;
    :cond_40
    const/16 v4, 0x8

    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6168
    return v1
.end method

.method private greylist-max-o hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .registers 9
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 6740
    iget-object v0, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_e

    goto :goto_31

    .line 6745
    :cond_e
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    .line 6746
    .local v0, "remoteInputs":[Landroid/app/RemoteInput;
    if-nez v0, :cond_15

    .line 6747
    return v1

    .line 6750
    :cond_15
    array-length v2, v0

    move v3, v1

    :goto_17
    if-ge v3, v2, :cond_30

    aget-object v4, v0, v3

    .line 6751
    .local v4, "r":Landroid/app/RemoteInput;
    invoke-virtual {v4}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 6752
    .local v5, "choices":[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v6

    if-nez v6, :cond_2e

    if-eqz v5, :cond_2b

    array-length v6, v5

    if-eqz v6, :cond_2b

    goto :goto_2e

    .line 6750
    .end local v4    # "r":Landroid/app/RemoteInput;
    .end local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 6753
    .restart local v4    # "r":Landroid/app/RemoteInput;
    .restart local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    return v1

    .line 6756
    .end local v4    # "r":Landroid/app/RemoteInput;
    .end local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_30
    return v1

    .line 6742
    .end local v0    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_31
    :goto_31
    return v1
.end method

.method private blacklist isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6468
    iget-boolean v0, p1, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist isCallActionColorCustomizable()Z
    .registers 3

    .line 6476
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public static blacklist isColorDark(I)Z
    .registers 5
    .param p0, "color"    # I

    .line 7371
    invoke-static {p0}, Lcom/android/internal/util/ContrastColorUtil;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fc6edb1281d81ceL    # 0.17912878474

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private greylist-max-o isLegacy()Z
    .registers 4

    .line 7398
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    if-nez v0, :cond_18

    .line 7399
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ge v0, v1, :cond_13

    move v0, v2

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    .line 7401
    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    .line 7403
    :cond_18
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    return v0
.end method

.method private blacklist isSnoozeSettingEnabled()Z
    .registers 5

    .line 6544
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_snooze"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_f} :catch_14

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    move v0, v2

    :cond_13
    return v0

    .line 6546
    :catch_14
    move-exception v1

    .line 6549
    .local v1, "ex":Ljava/lang/SecurityException;
    return v0
.end method

.method public static greylist-max-o makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .registers 4
    .param p0, "result"    # Landroid/widget/RemoteViews;

    .line 6976
    if-eqz p0, :cond_c

    .line 6977
    const-string/jumbo v0, "setExpanded"

    const/4 v1, 0x1

    const v2, 0x10202ef

    invoke-virtual {p0, v2, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6979
    :cond_c
    return-void
.end method

.method private blacklist makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6956
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 6957
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeaderLayoutResource()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 6958
    .local v0, "header":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 6959
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6960
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->updateHeaderBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 6961
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v1

    if-eqz v1, :cond_33

    iget v1, p1, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    if-eq v1, v2, :cond_2a

    iget v1, p1, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    if-ne v1, v2, :cond_33

    .line 6965
    :cond_2a
    const-string v1, "centerTopLine"

    const/4 v2, 0x1

    const v3, 0x102042c

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 6967
    :cond_33
    return-object v0
.end method

.method public static blacklist maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 11
    .param p0, "n"    # Landroid/app/Notification;

    .line 7671
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7675
    .local v0, "templateClass":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 7676
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_15

    .line 7677
    return-object p0

    .line 7681
    :cond_15
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v1, v1, Landroid/app/Notification$BuilderRemoteViews;

    const-string v2, "android.rebuild.contentViewActionCount"

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_30

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7682
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7683
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v1, v6, :cond_30

    move v1, v3

    goto :goto_31

    :cond_30
    move v1, v5

    .line 7684
    .local v1, "stripContentView":Z
    :goto_31
    iget-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v6, v6, Landroid/app/Notification$BuilderRemoteViews;

    const-string v7, "android.rebuild.bigViewActionCount"

    if-eqz v6, :cond_49

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7685
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v8, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7686
    invoke-virtual {v8}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v8

    if-ne v6, v8, :cond_49

    move v6, v3

    goto :goto_4a

    :cond_49
    move v6, v5

    .line 7687
    .local v6, "stripBigContentView":Z
    :goto_4a
    iget-object v8, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v8, v8, Landroid/app/Notification$BuilderRemoteViews;

    const-string v9, "android.rebuild.hudViewActionCount"

    if-eqz v8, :cond_61

    iget-object v8, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7688
    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v8, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7689
    invoke-virtual {v8}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v8

    if-ne v4, v8, :cond_61

    goto :goto_62

    :cond_61
    move v3, v5

    .line 7692
    .local v3, "stripHeadsUpContentView":Z
    :goto_62
    if-nez v1, :cond_69

    if-nez v6, :cond_69

    if-nez v3, :cond_69

    .line 7693
    return-object p0

    .line 7696
    :cond_69
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v4

    .line 7697
    .local v4, "clone":Landroid/app/Notification;
    const/4 v5, 0x0

    if-eqz v1, :cond_77

    .line 7698
    iput-object v5, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7699
    iget-object v8, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7701
    :cond_77
    if-eqz v6, :cond_80

    .line 7702
    iput-object v5, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7703
    iget-object v2, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7705
    :cond_80
    if-eqz v3, :cond_89

    .line 7706
    iput-object v5, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7707
    iget-object v2, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 7709
    :cond_89
    return-object v4
.end method

.method private blacklist minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 6807
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 6808
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6809
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6810
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6811
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 6812
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6814
    .local v2, "standard":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6816
    return-object v2
.end method

.method private blacklist minimallyDecoratedExpandedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 6821
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 6822
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6823
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6824
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6825
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 6826
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getExpandedBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6828
    .local v2, "standard":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6830
    invoke-static {v2}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 6831
    return-object v2
.end method

.method private blacklist minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 6836
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 6837
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6838
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->decorationType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6839
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6840
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v1, Landroid/app/Notification$TemplateBindResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 6841
    .local v1, "result":Landroid/app/Notification$TemplateBindResult;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 6843
    .local v2, "standard":Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1, v0, v1}, Landroid/app/Notification;->-$$Nest$smbuildCustomContentIntoTemplate(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 6845
    return-object v2
.end method

.method private blacklist populateActionsContainer(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Ljava/util/List;IZ)Z
    .registers 14
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p4, "numActions"    # I
    .param p5, "emphasizedMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/app/Notification$StandardTemplateParams;",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;IZ)Z"
        }
    .end annotation

    .line 6698
    .local p3, "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    const/4 v0, 0x0

    .line 6699
    .local v0, "validRemoteInput":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p4, :cond_32

    .line 6700
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$Action;

    .line 6702
    .local v2, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v3

    .line 6703
    .local v3, "actionHasValidInput":Z
    or-int/2addr v0, v3

    .line 6705
    invoke-direct {p0, v2, p5, p2}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 6706
    .local v4, "button":Landroid/widget/RemoteViews;
    const/4 v5, 0x0

    const v6, 0x10201d6

    if-eqz v3, :cond_21

    if-nez p5, :cond_21

    .line 6708
    const-string/jumbo v7, "setBackgroundResource"

    invoke-virtual {v4, v6, v7, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6710
    :cond_21
    if-eqz p5, :cond_29

    if-lez v1, :cond_29

    .line 6713
    const/4 v7, 0x4

    invoke-virtual {v4, v6, v7, v5}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6715
    :cond_29
    const v5, 0x10201ef

    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 6699
    .end local v2    # "action":Landroid/app/Notification$Action;
    .end local v3    # "actionHasValidInput":Z
    .end local v4    # "button":Landroid/widget/RemoteViews;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6717
    .end local v1    # "i":I
    :cond_32
    return v0
.end method

.method private blacklist processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 7
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 7436
    if-eqz p1, :cond_21

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7437
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 7439
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 7440
    .local v0, "color":I
    const v1, 0x1020006

    const-string/jumbo v2, "setOriginalIconColor"

    invoke-virtual {p2, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7442
    .end local v0    # "color":I
    :cond_21
    return-void
.end method

.method private greylist-max-o processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 7407
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/app/Notification$Builder;->textColorsNeedInversion()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 7408
    .local v0, "isAlreadyLightText":Z
    :goto_10
    if-eqz v0, :cond_1b

    .line 7409
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/util/ContrastColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 7411
    :cond_1b
    return-object p1
.end method

.method private blacklist processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 10
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 7420
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v0

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    move v0, v1

    .line 7422
    .local v0, "colorable":Z
    :goto_17
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getSmallIconColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    .line 7423
    .local v2, "color":I
    nop

    .line 7424
    invoke-direct {p0, p3}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v3

    .line 7423
    const v4, 0x1020006

    const-string/jumbo v5, "setBackgroundColor"

    invoke-virtual {p2, v4, v5, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7425
    nop

    .line 7426
    if-eqz v0, :cond_2d

    move v1, v2

    .line 7425
    :cond_2d
    const-string/jumbo v3, "setOriginalIconColor"

    invoke-virtual {p2, v4, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 7427
    return-void
.end method

.method public static whitelist recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .line 7515
    const-string v0, "Notification.Builder#recoverBuilder"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 7519
    :try_start_5
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    const-class v2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_44

    .line 7522
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_3a

    .line 7524
    const/4 v1, 0x4

    :try_start_14
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_18} :catch_19
    .catchall {:try_start_14 .. :try_end_18} :catchall_44

    .line 7529
    .local v1, "builderContext":Landroid/content/Context;
    :goto_18
    goto :goto_3b

    .line 7526
    .end local v1    # "builderContext":Landroid/content/Context;
    :catch_19
    move-exception v1

    .line 7527
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1a
    const-string v2, "Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApplicationInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7528
    move-object v1, p0

    .local v1, "builderContext":Landroid/content/Context;
    goto :goto_18

    .line 7531
    .end local v1    # "builderContext":Landroid/content/Context;
    :cond_3a
    move-object v1, p0

    .line 7534
    .restart local v1    # "builderContext":Landroid/content/Context;
    :goto_3b
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V
    :try_end_40
    .catchall {:try_start_1a .. :try_end_40} :catchall_44

    .line 7536
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 7534
    return-object v2

    .line 7536
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "builderContext":Landroid/content/Context;
    :catchall_44
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 7537
    throw v0
.end method

.method private greylist-max-o resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .registers 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 5972
    const v0, 0x10202ef

    const-string/jumbo v1, "setExpanded"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5973
    const v0, 0x1020219

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5974
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5975
    const v0, 0x102027c

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5976
    const v0, 0x1020352

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5977
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5978
    const v0, 0x1020354

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5979
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5980
    const v0, 0x1020353

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5981
    const v0, 0x1020355

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5982
    const v0, 0x1020598

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5983
    const v0, 0x1020594

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5984
    const v0, 0x1020490

    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5985
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5986
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v2}, Landroid/app/Notification;->-$$Nest$fputmUsesStandardHeader(Landroid/app/Notification;Z)V

    .line 5987
    return-void
.end method

.method private greylist-max-o resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 5958
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 5959
    const v0, 0x10204d0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5960
    const v0, 0x1020016

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5961
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5962
    const v0, 0x1020574

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5963
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5964
    return-void
.end method

.method private greylist-max-o resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .registers 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 6500
    const v0, 0x10201ef

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6501
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 6503
    const v0, 0x1020430

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6504
    const v0, 0x1020432

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6505
    const v0, 0x1020433

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6507
    const v0, 0x1020431

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6509
    const v0, 0x1020434

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6510
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6511
    const v0, 0x1020435

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6512
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 6514
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_46

    .line 6516
    const/4 v0, 0x3

    const v1, 0x10502a8

    const v2, 0x102042a

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6519
    :cond_46
    return-void
.end method

.method private greylist-max-o sanitizeColor()V
    .registers 4

    .line 7445
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_f

    .line 7446
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 7448
    :cond_f
    return-void
.end method

.method private static blacklist setAlphaComponentByFloatDimen(Landroid/content/Context;II)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I
    .param p2, "alphaDimenResId"    # I

    .line 7280
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 7281
    .local v0, "alphaValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 7282
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    return v1
.end method

.method private static blacklist setHeaderlessVerticalMargins(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .registers 6
    .param p0, "contentView"    # Landroid/widget/RemoteViews;
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p2, "hasSecondLine"    # Z

    .line 6068
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p1, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-nez v0, :cond_b

    goto :goto_21

    .line 6071
    :cond_b
    if-eqz p2, :cond_11

    .line 6072
    const v0, 0x10502c4

    goto :goto_14

    .line 6073
    :cond_11
    const v0, 0x10502c3

    :goto_14
    nop

    .line 6074
    .local v0, "marginDimen":I
    const/4 v1, 0x1

    const v2, 0x102042d

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6076
    const/4 v1, 0x3

    invoke-virtual {p0, v2, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6078
    return-void

    .line 6069
    .end local v0    # "marginDimen":I
    :cond_21
    :goto_21
    return-void
.end method

.method private blacklist setTextViewColorPrimary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .registers 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6082
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 6083
    return-void
.end method

.method private blacklist setTextViewColorSecondary(Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V
    .registers 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6107
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 6108
    return-void
.end method

.method private greylist-max-o showsTimeOrChronometer()Z
    .registers 2

    .line 6494
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private blacklist styleDisplaysCustomViewInline()Z
    .registers 2

    .line 7648
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o textColorsNeedInversion()Z
    .registers 4

    .line 7876
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    const-class v0, Landroid/app/Notification$MediaStyle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_26

    .line 7879
    :cond_14
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 7880
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x17

    if-le v0, v2, :cond_25

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1

    .line 7877
    .end local v0    # "targetSdkVersion":I
    :cond_26
    :goto_26
    return v1
.end method

.method private blacklist updateBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6142
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    const v1, 0x1020553

    if-eqz v0, :cond_15

    .line 6143
    nop

    .line 6144
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 6143
    const-string/jumbo v2, "setBackgroundColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1c

    .line 6147
    :cond_15
    const-string/jumbo v0, "setBackgroundResource"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6150
    :goto_1c
    return-void
.end method

.method private static blacklist updateExpanderAlignment(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Z)V
    .registers 6
    .param p0, "contentView"    # Landroid/widget/RemoteViews;
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p2, "hasSecondLine"    # Z

    .line 6051
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p1, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    if-eqz v0, :cond_1b

    .line 6052
    const/4 v0, 0x0

    const v1, 0x10202ef

    if-nez p2, :cond_16

    .line 6056
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    goto :goto_1b

    .line 6060
    :cond_16
    const/high16 v2, -0x40000000    # -2.0f

    invoke-virtual {p0, v1, v2, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 6064
    :cond_1b
    :goto_1b
    return-void
.end method

.method private blacklist updateHeaderBackgroundColor(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6127
    invoke-static {}, Landroid/app/Flags;->uiRichOngoing()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6128
    return-void

    .line 6130
    :cond_7
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->isBackgroundColorized(Landroid/app/Notification$StandardTemplateParams;)Z

    move-result v0

    const v1, 0x102042c

    if-eqz v0, :cond_1c

    .line 6131
    nop

    .line 6132
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 6131
    const-string/jumbo v2, "setBackgroundColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_23

    .line 6135
    :cond_1c
    const-string/jumbo v0, "setBackgroundResource"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 6138
    :goto_23
    return-void
.end method

.method private blacklist updateMarginsForActions(Landroid/widget/RemoteViews;Z)V
    .registers 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "emphasizedMode"    # Z

    .line 6673
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_22

    .line 6674
    const/4 v0, 0x1

    const v3, 0x10201f0

    if-eqz p2, :cond_18

    .line 6677
    const v1, 0x1050292

    invoke-virtual {p1, v3, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6680
    invoke-virtual {p1, v3, v2, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    goto :goto_28

    .line 6684
    :cond_18
    invoke-virtual {p1, v3, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6686
    const v0, 0x105026f

    invoke-virtual {p1, v3, v2, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    goto :goto_28

    .line 6691
    :cond_22
    const v0, 0x102042a

    invoke-virtual {p1, v0, v2, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginDimen(III)V

    .line 6694
    :goto_28
    return-void
.end method

.method private blacklist useExistingRemoteView(Landroid/widget/RemoteViews;)Z
    .registers 5
    .param p1, "customContent"    # Landroid/widget/RemoteViews;

    .line 6849
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 6850
    return v0

    .line 6852
    :cond_4
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 6854
    return v0

    .line 6856
    :cond_b
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 6857
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    invoke-static {v1}, Landroid/app/Notification;->-$$Nest$smisStandardLayout(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 6861
    const-string v1, "Notification"

    const-string v2, "For apps targeting S, a custom content view that is a modified version of any standard layout is disallowed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6863
    return v0

    .line 6865
    :cond_23
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 7
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5724
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5725
    return-object p0
.end method

.method public whitelist addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 5745
    if-eqz p1, :cond_7

    .line 5746
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5748
    :cond_7
    return-object p0
.end method

.method public whitelist addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 5651
    if-eqz p1, :cond_7

    .line 5652
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 5654
    :cond_7
    return-object p0
.end method

.method public whitelist addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "person"    # Landroid/app/Person;

    .line 5589
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5590
    return-object p0
.end method

.method public whitelist addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "uri"    # Ljava/lang/String;

    .line 5563
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 5564
    return-object p0
.end method

.method public whitelist build()Landroid/app/Notification;
    .registers 7

    .line 7573
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 7575
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v1

    .line 7576
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_66

    .line 7577
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification and BubbleMetadata shortcut id\'s don\'t match, notification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmShortcutId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vs bubble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmBubbleMetadata(Landroid/app/Notification;)Landroid/app/Notification$BubbleMetadata;

    move-result-object v2

    .line 7580
    invoke-virtual {v2}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7584
    :cond_66
    :goto_66
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_79

    .line 7585
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 7586
    .local v0, "saveExtras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 7589
    .end local v0    # "saveExtras":Landroid/os/Bundle;
    :cond_79
    invoke-static {}, Landroid/app/Flags;->sortSectionByTime()Z

    move-result v0

    if-nez v0, :cond_87

    .line 7590
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->creationTime:J

    .line 7594
    :cond_87
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 7596
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 7598
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_af

    .line 7599
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 7600
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 7601
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 7602
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 7604
    :cond_af
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    .line 7606
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_11d

    .line 7607
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v0

    if-nez v0, :cond_11d

    .line 7608
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7609
    .local v0, "newContentView":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7610
    .local v1, "newBigContentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7611
    .local v2, "newHeadsUpContentView":Landroid/widget/RemoteViews;
    if-nez v0, :cond_e7

    .line 7612
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 7613
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7614
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 7613
    const-string v5, "android.rebuild.contentViewActionCount"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7616
    :cond_e7
    if-nez v1, :cond_fc

    .line 7617
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 7618
    if-eqz v1, :cond_fc

    .line 7619
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7620
    invoke-virtual {v1}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 7619
    const-string v5, "android.rebuild.bigViewActionCount"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7623
    :cond_fc
    if-nez v2, :cond_111

    .line 7624
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 7625
    if-eqz v2, :cond_111

    .line 7626
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7627
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v4

    .line 7626
    const-string v5, "android.rebuild.hudViewActionCount"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7633
    :cond_111
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 7634
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 7635
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7638
    .end local v0    # "newContentView":Landroid/widget/RemoteViews;
    .end local v1    # "newBigContentView":Landroid/widget/RemoteViews;
    .end local v2    # "newHeadsUpContentView":Landroid/widget/RemoteViews;
    :cond_11d
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12d

    .line 7639
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 7642
    :cond_12d
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 7644
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public greylist-max-o buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 4
    .param p1, "n"    # Landroid/app/Notification;

    .line 7658
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 7659
    return-object p1
.end method

.method public greylist-max-o buildUnstyled()Landroid/app/Notification;
    .registers 4

    .line 7494
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 7495
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 7496
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 7498
    :cond_1d
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 7499
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people.list"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7501
    :cond_30
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_42

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_42

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4c

    .line 7503
    :cond_42
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.contains.customView"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7505
    :cond_4c
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public whitelist createBigContentView()Landroid/widget/RemoteViews;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6883
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createExpandedContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createCompactHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 5

    .line 6987
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_b

    .line 6988
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    .line 6991
    :cond_b
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_18

    .line 6992
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->makeCompactHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6993
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_18

    .line 6994
    return-object v0

    .line 6998
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_18
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 6999
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7000
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7004
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, v0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->hideTime(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 7006
    nop

    .line 7007
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCompactHeadsUpBaseLayoutResource()I

    move-result v1

    .line 7006
    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public whitelist createContentView()Landroid/widget/RemoteViews;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6774
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6775
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6776
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1e

    :cond_1a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 6775
    :goto_1e
    return-object v0

    .line 6777
    :cond_1f
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_39

    .line 6778
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 6779
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_39

    .line 6780
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 6781
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_38

    :cond_37
    move-object v1, v0

    .line 6780
    :goto_38
    return-object v1

    .line 6784
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_39
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 6785
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6786
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6787
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getCollapsedBaseLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public whitelist createHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7026
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->useExistingRemoteView(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 7027
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 7028
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_1e

    .line 7029
    :cond_1a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 7027
    :goto_1e
    return-object v0

    .line 7030
    :cond_1f
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3b

    .line 7031
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 7032
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_3a

    .line 7033
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->fullyCustomViewRequiresDecoration(Z)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 7034
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->minimallyDecoratedHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_39

    :cond_38
    move-object v1, v0

    .line 7033
    :goto_39
    return-object v1

    .line 7032
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_3a
    goto :goto_44

    .line 7036
    :cond_3b
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_44

    .line 7037
    return-object v1

    .line 7036
    :cond_44
    :goto_44
    nop

    .line 7042
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v3, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 7043
    invoke-virtual {v0, v3}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7044
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7045
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7046
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getHeadsUpBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public blacklist ensureColorSpanContrast(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 7357
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/util/ContrastColorUtil;->ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public blacklist ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "buttonFillColor"    # I

    .line 7340
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v0

    .line 7341
    .local v0, "isPromotedOngoing":Z
    if-nez v0, :cond_13

    invoke-static {}, Landroid/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 7342
    invoke-static {p1}, Landroid/app/Notification;->-$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 7345
    :cond_13
    invoke-static {p1, p2}, Lcom/android/internal/util/ContrastColorUtil;->ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public blacklist ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;Landroid/app/Notification$StandardTemplateParams;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 7331
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->getBackgroundColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Notification$Builder;->ensureColorSpanContrastOrStripStyling(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .registers 2
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    .line 5829
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 5830
    return-object p0
.end method

.method public blacklist getBackgroundColor(Z)I
    .registers 3
    .param p1, "isHeader"    # Z

    .line 7480
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->getColors(Z)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public blacklist getColors(Z)Landroid/app/Notification$Colors;
    .registers 7
    .param p1, "isHeader"    # Z

    .line 6121
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    if-nez p1, :cond_14

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->isColorized()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    iget-boolean v4, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification$Colors;->resolvePalette(Landroid/content/Context;IZZ)V

    .line 6122
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColors:Landroid/app/Notification$Colors;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 5688
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "publicMode"    # Z

    .line 7893
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 7894
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->getHeadsUpStatusBarText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 7895
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 7896
    return-object v0

    .line 7899
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_13
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getNotification()Landroid/app/Notification;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7555
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 3
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6092
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getPrimaryTextColor()I

    move-result v0

    return v0
.end method

.method public blacklist getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I
    .registers 3
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 6102
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->getColors(Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getSecondaryTextColor()I

    move-result v0

    return v0
.end method

.method public blacklist getSmallIconColor(Z)I
    .registers 3
    .param p1, "isHeader"    # Z

    .line 7472
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->getColors(Z)Landroid/app/Notification$Colors;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Colors;->getContrastColor()I

    move-result v0

    return v0
.end method

.method public whitelist getStyle()Landroid/app/Notification$Style;
    .registers 2

    .line 5792
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    return-object v0
.end method

.method public greylist-max-r loadHeaderAppName()Ljava/lang/String;
    .registers 3

    .line 6434
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->loadHeaderAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;
    .registers 7
    .param p1, "useRegularSubtext"    # Z

    .line 7122
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->disallowColorization()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    .line 7123
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7125
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7126
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    if-eqz p1, :cond_23

    iget-object v1, v0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 7127
    :cond_23
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createSummaryText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 7129
    :cond_2a
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 7130
    .local v1, "header":Landroid/widget/RemoteViews;
    const-string/jumbo v2, "setAcceptAllTouches"

    const v3, 0x102042c

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7132
    const-string/jumbo v2, "styleTextAsTitle"

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7133
    return-object v1
.end method

.method public blacklist makeNotificationGroupHeader()Landroid/widget/RemoteViews;
    .registers 3

    .line 6944
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->disallowColorization()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    .line 6945
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6946
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 6944
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist makePublicContentView(Z)Landroid/widget/RemoteViews;
    .registers 14
    .param p1, "isLowPriority"    # Z

    .line 7058
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_29

    .line 7059
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 7061
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    instance-of v2, v1, Landroid/app/Notification$MessagingStyle;

    if-eqz v2, :cond_24

    check-cast v1, Landroid/app/Notification$MessagingStyle;

    .line 7062
    .local v1, "privateStyle":Landroid/app/Notification$MessagingStyle;
    iget-object v2, v0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    instance-of v3, v2, Landroid/app/Notification$MessagingStyle;

    if-eqz v3, :cond_24

    check-cast v2, Landroid/app/Notification$MessagingStyle;

    .line 7063
    .local v2, "publicStyle":Landroid/app/Notification$MessagingStyle;
    iget v3, v1, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    iput v3, v2, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 7066
    .end local v1    # "privateStyle":Landroid/app/Notification$MessagingStyle;
    .end local v2    # "publicStyle":Landroid/app/Notification$MessagingStyle;
    :cond_24
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 7068
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_29
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7069
    .local v0, "savedBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 7070
    .local v1, "style":Landroid/app/Notification$Style;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 7071
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v3}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 7072
    .local v3, "largeIcon":Landroid/graphics/drawable/Icon;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4, v2}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 7073
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7074
    .local v4, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7075
    iget-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 7076
    .local v2, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 7077
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 7078
    .local v5, "publicExtras":Landroid/os/Bundle;
    nop

    .line 7079
    const-string v6, "android.showWhen"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 7078
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7080
    nop

    .line 7081
    const-string v6, "android.showChronometer"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 7080
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7082
    nop

    .line 7083
    const-string v6, "android.chronometerCountDown"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 7082
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7084
    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v6}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v6

    if-eqz v6, :cond_83

    .line 7085
    nop

    .line 7086
    const-string v6, "android.colorized"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 7085
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7088
    :cond_83
    const-string v6, "android.substName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7089
    .local v7, "appName":Ljava/lang/String;
    if-eqz v7, :cond_8e

    .line 7090
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7092
    :cond_8e
    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7094
    iget-object v6, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v6}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    sget v8, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    .line 7095
    invoke-virtual {v6, v8}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 7096
    invoke-virtual {v6, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 7097
    .local v6, "params":Landroid/app/Notification$StandardTemplateParams;
    if-eqz p1, :cond_a8

    .line 7098
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 7100
    :cond_a8
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v8}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result v8

    if-nez v8, :cond_b3

    .line 7101
    invoke-virtual {v6}, Landroid/app/Notification$StandardTemplateParams;->disallowColorization()Landroid/app/Notification$StandardTemplateParams;

    .line 7103
    :cond_b3
    invoke-direct {p0, v6}, Landroid/app/Notification$Builder;->makeNotificationHeader(Landroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 7104
    .local v8, "view":Landroid/widget/RemoteViews;
    const-string/jumbo v9, "setExpandOnlyOnButton"

    const/4 v10, 0x1

    const v11, 0x102042c

    invoke-virtual {v8, v11, v9, v10}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 7105
    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7106
    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v9, v3}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 7107
    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v4, v9, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7108
    iput-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 7109
    iput-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 7110
    return-object v8
.end method

.method public varargs whitelist setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "actions"    # [Landroid/app/Notification$Action;

    .line 5760
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5761
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_17

    .line 5762
    aget-object v1, p1, v0

    if-eqz v1, :cond_14

    .line 5763
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5761
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 5766
    .end local v0    # "i":I
    :cond_17
    return-object p0
.end method

.method public whitelist setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "allowed"    # Z

    .line 7546
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmAllowSystemGeneratedContextualActions(Landroid/app/Notification;Z)V

    .line 7547
    return-object p0
.end method

.method public whitelist setAutoCancel(Z)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "autoCancel"    # Z

    .line 5477
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5478
    return-object p0
.end method

.method public whitelist setBadgeIconType(I)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "icon"    # I

    .line 4727
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmBadgeIcon(Landroid/app/Notification;I)V

    .line 4728
    return-object p0
.end method

.method public whitelist setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "data"    # Landroid/app/Notification$BubbleMetadata;

    .line 4761
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmBubbleMetadata(Landroid/app/Notification;Landroid/app/Notification$BubbleMetadata;)V

    .line 4762
    return-object p0
.end method

.method public whitelist setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .line 5531
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 5532
    return-object p0
.end method

.method public greylist setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "channelId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4768
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4769
    return-object p0
.end method

.method public whitelist setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "channelId"    # Ljava/lang/String;

    .line 4777
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmChannelId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4778
    return-object p0
.end method

.method public whitelist setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "countDown"    # Z

    .line 4850
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4851
    return-object p0
.end method

.method public whitelist setColor(I)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "argb"    # I

    .line 5860
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    .line 5861
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    .line 5862
    return-object p0
.end method

.method public whitelist setColorized(Z)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "colorize"    # Z

    .line 5425
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5426
    return-object p0
.end method

.method public whitelist setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5135
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "info"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5099
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.infoText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5100
    return-object p0
.end method

.method public whitelist setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 5193
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 5194
    return-object p0
.end method

.method public whitelist setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 4956
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4957
    return-object p0
.end method

.method public whitelist setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 4947
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4948
    return-object p0
.end method

.method public whitelist setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 5158
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5159
    return-object p0
.end method

.method public whitelist setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 5146
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5147
    return-object p0
.end method

.method public whitelist setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 5170
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5171
    return-object p0
.end method

.method public whitelist setDefaults(I)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "defaults"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5508
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 5509
    return-object p0
.end method

.method public whitelist setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 5204
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 5205
    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 5671
    if-eqz p1, :cond_4

    .line 5672
    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 5674
    :cond_4
    return-object p0
.end method

.method public whitelist setFlag(IZ)Landroid/app/Notification$Builder;
    .registers 6
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 5843
    if-eqz p2, :cond_a

    .line 5844
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_12

    .line 5846
    :cond_a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 5848
    :goto_12
    return-object p0
.end method

.method public whitelist setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "behavior"    # I

    .line 5466
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmFgsDeferBehavior(Landroid/app/Notification;I)V

    .line 5467
    return-object p0
.end method

.method public whitelist setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .line 5249
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 5250
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5251
    return-object p0
.end method

.method public whitelist setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "groupKey"    # Ljava/lang/String;

    .line 5606
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmGroupKey(Landroid/app/Notification;Ljava/lang/String;)V

    .line 5607
    return-object p0
.end method

.method public whitelist setGroupAlertBehavior(I)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "groupAlertBehavior"    # I

    .line 4744
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmGroupAlertBehavior(Landroid/app/Notification;I)V

    .line 4745
    return-object p0
.end method

.method public whitelist setGroupSummary(Z)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "isGroupSummary"    # Z

    .line 5620
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5621
    return-object p0
.end method

.method public greylist-max-o setHideSmartReplies(Z)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "hideSmartReplies"    # Z

    .line 5073
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.hideSmartReplies"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5074
    return-object p0
.end method

.method public whitelist setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 5285
    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 5297
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 5298
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5299
    return-object p0
.end method

.method public whitelist setLights(III)Landroid/app/Notification$Builder;
    .registers 6
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5379
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 5380
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 5381
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 5382
    if-nez p2, :cond_10

    if-eqz p3, :cond_18

    .line 5383
    :cond_10
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 5385
    :cond_18
    return-object p0
.end method

.method public whitelist setLocalOnly(Z)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "localOnly"    # Z

    .line 5489
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5490
    return-object p0
.end method

.method public whitelist setLocusId(Landroid/content/LocusId;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "locusId"    # Landroid/content/LocusId;

    .line 4713
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmLocusId(Landroid/app/Notification;Landroid/content/LocusId;)V

    .line 4714
    return-object p0
.end method

.method public whitelist setNumber(I)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "number"    # I

    .line 5083
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    .line 5084
    return-object p0
.end method

.method public whitelist setOngoing(Z)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "ongoing"    # Z

    .line 5404
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5405
    return-object p0
.end method

.method public whitelist setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "onlyAlertOnce"    # Z

    .line 5440
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 5441
    return-object p0
.end method

.method public whitelist setPriority(I)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "pri"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5520
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    .line 5521
    return-object p0
.end method

.method public whitelist setProgress(IIZ)Landroid/app/Notification$Builder;
    .registers 6
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .line 5122
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5123
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5124
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5125
    return-object p0
.end method

.method public whitelist setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "n"    # Landroid/app/Notification;

    .line 5814
    if-eqz p1, :cond_14

    .line 5815
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 5816
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    goto :goto_19

    .line 5818
    :cond_14
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 5820
    :goto_19
    return-object p0
.end method

.method public blacklist setRemoteInputHistory([Landroid/app/RemoteInputHistoryItem;)Landroid/app/Notification$Builder;
    .registers 7
    .param p1, "items"    # [Landroid/app/RemoteInputHistoryItem;

    .line 5044
    const-string v0, "android.remoteInputHistoryItems"

    if-nez p1, :cond_d

    .line 5045
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_26

    .line 5047
    :cond_d
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5048
    .local v1, "itemCount":I
    new-array v2, v1, [Landroid/app/RemoteInputHistoryItem;

    .line 5049
    .local v2, "history":[Landroid/app/RemoteInputHistoryItem;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v1, :cond_1f

    .line 5050
    aget-object v4, p1, v3

    aput-object v4, v2, v3

    .line 5049
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 5052
    .end local v3    # "i":I
    :cond_1f
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5054
    .end local v1    # "itemCount":I
    .end local v2    # "history":[Landroid/app/RemoteInputHistoryItem;
    :goto_26
    return-object p0
.end method

.method public whitelist setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 9
    .param p1, "text"    # [Ljava/lang/CharSequence;

    .line 5019
    const-string v0, "android.remoteInputHistory"

    if-nez p1, :cond_d

    .line 5020
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_3e

    .line 5022
    :cond_d
    const/4 v1, 0x5

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5023
    .local v1, "itemCount":I
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 5024
    .local v2, "safe":[Ljava/lang/CharSequence;
    new-array v3, v1, [Landroid/app/RemoteInputHistoryItem;

    .line 5025
    .local v3, "items":[Landroid/app/RemoteInputHistoryItem;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_18
    if-ge v4, v1, :cond_2e

    .line 5026
    aget-object v5, p1, v4

    invoke-static {v5}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v4

    .line 5027
    new-instance v5, Landroid/app/RemoteInputHistoryItem;

    aget-object v6, p1, v4

    invoke-direct {v5, v6}, Landroid/app/RemoteInputHistoryItem;-><init>(Ljava/lang/CharSequence;)V

    aput-object v5, v3, v4

    .line 5025
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 5029
    .end local v4    # "i":I
    :cond_2e
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 5032
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.remoteInputHistoryItems"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5034
    .end local v1    # "itemCount":I
    .end local v2    # "safe":[Ljava/lang/CharSequence;
    .end local v3    # "items":[Landroid/app/RemoteInputHistoryItem;
    :goto_3e
    return-object p0
.end method

.method public whitelist setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 4999
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->-$$Nest$fputmSettingsText(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 5000
    return-object p0
.end method

.method public whitelist setShortCriticalText(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "shortCriticalText"    # Ljava/lang/String;

    .line 5111
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.shortCriticalText"

    invoke-static {p1}, Landroid/app/Notification;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5112
    return-object p0
.end method

.method public whitelist setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 4700
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmShortcutId(Landroid/app/Notification;Ljava/lang/String;)V

    .line 4701
    return-object p0
.end method

.method public greylist-max-o setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "showSpinner"    # Z

    .line 5063
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputSpinner"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5064
    return-object p0
.end method

.method public whitelist setShowWhen(Z)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "show"    # Z

    .line 4815
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4816
    return-object p0
.end method

.method public blacklist setSilent(Z)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "silent"    # Z

    .line 4917
    if-nez p1, :cond_3

    .line 4918
    return-object p0

    .line 4920
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4921
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    goto :goto_14

    .line 4923
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    .line 4926
    :goto_14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 4927
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 4928
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 4929
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 4930
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 4932
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->notificationSilentFlag()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 4933
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_54

    .line 4935
    :cond_42
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmGroupKey(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 4936
    const-string/jumbo v0, "silent"

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 4939
    :cond_54
    :goto_54
    return-object p0
.end method

.method public whitelist setSmallIcon(I)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "icon"    # I

    .line 4870
    if-eqz p1, :cond_9

    .line 4871
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_a

    .line 4872
    :cond_9
    const/4 v0, 0x0

    .line 4870
    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setSmallIcon(II)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .line 4888
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 4889
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 4902
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 4903
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 4904
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 4906
    :cond_16
    return-object p0
.end method

.method public whitelist setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "sortKey"    # Ljava/lang/String;

    .line 5638
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->-$$Nest$fputmSortKey(Landroid/app/Notification;Ljava/lang/String;)V

    .line 5639
    return-object p0
.end method

.method public whitelist setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "sound"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5312
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5313
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 5314
    return-object p0
.end method

.method public whitelist setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5326
    const-string v0, "Notification"

    const-string/jumbo v1, "setSound()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 5327
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5328
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 5329
    return-object p0
.end method

.method public whitelist setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5341
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 5342
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 5343
    return-object p0
.end method

.method public whitelist setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "style"    # Landroid/app/Notification$Style;

    .line 5776
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_28

    .line 5777
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 5778
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const-string v1, "android.template"

    if-eqz v0, :cond_21

    .line 5779
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 5780
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 5782
    :cond_21
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5785
    :cond_28
    :goto_28
    return-object p0
.end method

.method public whitelist setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 4980
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4981
    return-object p0
.end method

.method public whitelist setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .line 5261
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 5262
    return-object p0
.end method

.method public whitelist setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5271
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 5273
    return-object p0
.end method

.method public greylist setTimeout(J)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "durationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4784
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->-$$Nest$fputmTimeout(Landroid/app/Notification;J)V

    .line 4785
    return-object p0
.end method

.method public whitelist setTimeoutAfter(J)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "durationMs"    # J

    .line 4794
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->-$$Nest$fputmTimeout(Landroid/app/Notification;J)V

    .line 4795
    return-object p0
.end method

.method public whitelist setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "b"    # Z

    .line 4836
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4837
    return-object p0
.end method

.method public whitelist setVibrate([J)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "pattern"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5361
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 5362
    return-object p0
.end method

.method public whitelist setVisibility(I)Landroid/app/Notification$Builder;
    .registers 3
    .param p1, "visibility"    # I

    .line 5802
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    .line 5803
    return-object p0
.end method

.method public whitelist setWhen(J)Landroid/app/Notification$Builder;
    .registers 4
    .param p1, "when"    # J

    .line 4805
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 4806
    return-object p0
.end method

.method public greylist-max-o usesStandardHeader()Z
    .registers 5

    .line 5942
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$fgetmUsesStandardHeader(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 5943
    return v1

    .line 5945
    :cond_a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_23

    .line 5946
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_23

    .line 5947
    return v1

    .line 5950
    :cond_23
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5951
    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    invoke-static {v0}, Landroid/app/Notification;->-$$Nest$smisStandardLayout(I)Z

    move-result v0

    if-eqz v0, :cond_39

    goto :goto_3b

    :cond_39
    move v0, v2

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v0, v1

    .line 5952
    .local v0, "contentViewUsesHeader":Z
    :goto_3c
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_53

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5953
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Landroid/app/Notification;->-$$Nest$smisStandardLayout(I)Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_53

    :cond_51
    move v3, v2

    goto :goto_54

    :cond_53
    :goto_53
    move v3, v1

    .line 5954
    .local v3, "bigContentViewUsesHeader":Z
    :goto_54
    if-eqz v0, :cond_59

    if-eqz v3, :cond_59

    goto :goto_5a

    :cond_59
    move v1, v2

    :goto_5a
    return v1
.end method

.method public blacklist usesTemplate()Z
    .registers 2

    .line 7908
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_18

    .line 7910
    :cond_12
    invoke-direct {p0}, Landroid/app/Notification$Builder;->styleDisplaysCustomViewInline()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 7908
    :goto_1b
    return v0
.end method
