.class public Landroid/app/Notification$MessagingStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$MessagingStyle$Message;,
        Landroid/app/Notification$MessagingStyle$ConversationType;
    }
.end annotation


# static fields
.field public static final blacklist CONVERSATION_TYPE_IMPORTANT:I = 0x2

.field public static final blacklist CONVERSATION_TYPE_LEGACY:I = 0x0

.field public static final blacklist CONVERSATION_TYPE_NORMAL:I = 0x1

.field public static final whitelist MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field greylist-max-o mConversationTitle:Ljava/lang/CharSequence;

.field blacklist mConversationType:I

.field greylist-max-o mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mIsGroupConversation:Z

.field greylist-max-o mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mShortcutIcon:Landroid/graphics/drawable/Icon;

.field blacklist mUnreadMessageCount:I

.field greylist-max-o mUser:Landroid/app/Person;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 9042
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 9037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 9039
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 9043
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Person;)V
    .registers 3
    .param p1, "user"    # Landroid/app/Person;

    .line 9064
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 9037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 9039
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 9065
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 9066
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "userDisplayName"    # Ljava/lang/CharSequence;

    .line 9054
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    .line 9055
    return-void
.end method

.method private greylist-max-o findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;
    .registers 2

    .line 9568
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)",
            "Landroid/app/Notification$MessagingStyle$Message;"
        }
    .end annotation

    .line 9577
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_26

    .line 9578
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 9580
    .local v1, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 9581
    return-object v1

    .line 9577
    .end local v1    # "m":Landroid/app/Notification$MessagingStyle$Message;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 9584
    .end local v0    # "i":I
    :cond_26
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 9586
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$MessagingStyle$Message;

    return-object v0

    .line 9588
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 9389
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 9390
    .local v0, "m":Landroid/app/Notification$MessagingStyle$Message;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v2, v1

    goto :goto_d

    :cond_9
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmText(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 9391
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_d
    if-nez v0, :cond_10

    goto :goto_30

    .line 9392
    :cond_10
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2a

    .line 9393
    :cond_25
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    goto :goto_2c

    :cond_2a
    :goto_2a
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    :goto_2c
    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_30
    nop

    .line 9395
    .local v1, "sender":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    .line 9396
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5f

    .line 9397
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    .line 9398
    .local v3, "bidi":Landroid/text/BidiFormatter;
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 9400
    invoke-virtual {v3, v5}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 9398
    const v6, 0x10406e8

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9401
    .local v3, "title":Ljava/lang/CharSequence;
    goto :goto_63

    .line 9402
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_5f
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .restart local v3    # "title":Ljava/lang/CharSequence;
    goto :goto_63

    .line 9405
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_62
    move-object v3, v1

    .line 9407
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :goto_63
    invoke-static {}, Landroid/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 9408
    invoke-static {v3}, Landroid/app/Notification;->-$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 9410
    :cond_6d
    if-eqz v3, :cond_74

    .line 9411
    const-string v4, "android.title"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9413
    :cond_74
    if-eqz v2, :cond_7b

    .line 9414
    const-string v4, "android.text"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9416
    :cond_7b
    return-void
.end method

.method private blacklist fixTitleAndTextForCompactMessaging(Landroid/app/Notification$StandardTemplateParams;)V
    .registers 12
    .param p1, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 9419
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 9420
    .local v0, "m":Landroid/app/Notification$MessagingStyle$Message;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v2, v1

    goto :goto_d

    :cond_9
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmText(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 9421
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_d
    if-nez v0, :cond_11

    move-object v3, v1

    goto :goto_31

    .line 9422
    :cond_11
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_2b

    .line 9423
    :cond_26
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v3

    goto :goto_2d

    :cond_2b
    :goto_2b
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    :goto_2d
    invoke-virtual {v3}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_31
    nop

    .line 9425
    .local v3, "sender":Ljava/lang/CharSequence;
    iget-boolean v4, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    if-eqz v4, :cond_39

    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    goto :goto_3a

    :cond_39
    move-object v4, v1

    .line 9428
    .local v4, "conversationTitle":Ljava/lang/CharSequence;
    :goto_3a
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    .line 9429
    .local v5, "bidi":Landroid/text/BidiFormatter;
    const-string v6, ""

    const v7, 0x10406e8

    if-eqz v3, :cond_58

    .line 9430
    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v8

    .line 9432
    invoke-virtual {v5, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    filled-new-array {v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 9430
    invoke-virtual {v8, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6c

    .line 9433
    :cond_58
    if-eqz v4, :cond_6c

    .line 9434
    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v8

    .line 9436
    invoke-virtual {v5, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    filled-new-array {v9, v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 9434
    invoke-virtual {v8, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 9439
    :cond_6c
    :goto_6c
    invoke-static {}, Landroid/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 9440
    invoke-static {v4}, Landroid/app/Notification;->-$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 9441
    invoke-static {v3}, Landroid/app/Notification;->-$$Nest$smstripStyling(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 9445
    :cond_7a
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->showConversationTitle()Z

    move-result v6

    if-eqz v6, :cond_84

    if-eqz v4, :cond_84

    const/4 v6, 0x1

    goto :goto_85

    :cond_84
    const/4 v6, 0x0

    .line 9447
    .local v6, "isConversationTitleAvailable":Z
    :goto_85
    if-eqz v6, :cond_89

    .line 9448
    move-object v7, v4

    .local v7, "title":Ljava/lang/CharSequence;
    goto :goto_8a

    .line 9450
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_89
    move-object v7, v3

    .line 9453
    .restart local v7    # "title":Ljava/lang/CharSequence;
    :goto_8a
    invoke-virtual {p1, v7}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 9456
    if-eqz v6, :cond_96

    .line 9457
    invoke-virtual {p1, v3}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 9458
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    goto :goto_9c

    .line 9461
    :cond_96
    invoke-virtual {p1, v2}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 9462
    invoke-virtual {p1, v1}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 9464
    :goto_9c
    return-void
.end method

.method private static blacklist getBundleArrayForMessages(Ljava/util/List;ZI)[Landroid/os/Bundle;
    .registers 8
    .param p1, "ensureContrast"    # Z
    .param p2, "backgroundColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;ZI)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 9376
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    .line 9377
    .local v0, "bundles":[Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 9378
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_21

    .line 9379
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    .line 9380
    .local v3, "m":Landroid/app/Notification$MessagingStyle$Message;
    if-eqz p1, :cond_18

    .line 9381
    invoke-virtual {v3, p2}, Landroid/app/Notification$MessagingStyle$Message;->ensureColorContrastOrStripStyling(I)V

    .line 9383
    :cond_18
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v0, v2

    .line 9378
    .end local v3    # "m":Landroid/app/Notification$MessagingStyle$Message;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 9385
    .end local v2    # "i":I
    :cond_21
    return-object v0
.end method

.method private blacklist getKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "person"    # Landroid/app/Person;

    .line 9748
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_13

    .line 9749
    :cond_4
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 9748
    :goto_13
    return-object v0
.end method

.method private blacklist getMessagingLayoutResource(ZZ)I
    .registers 4
    .param p1, "isConversationLayout"    # Z
    .param p2, "isCollapsed"    # Z

    .line 9721
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 9724
    if-eqz p1, :cond_18

    .line 9725
    if-eqz p2, :cond_11

    .line 9726
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedConversationLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v0

    return v0

    .line 9728
    :cond_11
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetExpandedConversationLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v0

    return v0

    .line 9731
    :cond_18
    if-eqz p2, :cond_21

    .line 9732
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v0

    return v0

    .line 9734
    :cond_21
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetExpandedMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v0

    return v0

    .line 9739
    :cond_28
    if-eqz p1, :cond_31

    .line 9740
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetConversationLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v0

    goto :goto_40

    .line 9741
    :cond_31
    if-eqz p2, :cond_3a

    .line 9742
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v0

    goto :goto_40

    .line 9743
    :cond_3a
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetExpandedMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v0

    .line 9739
    :goto_40
    return v0
.end method

.method private blacklist getOtherPersonName()Ljava/lang/CharSequence;
    .registers 5

    .line 9753
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 9754
    .local v0, "userKey":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_30

    .line 9755
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v2

    .line 9756
    .local v2, "sender":Landroid/app/Person;
    if-eqz v2, :cond_2d

    invoke-direct {p0, v2}, Landroid/app/Notification$MessagingStyle;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 9757
    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 9754
    .end local v2    # "sender":Landroid/app/Person;
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 9764
    .end local v1    # "i":I
    :cond_30
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    return-object v1
.end method

.method private greylist-max-o hasOnlyWhiteSpaceSenders()Z
    .registers 5

    .line 9768
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 9769
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 9770
    .local v1, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v2

    .line 9771
    .local v2, "sender":Landroid/app/Person;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$MessagingStyle;->isWhiteSpace(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 9772
    const/4 v3, 0x0

    return v3

    .line 9768
    .end local v1    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v2    # "sender":Landroid/app/Person;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9775
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isWhiteSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "sender"    # Ljava/lang/CharSequence;

    .line 9779
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 9780
    return v1

    .line 9782
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "^\\s*$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 9783
    return v1

    .line 9787
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 9788
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 9789
    .local v2, "c":C
    const/16 v3, 0x200b

    if-eq v2, v3, :cond_26

    .line 9790
    const/4 v1, 0x0

    return v1

    .line 9787
    .end local v2    # "c":C
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 9793
    .end local v0    # "i":I
    :cond_29
    return v1
.end method

.method private blacklist makeMessagingView(I)Landroid/widget/RemoteViews;
    .registers 22
    .param p1, "viewType"    # I

    .line 9608
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    const/4 v4, 0x1

    if-eq v1, v2, :cond_b

    move v2, v4

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 9609
    .local v2, "isCollapsed":Z
    :goto_c
    sget v5, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    if-eq v1, v5, :cond_12

    move v5, v4

    goto :goto_13

    :cond_12
    const/4 v5, 0x0

    .line 9610
    .local v5, "hideRightIcons":Z
    :goto_13
    iget v6, v0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    if-eqz v6, :cond_19

    move v6, v4

    goto :goto_1a

    :cond_19
    const/4 v6, 0x0

    .line 9611
    .local v6, "isConversationLayout":Z
    :goto_1a
    iget v7, v0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_21

    move v7, v4

    goto :goto_22

    :cond_21
    const/4 v7, 0x0

    .line 9612
    .local v7, "isImportantConversation":Z
    :goto_22
    if-nez v6, :cond_28

    if-eqz v2, :cond_28

    move v8, v4

    goto :goto_29

    :cond_28
    const/4 v8, 0x0

    .line 9616
    .local v8, "isLegacyHeaderless":Z
    :goto_29
    invoke-static {v0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_38

    .line 9617
    invoke-static {v0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_3a

    .line 9618
    :cond_38
    iget-object v9, v0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :goto_3a
    nop

    .line 9619
    .local v9, "conversationTitle":Ljava/lang/CharSequence;
    iget-object v10, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v10}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x1c

    if-lt v10, v11, :cond_4d

    move v10, v4

    goto :goto_4e

    :cond_4d
    const/4 v10, 0x0

    .line 9622
    .local v10, "atLeastP":Z
    :goto_4e
    const/4 v11, 0x0

    .line 9623
    .local v11, "nameReplacement":Ljava/lang/CharSequence;
    if-nez v10, :cond_5f

    .line 9624
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 9625
    .local v12, "isOneToOne":Z
    invoke-direct {v0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v13

    if-eqz v13, :cond_64

    .line 9626
    const/4 v12, 0x1

    .line 9627
    move-object v11, v9

    .line 9628
    const/4 v9, 0x0

    goto :goto_64

    .line 9631
    .end local v12    # "isOneToOne":Z
    :cond_5f
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle;->isGroupConversation()Z

    move-result v12

    xor-int/2addr v12, v4

    .line 9633
    .restart local v12    # "isOneToOne":Z
    :cond_64
    :goto_64
    if-nez v8, :cond_6c

    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v13

    if-eqz v13, :cond_78

    :cond_6c
    if-eqz v12, :cond_78

    .line 9634
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_78

    .line 9635
    invoke-direct {v0}, Landroid/app/Notification$MessagingStyle;->getOtherPersonName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 9638
    :cond_78
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v13}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v13

    invoke-static {v13}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v13

    .line 9639
    .local v13, "largeIcon":Landroid/graphics/drawable/Icon;
    new-instance v14, Landroid/app/Notification$TemplateBindResult;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 9640
    .local v14, "bindResult":Landroid/app/Notification$TemplateBindResult;
    iget-object v3, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, v3, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v3}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 9641
    invoke-virtual {v3, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 9642
    invoke-virtual {v3, v6}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 9643
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 9644
    invoke-virtual {v3, v12}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    if-nez v5, :cond_a6

    if-eqz v12, :cond_a5

    goto :goto_a6

    :cond_a5
    const/4 v4, 0x0

    .line 9645
    :cond_a6
    :goto_a6
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 9646
    .local v3, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 9647
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c9

    .line 9648
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$MessagingStyle$Message;

    invoke-static {v4}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmText(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_ca

    :cond_c9
    nop

    .line 9650
    .local v15, "lastMessage":Ljava/lang/String;
    :goto_ca
    invoke-virtual {v3, v9}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    .line 9654
    invoke-virtual {v4, v15}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    .line 9655
    invoke-virtual {v4, v2}, Landroid/app/Notification$StandardTemplateParams;->hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 9656
    .end local v15    # "lastMessage":Ljava/lang/String;
    goto :goto_ea

    .line 9657
    :cond_d6
    if-eqz v8, :cond_da

    move-object v4, v9

    goto :goto_db

    :cond_da
    move-object v4, v15

    :goto_db
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    .line 9658
    invoke-virtual {v4, v15}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v4

    .line 9659
    if-eqz v8, :cond_e6

    goto :goto_e7

    :cond_e6
    move-object v15, v9

    :goto_e7
    invoke-virtual {v4, v15}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    .line 9661
    :goto_ea
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9662
    invoke-direct {v0, v6, v2}, Landroid/app/Notification$MessagingStyle;->getMessagingLayoutResource(ZZ)I

    move-result v15

    .line 9661
    invoke-static {v4, v15, v3, v14}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 9665
    .local v4, "contentView":Landroid/widget/RemoteViews;
    if-eqz v6, :cond_10c

    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v15

    if-nez v15, :cond_10c

    .line 9667
    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v1, 0x10202b6

    invoke-static {v15, v4, v1, v3}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorPrimary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 9669
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v15, 0x1020218

    invoke-static {v1, v4, v15, v3}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 9672
    :cond_10c
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v15, v3}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v15

    move/from16 v16, v5

    const/4 v5, 0x1

    .end local v5    # "hideRightIcons":Z
    .local v16, "hideRightIcons":Z
    invoke-virtual {v0, v1, v5, v15}, Landroid/app/Notification$MessagingStyle;->addExtras(Landroid/os/Bundle;ZI)V

    .line 9673
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9674
    invoke-static {v1, v3}, Landroid/app/Notification$Builder;->-$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    .line 9673
    const v5, 0x1020553

    const-string/jumbo v15, "setLayoutColor"

    invoke-virtual {v4, v5, v15, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9675
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9676
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    .line 9675
    const-string/jumbo v15, "setSenderTextColor"

    invoke-virtual {v4, v5, v15, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9677
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9678
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    .line 9677
    const-string/jumbo v15, "setMessageTextColor"

    invoke-virtual {v4, v5, v15, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9679
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9681
    invoke-static {v1, v3}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v1

    .line 9679
    const-string/jumbo v15, "setNotificationBackgroundColor"

    invoke-virtual {v4, v5, v15, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9682
    const-string/jumbo v1, "setIsCollapsed"

    invoke-virtual {v4, v5, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 9684
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    const-string/jumbo v15, "setAvatarReplacement"

    invoke-virtual {v4, v5, v15, v1}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 9686
    const-string/jumbo v1, "setNameReplacement"

    invoke-virtual {v4, v5, v1, v11}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 9688
    const-string/jumbo v1, "setIsOneToOne"

    invoke-virtual {v4, v5, v1, v12}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 9690
    const-string/jumbo v1, "setConversationTitle"

    invoke-virtual {v4, v5, v1, v9}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 9692
    if-eqz v6, :cond_18b

    .line 9693
    const-string/jumbo v1, "setShortcutIcon"

    iget-object v15, v0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v5, v1, v15}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 9695
    const-string/jumbo v1, "setIsImportantConversation"

    invoke-virtual {v4, v5, v1, v7}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 9698
    :cond_18b
    invoke-static {}, Landroid/app/Flags;->notificationsRedesignTemplates()Z

    move-result v1

    if-eqz v1, :cond_1b4

    if-nez v2, :cond_1b4

    .line 9703
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 9704
    .local v1, "res":Landroid/content/res/Resources;
    const v15, 0x1050278

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 9706
    .local v15, "marginStart":I
    const/4 v5, 0x4

    move-object/from16 v17, v1

    .end local v1    # "res":Landroid/content/res/Resources;
    .local v17, "res":Landroid/content/res/Resources;
    int-to-float v1, v15

    move/from16 v18, v2

    .end local v2    # "isCollapsed":Z
    .local v18, "isCollapsed":Z
    const v2, 0x1020016

    move-object/from16 v19, v3

    const/4 v3, 0x0

    .end local v3    # "p":Landroid/app/Notification$StandardTemplateParams;
    .local v19, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-virtual {v4, v2, v5, v1, v3}, Landroid/widget/RemoteViews;->setViewLayoutMargin(IIFI)V

    goto :goto_1b8

    .line 9698
    .end local v15    # "marginStart":I
    .end local v17    # "res":Landroid/content/res/Resources;
    .end local v18    # "isCollapsed":Z
    .end local v19    # "p":Landroid/app/Notification$StandardTemplateParams;
    .restart local v2    # "isCollapsed":Z
    .restart local v3    # "p":Landroid/app/Notification$StandardTemplateParams;
    :cond_1b4
    move/from16 v18, v2

    move-object/from16 v19, v3

    .line 9709
    .end local v2    # "isCollapsed":Z
    .end local v3    # "p":Landroid/app/Notification$StandardTemplateParams;
    .restart local v18    # "isCollapsed":Z
    .restart local v19    # "p":Landroid/app/Notification$StandardTemplateParams;
    :goto_1b8
    if-eqz v8, :cond_1c4

    .line 9711
    const v1, 0x1020437

    const-string/jumbo v2, "setMaxDisplayedLines"

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v2, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9713
    :cond_1c4
    const-string/jumbo v1, "setLargeIcon"

    const v2, 0x1020553

    invoke-virtual {v4, v2, v1, v13}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 9715
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "setData"

    invoke-virtual {v4, v2, v3, v1}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 9717
    return-object v4
.end method

.method private static blacklist reduceMessagesIconSizes(Ljava/util/List;I)V
    .registers 6
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;I)V"
        }
    .end annotation

    .line 9921
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-nez p0, :cond_3

    .line 9922
    return-void

    .line 9925
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 9926
    .local v1, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    .line 9927
    .local v2, "sender":Landroid/app/Person;
    if-eqz v2, :cond_22

    .line 9928
    invoke-virtual {v2}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 9929
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_22

    .line 9930
    invoke-virtual {v3, p1, p1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 9933
    .end local v1    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v2    # "sender":Landroid/app/Person;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_22
    goto :goto_7

    .line 9934
    :cond_23
    return-void
.end method

.method private blacklist showConversationTitle()Z
    .registers 3

    .line 9468
    const-string/jumbo v0, "persist.compact_heads_up_notification.show_conversation_title_for_group"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 9341
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 9342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/app/Notification$MessagingStyle;->addExtras(Landroid/os/Bundle;ZI)V

    .line 9343
    return-void
.end method

.method public blacklist addExtras(Landroid/os/Bundle;ZI)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "ensureContrast"    # Z
    .param p3, "backgroundColor"    # I

    .line 9349
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_16

    .line 9351
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.selfDisplayName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9352
    const-string v0, "android.messagingUser"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9354
    :cond_16
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_21

    .line 9355
    const-string v0, "android.conversationTitle"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 9357
    :cond_21
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 9358
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 9359
    invoke-static {v0, p2, p3}, Landroid/app/Notification$MessagingStyle;->getBundleArrayForMessages(Ljava/util/List;ZI)[Landroid/os/Bundle;

    move-result-object v0

    .line 9358
    const-string v1, "android.messages"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 9361
    :cond_34
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 9362
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v0, p2, p3}, Landroid/app/Notification$MessagingStyle;->getBundleArrayForMessages(Ljava/util/List;ZI)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.messages.historic"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 9365
    :cond_47
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_52

    .line 9366
    const-string v0, "android.conversationIcon"

    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9368
    :cond_52
    const-string v0, "android.conversationUnreadMessageCount"

    iget v1, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9370
    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    .line 9371
    const-string v0, "android.isGroupConversation"

    iget-boolean v1, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9372
    return-void
.end method

.method public whitelist addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .registers 4
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 9276
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9277
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_15

    .line 9278
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9280
    :cond_15
    return-object p0
.end method

.method public whitelist addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .registers 4
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 9255
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9256
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_15

    .line 9257
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9259
    :cond_15
    return-object p0
.end method

.method public whitelist addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Landroid/app/Person;

    .line 9236
    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    .line 9217
    nop

    .line 9218
    if-nez p4, :cond_5

    const/4 v0, 0x0

    goto :goto_12

    :cond_5
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    .line 9217
    :goto_12
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 15
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 9519
    const/4 v0, 0x1

    if-eqz p1, :cond_c7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto/16 :goto_c7

    .line 9522
    :cond_f
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$MessagingStyle;

    .line 9523
    .local v1, "newS":Landroid/app/Notification$MessagingStyle;
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v2

    .line 9524
    .local v2, "oldMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v3

    .line 9526
    .local v3, "newMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-eqz v2, :cond_1e

    if-nez v3, :cond_24

    .line 9527
    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 9530
    :cond_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 9531
    .local v4, "n":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2f

    .line 9532
    return v0

    .line 9534
    :cond_2f
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    if-ge v5, v4, :cond_c5

    .line 9535
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 9536
    .local v6, "oldM":Landroid/app/Notification$MessagingStyle$Message;
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$MessagingStyle$Message;

    .line 9537
    .local v7, "newM":Landroid/app/Notification$MessagingStyle$Message;
    nop

    .line 9538
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 9539
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 9537
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_56

    .line 9540
    return v0

    .line 9542
    :cond_56
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 9543
    return v0

    .line 9545
    :cond_65
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    if-nez v8, :cond_70

    .line 9546
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_78

    .line 9547
    :cond_70
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 9545
    :goto_78
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 9548
    .local v8, "oldSender":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    if-nez v9, :cond_87

    .line 9549
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_8f

    .line 9550
    :cond_87
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 9548
    :goto_8f
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 9551
    .local v9, "newSender":Ljava/lang/String;
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9a

    .line 9552
    return v0

    .line 9555
    :cond_9a
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_a3

    .line 9556
    move-object v10, v11

    goto :goto_ab

    :cond_a3
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 9557
    .local v10, "oldKey":Ljava/lang/String;
    :goto_ab
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v12

    if-nez v12, :cond_b2

    .line 9558
    goto :goto_ba

    :cond_b2
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 9559
    .local v11, "newKey":Ljava/lang/String;
    :goto_ba
    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c1

    .line 9560
    return v0

    .line 9534
    .end local v6    # "oldM":Landroid/app/Notification$MessagingStyle$Message;
    .end local v7    # "newM":Landroid/app/Notification$MessagingStyle$Message;
    .end local v8    # "oldSender":Ljava/lang/String;
    .end local v9    # "newSender":Ljava/lang/String;
    .end local v10    # "oldKey":Ljava/lang/String;
    .end local v11    # "newKey":Ljava/lang/String;
    :cond_c1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_30

    .line 9564
    .end local v5    # "i":I
    :cond_c5
    const/4 v0, 0x0

    return v0

    .line 9520
    .end local v1    # "newS":Landroid/app/Notification$MessagingStyle;
    .end local v2    # "oldMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    .end local v3    # "newMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    .end local v4    # "n":I
    :cond_c7
    :goto_c7
    return v0
.end method

.method public whitelist getConversationTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 9145
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getConversationType()I
    .registers 2

    .line 9185
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    return v0
.end method

.method public greylist-max-o getHeadsUpStatusBarText()Ljava/lang/CharSequence;
    .registers 3

    .line 9089
    invoke-static {p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 9090
    invoke-static {p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 9091
    :cond_f
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :goto_11
    nop

    .line 9092
    .local v0, "conversationTitle":Ljava/lang/CharSequence;
    iget v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    if-nez v1, :cond_23

    .line 9093
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v1

    if-nez v1, :cond_23

    .line 9094
    return-object v0

    .line 9096
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getHistoricMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 9294
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 9287
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getShortcutIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 9166
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getUnreadMessageCount()I
    .registers 2

    .line 9190
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    return v0
.end method

.method public whitelist getUser()Landroid/app/Person;
    .registers 2

    .line 9104
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    return-object v0
.end method

.method public whitelist getUserDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 9113
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isGroupConversation()Z
    .registers 3

    .line 9327
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    .line 9328
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1c

    .line 9330
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    .line 9333
    :cond_1c
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    return v0
.end method

.method public blacklist makeCompactHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 12

    .line 9810
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 9811
    .local v0, "isConversationLayout":Z
    :goto_9
    const/4 v3, 0x0

    .line 9812
    .local v3, "conversationIcon":Landroid/graphics/drawable/Icon;
    const/4 v4, 0x0

    .line 9813
    .local v4, "remoteInputAction":Landroid/app/Notification$Action;
    if-eqz v0, :cond_4b

    .line 9815
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 9821
    if-nez v3, :cond_25

    iget-boolean v5, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    if-nez v5, :cond_25

    .line 9822
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v5

    .line 9823
    .local v5, "message":Landroid/app/Notification$MessagingStyle$Message;
    if-eqz v5, :cond_25

    .line 9824
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v6

    .line 9825
    .local v6, "sender":Landroid/app/Person;
    if-eqz v6, :cond_25

    .line 9826
    invoke-virtual {v6}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 9831
    .end local v5    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v6    # "sender":Landroid/app/Person;
    :cond_25
    invoke-static {}, Landroid/app/Flags;->compactHeadsUpNotificationReply()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 9833
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9834
    invoke-static {v5}, Landroid/app/Notification$Builder;->-$$Nest$mgetNonContextualActions(Landroid/app/Notification$Builder;)Ljava/util/List;

    move-result-object v5

    .line 9835
    .local v5, "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_32
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4b

    .line 9836
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$Action;

    .line 9837
    .local v7, "action":Landroid/app/Notification$Action;
    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8, v7}, Landroid/app/Notification$Builder;->-$$Nest$mhasValidRemoteInput(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 9838
    move-object v4, v7

    .line 9839
    goto :goto_4b

    .line 9835
    .end local v7    # "action":Landroid/app/Notification$Action;
    :cond_48
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    .line 9845
    .end local v5    # "nonContextualActions":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$Action;>;"
    .end local v6    # "i":I
    :cond_4b
    :goto_4b
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, v5, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v5}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    sget v6, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 9846
    invoke-virtual {v5, v6}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    .line 9847
    invoke-virtual {v5, v0}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    iget-object v6, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9848
    invoke-virtual {v5, v6}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v5

    .line 9849
    invoke-virtual {v5, v1}, Landroid/app/Notification$StandardTemplateParams;->hideTime(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 9851
    .local v1, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-direct {p0, v1}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextForCompactMessaging(Landroid/app/Notification$StandardTemplateParams;)V

    .line 9852
    new-instance v5, Landroid/app/Notification$TemplateBindResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification-IA;)V

    .line 9854
    .local v5, "bindResult":Landroid/app/Notification$TemplateBindResult;
    iget-object v6, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9855
    invoke-static {v7}, Landroid/app/Notification$Builder;->-$$Nest$mgetMessagingCompactHeadsUpLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v7

    .line 9854
    invoke-static {v6, v7, v1, v5}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 9856
    .local v6, "contentView":Landroid/widget/RemoteViews;
    const v7, 0x1020355

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9857
    const v7, 0x1020353

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9858
    const v7, 0x1020006

    const v9, 0x10202b0

    if-eqz v3, :cond_a2

    .line 9859
    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9860
    const v7, 0x10202ab

    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9861
    invoke-virtual {v6, v9, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9862
    invoke-virtual {v6, v9, v3}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_d5

    .line 9863
    :cond_a2
    iget-boolean v10, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    if-eqz v10, :cond_d5

    .line 9864
    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9865
    invoke-virtual {v6, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9866
    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9867
    invoke-static {v7, v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v7

    .line 9866
    const v9, 0x1020553

    const-string/jumbo v10, "setNotificationBackgroundColor"

    invoke-virtual {v6, v9, v10, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9868
    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9869
    invoke-static {v7, v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v7

    .line 9868
    const-string/jumbo v10, "setLayoutColor"

    invoke-virtual {v6, v9, v10, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9870
    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v7}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v10, "setGroupFacePile"

    invoke-virtual {v6, v9, v10, v7}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 9874
    :cond_d5
    :goto_d5
    const v7, 0x10204b9

    if-eqz v4, :cond_100

    .line 9875
    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9877
    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9878
    invoke-static {v8, v4, v2, v1}, Landroid/app/Notification$Builder;->-$$Nest$mgenerateActionButton(Landroid/app/Notification$Builder;Landroid/app/Notification$Action;ZLandroid/app/Notification$StandardTemplateParams;)Landroid/widget/RemoteViews;

    move-result-object v8

    .line 9880
    .local v8, "inlineReplyButton":Landroid/widget/RemoteViews;
    const-string/jumbo v9, "setBackgroundResource"

    const v10, 0x10201d6

    invoke-virtual {v8, v10, v9, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9881
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    .line 9882
    const v9, 0x10406da

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9881
    invoke-virtual {v8, v10, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 9883
    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 9884
    .end local v8    # "inlineReplyButton":Landroid/widget/RemoteViews;
    goto :goto_103

    .line 9885
    :cond_100
    invoke-virtual {v6, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9887
    :goto_103
    return-object v6
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .registers 4

    .line 9504
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 9506
    .local v0, "originalActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    :try_start_6
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 9507
    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    invoke-direct {p0, v1}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1c

    .line 9509
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 9507
    return-object v1

    .line 9509
    :catchall_1c
    move-exception v1

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 9510
    throw v1
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 9596
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 9801
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist reduceImageSizes(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 9896
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 9897
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 9898
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 9899
    .local v1, "isLowRam":Z
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_22

    .line 9900
    nop

    .line 9901
    if-eqz v1, :cond_16

    const v2, 0x10502e9

    goto :goto_19

    .line 9902
    :cond_16
    const v2, 0x10502e8

    .line 9900
    :goto_19
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 9903
    .local v2, "maxSize":I
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 9906
    .end local v2    # "maxSize":I
    :cond_22
    nop

    .line 9907
    if-eqz v1, :cond_29

    const v2, 0x10502d1

    goto :goto_2c

    .line 9908
    :cond_29
    const v2, 0x10502d0

    .line 9906
    :goto_2c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 9909
    .local v2, "maxAvatarSize":I
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v3, :cond_45

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v3}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 9910
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v3}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 9913
    :cond_45
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/app/Notification$MessagingStyle;->reduceMessagesIconSizes(Ljava/util/List;I)V

    .line 9914
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/app/Notification$MessagingStyle;->reduceMessagesIconSizes(Ljava/util/List;I)V

    .line 9915
    return-void
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 9478
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 9480
    const-string v0, "android.messagingUser"

    const-class v1, Landroid/app/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    .line 9481
    .local v0, "user":Landroid/app/Person;
    if-nez v0, :cond_25

    .line 9482
    const-string v1, "android.selfDisplayName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 9483
    .local v1, "displayName":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Person$Builder;

    invoke-direct {v2}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 9484
    .end local v1    # "displayName":Ljava/lang/CharSequence;
    goto :goto_27

    .line 9485
    :cond_25
    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 9487
    :goto_27
    const-string v1, "android.conversationTitle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 9488
    const-string v1, "android.messages"

    const-class v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    .line 9489
    .local v1, "messages":[Landroid/os/Parcelable;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 9490
    const-string v2, "android.messages.historic"

    const-class v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    .line 9492
    .local v2, "histMessages":[Landroid/os/Parcelable;
    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 9493
    const-string v3, "android.isGroupConversation"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    .line 9494
    const-string v3, "android.conversationUnreadMessageCount"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    .line 9495
    const-string v3, "android.conversationIcon"

    const-class v4, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Icon;

    iput-object v3, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 9496
    return-void
.end method

.method public whitelist setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .registers 2
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;

    .line 9136
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 9137
    return-object p0
.end method

.method public blacklist setConversationType(I)Landroid/app/Notification$MessagingStyle;
    .registers 2
    .param p1, "conversationType"    # I

    .line 9178
    iput p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 9179
    return-object p0
.end method

.method public whitelist setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;
    .registers 2
    .param p1, "isGroupConversation"    # Z

    .line 9307
    iput-boolean p1, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    .line 9308
    return-object p0
.end method

.method public blacklist setShortcutIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$MessagingStyle;
    .registers 2
    .param p1, "conversationIcon"    # Landroid/graphics/drawable/Icon;

    .line 9154
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 9155
    return-object p0
.end method

.method public blacklist setUnreadMessageCount(I)Landroid/app/Notification$MessagingStyle;
    .registers 2
    .param p1, "unreadMessageCount"    # I

    .line 9195
    iput p1, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    .line 9196
    return-object p0
.end method

.method public greylist-max-o validate(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 9074
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 9075
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_22

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 9076
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1a

    goto :goto_22

    .line 9077
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "User must be valid and have a name."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9079
    :cond_22
    :goto_22
    return-void
.end method
