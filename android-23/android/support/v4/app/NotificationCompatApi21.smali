.class Landroid/support/v4/app/NotificationCompatApi21;
.super Ljava/lang/Object;
.source "NotificationCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatApi21$Builder;
    }
.end annotation


# static fields
.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field private static final KEY_AUTHOR:Ljava/lang/String; = "author"

.field private static final KEY_MESSAGES:Ljava/lang/String; = "messages"

.field private static final KEY_ON_READ:Ljava/lang/String; = "on_read"

.field private static final KEY_ON_REPLY:Ljava/lang/String; = "on_reply"

.field private static final KEY_PARTICIPANTS:Ljava/lang/String; = "participants"

.field private static final KEY_REMOTE_INPUT:Ljava/lang/String; = "remote_input"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static fromCompatRemoteInput(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/app/RemoteInput;
    .locals 2
    .param p0, "src"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@0
    .prologue
    .line 206
    new-instance v0, Landroid/app/RemoteInput$Builder;

    #@2
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    #@9
    .line 207
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;

    #@c
    move-result-object v1

    #@d
    .line 206
    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    #@10
    move-result-object v0

    #@11
    .line 208
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@14
    move-result-object v1

    #@15
    .line 206
    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    #@18
    move-result-object v0

    #@19
    .line 209
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z

    #@1c
    move-result v1

    #@1d
    .line 206
    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    #@20
    move-result-object v0

    #@21
    .line 210
    invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;

    #@24
    move-result-object v1

    #@25
    .line 206
    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method static getBundleForUnreadConversation(Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;)Landroid/os/Bundle;
    .locals 10
    .param p0, "uc"    # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 129
    if-nez p0, :cond_0

    #@3
    .line 130
    return-object v6

    #@4
    .line 132
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    #@6
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    #@9
    .line 133
    .local v1, "b":Landroid/os/Bundle;
    const/4 v0, 0x0

    #@a
    .line 134
    .local v0, "author":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;

    #@d
    move-result-object v6

    #@e
    if-eqz v6, :cond_1

    #@10
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    array-length v6, v6

    #@15
    const/4 v7, 0x1

    #@16
    if-le v6, v7, :cond_1

    #@18
    .line 135
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    const/4 v7, 0x0

    #@1d
    aget-object v0, v6, v7

    #@1f
    .line 137
    .end local v0    # "author":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getMessages()[Ljava/lang/String;

    #@22
    move-result-object v6

    #@23
    array-length v6, v6

    #@24
    new-array v4, v6, [Landroid/os/Parcelable;

    #@26
    .line 138
    .local v4, "messages":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    #@27
    .local v2, "i":I
    :goto_0
    array-length v6, v4

    #@28
    if-ge v2, v6, :cond_2

    #@2a
    .line 139
    new-instance v3, Landroid/os/Bundle;

    #@2c
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    #@2f
    .line 140
    .local v3, "m":Landroid/os/Bundle;
    const-string/jumbo v6, "text"

    #@32
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getMessages()[Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    aget-object v7, v7, v2

    #@38
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@3b
    .line 141
    const-string/jumbo v6, "author"

    #@3e
    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 142
    aput-object v3, v4, v2

    #@43
    .line 138
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_0

    #@46
    .line 144
    .end local v3    # "m":Landroid/os/Bundle;
    :cond_2
    const-string/jumbo v6, "messages"

    #@49
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@4c
    .line 145
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getRemoteInput()Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@4f
    move-result-object v5

    #@50
    .line 146
    .local v5, "remoteInput":Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    if-eqz v5, :cond_3

    #@52
    .line 147
    const-string/jumbo v6, "remote_input"

    #@55
    invoke-static {v5}, Landroid/support/v4/app/NotificationCompatApi21;->fromCompatRemoteInput(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/app/RemoteInput;

    #@58
    move-result-object v7

    #@59
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@5c
    .line 149
    :cond_3
    const-string/jumbo v6, "on_reply"

    #@5f
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getReplyPendingIntent()Landroid/app/PendingIntent;

    #@62
    move-result-object v7

    #@63
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@66
    .line 150
    const-string/jumbo v6, "on_read"

    #@69
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getReadPendingIntent()Landroid/app/PendingIntent;

    #@6c
    move-result-object v7

    #@6d
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@70
    .line 151
    const-string/jumbo v6, "participants"

    #@73
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getParticipants()[Ljava/lang/String;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@7a
    .line 152
    const-string/jumbo v6, "timestamp"

    #@7d
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;->getLatestTimestamp()J

    #@80
    move-result-wide v8

    #@81
    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    #@84
    .line 153
    return-object v1
.end method

.method public static getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static getUnreadConversationFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;
    .locals 13
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "factory"    # Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 159
    if-nez p0, :cond_0

    #@3
    .line 160
    return-object v2

    #@4
    .line 162
    :cond_0
    const-string/jumbo v0, "messages"

    #@7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@a
    move-result-object v9

    #@b
    .line 163
    .local v9, "parcelableMessages":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    #@c
    .line 164
    .local v1, "messages":[Ljava/lang/String;
    if-eqz v9, :cond_2

    #@e
    .line 165
    array-length v0, v9

    #@f
    new-array v12, v0, [Ljava/lang/String;

    #@11
    .line 166
    .local v12, "tmp":[Ljava/lang/String;
    const/4 v11, 0x1

    #@12
    .line 167
    .local v11, "success":Z
    const/4 v8, 0x0

    #@13
    .local v8, "i":I
    :goto_0
    array-length v0, v12

    #@14
    if-ge v8, v0, :cond_1

    #@16
    .line 168
    aget-object v0, v9, v8

    #@18
    instance-of v0, v0, Landroid/os/Bundle;

    #@1a
    if-nez v0, :cond_4

    #@1c
    .line 169
    const/4 v11, 0x0

    #@1d
    .line 178
    :cond_1
    :goto_1
    if-eqz v11, :cond_6

    #@1f
    .line 179
    move-object v1, v12

    #@20
    .line 185
    .end local v1    # "messages":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v11    # "success":Z
    .end local v12    # "tmp":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "on_read"

    #@23
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@26
    move-result-object v4

    #@27
    check-cast v4, Landroid/app/PendingIntent;

    #@29
    .line 186
    .local v4, "onRead":Landroid/app/PendingIntent;
    const-string/jumbo v0, "on_reply"

    #@2c
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/app/PendingIntent;

    #@32
    .line 188
    .local v3, "onReply":Landroid/app/PendingIntent;
    const-string/jumbo v0, "remote_input"

    #@35
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@38
    move-result-object v10

    #@39
    check-cast v10, Landroid/app/RemoteInput;

    #@3b
    .line 190
    .local v10, "remoteInput":Landroid/app/RemoteInput;
    const-string/jumbo v0, "participants"

    #@3e
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@41
    move-result-object v5

    #@42
    .line 191
    .local v5, "participants":[Ljava/lang/String;
    if-eqz v5, :cond_3

    #@44
    array-length v0, v5

    #@45
    const/4 v6, 0x1

    #@46
    if-eq v0, v6, :cond_7

    #@48
    .line 192
    :cond_3
    return-object v2

    #@49
    .line 172
    .end local v3    # "onReply":Landroid/app/PendingIntent;
    .end local v4    # "onRead":Landroid/app/PendingIntent;
    .end local v5    # "participants":[Ljava/lang/String;
    .end local v10    # "remoteInput":Landroid/app/RemoteInput;
    .restart local v1    # "messages":[Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v11    # "success":Z
    .restart local v12    # "tmp":[Ljava/lang/String;
    :cond_4
    aget-object v0, v9, v8

    #@4b
    check-cast v0, Landroid/os/Bundle;

    #@4d
    const-string/jumbo v6, "text"

    #@50
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    aput-object v0, v12, v8

    #@56
    .line 173
    aget-object v0, v12, v8

    #@58
    if-nez v0, :cond_5

    #@5a
    .line 174
    const/4 v11, 0x0

    #@5b
    .line 175
    goto :goto_1

    #@5c
    .line 167
    :cond_5
    add-int/lit8 v8, v8, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 181
    :cond_6
    return-object v2

    #@60
    .line 198
    .end local v1    # "messages":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v11    # "success":Z
    .end local v12    # "tmp":[Ljava/lang/String;
    .restart local v3    # "onReply":Landroid/app/PendingIntent;
    .restart local v4    # "onRead":Landroid/app/PendingIntent;
    .restart local v5    # "participants":[Ljava/lang/String;
    .restart local v10    # "remoteInput":Landroid/app/RemoteInput;
    :cond_7
    if-eqz v10, :cond_8

    #@62
    invoke-static {v10, p2}, Landroid/support/v4/app/NotificationCompatApi21;->toCompatRemoteInput(Landroid/app/RemoteInput;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@65
    move-result-object v2

    #@66
    .line 201
    :cond_8
    const-string/jumbo v0, "timestamp"

    #@69
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    #@6c
    move-result-wide v6

    #@6d
    move-object v0, p1

    #@6e
    .line 196
    invoke-interface/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;->build([Ljava/lang/String;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;

    #@71
    move-result-object v0

    #@72
    return-object v0
.end method

.method private static toCompatRemoteInput(Landroid/app/RemoteInput;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .locals 6
    .param p0, "remoteInput"    # Landroid/app/RemoteInput;
    .param p1, "factory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    #@0
    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 218
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    #@7
    move-result-object v2

    #@8
    .line 219
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    #@b
    move-result-object v3

    #@c
    .line 220
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    #@f
    move-result v4

    #@10
    .line 221
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    #@13
    move-result-object v5

    #@14
    move-object v0, p1

    #@15
    .line 217
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method
