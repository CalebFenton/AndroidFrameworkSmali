.class public final Landroid/support/v4/app/NotificationCompat$WearableExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final DEFAULT_GRAVITY:I = 0x50

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final SCREEN_TIMEOUT_LONG:I = -0x1

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0

.field public static final SIZE_DEFAULT:I = 0x0

.field public static final SIZE_FULL_SCREEN:I = 0x5

.field public static final SIZE_LARGE:I = 0x4

.field public static final SIZE_MEDIUM:I = 0x3

.field public static final SIZE_SMALL:I = 0x2

.field public static final SIZE_XSMALL:I = 0x1

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/graphics/Bitmap;

.field private mContentActionIndex:I

.field private mContentIcon:I

.field private mContentIconGravity:I

.field private mCustomContentHeight:I

.field private mCustomSizePreset:I

.field private mDisplayIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mGravity:I

.field private mHintScreenTimeout:I

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 2355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2338
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@a
    .line 2339
    const/4 v0, 0x1

    #@b
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@d
    .line 2341
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@14
    .line 2344
    const v0, 0x800005

    #@17
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    #@19
    .line 2345
    const/4 v0, -0x1

    #@1a
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    #@1c
    .line 2346
    const/4 v0, 0x0

    #@1d
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    #@1f
    .line 2348
    const/16 v0, 0x50

    #@21
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    #@23
    .line 2355
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 10
    .param p1, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    const/16 v9, 0x50

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    const/4 v6, -0x1

    #@5
    .line 2358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@8
    .line 2338
    new-instance v4, Ljava/util/ArrayList;

    #@a
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@d
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@f
    .line 2339
    iput v8, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@11
    .line 2341
    new-instance v4, Ljava/util/ArrayList;

    #@13
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@18
    .line 2344
    const v4, 0x800005

    #@1b
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    #@1d
    .line 2345
    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    #@1f
    .line 2346
    iput v7, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    #@21
    .line 2348
    iput v9, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    #@23
    .line 2359
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@26
    move-result-object v1

    #@27
    .line 2360
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    #@29
    const-string/jumbo v4, "android.wearable.EXTENSIONS"

    #@2c
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@2f
    move-result-object v3

    #@30
    .line 2362
    :goto_0
    if-eqz v3, :cond_2

    #@32
    .line 2363
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->-get0()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    #@35
    move-result-object v4

    #@36
    .line 2364
    const-string/jumbo v5, "actions"

    #@39
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@3c
    move-result-object v5

    #@3d
    .line 2363
    invoke-interface {v4, v5}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getActionsFromParcelableArrayList(Ljava/util/ArrayList;)[Landroid/support/v4/app/NotificationCompat$Action;

    #@40
    move-result-object v0

    #@41
    .line 2365
    .local v0, "actions":[Landroid/support/v4/app/NotificationCompat$Action;
    if-eqz v0, :cond_0

    #@43
    .line 2366
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@45
    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@48
    .line 2369
    :cond_0
    const-string/jumbo v4, "flags"

    #@4b
    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@4e
    move-result v4

    #@4f
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@51
    .line 2370
    const-string/jumbo v4, "displayIntent"

    #@54
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@57
    move-result-object v4

    #@58
    check-cast v4, Landroid/app/PendingIntent;

    #@5a
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@5c
    .line 2373
    const-string/jumbo v4, "pages"

    #@5f
    .line 2372
    invoke-static {v3, v4}, Landroid/support/v4/app/NotificationCompat;->-wrap0(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    #@62
    move-result-object v2

    #@63
    .line 2374
    .local v2, "pages":[Landroid/app/Notification;
    if-eqz v2, :cond_1

    #@65
    .line 2375
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@67
    invoke-static {v4, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@6a
    .line 2378
    :cond_1
    const-string/jumbo v4, "background"

    #@6d
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@70
    move-result-object v4

    #@71
    check-cast v4, Landroid/graphics/Bitmap;

    #@73
    iput-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@75
    .line 2379
    const-string/jumbo v4, "contentIcon"

    #@78
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@7b
    move-result v4

    #@7c
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    #@7e
    .line 2380
    const-string/jumbo v4, "contentIconGravity"

    #@81
    .line 2381
    const v5, 0x800005

    #@84
    .line 2380
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@87
    move-result v4

    #@88
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    #@8a
    .line 2382
    const-string/jumbo v4, "contentActionIndex"

    #@8d
    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@90
    move-result v4

    #@91
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    #@93
    .line 2384
    const-string/jumbo v4, "customSizePreset"

    #@96
    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@99
    move-result v4

    #@9a
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    #@9c
    .line 2386
    const-string/jumbo v4, "customContentHeight"

    #@9f
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@a2
    move-result v4

    #@a3
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    #@a5
    .line 2387
    const-string/jumbo v4, "gravity"

    #@a8
    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@ab
    move-result v4

    #@ac
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    #@ae
    .line 2388
    const-string/jumbo v4, "hintScreenTimeout"

    #@b1
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@b4
    move-result v4

    #@b5
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    #@b7
    .line 2358
    .end local v0    # "actions":[Landroid/support/v4/app/NotificationCompat$Action;
    .end local v2    # "pages":[Landroid/app/Notification;
    :cond_2
    return-void

    #@b8
    .line 2361
    :cond_3
    const/4 v3, 0x0

    #@b9
    .local v3, "wearableBundle":Landroid/os/Bundle;
    goto/16 :goto_0
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 2903
    if-eqz p2, :cond_0

    #@2
    .line 2904
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@4
    or-int/2addr v0, p1

    #@5
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@7
    .line 2902
    :goto_0
    return-void

    #@8
    .line 2906
    :cond_0
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@a
    not-int v1, p1

    #@b
    and-int/2addr v0, v1

    #@c
    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@e
    goto :goto_0
.end method


# virtual methods
.method public addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompat$Action;

    #@0
    .prologue
    .line 2477
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 2478
    return-object p0
.end method

.method public addActions(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    #@0
    .prologue
    .line 2494
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/NotificationCompat$Action;>;"
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 2495
    return-object p0
.end method

.method public addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "page"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 2569
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5
    .line 2570
    return-object p0
.end method

.method public addPages(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    #@0
    .prologue
    .line 2584
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@5
    .line 2585
    return-object p0
.end method

.method public clearActions()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    #@0
    .prologue
    .line 2504
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 2505
    return-object p0
.end method

.method public clearPages()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    #@0
    .prologue
    .line 2594
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 2595
    return-object p0
.end method

.method public clone()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 3

    #@0
    .prologue
    .line 2448
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    #@2
    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    #@5
    .line 2449
    .local v0, "that":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    new-instance v1, Ljava/util/ArrayList;

    #@7
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@9
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@c
    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@e
    .line 2450
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@10
    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@12
    .line 2451
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@14
    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@16
    .line 2452
    new-instance v1, Ljava/util/ArrayList;

    #@18
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@1a
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@1d
    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@1f
    .line 2453
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@21
    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@23
    .line 2454
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    #@25
    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    #@27
    .line 2455
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    #@29
    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    #@2b
    .line 2456
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    #@2d
    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    #@2f
    .line 2457
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    #@31
    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    #@33
    .line 2458
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    #@35
    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    #@37
    .line 2459
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    #@39
    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    #@3b
    .line 2460
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    #@3d
    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    #@3f
    .line 2461
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 2447
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->clone()Landroid/support/v4/app/NotificationCompat$WearableExtender;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    #@0
    .prologue
    .line 2399
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 2401
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 2402
    const-string/jumbo v2, "actions"

    #@10
    .line 2403
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->-get0()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    #@13
    move-result-object v3

    #@14
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@16
    .line 2404
    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v4

    #@1c
    new-array v4, v4, [Landroid/support/v4/app/NotificationCompat$Action;

    #@1e
    .line 2403
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, [Landroid/support/v4/app/NotificationCompat$Action;

    #@24
    invoke-interface {v3, v1}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompat$Action;)Ljava/util/ArrayList;

    #@27
    move-result-object v1

    #@28
    .line 2402
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@2b
    .line 2406
    :cond_0
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@2d
    const/4 v2, 0x1

    #@2e
    if-eq v1, v2, :cond_1

    #@30
    .line 2407
    const-string/jumbo v1, "flags"

    #@33
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@35
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@38
    .line 2409
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@3a
    if-eqz v1, :cond_2

    #@3c
    .line 2410
    const-string/jumbo v1, "displayIntent"

    #@3f
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@41
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@44
    .line 2412
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@46
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@49
    move-result v1

    #@4a
    if-nez v1, :cond_3

    #@4c
    .line 2413
    const-string/jumbo v2, "pages"

    #@4f
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@51
    .line 2414
    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v3

    #@57
    new-array v3, v3, [Landroid/app/Notification;

    #@59
    .line 2413
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5c
    move-result-object v1

    #@5d
    check-cast v1, [Landroid/os/Parcelable;

    #@5f
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@62
    .line 2416
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@64
    if-eqz v1, :cond_4

    #@66
    .line 2417
    const-string/jumbo v1, "background"

    #@69
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@6b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@6e
    .line 2419
    :cond_4
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    #@70
    if-eqz v1, :cond_5

    #@72
    .line 2420
    const-string/jumbo v1, "contentIcon"

    #@75
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    #@77
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7a
    .line 2422
    :cond_5
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    #@7c
    const v2, 0x800005

    #@7f
    if-eq v1, v2, :cond_6

    #@81
    .line 2423
    const-string/jumbo v1, "contentIconGravity"

    #@84
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    #@86
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@89
    .line 2425
    :cond_6
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    #@8b
    const/4 v2, -0x1

    #@8c
    if-eq v1, v2, :cond_7

    #@8e
    .line 2426
    const-string/jumbo v1, "contentActionIndex"

    #@91
    .line 2427
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    #@93
    .line 2426
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@96
    .line 2429
    :cond_7
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    #@98
    if-eqz v1, :cond_8

    #@9a
    .line 2430
    const-string/jumbo v1, "customSizePreset"

    #@9d
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    #@9f
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@a2
    .line 2432
    :cond_8
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    #@a4
    if-eqz v1, :cond_9

    #@a6
    .line 2433
    const-string/jumbo v1, "customContentHeight"

    #@a9
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    #@ab
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@ae
    .line 2435
    :cond_9
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    #@b0
    const/16 v2, 0x50

    #@b2
    if-eq v1, v2, :cond_a

    #@b4
    .line 2436
    const-string/jumbo v1, "gravity"

    #@b7
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    #@b9
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@bc
    .line 2438
    :cond_a
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    #@be
    if-eqz v1, :cond_b

    #@c0
    .line 2439
    const-string/jumbo v1, "hintScreenTimeout"

    #@c3
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    #@c5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@c8
    .line 2442
    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    #@cb
    move-result-object v1

    #@cc
    const-string/jumbo v2, "android.wearable.EXTENSIONS"

    #@cf
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@d2
    .line 2443
    return-object p1
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2512
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getBackground()Landroid/graphics/Bitmap;
    .locals 1

    #@0
    .prologue
    .line 2632
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public getContentAction()I
    .locals 1

    #@0
    .prologue
    .line 2705
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    #@2
    return v0
.end method

.method public getContentIcon()I
    .locals 1

    #@0
    .prologue
    .line 2647
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    #@2
    return v0
.end method

.method public getContentIconGravity()I
    .locals 1

    #@0
    .prologue
    .line 2668
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    #@2
    return v0
.end method

.method public getContentIntentAvailableOffline()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2815
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getCustomContentHeight()I
    .locals 1

    #@0
    .prologue
    .line 2774
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    #@2
    return v0
.end method

.method public getCustomSizePreset()I
    .locals 1

    #@0
    .prologue
    .line 2752
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    #@2
    return v0
.end method

.method public getDisplayIntent()Landroid/app/PendingIntent;
    .locals 1

    #@0
    .prologue
    .line 2555
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@2
    return-object v0
.end method

.method public getGravity()I
    .locals 1

    #@0
    .prologue
    .line 2726
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    #@2
    return v0
.end method

.method public getHintAvoidBackgroundClipping()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2877
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x10

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getHintHideIcon()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2834
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getHintScreenTimeout()I
    .locals 1

    #@0
    .prologue
    .line 2899
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    #@2
    return v0
.end method

.method public getHintShowBackgroundOnly()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2853
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x4

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2606
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method public getStartScrollBottom()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2793
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x8

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "background"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    .line 2619
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    #@2
    .line 2620
    return-object p0
.end method

.method public setContentAction(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "actionIndex"    # I

    #@0
    .prologue
    .line 2686
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    #@2
    .line 2687
    return-object p0
.end method

.method public setContentIcon(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "icon"    # I

    #@0
    .prologue
    .line 2639
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    #@2
    .line 2640
    return-object p0
.end method

.method public setContentIconGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "contentIconGravity"    # I

    #@0
    .prologue
    .line 2657
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    #@2
    .line 2658
    return-object p0
.end method

.method public setContentIntentAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "contentIntentAvailableOffline"    # Z

    #@0
    .prologue
    .line 2804
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    #@4
    .line 2805
    return-object p0
.end method

.method public setCustomContentHeight(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "height"    # I

    #@0
    .prologue
    .line 2763
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    #@2
    .line 2764
    return-object p0
.end method

.method public setCustomSizePreset(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "sizePreset"    # I

    #@0
    .prologue
    .line 2739
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    #@2
    .line 2740
    return-object p0
.end method

.method public setDisplayIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    #@0
    .prologue
    .line 2546
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    #@2
    .line 2547
    return-object p0
.end method

.method public setGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "gravity"    # I

    #@0
    .prologue
    .line 2715
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    #@2
    .line 2716
    return-object p0
.end method

.method public setHintAvoidBackgroundClipping(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "hintAvoidBackgroundClipping"    # Z

    #@0
    .prologue
    .line 2865
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    #@5
    .line 2866
    return-object p0
.end method

.method public setHintHideIcon(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "hintHideIcon"    # Z

    #@0
    .prologue
    .line 2824
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    #@4
    .line 2825
    return-object p0
.end method

.method public setHintScreenTimeout(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0
    .param p1, "timeout"    # I

    #@0
    .prologue
    .line 2888
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    #@2
    .line 2889
    return-object p0
.end method

.method public setHintShowBackgroundOnly(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "hintShowBackgroundOnly"    # Z

    #@0
    .prologue
    .line 2843
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    #@4
    .line 2844
    return-object p0
.end method

.method public setStartScrollBottom(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .param p1, "startScrollBottom"    # Z

    #@0
    .prologue
    .line 2783
    const/16 v0, 0x8

    #@2
    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    #@5
    .line 2784
    return-object p0
.end method
