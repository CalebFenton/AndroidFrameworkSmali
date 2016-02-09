.class Landroid/support/v4/app/NotificationCompatJellybean;
.super Ljava/lang/Object;
.source "NotificationCompatJellybean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatJellybean$Builder;
    }
.end annotation


# static fields
.field static final EXTRA_ACTION_EXTRAS:Ljava/lang/String; = "android.support.actionExtras"

.field static final EXTRA_GROUP_KEY:Ljava/lang/String; = "android.support.groupKey"

.field static final EXTRA_GROUP_SUMMARY:Ljava/lang/String; = "android.support.isGroupSummary"

.field static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.support.localOnly"

.field static final EXTRA_REMOTE_INPUTS:Ljava/lang/String; = "android.support.remoteInputs"

.field static final EXTRA_SORT_KEY:Ljava/lang/String; = "android.support.sortKey"

.field static final EXTRA_USE_SIDE_CHANNEL:Ljava/lang/String; = "android.support.useSideChannel"

.field private static final KEY_ACTION_INTENT:Ljava/lang/String; = "actionIntent"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_ICON:Ljava/lang/String; = "icon"

.field private static final KEY_REMOTE_INPUTS:Ljava/lang/String; = "remoteInputs"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final TAG:Ljava/lang/String; = "NotificationCompat"

.field private static sActionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sActionIconField:Ljava/lang/reflect/Field;

.field private static sActionIntentField:Ljava/lang/reflect/Field;

.field private static sActionTitleField:Ljava/lang/reflect/Field;

.field private static sActionsAccessFailed:Z

.field private static sActionsField:Ljava/lang/reflect/Field;

.field private static final sActionsLock:Ljava/lang/Object;

.field private static sExtrasField:Ljava/lang/reflect/Field;

.field private static sExtrasFieldAccessFailed:Z

.field private static final sExtrasLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    #@7
    .line 56
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    #@e
    .line 33
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addBigPictureStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p0, "b"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "bigContentTitle"    # Ljava/lang/CharSequence;
    .param p2, "useSummary"    # Z
    .param p3, "summaryText"    # Ljava/lang/CharSequence;
    .param p4, "bigPicture"    # Landroid/graphics/Bitmap;
    .param p5, "bigLargeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "bigLargeIconSet"    # Z

    #@0
    .prologue
    .line 168
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    #@2
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, v2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    #@10
    move-result-object v0

    #@11
    .line 171
    .local v0, "style":Landroid/app/Notification$BigPictureStyle;
    if-eqz p6, :cond_0

    #@13
    .line 172
    invoke-virtual {v0, p5}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    #@16
    .line 174
    :cond_0
    if-eqz p2, :cond_1

    #@18
    .line 175
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    #@1b
    .line 167
    :cond_1
    return-void
.end method

.method public static addBigTextStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "b"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "bigContentTitle"    # Ljava/lang/CharSequence;
    .param p2, "useSummary"    # Z
    .param p3, "summaryText"    # Ljava/lang/CharSequence;
    .param p4, "bigText"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 156
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    #@2
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    #@5
    move-result-object v2

    #@6
    invoke-direct {v1, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    #@9
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    #@10
    move-result-object v0

    #@11
    .line 159
    .local v0, "style":Landroid/app/Notification$BigTextStyle;
    if-eqz p2, :cond_0

    #@13
    .line 160
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    #@16
    .line 155
    :cond_0
    return-void
.end method

.method public static addInboxStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "b"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "bigContentTitle"    # Ljava/lang/CharSequence;
    .param p2, "useSummary"    # Z
    .param p3, "summaryText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 182
    .local p4, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Landroid/app/Notification$InboxStyle;

    #@2
    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    #@5
    move-result-object v4

    #@6
    invoke-direct {v3, v4}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    #@9
    invoke-virtual {v3, p1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    #@c
    move-result-object v0

    #@d
    .line 184
    .local v0, "style":Landroid/app/Notification$InboxStyle;
    if-eqz p2, :cond_0

    #@f
    .line 185
    invoke-virtual {v0, p3}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    #@12
    .line 187
    :cond_0
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v2

    #@16
    .local v2, "text$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/lang/CharSequence;

    #@22
    .line 188
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    #@25
    goto :goto_0

    #@26
    .line 181
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public static buildActionExtrasMap(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 194
    .local p0, "actionExtrasList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    #@1
    .line 195
    .local v1, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    #@2
    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    .end local v1    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@8
    .line 196
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Landroid/os/Bundle;

    #@e
    .line 197
    .local v0, "actionExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    #@10
    .line 198
    if-nez v1, :cond_0

    #@12
    .line 199
    new-instance v1, Landroid/util/SparseArray;

    #@14
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    #@17
    .line 201
    :cond_0
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@1a
    .line 195
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 204
    .end local v0    # "actionExtras":Landroid/os/Bundle;
    :cond_2
    return-object v1
.end method

.method private static ensureActionReflectionReadyLocked()Z
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 318
    sget-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 319
    return v2

    #@7
    .line 322
    :cond_0
    :try_start_0
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    #@9
    if-nez v4, :cond_1

    #@b
    .line 323
    const-string/jumbo v4, "android.app.Notification$Action"

    #@e
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@11
    move-result-object v4

    #@12
    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    #@14
    .line 324
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    #@16
    const-string/jumbo v5, "icon"

    #@19
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1c
    move-result-object v4

    #@1d
    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    #@1f
    .line 325
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    #@21
    const-string/jumbo v5, "title"

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@27
    move-result-object v4

    #@28
    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    #@2a
    .line 326
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionClass:Ljava/lang/Class;

    #@2c
    const-string/jumbo v5, "actionIntent"

    #@2f
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@32
    move-result-object v4

    #@33
    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    #@35
    .line 327
    const-class v4, Landroid/app/Notification;

    #@37
    const-string/jumbo v5, "actions"

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3d
    move-result-object v4

    #@3e
    sput-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    #@40
    .line 328
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    #@42
    const/4 v5, 0x1

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@46
    .line 337
    :cond_1
    :goto_0
    sget-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    #@48
    if-eqz v4, :cond_2

    #@4a
    :goto_1
    return v2

    #@4b
    .line 333
    :catch_0
    move-exception v1

    #@4c
    .line 334
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v4, "NotificationCompat"

    #@4f
    const-string/jumbo v5, "Unable to access notification actions"

    #@52
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    .line 335
    sput-boolean v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    #@57
    goto :goto_0

    #@58
    .line 330
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    #@59
    .line 331
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "NotificationCompat"

    #@5c
    const-string/jumbo v5, "Unable to access notification actions"

    #@5f
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@62
    .line 332
    sput-boolean v3, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z

    #@64
    goto :goto_0

    #@65
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    move v2, v3

    #@66
    .line 337
    goto :goto_1
.end method

.method public static getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 12
    .param p0, "notif"    # Landroid/app/Notification;
    .param p1, "actionIndex"    # I
    .param p2, "factory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p3, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 277
    sget-object v10, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    #@3
    monitor-enter v10

    #@4
    .line 279
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    aget-object v7, v0, p1

    #@a
    .line 280
    .local v7, "actionObject":Ljava/lang/Object;
    const/4 v5, 0x0

    #@b
    .line 281
    .local v5, "actionExtras":Landroid/os/Bundle;
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@e
    move-result-object v9

    #@f
    .line 282
    .local v9, "extras":Landroid/os/Bundle;
    if-eqz v9, :cond_0

    #@11
    .line 284
    const-string/jumbo v0, "android.support.actionExtras"

    #@14
    .line 283
    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    #@17
    move-result-object v6

    #@18
    .line 285
    .local v6, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-eqz v6, :cond_0

    #@1a
    .line 286
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    .end local v5    # "actionExtras":Landroid/os/Bundle;
    check-cast v5, Landroid/os/Bundle;

    #@20
    .line 290
    .end local v6    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    :cond_0
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIconField:Ljava/lang/reflect/Field;

    #@22
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@25
    move-result v2

    #@26
    .line 291
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionTitleField:Ljava/lang/reflect/Field;

    #@28
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Ljava/lang/CharSequence;

    #@2e
    .line 292
    sget-object v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionIntentField:Ljava/lang/reflect/Field;

    #@30
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v4

    #@34
    check-cast v4, Landroid/app/PendingIntent;

    #@36
    move-object v0, p2

    #@37
    move-object v1, p3

    #@38
    .line 289
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompatJellybean;->readAction(Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompatBase$Action;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result-object v0

    #@3c
    monitor-exit v10

    #@3d
    return-object v0

    #@3e
    .line 294
    .end local v7    # "actionObject":Ljava/lang/Object;
    .end local v9    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v8

    #@3f
    .line 295
    .local v8, "e":Ljava/lang/IllegalAccessException;
    :try_start_1
    const-string/jumbo v0, "NotificationCompat"

    #@42
    const-string/jumbo v1, "Unable to access notification actions"

    #@45
    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@48
    .line 296
    const/4 v0, 0x1

    #@49
    sput-boolean v0, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    monitor-exit v10

    #@4c
    .line 299
    return-object v11

    #@4d
    .line 277
    .end local v8    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v0

    #@4e
    monitor-exit v10

    #@4f
    throw v0
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .locals 3
    .param p0, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 268
    sget-object v2, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 269
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 270
    .local v0, "actionObjects":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@9
    array-length v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :goto_0
    monitor-exit v2

    #@b
    return v1

    #@c
    :cond_0
    const/4 v1, 0x0

    #@d
    goto :goto_0

    #@e
    .line 268
    .end local v0    # "actionObjects":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    #@f
    monitor-exit v2

    #@10
    throw v1
.end method

.method private static getActionFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "actionFactory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@0
    .prologue
    .line 359
    const-string/jumbo v0, "icon"

    #@3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@6
    move-result v1

    #@7
    .line 360
    const-string/jumbo v0, "title"

    #@a
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@d
    move-result-object v2

    #@e
    .line 361
    const-string/jumbo v0, "actionIntent"

    #@11
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@14
    move-result-object v3

    #@15
    check-cast v3, Landroid/app/PendingIntent;

    #@17
    .line 362
    const-string/jumbo v0, "extras"

    #@1a
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@1d
    move-result-object v4

    #@1e
    .line 364
    const-string/jumbo v0, "remoteInputs"

    #@21
    invoke-static {p0, v0}, Landroid/support/v4/app/BundleUtil;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    #@24
    move-result-object v0

    #@25
    .line 363
    invoke-static {v0, p2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@28
    move-result-object v5

    #@29
    move-object v0, p1

    #@2a
    .line 358
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method private static getActionObjectsLocked(Landroid/app/Notification;)[Ljava/lang/Object;
    .locals 5
    .param p0, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 303
    sget-object v2, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 304
    :try_start_0
    invoke-static {}, Landroid/support/v4/app/NotificationCompatJellybean;->ensureActionReflectionReadyLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    monitor-exit v2

    #@b
    .line 305
    return-object v4

    #@c
    .line 308
    :cond_0
    :try_start_1
    sget-object v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsField:Ljava/lang/reflect/Field;

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    monitor-exit v2

    #@15
    return-object v1

    #@16
    .line 309
    :catch_0
    move-exception v0

    #@17
    .line 310
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    const-string/jumbo v1, "NotificationCompat"

    #@1a
    const-string/jumbo v3, "Unable to access notification actions"

    #@1d
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@20
    .line 311
    const/4 v1, 0x1

    #@21
    sput-boolean v1, Landroid/support/v4/app/NotificationCompatJellybean;->sActionsAccessFailed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    monitor-exit v2

    #@24
    .line 312
    return-object v4

    #@25
    .line 303
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method public static getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 3
    .param p1, "actionFactory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroid/support/v4/app/NotificationCompatBase$Action$Factory;",
            "Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;",
            ")[",
            "Landroid/support/v4/app/NotificationCompatBase$Action;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    #@1
    .line 344
    if-nez p0, :cond_0

    #@3
    .line 345
    return-object v2

    #@4
    .line 347
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    invoke-interface {p1, v2}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->newArray(I)[Landroid/support/v4/app/NotificationCompatBase$Action;

    #@b
    move-result-object v0

    #@c
    .line 348
    .local v0, "actions":[Landroid/support/v4/app/NotificationCompatBase$Action;
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@e
    if-ge v1, v2, :cond_1

    #@10
    .line 349
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v2

    #@14
    check-cast v2, Landroid/os/Bundle;

    #@16
    invoke-static {v2, p1, p2}, Landroid/support/v4/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;

    #@19
    move-result-object v2

    #@1a
    aput-object v2, v0, v1

    #@1c
    .line 348
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 352
    :cond_1
    return-object v0
.end method

.method private static getBundleForAction(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;
    .locals 3
    .param p0, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    #@0
    .prologue
    .line 381
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 382
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "icon"

    #@8
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    #@b
    move-result v2

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@f
    .line 383
    const-string/jumbo v1, "title"

    #@12
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@19
    .line 384
    const-string/jumbo v1, "actionIntent"

    #@1c
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@23
    .line 385
    const-string/jumbo v1, "extras"

    #@26
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@2d
    .line 386
    const-string/jumbo v1, "remoteInputs"

    #@30
    .line 387
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@33
    move-result-object v2

    #@34
    .line 386
    invoke-static {v2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@3b
    .line 388
    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 8
    .param p0, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 212
    sget-object v5, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 213
    :try_start_0
    sget-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v4, :cond_0

    #@8
    monitor-exit v5

    #@9
    .line 214
    return-object v7

    #@a
    .line 217
    :cond_0
    :try_start_1
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    #@c
    if-nez v4, :cond_2

    #@e
    .line 218
    const-class v4, Landroid/app/Notification;

    #@10
    const-string/jumbo v6, "extras"

    #@13
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@16
    move-result-object v3

    #@17
    .line 219
    .local v3, "extrasField":Ljava/lang/reflect/Field;
    const-class v4, Landroid/os/Bundle;

    #@19
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@20
    move-result v4

    #@21
    if-nez v4, :cond_1

    #@23
    .line 220
    const-string/jumbo v4, "NotificationCompat"

    #@26
    const-string/jumbo v6, "Notification.extras field is not of type Bundle"

    #@29
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2c
    .line 221
    const/4 v4, 0x1

    #@2d
    sput-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2f
    monitor-exit v5

    #@30
    .line 222
    return-object v7

    #@31
    .line 224
    :cond_1
    const/4 v4, 0x1

    #@32
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@35
    .line 225
    sput-object v3, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    #@37
    .line 227
    .end local v3    # "extrasField":Ljava/lang/reflect/Field;
    :cond_2
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    #@39
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    check-cast v2, Landroid/os/Bundle;

    #@3f
    .line 228
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_3

    #@41
    .line 229
    new-instance v2, Landroid/os/Bundle;

    #@43
    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    #@46
    .line 230
    .restart local v2    # "extras":Landroid/os/Bundle;
    sget-object v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasField:Ljava/lang/reflect/Field;

    #@48
    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4b
    :cond_3
    monitor-exit v5

    #@4c
    .line 232
    return-object v2

    #@4d
    .line 235
    .end local v2    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    #@4e
    .line 236
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    :try_start_3
    const-string/jumbo v4, "NotificationCompat"

    #@51
    const-string/jumbo v6, "Unable to access notification extras"

    #@54
    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    .line 238
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    const/4 v4, 0x1

    #@58
    sput-boolean v4, Landroid/support/v4/app/NotificationCompatJellybean;->sExtrasFieldAccessFailed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@5a
    monitor-exit v5

    #@5b
    .line 239
    return-object v7

    #@5c
    .line 233
    :catch_1
    move-exception v0

    #@5d
    .line 234
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string/jumbo v4, "NotificationCompat"

    #@60
    const-string/jumbo v6, "Unable to access notification extras"

    #@63
    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@66
    goto :goto_0

    #@67
    .line 212
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catchall_0
    move-exception v4

    #@68
    monitor-exit v5

    #@69
    throw v4
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 396
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.support.groupKey"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 392
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.support.localOnly"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "actions"    # [Landroid/support/v4/app/NotificationCompatBase$Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 370
    if-nez p0, :cond_0

    #@3
    .line 371
    return-object v2

    #@4
    .line 373
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@6
    array-length v2, p0

    #@7
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    .line 374
    .local v1, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    #@b
    array-length v3, p0

    #@c
    :goto_0
    if-ge v2, v3, :cond_1

    #@e
    aget-object v0, p0, v2

    #@10
    .line 375
    .local v0, "action":Landroid/support/v4/app/NotificationCompatBase$Action;
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatJellybean;->getBundleForAction(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 374
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 377
    .end local v0    # "action":Landroid/support/v4/app/NotificationCompatBase$Action;
    :cond_1
    return-object v1
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 404
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.support.sortKey"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 400
    invoke-static {p0}, Landroid/support/v4/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    const-string/jumbo v1, "android.support.isGroupSummary"

    #@7
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public static readAction(Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 6
    .param p0, "factory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p1, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "actionIntent"    # Landroid/app/PendingIntent;
    .param p5, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 247
    const/4 v5, 0x0

    #@1
    .line 248
    .local v5, "remoteInputs":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    if-eqz p5, :cond_0

    #@3
    .line 250
    const-string/jumbo v0, "android.support.remoteInputs"

    #@6
    invoke-static {p5, v0}, Landroid/support/v4/app/BundleUtil;->getBundleArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    #@9
    move-result-object v0

    #@a
    .line 249
    invoke-static {v0, p1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@d
    move-result-object v5

    #@e
    .end local v5    # "remoteInputs":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    :cond_0
    move-object v0, p0

    #@f
    move v1, p2

    #@10
    move-object v2, p3

    #@11
    move-object v3, p4

    #@12
    move-object v4, p5

    #@13
    .line 253
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public static writeActionAndGetExtras(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/os/Bundle;
    .locals 4
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    #@0
    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@f
    .line 259
    new-instance v0, Landroid/os/Bundle;

    #@11
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@18
    .line 260
    .local v0, "actionExtras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@1b
    move-result-object v1

    #@1c
    if-eqz v1, :cond_0

    #@1e
    .line 261
    const-string/jumbo v1, "android.support.remoteInputs"

    #@21
    .line 262
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;

    #@28
    move-result-object v2

    #@29
    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@2c
    .line 264
    :cond_0
    return-object v0
.end method
