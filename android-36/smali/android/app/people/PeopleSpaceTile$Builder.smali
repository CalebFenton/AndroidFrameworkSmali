.class public Landroid/app/people/PeopleSpaceTile$Builder;
.super Ljava/lang/Object;
.source "PeopleSpaceTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/PeopleSpaceTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBirthdayText:Ljava/lang/String;

.field private blacklist mCanBypassDnd:Z

.field private blacklist mContactAffinity:F

.field private blacklist mContactUri:Landroid/net/Uri;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mIsImportantConversation:Z

.field private blacklist mIsPackageSuspended:Z

.field private blacklist mIsUserQuieted:Z

.field private blacklist mLastInteractionTimestamp:J

.field private blacklist mMessagesCount:I

.field private blacklist mNotificationCategory:Ljava/lang/String;

.field private blacklist mNotificationContent:Ljava/lang/CharSequence;

.field private blacklist mNotificationDataUri:Landroid/net/Uri;

.field private blacklist mNotificationKey:Ljava/lang/String;

.field private blacklist mNotificationPolicyState:I

.field private blacklist mNotificationSender:Ljava/lang/CharSequence;

.field private blacklist mNotificationTimestamp:J

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUserHandle:Landroid/os/UserHandle;

.field private blacklist mUserIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mUserName:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBirthdayText(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mBirthdayText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCanBypassDnd(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mCanBypassDnd:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContactAffinity(Landroid/app/people/PeopleSpaceTile$Builder;)F
    .registers 1

    iget p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactAffinity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContactUri(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntent(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsImportantConversation(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsImportantConversation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPackageSuspended(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsPackageSuspended:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsUserQuieted(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsUserQuieted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastInteractionTimestamp(Landroid/app/people/PeopleSpaceTile$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mLastInteractionTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessagesCount(Landroid/app/people/PeopleSpaceTile$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mMessagesCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationCategory(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationCategory:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationContent(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationDataUri(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationDataUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationKey(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationPolicyState(Landroid/app/people/PeopleSpaceTile$Builder;)I
    .registers 1

    iget p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationSender(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationSender:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationTimestamp(Landroid/app/people/PeopleSpaceTile$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatuses(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mStatuses:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserIcon(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserName(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V
    .registers 7
    .param p1, "channel"    # Landroid/app/people/ConversationChannel;
    .param p2, "launcherApps"    # Landroid/content/pm/LauncherApps;

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 302
    .local v0, "info":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    .line 303
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    .line 304
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/app/people/PeopleSpaceTile;->convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    .line 305
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 306
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    .line 307
    invoke-virtual {p0, v0}, Landroid/app/people/PeopleSpaceTile$Builder;->getContactUri(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    .line 308
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getStatuses()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mStatuses:Ljava/util/List;

    .line 309
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getLastEventTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mLastInteractionTimestamp:J

    .line 310
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4f

    .line 311
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v2

    if-eqz v2, :cond_4f

    move v2, v3

    goto :goto_50

    :cond_4f
    move v2, v1

    :goto_50
    iput-boolean v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsImportantConversation:Z

    .line 312
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_64

    .line 313
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_64

    move v1, v3

    goto :goto_65

    :cond_64
    nop

    :goto_65
    iput-boolean v1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mCanBypassDnd:Z

    .line 314
    iput v3, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    .line 315
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/LauncherApps;)V
    .registers 4
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;
    .param p2, "launcherApps"    # Landroid/content/pm/LauncherApps;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/app/people/PeopleSpaceTile;->convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    .line 294
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 295
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    .line 296
    invoke-virtual {p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->getContactUri(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    .line 297
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    .line 298
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/content/Intent;)V
    .registers 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/CharSequence;
    .param p3, "userIcon"    # Landroid/graphics/drawable/Icon;
    .param p4, "intent"    # Landroid/content/Intent;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    .line 283
    iput-object p2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    .line 284
    iput-object p3, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    .line 285
    iput-object p4, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIntent:Landroid/content/Intent;

    .line 286
    if-nez p4, :cond_f

    const/4 v0, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_13
    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    .line 287
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    .line 288
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/people/PeopleSpaceTile;
    .registers 3

    .line 468
    new-instance v0, Landroid/app/people/PeopleSpaceTile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/people/PeopleSpaceTile;-><init>(Landroid/app/people/PeopleSpaceTile$Builder;Landroid/app/people/PeopleSpaceTile-IA;)V

    return-object v0
.end method

.method public blacklist getContactUri(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;
    .registers 5
    .param p1, "info"    # Landroid/content/pm/ShortcutInfo;

    .line 319
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_10

    goto :goto_27

    .line 323
    :cond_10
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 324
    .local v0, "person":Landroid/app/Person;
    invoke-virtual {v0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1e

    goto :goto_26

    :cond_1e
    invoke-virtual {v0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_26
    return-object v1

    .line 320
    .end local v0    # "person":Landroid/app/Person;
    :cond_27
    :goto_27
    return-object v1
.end method

.method public blacklist setBirthdayText(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "birthdayText"    # Ljava/lang/String;

    .line 365
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mBirthdayText:Ljava/lang/String;

    .line 366
    return-object p0
.end method

.method public blacklist setCanBypassDnd(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "canBypassDnd"    # Z

    .line 437
    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mCanBypassDnd:Z

    .line 438
    return-object p0
.end method

.method public blacklist setContactAffinity(F)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "contactAffinity"    # F

    .line 461
    iput p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactAffinity:F

    .line 462
    return-object p0
.end method

.method public blacklist setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 347
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    .line 348
    return-object p0
.end method

.method public blacklist setId(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "id"    # Ljava/lang/String;

    .line 329
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    .line 330
    return-object p0
.end method

.method public blacklist setIntent(Landroid/content/Intent;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 419
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIntent:Landroid/content/Intent;

    .line 420
    return-object p0
.end method

.method public blacklist setIsImportantConversation(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "isImportantConversation"    # Z

    .line 377
    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsImportantConversation:Z

    .line 378
    return-object p0
.end method

.method public blacklist setIsPackageSuspended(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "isPackageSuspended"    # Z

    .line 443
    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsPackageSuspended:Z

    .line 444
    return-object p0
.end method

.method public blacklist setIsUserQuieted(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "isUserQuieted"    # Z

    .line 449
    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsUserQuieted:Z

    .line 450
    return-object p0
.end method

.method public blacklist setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 3
    .param p1, "lastInteractionTimestamp"    # J

    .line 371
    iput-wide p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mLastInteractionTimestamp:J

    .line 372
    return-object p0
.end method

.method public blacklist setMessagesCount(I)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "messagesCount"    # I

    .line 413
    iput p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mMessagesCount:I

    .line 414
    return-object p0
.end method

.method public blacklist setNotificationCategory(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "notificationCategory"    # Ljava/lang/String;

    .line 401
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationCategory:Ljava/lang/String;

    .line 402
    return-object p0
.end method

.method public blacklist setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "notificationContent"    # Ljava/lang/CharSequence;

    .line 389
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationContent:Ljava/lang/CharSequence;

    .line 390
    return-object p0
.end method

.method public blacklist setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "notificationDataUri"    # Landroid/net/Uri;

    .line 407
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationDataUri:Landroid/net/Uri;

    .line 408
    return-object p0
.end method

.method public blacklist setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "notificationKey"    # Ljava/lang/String;

    .line 383
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationKey:Ljava/lang/String;

    .line 384
    return-object p0
.end method

.method public blacklist setNotificationPolicyState(I)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "notificationPolicyState"    # I

    .line 455
    iput p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    .line 456
    return-object p0
.end method

.method public blacklist setNotificationSender(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "notificationSender"    # Ljava/lang/CharSequence;

    .line 395
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationSender:Ljava/lang/CharSequence;

    .line 396
    return-object p0
.end method

.method public blacklist setNotificationTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 3
    .param p1, "notificationTimestamp"    # J

    .line 425
    iput-wide p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationTimestamp:J

    .line 426
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 359
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    .line 360
    return-object p0
.end method

.method public blacklist setStatuses(Ljava/util/List;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;)",
            "Landroid/app/people/PeopleSpaceTile$Builder;"
        }
    .end annotation

    .line 431
    .local p1, "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/app/people/ConversationStatus;>;"
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mStatuses:Ljava/util/List;

    .line 432
    return-object p0
.end method

.method public blacklist setUserHandle(Landroid/os/UserHandle;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 353
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    .line 354
    return-object p0
.end method

.method public blacklist setUserIcon(Landroid/graphics/drawable/Icon;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "userIcon"    # Landroid/graphics/drawable/Icon;

    .line 341
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    .line 342
    return-object p0
.end method

.method public blacklist setUserName(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;
    .registers 2
    .param p1, "userName"    # Ljava/lang/CharSequence;

    .line 335
    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    .line 336
    return-object p0
.end method
