.class public final Landroid/app/Notification$WearableExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final greylist-max-o DEFAULT_FLAGS:I = 0x1

.field private static final greylist-max-o DEFAULT_GRAVITY:I = 0x50

.field private static final greylist-max-o EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final greylist-max-o FLAG_BIG_PICTURE_AMBIENT:I = 0x20

.field private static final greylist-max-o FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final greylist-max-o FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final greylist-max-o FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY:I = 0x40

.field private static final greylist-max-o FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final greylist-max-o FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final greylist-max-o FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final greylist-max-o KEY_ACTIONS:Ljava/lang/String; = "actions"

.field static final greylist-max-o KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final greylist-max-o KEY_BRIDGE_TAG:Ljava/lang/String; = "bridgeTag"

.field private static final greylist-max-o KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final greylist-max-o KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final greylist-max-o KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final greylist-max-o KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final greylist-max-o KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final greylist-max-o KEY_DISMISSAL_ID:Ljava/lang/String; = "dismissalId"

.field static final greylist-max-o KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final greylist-max-o KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final greylist-max-o KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final greylist-max-o KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final greylist-max-o KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final whitelist SCREEN_TIMEOUT_LONG:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SCREEN_TIMEOUT_SHORT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_DEFAULT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_FULL_SCREEN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_LARGE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_MEDIUM:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_SMALL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SIZE_XSMALL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private greylist-max-o mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBackground:Landroid/graphics/Bitmap;

.field private greylist-max-o mBridgeTag:Ljava/lang/String;

.field private greylist-max-o mContentActionIndex:I

.field private greylist-max-o mContentIcon:I

.field private greylist-max-o mContentIconGravity:I

.field private greylist-max-o mCustomContentHeight:I

.field private greylist-max-o mCustomSizePreset:I

.field private greylist-max-o mDismissalId:Ljava/lang/String;

.field private greylist-max-o mDisplayIntent:Landroid/app/PendingIntent;

.field private greylist-max-o mFlags:I

.field private greylist-max-o mGravity:I

.field private greylist-max-o mHintScreenTimeout:I

.field private greylist-max-o mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mvisitUris(Landroid/app/Notification$WearableExtender;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Notification$WearableExtender;->visitUris(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 13360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 13342
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 13344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 13347
    const v0, 0x800005

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 13348
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 13349
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 13351
    const/16 v0, 0x50

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 13361
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification;)V
    .registers 11
    .param p1, "notif"    # Landroid/app/Notification;

    .line 13363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13341
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 13342
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 13344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 13347
    const v1, 0x800005

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 13348
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 13349
    const/4 v3, 0x0

    iput v3, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 13351
    const/16 v4, 0x50

    iput v4, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 13364
    iget-object v5, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.wearable.EXTENSIONS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 13365
    .local v5, "wearableBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_b8

    .line 13366
    const-string v6, "actions"

    const-class v7, Landroid/app/Notification$Action;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v6

    .line 13367
    .local v6, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    if-eqz v6, :cond_3c

    .line 13368
    iget-object v7, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13371
    :cond_3c
    const-string v7, "flags"

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 13372
    const-string v0, "displayIntent"

    const-class v7, Landroid/app/PendingIntent;

    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 13375
    const-string/jumbo v0, "pages"

    const-class v7, Landroid/app/Notification;

    invoke-static {v5, v0, v7}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/app/Notification;

    .line 13377
    .local v0, "pages":[Landroid/app/Notification;
    if-eqz v0, :cond_62

    .line 13378
    iget-object v7, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-static {v7, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 13381
    :cond_62
    const-string v7, "background"

    const-class v8, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    iput-object v7, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 13382
    const-string v7, "contentIcon"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 13383
    const-string v7, "contentIconGravity"

    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 13385
    const-string v1, "contentActionIndex"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 13387
    const-string v1, "customSizePreset"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 13389
    const-string v1, "customContentHeight"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 13390
    const-string/jumbo v1, "gravity"

    invoke-virtual {v5, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 13391
    const-string/jumbo v1, "hintScreenTimeout"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 13392
    const-string v1, "dismissalId"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 13393
    const-string v1, "bridgeTag"

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 13395
    .end local v0    # "pages":[Landroid/app/Notification;
    .end local v6    # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    :cond_b8
    return-void
.end method

.method private greylist-max-o setFlag(IZ)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 14055
    if-eqz p2, :cond_8

    .line 14056
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    goto :goto_e

    .line 14058
    :cond_8
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 14060
    :goto_e
    return-void
.end method

.method private blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 14063
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 14064
    .local v1, "action":Landroid/app/Notification$Action;
    invoke-static {v1, p1}, Landroid/app/Notification$Action;->-$$Nest$mvisitUris(Landroid/app/Notification$Action;Ljava/util/function/Consumer;)V

    .line 14065
    .end local v1    # "action":Landroid/app/Notification$Action;
    goto :goto_6

    .line 14066
    :cond_16
    return-void
.end method


# virtual methods
.method public whitelist addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 13499
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13500
    return-object p0
.end method

.method public whitelist addActions(Ljava/util/List;)Landroid/app/Notification$WearableExtender;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;)",
            "Landroid/app/Notification$WearableExtender;"
        }
    .end annotation

    .line 13516
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13517
    return-object p0
.end method

.method public whitelist addPage(Landroid/app/Notification;)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "page"    # Landroid/app/Notification;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13598
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13599
    return-object p0
.end method

.method public whitelist addPages(Ljava/util/List;)Landroid/app/Notification$WearableExtender;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/app/Notification$WearableExtender;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13615
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13616
    return-object p0
.end method

.method public whitelist clearActions()Landroid/app/Notification$WearableExtender;
    .registers 2

    .line 13526
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13527
    return-object p0
.end method

.method public whitelist clearPages()Landroid/app/Notification$WearableExtender;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13627
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13628
    return-object p0
.end method

.method public whitelist clone()Landroid/app/Notification$WearableExtender;
    .registers 4

    .line 13468
    new-instance v0, Landroid/app/Notification$WearableExtender;

    invoke-direct {v0}, Landroid/app/Notification$WearableExtender;-><init>()V

    .line 13469
    .local v0, "that":Landroid/app/Notification$WearableExtender;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 13470
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mFlags:I

    .line 13471
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 13472
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 13473
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 13474
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 13475
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 13476
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 13477
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 13478
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 13479
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 13480
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    iput v1, v0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 13481
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 13482
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 13483
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 13215
    invoke-virtual {p0}, Landroid/app/Notification$WearableExtender;->clone()Landroid/app/Notification$WearableExtender;

    move-result-object v0

    return-object v0
.end method

.method public whitelist extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .registers 5
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .line 13404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 13406
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 13407
    const-string v1, "actions"

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 13409
    :cond_14
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_20

    .line 13410
    const-string v1, "flags"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13412
    :cond_20
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2b

    .line 13413
    const-string v1, "displayIntent"

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13415
    :cond_2b
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    .line 13416
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 13417
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/app/Notification;

    .line 13416
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string/jumbo v2, "pages"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 13420
    :cond_49
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_65

    .line 13425
    const-wide/32 v1, 0x10204890

    invoke-static {v1, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 13426
    const-string v1, "Notification"

    const-string v2, "Use of background in WearableExtenders has been deprecated and will not be populated anymore."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 13429
    :cond_5e
    const-string v1, "background"

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 13433
    :cond_65
    :goto_65
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    if-eqz v1, :cond_70

    .line 13434
    const-string v1, "contentIcon"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13436
    :cond_70
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    const v2, 0x800005

    if-eq v1, v2, :cond_7e

    .line 13437
    const-string v1, "contentIconGravity"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13439
    :cond_7e
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8a

    .line 13440
    const-string v1, "contentActionIndex"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13443
    :cond_8a
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    if-eqz v1, :cond_95

    .line 13444
    const-string v1, "customSizePreset"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13446
    :cond_95
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    if-eqz v1, :cond_a0

    .line 13447
    const-string v1, "customContentHeight"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13449
    :cond_a0
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_ae

    .line 13450
    const-string/jumbo v1, "gravity"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13452
    :cond_ae
    iget v1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    if-eqz v1, :cond_ba

    .line 13453
    const-string/jumbo v1, "hintScreenTimeout"

    iget v2, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13455
    :cond_ba
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    if-eqz v1, :cond_c5

    .line 13456
    const-string v1, "dismissalId"

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13458
    :cond_c5
    iget-object v1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    if-eqz v1, :cond_d0

    .line 13459
    const-string v1, "bridgeTag"

    iget-object v2, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13462
    :cond_d0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 13463
    return-object p1
.end method

.method public whitelist getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 13534
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public greylist getBackground()Landroid/graphics/Bitmap;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13681
    const-string v0, "Notification"

    const-string v1, "Use of background in WearableExtender has been removed, returning null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13682
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getBridgeTag()Ljava/lang/String;
    .registers 2

    .line 14051
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContentAction()I
    .registers 2

    .line 13750
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    return v0
.end method

.method public whitelist getContentIcon()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13699
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    return v0
.end method

.method public whitelist getContentIconGravity()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13722
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    return v0
.end method

.method public whitelist getContentIntentAvailableOffline()Z
    .registers 3

    .line 13866
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist getCustomContentHeight()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13825
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    return v0
.end method

.method public whitelist getCustomSizePreset()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13801
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    return v0
.end method

.method public whitelist getDismissalId()Ljava/lang/String;
    .registers 2

    .line 14030
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDisplayIntent()Landroid/app/PendingIntent;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13582
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getGravity()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13773
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    return v0
.end method

.method public whitelist getHintAmbientBigPicture()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13985
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getHintAvoidBackgroundClipping()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13934
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getHintContentIntentLaunchesActivity()Z
    .registers 2

    .line 14008
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getHintHideIcon()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13887
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getHintScreenTimeout()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13958
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    return v0
.end method

.method public whitelist getHintShowBackgroundOnly()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13908
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getPages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13641
    iget-object v0, p0, Landroid/app/Notification$WearableExtender;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getStartScrollBottom()Z
    .registers 2

    .line 13844
    iget v0, p0, Landroid/app/Notification$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist setBackground(Landroid/graphics/Bitmap;)Landroid/app/Notification$WearableExtender;
    .registers 4
    .param p1, "background"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13660
    const-wide/32 v0, 0x10204890

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 13661
    const-string v0, "Notification"

    const-string v1, "Use of background in WearableExtenders has been deprecated and will not be populated anymore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 13664
    :cond_11
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 13666
    :goto_13
    return-object p0
.end method

.method public whitelist setBridgeTag(Ljava/lang/String;)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "bridgeTag"    # Ljava/lang/String;

    .line 14042
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mBridgeTag:Ljava/lang/String;

    .line 14043
    return-object p0
.end method

.method public whitelist setContentAction(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "actionIndex"    # I

    .line 13736
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentActionIndex:I

    .line 13737
    return-object p0
.end method

.method public whitelist setContentIcon(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "icon"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13690
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentIcon:I

    .line 13691
    return-object p0
.end method

.method public whitelist setContentIconGravity(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "contentIconGravity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13710
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mContentIconGravity:I

    .line 13711
    return-object p0
.end method

.method public whitelist setContentIntentAvailableOffline(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "contentIntentAvailableOffline"    # Z

    .line 13855
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 13856
    return-object p0
.end method

.method public whitelist setCustomContentHeight(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13813
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mCustomContentHeight:I

    .line 13814
    return-object p0
.end method

.method public whitelist setCustomSizePreset(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "sizePreset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13787
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mCustomSizePreset:I

    .line 13788
    return-object p0
.end method

.method public whitelist setDismissalId(Ljava/lang/String;)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "dismissalId"    # Ljava/lang/String;

    .line 14021
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mDismissalId:Ljava/lang/String;

    .line 14022
    return-object p0
.end method

.method public whitelist setDisplayIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13570
    iput-object p1, p0, Landroid/app/Notification$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 13571
    return-object p0
.end method

.method public whitelist setGravity(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "gravity"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13761
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mGravity:I

    .line 13762
    return-object p0
.end method

.method public whitelist setHintAmbientBigPicture(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "hintAmbientBigPicture"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13971
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 13972
    return-object p0
.end method

.method public whitelist setHintAvoidBackgroundClipping(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "hintAvoidBackgroundClipping"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13921
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 13922
    return-object p0
.end method

.method public whitelist setHintContentIntentLaunchesActivity(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "hintContentIntentLaunchesActivity"    # Z

    .line 13997
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 13998
    return-object p0
.end method

.method public whitelist setHintHideIcon(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "hintHideIcon"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13876
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 13877
    return-object p0
.end method

.method public whitelist setHintScreenTimeout(I)Landroid/app/Notification$WearableExtender;
    .registers 2
    .param p1, "timeout"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13946
    iput p1, p0, Landroid/app/Notification$WearableExtender;->mHintScreenTimeout:I

    .line 13947
    return-object p0
.end method

.method public whitelist setHintShowBackgroundOnly(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "hintShowBackgroundOnly"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13897
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 13898
    return-object p0
.end method

.method public whitelist setStartScrollBottom(Z)Landroid/app/Notification$WearableExtender;
    .registers 3
    .param p1, "startScrollBottom"    # Z

    .line 13834
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$WearableExtender;->setFlag(IZ)V

    .line 13835
    return-object p0
.end method
