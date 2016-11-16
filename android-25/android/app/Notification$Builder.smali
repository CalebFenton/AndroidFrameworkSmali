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
.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final MAX_ACTION_BUTTONS:I = 0x3


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

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mColorUtilInited:Z

.field private mContext:Landroid/content/Context;

.field private mN:Landroid/app/Notification;

.field private mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStyle:Landroid/app/Notification$Style;

.field private mUserExtras:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/app/Notification$Builder;)Landroid/os/Bundle;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/Notification$Builder;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap10(Landroid/app/Notification$Builder;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(Landroid/app/Notification$Builder;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap12(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
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

.method static synthetic -wrap2(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
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

.method static synthetic -wrap3(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;
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

.method static synthetic -wrap4(Landroid/app/Notification$Builder;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap5(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap6(Landroid/app/Notification$Builder;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(Landroid/app/Notification$Builder;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(Landroid/app/Notification$Builder;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(Landroid/app/Notification$Builder;)I
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 2337
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    #@4
    .line 2336
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toAdopt"    # Landroid/app/Notification;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 2343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 2304
    new-instance v5, Landroid/os/Bundle;

    #@7
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    #@a
    iput-object v5, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    #@c
    .line 2306
    new-instance v5, Ljava/util/ArrayList;

    #@e
    const/4 v6, 0x3

    #@f
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    iput-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@14
    .line 2307
    new-instance v5, Ljava/util/ArrayList;

    #@16
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v5, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    #@1b
    .line 2309
    iput-boolean v7, p0, Landroid/app/Notification$Builder;->mColorUtilInited:Z

    #@1d
    .line 2314
    iput v8, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    #@1f
    .line 2315
    iput v8, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    #@21
    .line 2344
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@23
    .line 2346
    if-nez p2, :cond_2

    #@25
    .line 2347
    new-instance v5, Landroid/app/Notification;

    #@27
    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    #@2a
    iput-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2c
    .line 2348
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2f
    move-result-object v5

    #@30
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@32
    const/16 v6, 0x18

    #@34
    if-ge v5, v6, :cond_0

    #@36
    .line 2349
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@38
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@3a
    const-string/jumbo v6, "android.showWhen"

    #@3d
    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@40
    .line 2351
    :cond_0
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@42
    iput v7, v5, Landroid/app/Notification;->priority:I

    #@44
    .line 2352
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@46
    iput v7, v5, Landroid/app/Notification;->visibility:I

    #@48
    .line 2343
    :cond_1
    :goto_0
    return-void

    #@49
    .line 2354
    :cond_2
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@4b
    .line 2355
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@4d
    iget-object v5, v5, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@4f
    if-eqz v5, :cond_3

    #@51
    .line 2356
    iget-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@53
    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@55
    iget-object v6, v6, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@57
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@5a
    .line 2359
    :cond_3
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@5c
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@5e
    const-string/jumbo v6, "android.people"

    #@61
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@64
    move-result v5

    #@65
    if-eqz v5, :cond_4

    #@67
    .line 2360
    iget-object v5, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    #@69
    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6b
    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@6d
    const-string/jumbo v7, "android.people"

    #@70
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@77
    .line 2363
    :cond_4
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@79
    invoke-virtual {v5}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    #@7c
    move-result-object v5

    #@7d
    if-nez v5, :cond_5

    #@7f
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@81
    iget v5, v5, Landroid/app/Notification;->icon:I

    #@83
    if-eqz v5, :cond_5

    #@85
    .line 2364
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@87
    iget v5, v5, Landroid/app/Notification;->icon:I

    #@89
    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@8c
    .line 2367
    :cond_5
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@8e
    invoke-virtual {v5}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    #@91
    move-result-object v5

    #@92
    if-nez v5, :cond_6

    #@94
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@96
    iget-object v5, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@98
    if-eqz v5, :cond_6

    #@9a
    .line 2368
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@9c
    iget-object v5, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@9e
    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    #@a1
    .line 2371
    :cond_6
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@a3
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@a5
    const-string/jumbo v6, "android.template"

    #@a8
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@ab
    move-result-object v4

    #@ac
    .line 2372
    .local v4, "templateClass":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@af
    move-result v5

    #@b0
    if-nez v5, :cond_1

    #@b2
    .line 2374
    invoke-static {v4}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    #@b5
    move-result-object v2

    #@b6
    .line 2375
    .local v2, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-nez v2, :cond_7

    #@b8
    .line 2376
    const-string/jumbo v5, "Notification"

    #@bb
    new-instance v6, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v7, "Unknown style class: "

    #@c3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v6

    #@c7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v6

    #@cb
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ce
    move-result-object v6

    #@cf
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@d2
    goto/16 :goto_0

    #@d4
    .line 2380
    :cond_7
    const/4 v5, 0x0

    #@d5
    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    #@d7
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@da
    move-result-object v0

    #@db
    .line 2381
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    const/4 v5, 0x1

    #@dc
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@df
    .line 2382
    const/4 v5, 0x0

    #@e0
    new-array v5, v5, [Ljava/lang/Object;

    #@e2
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@e5
    move-result-object v1

    #@e6
    check-cast v1, Landroid/app/Notification$Style;

    #@e8
    .line 2383
    .local v1, "style":Landroid/app/Notification$Style;
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@ea
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@ec
    invoke-virtual {v1, v5}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    #@ef
    .line 2385
    if-eqz v1, :cond_1

    #@f1
    .line 2386
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@f4
    goto/16 :goto_0

    #@f6
    .line 2388
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    .end local v1    # "style":Landroid/app/Notification$Style;
    :catch_0
    move-exception v3

    #@f7
    .line 2389
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "Notification"

    #@fa
    const-string/jumbo v6, "Could not create Style"

    #@fd
    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@100
    goto/16 :goto_0
.end method

.method private adaptNotificationHeaderForBigContentView(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "result"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 3643
    if-eqz p1, :cond_0

    #@2
    .line 3644
    const-string/jumbo v0, "setExpanded"

    #@5
    const v1, 0x10203af

    #@8
    const/4 v2, 0x1

    #@9
    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    #@c
    .line 3642
    :cond_0
    return-void
.end method

.method private applyStandardTemplate(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 3280
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    #@0
    .prologue
    .line 3287
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    .line 3289
    .local v0, "ex":Landroid/os/Bundle;
    const-string/jumbo v3, "android.title"

    #@7
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@a
    move-result-object v3

    #@b
    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@e
    move-result-object v2

    #@f
    .line 3290
    .local v2, "title":Ljava/lang/CharSequence;
    const-string/jumbo v3, "android.text"

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@15
    move-result-object v3

    #@16
    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@19
    move-result-object v1

    #@1a
    .line 3291
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, p2, v2, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    #@1d
    move-result-object v3

    #@1e
    return-object v3
.end method

.method private applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const v5, 0x1020016

    #@4
    .line 3299
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    #@6
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@b
    move-result-object v4

    #@c
    invoke-direct {v0, v4, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    #@f
    .line 3301
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    #@12
    .line 3303
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@14
    iget-object v1, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@16
    .line 3305
    .local v1, "ex":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;)V

    #@19
    .line 3306
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;)V

    #@1c
    .line 3307
    invoke-direct {p0, p2, v0, v1}, Landroid/app/Notification$Builder;->handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z

    #@1f
    move-result v2

    #@20
    .line 3308
    .local v2, "showProgress":Z
    if-eqz p3, :cond_0

    #@22
    .line 3309
    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@25
    .line 3310
    invoke-virtual {v0, v5, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@28
    .line 3311
    if-eqz v2, :cond_2

    #@2a
    .line 3312
    const/4 v4, -0x2

    #@2b
    .line 3311
    :goto_0
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewLayoutWidth(II)V

    #@2e
    .line 3315
    :cond_0
    if-eqz p4, :cond_1

    #@30
    .line 3316
    if-eqz v2, :cond_3

    #@32
    const v3, 0x10203c7

    #@35
    .line 3318
    .local v3, "textId":I
    :goto_1
    invoke-virtual {v0, v3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@38
    .line 3319
    invoke-virtual {v0, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@3b
    .line 3322
    .end local v3    # "textId":I
    :cond_1
    if-nez v2, :cond_4

    #@3d
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@3f
    invoke-static {v4}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    #@42
    move-result v4

    #@43
    :goto_2
    invoke-virtual {p0, v0, v4}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    #@46
    .line 3324
    return-object v0

    #@47
    .line 3313
    :cond_2
    const/4 v4, -0x1

    #@48
    goto :goto_0

    #@49
    .line 3317
    :cond_3
    const v3, 0x102007e

    #@4c
    goto :goto_1

    #@4d
    .line 3322
    :cond_4
    const/4 v4, 0x1

    #@4e
    goto :goto_2
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "layoutId"    # I

    #@0
    .prologue
    .line 3510
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v0, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    .line 3512
    .local v0, "ex":Landroid/os/Bundle;
    const-string/jumbo v3, "android.title"

    #@7
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@a
    move-result-object v3

    #@b
    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@e
    move-result-object v2

    #@f
    .line 3513
    .local v2, "title":Ljava/lang/CharSequence;
    const-string/jumbo v3, "android.text"

    #@12
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@15
    move-result-object v3

    #@16
    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@19
    move-result-object v1

    #@1a
    .line 3514
    .local v1, "text":Ljava/lang/CharSequence;
    const/4 v3, 0x1

    #@1b
    invoke-direct {p0, p1, v3, v2, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    #@1e
    move-result-object v3

    #@1f
    return-object v3
.end method

.method private applyStandardTemplateWithActions(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 10
    .param p1, "layoutId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3519
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    #@3
    move-result-object v2

    #@4
    .line 3521
    .local v2, "big":Landroid/widget/RemoteViews;
    invoke-direct {p0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    #@7
    .line 3523
    const/4 v7, 0x0

    #@8
    .line 3525
    .local v7, "validRemoteInput":Z
    iget-object v8, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    .line 3526
    .local v0, "N":I
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@10
    iget-object v8, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@12
    if-eqz v8, :cond_1

    #@14
    const/4 v4, 0x1

    #@15
    .line 3527
    .local v4, "emphazisedMode":Z
    :goto_0
    const-string/jumbo v8, "setEmphasizedMode"

    #@18
    const v9, 0x10203a4

    #@1b
    invoke-virtual {v2, v9, v8, v4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    #@1e
    .line 3528
    if-lez v0, :cond_3

    #@20
    .line 3529
    const v8, 0x10203a9

    #@23
    const/4 v9, 0x0

    #@24
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@27
    .line 3530
    const v8, 0x10203a4

    #@2a
    const/4 v9, 0x0

    #@2b
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@2e
    .line 3531
    const v8, 0x10203b9

    #@31
    .line 3532
    const v9, 0x1050045

    #@34
    .line 3531
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    #@37
    .line 3533
    const/4 v8, 0x3

    #@38
    if-le v0, v8, :cond_0

    #@3a
    const/4 v0, 0x3

    #@3b
    .line 3534
    :cond_0
    const/4 v5, 0x0

    #@3c
    .end local v7    # "validRemoteInput":Z
    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_4

    #@3e
    .line 3535
    iget-object v8, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Landroid/app/Notification$Action;

    #@46
    .line 3536
    .local v1, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    #@49
    move-result v8

    #@4a
    or-int/2addr v7, v8

    #@4b
    .line 3539
    .local v7, "validRemoteInput":Z
    rem-int/lit8 v8, v5, 0x2

    #@4d
    if-eqz v8, :cond_2

    #@4f
    const/4 v8, 0x1

    #@50
    .line 3538
    :goto_2
    invoke-direct {p0, v1, v4, v8}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZZ)Landroid/widget/RemoteViews;

    #@53
    move-result-object v3

    #@54
    .line 3540
    .local v3, "button":Landroid/widget/RemoteViews;
    const v8, 0x10203a4

    #@57
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    #@5a
    .line 3534
    add-int/lit8 v5, v5, 0x1

    #@5c
    goto :goto_1

    #@5d
    .line 3526
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v3    # "button":Landroid/widget/RemoteViews;
    .end local v4    # "emphazisedMode":Z
    .end local v5    # "i":I
    .local v7, "validRemoteInput":Z
    :cond_1
    const/4 v4, 0x0

    #@5e
    .restart local v4    # "emphazisedMode":Z
    goto :goto_0

    #@5f
    .line 3539
    .restart local v1    # "action":Landroid/app/Notification$Action;
    .restart local v5    # "i":I
    .local v7, "validRemoteInput":Z
    :cond_2
    const/4 v8, 0x0

    #@60
    goto :goto_2

    #@61
    .line 3543
    .end local v1    # "action":Landroid/app/Notification$Action;
    .end local v5    # "i":I
    .local v7, "validRemoteInput":Z
    :cond_3
    const v8, 0x10203a9

    #@64
    const/16 v9, 0x8

    #@66
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@69
    .line 3546
    .end local v7    # "validRemoteInput":Z
    :cond_4
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6b
    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@6d
    const-string/jumbo v9, "android.remoteInputHistory"

    #@70
    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    #@73
    move-result-object v6

    #@74
    .line 3547
    .local v6, "replyText":[Ljava/lang/CharSequence;
    if-eqz v7, :cond_5

    #@76
    if-eqz v6, :cond_5

    #@78
    .line 3548
    array-length v8, v6

    #@79
    if-lez v8, :cond_5

    #@7b
    const/4 v8, 0x0

    #@7c
    aget-object v8, v6, v8

    #@7e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@81
    move-result v8

    #@82
    if-eqz v8, :cond_6

    #@84
    .line 3564
    :cond_5
    :goto_3
    return-object v2

    #@85
    .line 3549
    :cond_6
    const v8, 0x10203aa

    #@88
    const/4 v9, 0x0

    #@89
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@8c
    .line 3550
    const/4 v8, 0x0

    #@8d
    aget-object v8, v6, v8

    #@8f
    const v9, 0x10203ae

    #@92
    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@95
    .line 3552
    array-length v8, v6

    #@96
    const/4 v9, 0x1

    #@97
    if-le v8, v9, :cond_5

    #@99
    const/4 v8, 0x1

    #@9a
    aget-object v8, v6, v8

    #@9c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9f
    move-result v8

    #@a0
    if-nez v8, :cond_5

    #@a2
    .line 3553
    const v8, 0x10203ad

    #@a5
    const/4 v9, 0x0

    #@a6
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@a9
    .line 3554
    const/4 v8, 0x1

    #@aa
    aget-object v8, v6, v8

    #@ac
    const v9, 0x10203ad

    #@af
    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@b2
    .line 3556
    array-length v8, v6

    #@b3
    const/4 v9, 0x2

    #@b4
    if-le v8, v9, :cond_5

    #@b6
    const/4 v8, 0x2

    #@b7
    aget-object v8, v6, v8

    #@b9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@bc
    move-result v8

    #@bd
    if-nez v8, :cond_5

    #@bf
    .line 3558
    const v8, 0x10203ac

    #@c2
    const/4 v9, 0x0

    #@c3
    .line 3557
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@c6
    .line 3559
    const/4 v8, 0x2

    #@c7
    aget-object v8, v6, v8

    #@c9
    const v9, 0x10203ac

    #@cc
    invoke-virtual {v2, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@cf
    goto :goto_3
.end method

.method private bindExpandButton(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 3390
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@4
    move-result v4

    #@5
    .line 3391
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@7
    .line 3390
    const v1, 0x10203b5

    #@a
    const/4 v2, 0x0

    #@b
    move-object v0, p1

    #@c
    move v6, v3

    #@d
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@10
    .line 3392
    const-string/jumbo v0, "setOriginalNotificationColor"

    #@13
    .line 3393
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@16
    move-result v1

    #@17
    .line 3392
    const v2, 0x10203af

    #@1a
    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@1d
    .line 3389
    return-void
.end method

.method private bindHeaderAppName(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v1, 0x10203b0

    #@3
    .line 3470
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@a
    .line 3471
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@d
    move-result v0

    #@e
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    #@11
    .line 3469
    return-void
.end method

.method private bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v6, 0x1020095

    #@3
    const/4 v3, 0x0

    #@4
    const v8, 0x10203b4

    #@7
    .line 3397
    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 3398
    const v1, 0x10203b3

    #@10
    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@13
    .line 3399
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@15
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@17
    const-string/jumbo v2, "android.showChronometer"

    #@1a
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_0

    #@20
    .line 3400
    invoke-virtual {p1, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@23
    .line 3401
    const-string/jumbo v1, "setBase"

    #@26
    .line 3402
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@28
    iget-wide v2, v2, Landroid/app/Notification;->when:J

    #@2a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@2d
    move-result-wide v4

    #@2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@31
    move-result-wide v6

    #@32
    sub-long/2addr v4, v6

    #@33
    add-long/2addr v2, v4

    #@34
    .line 3401
    invoke-virtual {p1, v8, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    #@37
    .line 3403
    const-string/jumbo v1, "setStarted"

    #@3a
    const/4 v2, 0x1

    #@3b
    invoke-virtual {p1, v8, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    #@3e
    .line 3404
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@40
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@42
    const-string/jumbo v2, "android.chronometerCountDown"

    #@45
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@48
    move-result v0

    #@49
    .line 3405
    .local v0, "countsDown":Z
    invoke-virtual {p1, v8, v0}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    #@4c
    .line 3396
    .end local v0    # "countsDown":Z
    :goto_0
    return-void

    #@4d
    .line 3407
    :cond_0
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@50
    .line 3408
    const-string/jumbo v1, "setTime"

    #@53
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@55
    iget-wide v2, v2, Landroid/app/Notification;->when:J

    #@57
    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    #@5a
    goto :goto_0

    #@5b
    .line 3413
    :cond_1
    const-string/jumbo v1, "setTime"

    #@5e
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@60
    iget-wide v2, v2, Landroid/app/Notification;->when:J

    #@62
    const-wide/16 v4, 0x0

    #@64
    cmp-long v2, v2, v4

    #@66
    if-eqz v2, :cond_2

    #@68
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6a
    iget-wide v2, v2, Landroid/app/Notification;->when:J

    #@6c
    :goto_1
    invoke-virtual {p1, v6, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    #@6f
    goto :goto_0

    #@70
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@72
    invoke-static {v2}, Landroid/app/Notification;->-get0(Landroid/app/Notification;)J

    #@75
    move-result-wide v2

    #@76
    goto :goto_1
.end method

.method private bindHeaderText(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v4, 0x10203b2

    #@3
    const/4 v3, 0x0

    #@4
    .line 3418
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@8
    const-string/jumbo v2, "android.subText"

    #@b
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@e
    move-result-object v0

    #@f
    .line 3419
    .local v0, "headerText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    #@11
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@13
    if-eqz v1, :cond_0

    #@15
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@17
    iget-boolean v1, v1, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 3420
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@1d
    invoke-virtual {v1}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    #@20
    move-result v1

    #@21
    .line 3419
    if-eqz v1, :cond_0

    #@23
    .line 3421
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@25
    iget-object v0, v1, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    #@27
    .line 3423
    :cond_0
    if-nez v0, :cond_1

    #@29
    .line 3424
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2e
    move-result-object v1

    #@2f
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@31
    const/16 v2, 0x18

    #@33
    if-ge v1, v2, :cond_1

    #@35
    .line 3425
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@37
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@39
    const-string/jumbo v2, "android.infoText"

    #@3c
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@3f
    move-result-object v1

    #@40
    if-eqz v1, :cond_1

    #@42
    .line 3426
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@44
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@46
    const-string/jumbo v2, "android.infoText"

    #@49
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@4c
    move-result-object v0

    #@4d
    .line 3428
    :cond_1
    if-eqz v0, :cond_2

    #@4f
    .line 3430
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@56
    .line 3431
    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@59
    .line 3432
    const v1, 0x10203b1

    #@5c
    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@5f
    .line 3417
    :cond_2
    return-void
.end method

.method private bindLargeIcon(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v3, 0x1020044

    #@3
    .line 3366
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@5
    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@8
    move-result-object v1

    #@9
    if-nez v1, :cond_0

    #@b
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@d
    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 3367
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@13
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@15
    iget-object v2, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@17
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v1, v2}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@1e
    .line 3369
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@20
    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@23
    move-result-object v1

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 3370
    const/4 v1, 0x0

    #@27
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@2a
    .line 3371
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2c
    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    #@33
    .line 3372
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@35
    invoke-static {v1}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@38
    move-result-object v1

    #@39
    invoke-direct {p0, v1, p1}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    #@3c
    .line 3373
    const v0, 0x1050043

    #@3f
    .line 3374
    .local v0, "endMargin":I
    const v1, 0x10203c6

    #@42
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    #@45
    .line 3375
    const v1, 0x102007e

    #@48
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    #@4b
    .line 3376
    const v1, 0x102000d

    #@4e
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    #@51
    .line 3365
    .end local v0    # "endMargin":I
    :cond_1
    return-void
.end method

.method private bindNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 3381
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;)V

    #@3
    .line 3382
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;)V

    #@6
    .line 3383
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;)V

    #@9
    .line 3384
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V

    #@c
    .line 3385
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;)V

    #@f
    .line 3386
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;)V

    #@12
    .line 3380
    return-void
.end method

.method private bindProfileBadge(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v2, 0x10203b6

    #@3
    .line 3235
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    #@6
    move-result-object v0

    #@7
    .line 3237
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    #@9
    .line 3238
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    #@c
    .line 3239
    const/4 v1, 0x0

    #@d
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@10
    .line 3234
    :cond_0
    return-void
.end method

.method private bindSmallIcon(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const v1, 0x1020006

    #@4
    const/4 v2, 0x0

    #@5
    const/4 v3, -0x1

    #@6
    .line 3475
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@8
    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@b
    move-result-object v0

    #@c
    if-nez v0, :cond_0

    #@e
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@10
    iget v0, v0, Landroid/app/Notification;->icon:I

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 3476
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@16
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@18
    iget-object v6, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@1a
    iget v6, v6, Landroid/app/Notification;->icon:I

    #@1c
    invoke-static {v4, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    #@1f
    move-result-object v4

    #@20
    invoke-static {v0, v4}, Landroid/app/Notification;->-set3(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@23
    .line 3478
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@25
    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    #@2c
    .line 3480
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2e
    iget v6, v0, Landroid/app/Notification;->iconLevel:I

    #@30
    move-object v0, p1

    #@31
    move v4, v3

    #@32
    .line 3479
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@35
    .line 3481
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@37
    invoke-static {v0}, Landroid/app/Notification;->-get2(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@3a
    move-result-object v0

    #@3b
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    #@3e
    .line 3474
    return-void
.end method

.method private clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 13
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 3755
    instance-of v2, p1, Landroid/text/Spanned;

    #@4
    if-eqz v2, :cond_5

    #@6
    move-object v10, p1

    #@7
    .line 3756
    check-cast v10, Landroid/text/Spanned;

    #@9
    .line 3757
    .local v10, "ss":Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    #@c
    move-result v2

    #@d
    const-class v3, Ljava/lang/Object;

    #@f
    invoke-interface {v10, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@12
    move-result-object v9

    #@13
    .line 3758
    .local v9, "spans":[Ljava/lang/Object;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    #@15
    invoke-interface {v10}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@1c
    .line 3759
    .local v6, "builder":Landroid/text/SpannableStringBuilder;
    array-length v12, v9

    #@1d
    move v11, v1

    #@1e
    :goto_0
    if-ge v11, v12, :cond_4

    #@20
    aget-object v8, v9, v11

    #@22
    .line 3760
    .local v8, "span":Ljava/lang/Object;
    move-object v0, v8

    #@23
    .line 3761
    .local v0, "resultSpan":Ljava/lang/Object;
    instance-of v1, v8, Landroid/text/style/CharacterStyle;

    #@25
    if-eqz v1, :cond_0

    #@27
    move-object v1, v8

    #@28
    .line 3762
    check-cast v1, Landroid/text/style/CharacterStyle;

    #@2a
    invoke-virtual {v1}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    #@2d
    move-result-object v0

    #@2e
    .line 3764
    :cond_0
    instance-of v1, v0, Landroid/text/style/TextAppearanceSpan;

    #@30
    if-eqz v1, :cond_3

    #@32
    move-object v7, v0

    #@33
    .line 3765
    check-cast v7, Landroid/text/style/TextAppearanceSpan;

    #@35
    .line 3766
    .local v7, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    #@38
    move-result-object v1

    #@39
    if-eqz v1, :cond_1

    #@3b
    .line 3767
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    #@3d
    .line 3768
    .end local v0    # "resultSpan":Ljava/lang/Object;
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    .line 3769
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    #@44
    move-result v2

    #@45
    .line 3770
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    #@48
    move-result v3

    #@49
    .line 3772
    invoke-virtual {v7}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    #@4c
    move-result-object v5

    #@4d
    .line 3767
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@50
    .line 3780
    .end local v7    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .restart local v0    # "resultSpan":Ljava/lang/Object;
    :cond_1
    :goto_1
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@53
    move-result v1

    #@54
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@57
    move-result v2

    #@58
    .line 3781
    invoke-interface {v10, v8}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@5b
    move-result v3

    #@5c
    .line 3780
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@5f
    .line 3759
    :cond_2
    add-int/lit8 v1, v11, 0x1

    #@61
    move v11, v1

    #@62
    goto :goto_0

    #@63
    .line 3774
    :cond_3
    instance-of v1, v0, Landroid/text/style/ForegroundColorSpan;

    #@65
    if-nez v1, :cond_2

    #@67
    .line 3775
    instance-of v1, v0, Landroid/text/style/BackgroundColorSpan;

    #@69
    .line 3774
    if-nez v1, :cond_2

    #@6b
    .line 3778
    move-object v0, v8

    #@6c
    goto :goto_1

    #@6d
    .line 3783
    .end local v0    # "resultSpan":Ljava/lang/Object;
    .end local v8    # "span":Ljava/lang/Object;
    :cond_4
    return-object v6

    #@6e
    .line 3785
    .end local v6    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v9    # "spans":[Ljava/lang/Object;
    .end local v10    # "ss":Landroid/text/Spanned;
    :cond_5
    return-object p1
.end method

.method private ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;
    .locals 24
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "background"    # I
    .param p3, "outResultColor"    # [Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 3800
    move-object/from16 v0, p1

    #@2
    instance-of v3, v0, Landroid/text/Spanned;

    #@4
    if-eqz v3, :cond_7

    #@6
    move-object/from16 v20, p1

    #@8
    .line 3801
    check-cast v20, Landroid/text/Spanned;

    #@a
    .line 3802
    .local v20, "ss":Landroid/text/Spanned;
    invoke-interface/range {v20 .. v20}, Landroid/text/Spanned;->length()I

    #@d
    move-result v3

    #@e
    const-class v4, Ljava/lang/Object;

    #@10
    const/4 v5, 0x0

    #@11
    move-object/from16 v0, v20

    #@13
    invoke-interface {v0, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@16
    move-result-object v19

    #@17
    .line 3803
    .local v19, "spans":[Ljava/lang/Object;
    new-instance v8, Landroid/text/SpannableStringBuilder;

    #@19
    invoke-interface/range {v20 .. v20}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@20
    .line 3804
    .local v8, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    #@21
    move-object/from16 v0, v19

    #@23
    array-length v0, v0

    #@24
    move/from16 v23, v0

    #@26
    move/from16 v22, v3

    #@28
    :goto_0
    move/from16 v0, v22

    #@2a
    move/from16 v1, v23

    #@2c
    if-ge v0, v1, :cond_6

    #@2e
    aget-object v16, v19, v22

    #@30
    .line 3805
    .local v16, "span":Ljava/lang/Object;
    move-object/from16 v2, v16

    #@32
    .line 3806
    .local v2, "resultSpan":Ljava/lang/Object;
    move-object/from16 v0, v20

    #@34
    move-object/from16 v1, v16

    #@36
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@39
    move-result v18

    #@3a
    .line 3807
    .local v18, "spanStart":I
    move-object/from16 v0, v20

    #@3c
    move-object/from16 v1, v16

    #@3e
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@41
    move-result v17

    #@42
    .line 3808
    .local v17, "spanEnd":I
    sub-int v3, v17, v18

    #@44
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    #@47
    move-result v4

    #@48
    if-ne v3, v4, :cond_1

    #@4a
    const/4 v11, 0x1

    #@4b
    .line 3809
    .local v11, "fullLength":Z
    :goto_1
    move-object/from16 v0, v16

    #@4d
    instance-of v3, v0, Landroid/text/style/CharacterStyle;

    #@4f
    if-eqz v3, :cond_0

    #@51
    move-object/from16 v3, v16

    #@53
    .line 3810
    check-cast v3, Landroid/text/style/CharacterStyle;

    #@55
    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    #@58
    move-result-object v2

    #@59
    .line 3812
    :cond_0
    instance-of v3, v2, Landroid/text/style/TextAppearanceSpan;

    #@5b
    if-eqz v3, :cond_4

    #@5d
    move-object v15, v2

    #@5e
    .line 3813
    check-cast v15, Landroid/text/style/TextAppearanceSpan;

    #@60
    .line 3814
    .local v15, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    #@63
    move-result-object v21

    #@64
    .line 3815
    .local v21, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v21, :cond_3

    #@66
    .line 3816
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getColors()[I

    #@69
    move-result-object v9

    #@6a
    .line 3817
    .local v9, "colors":[I
    array-length v3, v9

    #@6b
    new-array v13, v3, [I

    #@6d
    .line 3818
    .local v13, "newColors":[I
    const/4 v12, 0x0

    #@6e
    .local v12, "i":I
    :goto_2
    array-length v3, v13

    #@6f
    if-ge v12, v3, :cond_2

    #@71
    .line 3820
    aget v3, v9, v12

    #@73
    .line 3819
    move/from16 v0, p2

    #@75
    invoke-static {v3, v0}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(II)I

    #@78
    move-result v3

    #@79
    aput v3, v13, v12

    #@7b
    .line 3818
    add-int/lit8 v12, v12, 0x1

    #@7d
    goto :goto_2

    #@7e
    .line 3808
    .end local v9    # "colors":[I
    .end local v11    # "fullLength":Z
    .end local v12    # "i":I
    .end local v13    # "newColors":[I
    .end local v15    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v21    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v11, 0x0

    #@7f
    .restart local v11    # "fullLength":Z
    goto :goto_1

    #@80
    .line 3822
    .restart local v9    # "colors":[I
    .restart local v12    # "i":I
    .restart local v13    # "newColors":[I
    .restart local v15    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .restart local v21    # "textColor":Landroid/content/res/ColorStateList;
    :cond_2
    new-instance v6, Landroid/content/res/ColorStateList;

    #@82
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/ColorStateList;->getStates()[[I

    #@85
    move-result-object v3

    #@86
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@89
    move-result-object v3

    #@8a
    check-cast v3, [[I

    #@8c
    invoke-direct {v6, v3, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@8f
    .line 3824
    .end local v21    # "textColor":Landroid/content/res/ColorStateList;
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    #@91
    .line 3825
    .end local v2    # "resultSpan":Ljava/lang/Object;
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    #@94
    move-result-object v3

    #@95
    .line 3826
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    #@98
    move-result v4

    #@99
    .line 3827
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    #@9c
    move-result v5

    #@9d
    .line 3829
    invoke-virtual {v15}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    #@a0
    move-result-object v7

    #@a1
    .line 3824
    invoke-direct/range {v2 .. v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@a4
    .line 3830
    .restart local v2    # "resultSpan":Ljava/lang/Object;
    if-eqz v11, :cond_3

    #@a6
    .line 3831
    new-instance v4, Landroid/content/res/ColorStateList;

    #@a8
    .line 3832
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getStates()[[I

    #@ab
    move-result-object v3

    #@ac
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@af
    move-result-object v3

    #@b0
    check-cast v3, [[I

    #@b2
    .line 3831
    invoke-direct {v4, v3, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    #@b5
    const/4 v3, 0x0

    #@b6
    aput-object v4, p3, v3

    #@b8
    .line 3848
    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    .end local v9    # "colors":[I
    .end local v12    # "i":I
    .end local v13    # "newColors":[I
    .end local v15    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    :cond_3
    :goto_3
    move-object/from16 v0, v20

    #@ba
    move-object/from16 v1, v16

    #@bc
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@bf
    move-result v3

    #@c0
    move/from16 v0, v18

    #@c2
    move/from16 v1, v17

    #@c4
    invoke-virtual {v8, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@c7
    .line 3804
    add-int/lit8 v3, v22, 0x1

    #@c9
    move/from16 v22, v3

    #@cb
    goto/16 :goto_0

    #@cd
    .line 3835
    :cond_4
    instance-of v3, v2, Landroid/text/style/ForegroundColorSpan;

    #@cf
    if-eqz v3, :cond_5

    #@d1
    move-object v14, v2

    #@d2
    .line 3836
    check-cast v14, Landroid/text/style/ForegroundColorSpan;

    #@d4
    .line 3837
    .local v14, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v14}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    #@d7
    move-result v10

    #@d8
    .line 3838
    .local v10, "foregroundColor":I
    move/from16 v0, p2

    #@da
    invoke-static {v10, v0}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(II)I

    #@dd
    move-result v10

    #@de
    .line 3840
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    #@e0
    .end local v2    # "resultSpan":Ljava/lang/Object;
    invoke-direct {v2, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    #@e3
    .line 3841
    .restart local v2    # "resultSpan":Ljava/lang/Object;
    if-eqz v11, :cond_3

    #@e5
    .line 3842
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@e8
    move-result-object v3

    #@e9
    const/4 v4, 0x0

    #@ea
    aput-object v3, p3, v4

    #@ec
    goto :goto_3

    #@ed
    .line 3845
    .end local v10    # "foregroundColor":I
    .end local v14    # "originalSpan":Landroid/text/style/ForegroundColorSpan;
    :cond_5
    move-object/from16 v2, v16

    #@ef
    goto :goto_3

    #@f0
    .line 3850
    .end local v2    # "resultSpan":Ljava/lang/Object;
    .end local v11    # "fullLength":Z
    .end local v16    # "span":Ljava/lang/Object;
    .end local v17    # "spanEnd":I
    .end local v18    # "spanStart":I
    :cond_6
    return-object v8

    #@f1
    .line 3852
    .end local v8    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v19    # "spans":[Ljava/lang/Object;
    .end local v20    # "ss":Landroid/text/Spanned;
    :cond_7
    return-object p1
.end method

.method private generateActionButton(Landroid/app/Notification$Action;ZZ)Landroid/widget/RemoteViews;
    .locals 12
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "emphazisedMode"    # Z
    .param p3, "oddAction"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v11, 0x0

    #@3
    const v10, 0x10203a5

    #@6
    .line 3706
    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@8
    if-nez v1, :cond_3

    #@a
    const/4 v9, 0x1

    #@b
    .line 3707
    .local v9, "tombstone":Z
    :goto_0
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    #@d
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@12
    move-result-object v5

    #@13
    .line 3708
    if-eqz p2, :cond_4

    #@15
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    #@18
    move-result v1

    #@19
    .line 3707
    :goto_1
    invoke-direct {v0, v5, v1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    #@1c
    .line 3711
    .local v0, "button":Landroid/widget/RemoteViews;
    if-nez v9, :cond_0

    #@1e
    .line 3712
    iget-object v1, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@20
    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    #@23
    .line 3714
    :cond_0
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@25
    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    #@28
    .line 3715
    invoke-static {p1}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    #@2b
    move-result-object v1

    #@2c
    if-eqz v1, :cond_1

    #@2e
    .line 3716
    invoke-static {p1}, Landroid/app/Notification$Action;->-get1(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    #@35
    .line 3718
    :cond_1
    if-eqz p2, :cond_9

    #@37
    .line 3720
    iget-object v5, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@39
    if-eqz p3, :cond_6

    #@3b
    const v1, 0x1060054

    #@3e
    :goto_2
    invoke-virtual {v5, v1}, Landroid/content/Context;->getColor(I)I

    #@41
    move-result v4

    #@42
    .line 3723
    .local v4, "bgColor":I
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@44
    .line 3722
    const v1, 0x10203a8

    #@47
    move v6, v3

    #@48
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@4b
    .line 3724
    iget-object v8, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@4d
    .line 3725
    .local v8, "title":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    #@4e
    .line 3726
    .local v7, "outResultColor":[Landroid/content/res/ColorStateList;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_7

    #@54
    .line 3727
    invoke-direct {p0, v8}, Landroid/app/Notification$Builder;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@57
    move-result-object v8

    #@58
    .line 3732
    .end local v7    # "outResultColor":[Landroid/content/res/ColorStateList;
    :goto_3
    invoke-virtual {v0, v10, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@5b
    .line 3733
    if-eqz v7, :cond_8

    #@5d
    aget-object v1, v7, v11

    #@5f
    if-eqz v1, :cond_8

    #@61
    .line 3736
    aget-object v1, v7, v11

    #@63
    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(ILandroid/content/res/ColorStateList;)V

    #@66
    .line 3746
    .end local v4    # "bgColor":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_2
    :goto_4
    return-object v0

    #@67
    .line 3706
    .end local v0    # "button":Landroid/widget/RemoteViews;
    .end local v9    # "tombstone":Z
    :cond_3
    const/4 v9, 0x0

    #@68
    .restart local v9    # "tombstone":Z
    goto :goto_0

    #@69
    .line 3709
    :cond_4
    if-eqz v9, :cond_5

    #@6b
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    #@6e
    move-result v1

    #@6f
    goto :goto_1

    #@70
    .line 3710
    :cond_5
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    #@73
    move-result v1

    #@74
    goto :goto_1

    #@75
    .line 3721
    .restart local v0    # "button":Landroid/widget/RemoteViews;
    :cond_6
    const v1, 0x1060055

    #@78
    goto :goto_2

    #@79
    .line 3729
    .restart local v4    # "bgColor":I
    .restart local v7    # "outResultColor":[Landroid/content/res/ColorStateList;
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_7
    new-array v7, v2, [Landroid/content/res/ColorStateList;

    #@7b
    .line 3730
    .local v7, "outResultColor":[Landroid/content/res/ColorStateList;
    invoke-direct {p0, v8, v4, v7}, Landroid/app/Notification$Builder;->ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;

    #@7e
    move-result-object v8

    #@7f
    goto :goto_3

    #@80
    .line 3737
    .end local v7    # "outResultColor":[Landroid/content/res/ColorStateList;
    :cond_8
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@82
    iget v1, v1, Landroid/app/Notification;->color:I

    #@84
    if-eqz v1, :cond_2

    #@86
    .line 3738
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@89
    move-result v1

    #@8a
    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    #@8d
    goto :goto_4

    #@8e
    .line 3741
    .end local v4    # "bgColor":I
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_9
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@90
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@93
    move-result-object v1

    #@94
    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@97
    .line 3742
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@99
    iget v1, v1, Landroid/app/Notification;->color:I

    #@9b
    if-eqz v1, :cond_2

    #@9d
    .line 3743
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@a0
    move-result v1

    #@a1
    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    #@a4
    goto :goto_4
.end method

.method private getActionLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 4117
    const v0, 0x1090085

    #@3
    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 4125
    const v0, 0x1090088

    #@3
    return v0
.end method

.method private getAllExtras()Landroid/os/Bundle;
    .locals 2

    #@0
    .prologue
    .line 3062
    iget-object v1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    #@2
    invoke-virtual {v1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/os/Bundle;

    #@8
    .line 3063
    .local v0, "saveExtras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@a
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@c
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@f
    .line 3064
    return-object v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 4093
    const v0, 0x109008c

    #@3
    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 4097
    const v0, 0x109008d

    #@3
    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 4101
    const v0, 0x109008f

    #@3
    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 4105
    const v0, 0x1090090

    #@3
    return v0
.end method

.method private getColorUtil()Lcom/android/internal/util/NotificationColorUtil;
    .locals 2

    #@0
    .prologue
    .line 2398
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mColorUtilInited:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 2399
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mColorUtilInited:Z

    #@7
    .line 2400
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@c
    move-result-object v0

    #@d
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@f
    const/16 v1, 0x15

    #@11
    if-ge v0, v1, :cond_0

    #@13
    .line 2401
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@15
    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    #@1b
    .line 2404
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    #@1d
    return-object v0
.end method

.method private getEmphasizedActionLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 4121
    const v0, 0x1090086

    #@3
    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 4109
    const v0, 0x1090091

    #@3
    return v0
.end method

.method private getMessagingLayoutResource()I
    .locals 1

    #@0
    .prologue
    .line 4113
    const v0, 0x1090093

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
    .line 3961
    const/4 v3, 0x7

    #@2
    new-array v0, v3, [Ljava/lang/Class;

    #@4
    .line 3962
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
    .line 3963
    const-class v3, Landroid/app/Notification$DecoratedCustomViewStyle;

    #@19
    const/4 v4, 0x4

    #@1a
    aput-object v3, v0, v4

    #@1c
    const-class v3, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    #@1e
    const/4 v4, 0x5

    #@1f
    aput-object v3, v0, v4

    #@21
    .line 3964
    const-class v3, Landroid/app/Notification$MessagingStyle;

    #@23
    const/4 v4, 0x6

    #@24
    aput-object v3, v0, v4

    #@26
    .line 3965
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    array-length v3, v0

    #@27
    :goto_0
    if-ge v2, v3, :cond_1

    #@29
    aget-object v1, v0, v2

    #@2b
    .line 3966
    .local v1, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_0

    #@35
    .line 3967
    return-object v1

    #@36
    .line 3965
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@38
    goto :goto_0

    #@39
    .line 3970
    .end local v1    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    const/4 v2, 0x0

    #@3a
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
    .line 3221
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    .line 3222
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    #@8
    .line 3223
    return-object v4

    #@9
    .line 3225
    :cond_0
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@b
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v4

    #@f
    .line 3226
    const v5, 0x105007b

    #@12
    .line 3225
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@15
    move-result v3

    #@16
    .line 3227
    .local v3, "size":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@18
    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@1b
    move-result-object v1

    #@1c
    .line 3228
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    #@1e
    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@21
    .line 3229
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@24
    .line 3230
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@27
    .line 3231
    return-object v1
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3209
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 3212
    const/4 v0, 0x0

    #@a
    return-object v0

    #@b
    .line 3216
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object v0

    #@11
    .line 3217
    new-instance v1, Landroid/os/UserHandle;

    #@13
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@15
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    #@18
    move-result v2

    #@19
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@1c
    .line 3216
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method private handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "hasProgress"    # Z
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "ex"    # Landroid/os/Bundle;

    #@0
    .prologue
    const v6, 0x102000d

    #@3
    const/4 v5, 0x0

    #@4
    .line 3343
    const-string/jumbo v4, "android.progressMax"

    #@7
    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@a
    move-result v2

    #@b
    .line 3344
    .local v2, "max":I
    const-string/jumbo v4, "android.progress"

    #@e
    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@11
    move-result v3

    #@12
    .line 3345
    .local v3, "progress":I
    const-string/jumbo v4, "android.progressIndeterminate"

    #@15
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    .line 3346
    .local v1, "ind":Z
    if-eqz p1, :cond_2

    #@1b
    if-nez v2, :cond_0

    #@1d
    if-eqz v1, :cond_2

    #@1f
    .line 3347
    :cond_0
    invoke-virtual {p2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@22
    .line 3348
    invoke-virtual {p2, v6, v2, v3, v1}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    #@25
    .line 3351
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@27
    .line 3352
    const v5, 0x1060053

    #@2a
    .line 3351
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    #@2d
    move-result v4

    #@2e
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@31
    move-result-object v4

    #@32
    .line 3350
    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    #@35
    .line 3353
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@37
    iget v4, v4, Landroid/app/Notification;->color:I

    #@39
    if-eqz v4, :cond_1

    #@3b
    .line 3354
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@3e
    move-result v4

    #@3f
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@42
    move-result-object v0

    #@43
    .line 3355
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    #@46
    .line 3356
    invoke-virtual {p2, v6, v0}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    #@49
    .line 3358
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v4, 0x1

    #@4a
    return v4

    #@4b
    .line 3360
    :cond_2
    const/16 v4, 0x8

    #@4d
    invoke-virtual {p2, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@50
    .line 3361
    return v5
.end method

.method private hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3568
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    #@3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v3

    #@7
    if-nez v3, :cond_0

    #@9
    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    #@b
    if-nez v3, :cond_1

    #@d
    .line 3570
    :cond_0
    return v4

    #@e
    .line 3573
    :cond_1
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    #@11
    move-result-object v2

    #@12
    .line 3574
    .local v2, "remoteInputs":[Landroid/app/RemoteInput;
    if-nez v2, :cond_2

    #@14
    .line 3575
    return v4

    #@15
    .line 3578
    :cond_2
    array-length v5, v2

    #@16
    move v3, v4

    #@17
    :goto_0
    if-ge v3, v5, :cond_5

    #@19
    aget-object v1, v2, v3

    #@1b
    .line 3579
    .local v1, "r":Landroid/app/RemoteInput;
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@1e
    move-result-object v0

    #@1f
    .line 3580
    .local v0, "choices":[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    #@22
    move-result v6

    #@23
    if-nez v6, :cond_3

    #@25
    if-eqz v0, :cond_4

    #@27
    array-length v6, v0

    #@28
    if-eqz v6, :cond_4

    #@2a
    .line 3581
    :cond_3
    const/4 v3, 0x1

    #@2b
    return v3

    #@2c
    .line 3578
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 3584
    .end local v0    # "choices":[Ljava/lang/CharSequence;
    .end local v1    # "r":Landroid/app/RemoteInput;
    :cond_5
    return v4
.end method

.method private hideLine1Text(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "result"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 3637
    if-eqz p1, :cond_0

    #@2
    .line 3638
    const v0, 0x10203c7

    #@5
    const/16 v1, 0x8

    #@7
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@a
    .line 3636
    :cond_0
    return-void
.end method

.method private isLegacy()Z
    .locals 1

    #@0
    .prologue
    .line 3860
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public static maybeCloneStrippedForDelivery(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 9
    .param p0, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 4051
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    const-string/jumbo v6, "android.template"

    #@7
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v4

    #@b
    .line 4055
    .local v4, "templateClass":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v5

    #@f
    if-nez v5, :cond_0

    #@11
    .line 4056
    invoke-static {v4}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    #@14
    move-result-object v5

    #@15
    if-nez v5, :cond_0

    #@17
    .line 4057
    return-object p0

    #@18
    .line 4061
    :cond_0
    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@1a
    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    #@1c
    if-eqz v5, :cond_6

    #@1e
    .line 4062
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@20
    const-string/jumbo v6, "android.rebuild.contentViewActionCount"

    #@23
    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@26
    move-result v5

    #@27
    .line 4063
    iget-object v6, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@29
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@2c
    move-result v6

    #@2d
    .line 4062
    if-ne v5, v6, :cond_5

    #@2f
    const/4 v2, 0x1

    #@30
    .line 4064
    .local v2, "stripContentView":Z
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@32
    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    #@34
    if-eqz v5, :cond_8

    #@36
    .line 4065
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@38
    const-string/jumbo v6, "android.rebuild.bigViewActionCount"

    #@3b
    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@3e
    move-result v5

    #@3f
    .line 4066
    iget-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@41
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@44
    move-result v6

    #@45
    .line 4065
    if-ne v5, v6, :cond_7

    #@47
    const/4 v1, 0x1

    #@48
    .line 4067
    .local v1, "stripBigContentView":Z
    :goto_1
    iget-object v5, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@4a
    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    #@4c
    if-eqz v5, :cond_a

    #@4e
    .line 4068
    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@50
    const-string/jumbo v6, "android.rebuild.hudViewActionCount"

    #@53
    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@56
    move-result v5

    #@57
    .line 4069
    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@59
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@5c
    move-result v6

    #@5d
    .line 4068
    if-ne v5, v6, :cond_9

    #@5f
    const/4 v3, 0x1

    #@60
    .line 4072
    .local v3, "stripHeadsUpContentView":Z
    :goto_2
    if-nez v2, :cond_1

    #@62
    if-eqz v1, :cond_b

    #@64
    .line 4076
    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    #@67
    move-result-object v0

    #@68
    .line 4077
    .local v0, "clone":Landroid/app/Notification;
    if-eqz v2, :cond_2

    #@6a
    .line 4078
    iput-object v7, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@6c
    .line 4079
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@6e
    const-string/jumbo v6, "android.rebuild.contentViewActionCount"

    #@71
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@74
    .line 4081
    :cond_2
    if-eqz v1, :cond_3

    #@76
    .line 4082
    iput-object v7, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@78
    .line 4083
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@7a
    const-string/jumbo v6, "android.rebuild.bigViewActionCount"

    #@7d
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@80
    .line 4085
    :cond_3
    if-eqz v3, :cond_4

    #@82
    .line 4086
    iput-object v7, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@84
    .line 4087
    iget-object v5, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@86
    const-string/jumbo v6, "android.rebuild.hudViewActionCount"

    #@89
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@8c
    .line 4089
    :cond_4
    return-object v0

    #@8d
    .line 4062
    .end local v0    # "clone":Landroid/app/Notification;
    .end local v1    # "stripBigContentView":Z
    .end local v2    # "stripContentView":Z
    .end local v3    # "stripHeadsUpContentView":Z
    :cond_5
    const/4 v2, 0x0

    #@8e
    .restart local v2    # "stripContentView":Z
    goto :goto_0

    #@8f
    .line 4061
    .end local v2    # "stripContentView":Z
    :cond_6
    const/4 v2, 0x0

    #@90
    .restart local v2    # "stripContentView":Z
    goto :goto_0

    #@91
    .line 4065
    :cond_7
    const/4 v1, 0x0

    #@92
    .restart local v1    # "stripBigContentView":Z
    goto :goto_1

    #@93
    .line 4064
    .end local v1    # "stripBigContentView":Z
    :cond_8
    const/4 v1, 0x0

    #@94
    .restart local v1    # "stripBigContentView":Z
    goto :goto_1

    #@95
    .line 4068
    :cond_9
    const/4 v3, 0x0

    #@96
    .restart local v3    # "stripHeadsUpContentView":Z
    goto :goto_2

    #@97
    .line 4067
    .end local v3    # "stripHeadsUpContentView":Z
    :cond_a
    const/4 v3, 0x0

    #@98
    .restart local v3    # "stripHeadsUpContentView":Z
    goto :goto_2

    #@99
    .line 4072
    :cond_b
    if-nez v3, :cond_1

    #@9b
    .line 4073
    return-object p0
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 3891
    if-eqz p1, :cond_0

    #@3
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 3892
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    #@c
    move-result-object v0

    #@d
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@f
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    #@12
    move-result v0

    #@13
    .line 3891
    if-eqz v0, :cond_0

    #@15
    .line 3894
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@18
    move-result v4

    #@19
    .line 3895
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@1b
    .line 3894
    const v1, 0x1020006

    #@1e
    const/4 v2, 0x0

    #@1f
    move-object v0, p2

    #@20
    move v6, v3

    #@21
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@24
    .line 3890
    :cond_0
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 3864
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3865
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 3867
    :cond_0
    return-object p1
.end method

.method private processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 3875
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_2

    #@7
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@d
    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    #@10
    move-result v7

    #@11
    .line 3876
    .local v7, "colorable":Z
    :goto_0
    if-eqz v7, :cond_0

    #@13
    .line 3877
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@16
    move-result v4

    #@17
    .line 3878
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@19
    .line 3877
    const v1, 0x1020006

    #@1c
    const/4 v2, 0x0

    #@1d
    move-object v0, p2

    #@1e
    move v6, v3

    #@1f
    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    #@22
    .line 3881
    :cond_0
    const-string/jumbo v0, "setOriginalIconColor"

    #@25
    .line 3882
    if-eqz v7, :cond_1

    #@27
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@2a
    move-result v3

    #@2b
    .line 3881
    :cond_1
    const v1, 0x10203af

    #@2e
    invoke-virtual {p2, v1, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@31
    .line 3874
    return-void

    #@32
    .line 3875
    .end local v7    # "colorable":Z
    :cond_2
    const/4 v7, 0x1

    #@33
    goto :goto_0
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 3942
    iget-object v3, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@2
    .line 3943
    const-string/jumbo v4, "android.appInfo"

    #@5
    .line 3942
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    #@b
    .line 3945
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@d
    .line 3948
    const/4 v3, 0x4

    #@e
    .line 3947
    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    .line 3957
    .local v1, "builderContext":Landroid/content/Context;
    :goto_0
    new-instance v3, Landroid/app/Notification$Builder;

    #@14
    invoke-direct {v3, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    #@17
    return-object v3

    #@18
    .line 3949
    .end local v1    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v2

    #@19
    .line 3950
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "Notification"

    #@1c
    new-instance v4, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v5, "ApplicationInfo "

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    const-string/jumbo v5, " not found"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 3951
    move-object v1, p0

    #@3b
    .restart local v1    # "builderContext":Landroid/content/Context;
    goto :goto_0

    #@3c
    .line 3954
    .end local v1    # "builderContext":Landroid/content/Context;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v1, p0

    #@3d
    .restart local v1    # "builderContext":Landroid/content/Context;
    goto :goto_0
.end method

.method private resetContentMargins(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3275
    const v0, 0x10203c6

    #@4
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    #@7
    .line 3276
    const v0, 0x102007e

    #@a
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    #@d
    .line 3274
    return-void
.end method

.method private resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 7
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v6, 0x10203b6

    #@3
    const v5, 0x10203b2

    #@6
    const/4 v4, 0x0

    #@7
    const/16 v3, 0x8

    #@9
    .line 3262
    const-string/jumbo v0, "setExpanded"

    #@c
    const v1, 0x10203af

    #@f
    const/4 v2, 0x0

    #@10
    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    #@13
    .line 3263
    const v0, 0x10203b0

    #@16
    invoke-virtual {p1, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@19
    .line 3264
    const v0, 0x10203b4

    #@1c
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1f
    .line 3265
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@22
    .line 3266
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@25
    .line 3267
    const v0, 0x10203b1

    #@28
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@2b
    .line 3268
    const v0, 0x10203b3

    #@2e
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@31
    .line 3269
    const v0, 0x1020095

    #@34
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@37
    .line 3270
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    #@3a
    .line 3271
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@3d
    .line 3259
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v5, 0x10203c7

    #@3
    const v4, 0x102007e

    #@6
    const v3, 0x1020016

    #@9
    const/4 v2, 0x0

    #@a
    const/16 v1, 0x8

    #@c
    .line 3244
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    #@f
    .line 3245
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetContentMargins(Landroid/widget/RemoteViews;)V

    #@12
    .line 3246
    const v0, 0x1020044

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@18
    .line 3247
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@1b
    .line 3248
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@1e
    .line 3249
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@21
    .line 3250
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@24
    .line 3251
    invoke-virtual {p1, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@27
    .line 3252
    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@2a
    .line 3253
    const v0, 0x102000d

    #@2d
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@30
    .line 3243
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "big"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const v4, 0x10203ad

    #@3
    const v3, 0x10203ac

    #@6
    const v0, 0x10203a4

    #@9
    const/4 v2, 0x0

    #@a
    const/16 v1, 0x8

    #@c
    .line 3495
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@f
    .line 3496
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    #@12
    .line 3498
    const v0, 0x10203aa

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@18
    .line 3499
    const v0, 0x10203ae

    #@1b
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@1e
    .line 3501
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@21
    .line 3502
    invoke-virtual {p1, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@24
    .line 3503
    invoke-virtual {p1, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@27
    .line 3504
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@2a
    .line 3506
    const v0, 0x10203b9

    #@2d
    const/4 v1, 0x0

    #@2e
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    #@31
    .line 3492
    return-void
.end method

.method private sanitizeColor()V
    .locals 3

    #@0
    .prologue
    .line 3900
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget v0, v0, Landroid/app/Notification;->color:I

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3901
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@8
    iget v1, v0, Landroid/app/Notification;->color:I

    #@a
    const/high16 v2, -0x1000000

    #@c
    or-int/2addr v1, v2

    #@d
    iput v1, v0, Landroid/app/Notification;->color:I

    #@f
    .line 3899
    :cond_0
    return-void
.end method

.method private showsTimeOrChronometer()Z
    .locals 1

    #@0
    .prologue
    .line 3489
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@a
    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
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
    .line 3088
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
    .line 3089
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    #@0
    .prologue
    .line 3108
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 3109
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3022
    if-eqz p1, :cond_0

    #@2
    .line 3023
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    #@4
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    #@7
    .line 3025
    :cond_0
    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2965
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 2966
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 4

    #@0
    .prologue
    .line 3987
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3988
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    #@9
    move-result-object v1

    #@a
    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@c
    .line 3991
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@11
    move-result-wide v2

    #@12
    invoke-static {v0, v2, v3}, Landroid/app/Notification;->-set0(Landroid/app/Notification;J)J

    #@15
    .line 3994
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@17
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@19
    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    #@1c
    .line 3996
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    #@1f
    .line 3998
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@21
    if-eqz v0, :cond_1

    #@23
    .line 3999
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@25
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@27
    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    #@2a
    .line 4002
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@2c
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@2f
    move-result-object v0

    #@30
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@32
    const/16 v1, 0x18

    #@34
    if-ge v0, v1, :cond_2

    #@36
    .line 4003
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@38
    if-eqz v0, :cond_4

    #@3a
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@3c
    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    #@3f
    move-result v0

    #@40
    if-eqz v0, :cond_4

    #@42
    .line 4025
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@44
    iget v0, v0, Landroid/app/Notification;->defaults:I

    #@46
    and-int/lit8 v0, v0, 0x4

    #@48
    if-eqz v0, :cond_3

    #@4a
    .line 4026
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@4c
    iget v1, v0, Landroid/app/Notification;->flags:I

    #@4e
    or-int/lit8 v1, v1, 0x1

    #@50
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@52
    .line 4029
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@54
    return-object v0

    #@55
    .line 4004
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@57
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@59
    if-nez v0, :cond_5

    #@5b
    .line 4005
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@5d
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    #@60
    move-result-object v1

    #@61
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@63
    .line 4006
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@65
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@67
    const-string/jumbo v1, "android.rebuild.contentViewActionCount"

    #@6a
    .line 4007
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6c
    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@6e
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@71
    move-result v2

    #@72
    .line 4006
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@75
    .line 4009
    :cond_5
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@77
    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@79
    if-nez v0, :cond_6

    #@7b
    .line 4010
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@7d
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    #@80
    move-result-object v1

    #@81
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@83
    .line 4011
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@85
    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@87
    if-eqz v0, :cond_6

    #@89
    .line 4012
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@8b
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@8d
    const-string/jumbo v1, "android.rebuild.bigViewActionCount"

    #@90
    .line 4013
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@92
    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@94
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@97
    move-result v2

    #@98
    .line 4012
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@9b
    .line 4016
    :cond_6
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@9d
    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@9f
    if-nez v0, :cond_2

    #@a1
    .line 4017
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@a3
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    #@a6
    move-result-object v1

    #@a7
    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@a9
    .line 4018
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@ab
    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@ad
    if-eqz v0, :cond_2

    #@af
    .line 4019
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@b1
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@b3
    const-string/jumbo v1, "android.rebuild.hudViewActionCount"

    #@b6
    .line 4020
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@b8
    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@ba
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    #@bd
    move-result v2

    #@be
    .line 4019
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@c1
    goto :goto_0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 4038
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    #@8
    .line 4039
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 4

    #@0
    .prologue
    .line 3920
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    if-lez v0, :cond_0

    #@8
    .line 3921
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@a
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v1

    #@10
    new-array v1, v1, [Landroid/app/Notification$Action;

    #@12
    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@14
    .line 3922
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@16
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@18
    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    #@1a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@1d
    .line 3924
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@22
    move-result v0

    #@23
    if-nez v0, :cond_1

    #@25
    .line 3925
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@27
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@29
    const-string/jumbo v2, "android.people"

    #@2c
    .line 3926
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    #@2e
    iget-object v3, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@33
    move-result v3

    #@34
    new-array v3, v3, [Ljava/lang/String;

    #@36
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, [Ljava/lang/String;

    #@3c
    .line 3925
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@3f
    .line 3928
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@41
    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@43
    if-nez v0, :cond_2

    #@45
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@47
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@49
    if-eqz v0, :cond_4

    #@4b
    .line 3930
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@4d
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4f
    const-string/jumbo v1, "android.contains.customView"

    #@52
    const/4 v2, 0x1

    #@53
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@56
    .line 3932
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@58
    return-object v0

    #@59
    .line 3929
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@5b
    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@5d
    if-eqz v0, :cond_3

    #@5f
    goto :goto_0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .locals 2

    #@0
    .prologue
    .line 3609
    const/4 v0, 0x0

    #@1
    .line 3610
    .local v0, "result":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@3
    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 3611
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@9
    if-eqz v1, :cond_2

    #@b
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@d
    invoke-virtual {v1}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 3613
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 3614
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@19
    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    #@1c
    move-result-object v0

    #@1d
    .line 3615
    .local v0, "result":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hideLine1Text(Landroid/widget/RemoteViews;)V

    #@20
    .line 3619
    .end local v0    # "result":Landroid/widget/RemoteViews;
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->adaptNotificationHeaderForBigContentView(Landroid/widget/RemoteViews;)V

    #@23
    .line 3620
    return-object v0

    #@24
    .line 3612
    .local v0, "result":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@26
    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@28
    return-object v1

    #@29
    .line 3616
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_1

    #@31
    .line 3617
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    #@34
    move-result v1

    #@35
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    #@38
    move-result-object v0

    #@39
    .local v0, "result":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .locals 2

    #@0
    .prologue
    .line 3594
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@4
    if-eqz v1, :cond_0

    #@6
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@8
    if-eqz v1, :cond_1

    #@a
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@c
    invoke-virtual {v1}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 3596
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 3597
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@18
    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeContentView()Landroid/widget/RemoteViews;

    #@1b
    move-result-object v0

    #@1c
    .line 3598
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_2

    #@1e
    .line 3599
    return-object v0

    #@1f
    .line 3595
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@21
    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@23
    return-object v1

    #@24
    .line 3602
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    #@27
    move-result v1

    #@28
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    #@2b
    move-result-object v1

    #@2c
    return-object v1
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3652
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@3
    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 3653
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@9
    if-eqz v1, :cond_1

    #@b
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@d
    invoke-virtual {v1}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 3655
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 3656
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@19
    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    #@1c
    move-result-object v0

    #@1d
    .line 3657
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_3

    #@1f
    .line 3658
    return-object v0

    #@20
    .line 3654
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@22
    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@24
    return-object v1

    #@25
    .line 3660
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v1

    #@2b
    if-nez v1, :cond_3

    #@2d
    .line 3661
    return-object v2

    #@2e
    .line 3664
    :cond_3
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    #@31
    move-result v1

    #@32
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    #@35
    move-result-object v1

    #@36
    return-object v1
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    #@0
    .prologue
    .line 3179
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    #@3
    .line 3180
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    #@0
    .prologue
    .line 3058
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    #@2
    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3978
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public loadHeaderAppName()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 3440
    const/4 v0, 0x0

    #@1
    .line 3441
    .local v0, "name":Ljava/lang/CharSequence;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@6
    move-result-object v2

    #@7
    .line 3442
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@9
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@b
    const-string/jumbo v5, "android.substName"

    #@e
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_0

    #@14
    .line 3447
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    .line 3448
    .local v1, "pkg":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@1c
    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@1e
    const-string/jumbo v5, "android.substName"

    #@21
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 3450
    .local v3, "subName":Ljava/lang/String;
    const-string/jumbo v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    #@28
    .line 3449
    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    move-result v4

    #@2c
    if-nez v4, :cond_2

    #@2e
    .line 3451
    move-object v0, v3

    #@2f
    .line 3459
    .end local v0    # "name":Ljava/lang/CharSequence;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 3460
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@37
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@3e
    move-result-object v0

    #@3f
    .line 3462
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_3

    #@45
    .line 3464
    const/4 v4, 0x0

    #@46
    return-object v4

    #@47
    .line 3453
    .restart local v0    # "name":Ljava/lang/CharSequence;
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v3    # "subName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "Notification"

    #@4a
    new-instance v5, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v6, "warning: pkg "

    #@52
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v5

    #@5a
    .line 3454
    const-string/jumbo v6, " attempting to substitute app name \'"

    #@5d
    .line 3453
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v5

    #@65
    .line 3455
    const-string/jumbo v6, "\' without holding perm "

    #@68
    .line 3453
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v5

    #@6c
    .line 3456
    const-string/jumbo v6, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    #@6f
    .line 3453
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    goto :goto_0

    #@7b
    .line 3467
    .end local v0    # "name":Ljava/lang/CharSequence;
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@7e
    move-result-object v4

    #@7f
    return-object v4
.end method

.method public makeNotificationHeader()Landroid/widget/RemoteViews;
    .locals 3

    #@0
    .prologue
    .line 3629
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    #@2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@7
    move-result-object v1

    #@8
    .line 3630
    const v2, 0x109008b

    #@b
    .line 3629
    invoke-direct {v0, v1, v2}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    #@e
    .line 3631
    .local v0, "header":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    #@11
    .line 3632
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;)V

    #@14
    .line 3633
    return-object v0
.end method

.method public makePublicContentView()Landroid/widget/RemoteViews;
    .locals 10

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3673
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@3
    iget-object v7, v7, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 3674
    iget-object v7, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@9
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@b
    iget-object v8, v8, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@d
    invoke-static {v7, v8}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    #@10
    move-result-object v0

    #@11
    .line 3675
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    #@14
    move-result-object v7

    #@15
    return-object v7

    #@16
    .line 3677
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@18
    iget-object v5, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@1a
    .line 3678
    .local v5, "savedBundle":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@1c
    .line 3679
    .local v6, "style":Landroid/app/Notification$Style;
    iput-object v8, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@1e
    .line 3680
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@20
    invoke-static {v7}, Landroid/app/Notification;->-get1(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    #@23
    move-result-object v1

    #@24
    .line 3681
    .local v1, "largeIcon":Landroid/graphics/drawable/Icon;
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@26
    invoke-static {v7, v8}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@29
    .line 3682
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2b
    iget-object v2, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@2d
    .line 3683
    .local v2, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2f
    iput-object v8, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@31
    .line 3684
    new-instance v3, Landroid/os/Bundle;

    #@33
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@36
    .line 3685
    .local v3, "publicExtras":Landroid/os/Bundle;
    const-string/jumbo v7, "android.showWhen"

    #@39
    .line 3686
    const-string/jumbo v8, "android.showWhen"

    #@3c
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@3f
    move-result v8

    #@40
    .line 3685
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@43
    .line 3687
    const-string/jumbo v7, "android.showChronometer"

    #@46
    .line 3688
    const-string/jumbo v8, "android.showChronometer"

    #@49
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@4c
    move-result v8

    #@4d
    .line 3687
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@50
    .line 3689
    const-string/jumbo v7, "android.chronometerCountDown"

    #@53
    .line 3690
    const-string/jumbo v8, "android.chronometerCountDown"

    #@56
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@59
    move-result v8

    #@5a
    .line 3689
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@5d
    .line 3691
    const-string/jumbo v7, "android.title"

    #@60
    .line 3692
    iget-object v8, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@62
    const v9, 0x1040142

    #@65
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@68
    move-result-object v8

    #@69
    .line 3691
    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@6c
    .line 3693
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6e
    iput-object v3, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@70
    .line 3694
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    #@73
    move-result v7

    #@74
    invoke-direct {p0, v7}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    #@77
    move-result-object v4

    #@78
    .line 3695
    .local v4, "publicView":Landroid/widget/RemoteViews;
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@7a
    iput-object v5, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@7c
    .line 3696
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@7e
    invoke-static {v7, v1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@81
    .line 3697
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@83
    iput-object v2, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    #@85
    .line 3698
    iput-object v6, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@87
    .line 3699
    return-object v4
.end method

.method resolveContrastColor()I
    .locals 3

    #@0
    .prologue
    .line 3906
    iget v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    #@2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@4
    iget v2, v2, Landroid/app/Notification;->color:I

    #@6
    if-ne v1, v2, :cond_0

    #@8
    iget v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    #@a
    const/4 v2, 0x1

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 3907
    iget v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    #@f
    return v1

    #@10
    .line 3909
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@12
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@14
    iget v2, v2, Landroid/app/Notification;->color:I

    #@16
    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;I)I

    #@19
    move-result v0

    #@1a
    .line 3911
    .local v0, "contrasted":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@1c
    iget v1, v1, Landroid/app/Notification;->color:I

    #@1e
    iput v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    #@20
    .line 3912
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    #@22
    return v0
.end method

.method public varargs setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "actions"    # [Landroid/app/Notification$Action;

    #@0
    .prologue
    .line 3120
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 3121
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 3122
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    #@b
    aget-object v2, p1, v0

    #@d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 3121
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 3124
    :cond_0
    return-object p0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    #@0
    .prologue
    .line 2893
    const/16 v0, 0x10

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    #@5
    .line 2894
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2938
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@4
    .line 2939
    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "countDown"    # Z

    #@0
    .prologue
    .line 2461
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    const-string/jumbo v1, "android.chronometerCountDown"

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@a
    .line 2462
    return-object p0
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "argb"    # I

    #@0
    .prologue
    .line 3203
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->color:I

    #@4
    .line 3204
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    #@7
    .line 3205
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2630
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "info"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2607
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    const-string/jumbo v1, "android.infoText"

    #@7
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@e
    .line 2608
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2678
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    #@4
    .line 2679
    return-object p0
.end method

.method setContentMinHeight(Landroid/widget/RemoteViews;Z)V
    .locals 3
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;
    .param p2, "hasMinHeight"    # Z

    #@0
    .prologue
    .line 3333
    const/4 v0, 0x0

    #@1
    .line 3334
    .local v0, "minHeight":I
    if-eqz p2, :cond_0

    #@3
    .line 3336
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8
    move-result-object v1

    #@9
    .line 3337
    const v2, 0x105004b

    #@c
    .line 3336
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@f
    move-result v0

    #@10
    .line 3339
    :cond_0
    const-string/jumbo v1, "setMinimumHeight"

    #@13
    const v2, 0x10203b8

    #@16
    invoke-virtual {p1, v2, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@19
    .line 3332
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2529
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    const-string/jumbo v1, "android.text"

    #@7
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@e
    .line 2530
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2521
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    const-string/jumbo v1, "android.title"

    #@7
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@e
    .line 2522
    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 2651
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    #@4
    .line 2652
    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 2640
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    #@4
    .line 2641
    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    .line 2662
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    #@4
    .line 2663
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "defaults"    # I

    #@0
    .prologue
    .line 2918
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->defaults:I

    #@4
    .line 2919
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2688
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    #@4
    .line 2689
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 3041
    if-eqz p1, :cond_0

    #@2
    .line 3042
    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    #@4
    .line 3044
    :cond_0
    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 3187
    if-eqz p2, :cond_0

    #@2
    .line 3188
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@4
    iget v1, v0, Landroid/app/Notification;->flags:I

    #@6
    or-int/2addr v1, p1

    #@7
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@9
    .line 3192
    :goto_0
    return-object p0

    #@a
    .line 3190
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@c
    iget v1, v0, Landroid/app/Notification;->flags:I

    #@e
    not-int v2, p1

    #@f
    and-int/2addr v1, v2

    #@10
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@12
    goto :goto_0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    #@0
    .prologue
    .line 2713
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    #@4
    .line 2714
    const/16 v0, 0x80

    #@6
    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    #@9
    .line 2715
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2981
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    invoke-static {v0, p1}, Landroid/app/Notification;->-set1(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 2982
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    #@0
    .prologue
    .line 2993
    const/16 v0, 0x200

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    #@5
    .line 2994
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2747
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
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 2758
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    invoke-static {v0, p1}, Landroid/app/Notification;->-set2(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    #@5
    .line 2759
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@7
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@9
    const-string/jumbo v1, "android.largeIcon"

    #@c
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@f
    .line 2760
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    #@0
    .prologue
    .line 2845
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    #@4
    .line 2846
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6
    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    #@8
    .line 2847
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@a
    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    #@c
    .line 2848
    if-nez p2, :cond_0

    #@e
    if-eqz p3, :cond_1

    #@10
    .line 2849
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@12
    iget v1, v0, Landroid/app/Notification;->flags:I

    #@14
    or-int/lit8 v1, v1, 0x1

    #@16
    iput v1, v0, Landroid/app/Notification;->flags:I

    #@18
    .line 2851
    :cond_1
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    #@0
    .prologue
    .line 2904
    const/16 v0, 0x100

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    #@5
    .line 2905
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "number"    # I

    #@0
    .prologue
    .line 2592
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->number:I

    #@4
    .line 2593
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    #@0
    .prologue
    .line 2871
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    #@4
    .line 2872
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    #@0
    .prologue
    .line 2882
    const/16 v0, 0x8

    #@2
    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    #@5
    .line 2883
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pri"    # I

    #@0
    .prologue
    .line 2928
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->priority:I

    #@4
    .line 2929
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    #@0
    .prologue
    .line 2617
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    const-string/jumbo v1, "android.progress"

    #@7
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a
    .line 2618
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@c
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@e
    const-string/jumbo v1, "android.progressMax"

    #@11
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@14
    .line 2619
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@16
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@18
    const-string/jumbo v1, "android.progressIndeterminate"

    #@1b
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@1e
    .line 2620
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3165
    if-eqz p1, :cond_0

    #@3
    .line 3166
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@5
    new-instance v1, Landroid/app/Notification;

    #@7
    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    #@a
    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@c
    .line 3167
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@e
    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@10
    const/4 v1, 0x1

    #@11
    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    #@14
    .line 3171
    :goto_0
    return-object p0

    #@15
    .line 3169
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@17
    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    #@19
    goto :goto_0
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 6
    .param p1, "text"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 2571
    if-nez p1, :cond_0

    #@3
    .line 2572
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@5
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@7
    const-string/jumbo v4, "android.remoteInputHistory"

    #@a
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    #@d
    .line 2581
    :goto_0
    return-object p0

    #@e
    .line 2574
    :cond_0
    array-length v3, p1

    #@f
    const/4 v4, 0x5

    #@10
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    #@13
    move-result v0

    #@14
    .line 2575
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/CharSequence;

    #@16
    .line 2576
    .local v2, "safe":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    #@17
    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    #@19
    .line 2577
    aget-object v3, p1, v1

    #@1b
    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1e
    move-result-object v3

    #@1f
    aput-object v3, v2, v1

    #@21
    .line 2576
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_1

    #@24
    .line 2579
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@26
    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@28
    const-string/jumbo v4, "android.remoteInputHistory"

    #@2b
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    #@2e
    goto :goto_0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "show"    # Z

    #@0
    .prologue
    .line 2428
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    const-string/jumbo v1, "android.showWhen"

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@a
    .line 2429
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    #@0
    .prologue
    .line 2480
    if-eqz p1, :cond_0

    #@2
    .line 2481
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    #@4
    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    #@7
    move-result-object v0

    #@8
    .line 2480
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 2482
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
    .line 2497
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    #@4
    .line 2498
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    #@0
    .prologue
    .line 2510
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    #@5
    .line 2511
    if-eqz p1, :cond_0

    #@7
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x2

    #@c
    if-ne v0, v1, :cond_0

    #@e
    .line 2512
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@10
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    #@13
    move-result v1

    #@14
    iput v1, v0, Landroid/app/Notification;->icon:I

    #@16
    .line 2514
    :cond_0
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sortKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3010
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    invoke-static {v0, p1}, Landroid/app/Notification;->-set4(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    #@5
    .line 3011
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 2776
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@4
    .line 2777
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6
    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    #@8
    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@a
    .line 2778
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2794
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@4
    .line 2795
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6
    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    #@8
    .line 2796
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 2810
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    #@4
    .line 2811
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@6
    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    #@8
    .line 2812
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "style"    # Landroid/app/Notification$Style;

    #@0
    .prologue
    .line 3133
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 3134
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@6
    .line 3135
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 3136
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    #@c
    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    #@f
    .line 3137
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@11
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@13
    const-string/jumbo v1, "android.template"

    #@16
    invoke-virtual {p1}, Landroid/app/Notification$Style;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@21
    .line 3142
    :cond_0
    :goto_0
    return-object p0

    #@22
    .line 3139
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@24
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@26
    const-string/jumbo v1, "android.template"

    #@29
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    #@2c
    goto :goto_0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2552
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    const-string/jumbo v1, "android.subText"

    #@7
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@e
    .line 2553
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 2724
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@5
    move-result-object v1

    #@6
    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    #@8
    .line 2725
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2734
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@3
    .line 2736
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "b"    # Z

    #@0
    .prologue
    .line 2448
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    #@4
    const-string/jumbo v1, "android.showChronometer"

    #@7
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@a
    .line 2449
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pattern"    # [J

    #@0
    .prologue
    .line 2828
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    #@4
    .line 2829
    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "visibility"    # I

    #@0
    .prologue
    .line 3154
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput p1, v0, Landroid/app/Notification;->visibility:I

    #@4
    .line 3155
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    #@0
    .prologue
    .line 2417
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    #@2
    iput-wide p1, v0, Landroid/app/Notification;->when:J

    #@4
    .line 2418
    return-object p0
.end method
