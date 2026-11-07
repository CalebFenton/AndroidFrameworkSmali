.class public interface abstract Lcom/android/internal/widget/MessagingMessage;
.super Ljava/lang/Object;
.source "MessagingMessage.java"

# interfaces
.implements Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;


# static fields
.field public static final blacklist IMAGE_MIME_TYPE_PREFIX:Ljava/lang/String; = "image/"


# direct methods
.method public static synthetic blacklist $r8$lambda$CyzLHuxYoeJlJxSWwsPgsy_N3ns(Lcom/android/internal/widget/MessagingMessage;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/widget/MessagingMessage;->lambda$hideAnimated$0()V

    return-void
.end method

.method public static blacklist createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;Z)Lcom/android/internal/widget/MessagingMessage;
    .registers 5
    .param p0, "layout"    # Lcom/android/internal/widget/IMessagingLayout;
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "resolver"    # Lcom/android/internal/widget/ImageResolver;
    .param p3, "usePrecomputedText"    # Z

    .line 39
    invoke-static {p1}, Lcom/android/internal/widget/MessagingMessage;->hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_11

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/widget/MessagingImageMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Lcom/android/internal/widget/ImageResolver;Z)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v0

    return-object v0

    .line 42
    :cond_11
    invoke-static {p0, p1, p3}, Lcom/android/internal/widget/MessagingTextMessage;->createMessage(Lcom/android/internal/widget/IMessagingLayout;Landroid/app/Notification$MessagingStyle$Message;Z)Lcom/android/internal/widget/MessagingMessage;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist dropCache()V
    .registers 0

    .line 47
    invoke-static {}, Lcom/android/internal/widget/MessagingTextMessage;->dropCache()V

    .line 48
    invoke-static {}, Lcom/android/internal/widget/MessagingImageMessage;->dropCache()V

    .line 49
    return-void
.end method

.method public static blacklist hasImage(Landroid/app/Notification$MessagingStyle$Message;)Z
    .registers 3
    .param p0, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 52
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 53
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 54
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 52
    :goto_1b
    return v0
.end method

.method private synthetic blacklist lambda$hideAnimated$0()V
    .registers 2

    .line 140
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->setIsHidingAnimated(Z)V

    return-void
.end method


# virtual methods
.method public abstract blacklist finalizeInflate()V
.end method

.method public blacklist getGroup()Lcom/android/internal/widget/MessagingGroup;
    .registers 2

    .line 123
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMessage()Landroid/app/Notification$MessagingStyle$Message;
    .registers 2

    .line 69
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist getState()Lcom/android/internal/widget/MessagingMessageState;
.end method

.method public blacklist getView()Landroid/view/View;
    .registers 2

    .line 155
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract blacklist getVisibility()I
.end method

.method public blacklist hasOverlappingRendering()Z
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hideAnimated()V
    .registers 4

    .line 137
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->setIsHidingAnimated(Z)V

    .line 138
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    .line 139
    .local v0, "group":Lcom/android/internal/widget/MessagingGroup;
    if-eqz v0, :cond_17

    .line 140
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/internal/widget/MessagingMessage$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/MessagingMessage$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/MessagingMessage;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/MessagingGroup;->performRemoveAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1b

    .line 142
    :cond_17
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/android/internal/widget/MessagingMessage;->setIsHidingAnimated(Z)V

    .line 144
    :goto_1b
    return-void
.end method

.method public blacklist isHidingAnimated()Z
    .registers 2

    .line 132
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->isHidingAnimated()Z

    move-result v0

    return v0
.end method

.method public blacklist recycle()V
    .registers 2

    .line 151
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingMessageState;->recycle()V

    .line 152
    return-void
.end method

.method public blacklist removeMessage(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p1, "toRecycle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;>;"
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getGroup()Lcom/android/internal/widget/MessagingGroup;

    move-result-object v0

    .line 109
    .local v0, "group":Lcom/android/internal/widget/MessagingGroup;
    if-eqz v0, :cond_9

    .line 110
    invoke-virtual {v0, p0, p1}, Lcom/android/internal/widget/MessagingGroup;->removeMessage(Lcom/android/internal/widget/MessagingMessage;Ljava/util/ArrayList;)V

    .line 112
    :cond_9
    return-void
.end method

.method public blacklist sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z
    .registers 9
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 73
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 75
    .local v0, "ownMessage":Landroid/app/Notification$MessagingStyle$Message;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6e

    if-nez v0, :cond_b

    goto :goto_6e

    .line 78
    :cond_b
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 79
    return v2

    .line 81
    :cond_1a
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 82
    return v2

    .line 84
    :cond_29
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v3

    .line 85
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->isRemoteInputHistory()Z

    move-result v4

    if-eq v3, v4, :cond_35

    move v3, v1

    goto :goto_36

    :cond_35
    move v3, v2

    .line 90
    .local v3, "hasRemoteInputHistoryChanged":Z
    :goto_36
    if-nez v3, :cond_4f

    .line 91
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 92
    return v2

    .line 94
    :cond_4f
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getDataMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 95
    return v2

    .line 97
    :cond_5e
    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 98
    return v2

    .line 100
    :cond_6d
    return v1

    .line 76
    .end local v3    # "hasRemoteInputHistoryChanged":Z
    :cond_6e
    :goto_6e
    if-ne p1, v0, :cond_71

    goto :goto_72

    :cond_71
    move v1, v2

    :goto_72
    return v1
.end method

.method public blacklist sameAs(Lcom/android/internal/widget/MessagingMessage;)Z
    .registers 3
    .param p1, "message"    # Lcom/android/internal/widget/MessagingMessage;

    .line 104
    invoke-interface {p1}, Lcom/android/internal/widget/MessagingMessage;->getMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/internal/widget/MessagingMessage;->sameAs(Landroid/app/Notification$MessagingStyle$Message;)Z

    move-result v0

    return v0
.end method

.method public blacklist setColor(I)V
    .registers 2
    .param p1, "textColor"    # I

    .line 158
    return-void
.end method

.method public blacklist setIsHidingAnimated(Z)V
    .registers 3
    .param p1, "isHiding"    # Z

    .line 127
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setIsHidingAnimated(Z)V

    .line 128
    return-void
.end method

.method public blacklist setIsHistoric(Z)V
    .registers 3
    .param p1, "isHistoric"    # Z

    .line 119
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setIsHistoric(Z)V

    .line 120
    return-void
.end method

.method public blacklist setMessage(Landroid/app/Notification$MessagingStyle$Message;Z)Z
    .registers 4
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;
    .param p2, "usePrecomputedText"    # Z

    .line 64
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setMessage(Landroid/app/Notification$MessagingStyle$Message;)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setMessagingGroup(Lcom/android/internal/widget/MessagingGroup;)V
    .registers 3
    .param p1, "group"    # Lcom/android/internal/widget/MessagingGroup;

    .line 115
    invoke-interface {p0}, Lcom/android/internal/widget/MessagingMessage;->getState()Lcom/android/internal/widget/MessagingMessageState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingMessageState;->setGroup(Lcom/android/internal/widget/MessagingGroup;)V

    .line 116
    return-void
.end method

.method public abstract blacklist setVisibility(I)V
.end method
