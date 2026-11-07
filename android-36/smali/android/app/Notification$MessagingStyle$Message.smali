.class public final Landroid/app/Notification$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification$MessagingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Message"
.end annotation


# static fields
.field static final greylist-max-o KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final greylist-max-o KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final greylist-max-o KEY_EXTRAS_BUNDLE:Ljava/lang/String; = "extras"

.field static final greylist-max-o KEY_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "remote_input_history"

.field static final greylist-max-o KEY_SENDER:Ljava/lang/String; = "sender"

.field static final greylist-max-o KEY_SENDER_PERSON:Ljava/lang/String; = "sender_person"

.field public static final greylist-max-o KEY_TEXT:Ljava/lang/String; = "text"

.field static final greylist-max-o KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private greylist-max-o mDataMimeType:Ljava/lang/String;

.field private greylist-max-o mDataUri:Landroid/net/Uri;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mRemoteInputHistory:Z

.field private final greylist-max-o mSender:Landroid/app/Person;

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private final greylist-max-o mTimestamp:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V
    .registers 11
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Landroid/app/Person;

    .line 10002
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "timestamp":J
    .end local p4    # "sender":Landroid/app/Person;
    .local v1, "text":Ljava/lang/CharSequence;
    .local v2, "timestamp":J
    .local v4, "sender":Landroid/app/Person;
    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    .line 10003
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Landroid/app/Person;
    .param p5, "remoteInputHistory"    # Z

    .line 10024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9965
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    .line 10025
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    .line 10026
    iput-wide p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    .line 10027
    iput-object p4, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    .line 10028
    iput-boolean p5, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    .line 10029
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    .line 9982
    if-nez p4, :cond_4

    const/4 v0, 0x0

    goto :goto_11

    .line 9983
    :cond_4
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    .line 9982
    :goto_11
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    .line 9984
    return-void
.end method

.method public static greylist-max-o getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;
    .registers 13
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 10254
    const-string/jumbo v0, "uri"

    const-string v1, "extras"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "time"

    const-string/jumbo v4, "text"

    const/4 v5, 0x0

    :try_start_f
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_85

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto :goto_85

    .line 10258
    :cond_1c
    const-string/jumbo v6, "sender_person"

    const-class v7, Landroid/app/Person;

    invoke-virtual {p0, v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    .line 10259
    .local v6, "senderPerson":Landroid/app/Person;
    if-nez v6, :cond_42

    .line 10263
    const-string/jumbo v7, "sender"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 10264
    .local v7, "senderName":Ljava/lang/CharSequence;
    if-eqz v7, :cond_42

    .line 10265
    new-instance v8, Landroid/app/Person$Builder;

    invoke-direct {v8}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v8, v7}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v8

    move-object v6, v8

    move-object v10, v6

    goto :goto_43

    .line 10268
    .end local v7    # "senderName":Ljava/lang/CharSequence;
    :cond_42
    move-object v10, v6

    .end local v6    # "senderPerson":Landroid/app/Person;
    .local v10, "senderPerson":Landroid/app/Person;
    :goto_43
    new-instance v6, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 10269
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string/jumbo v3, "remote_input_history"

    .line 10271
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-direct/range {v6 .. v11}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;Z)V

    .line 10272
    .local v6, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 10273
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 10274
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/net/Uri;

    .line 10275
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 10274
    invoke-virtual {v6, v2, v0}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;

    .line 10277
    :cond_73
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 10278
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_84
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_84} :catch_86

    .line 10280
    :cond_84
    return-object v6

    .line 10255
    .end local v6    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v10    # "senderPerson":Landroid/app/Person;
    :cond_85
    :goto_85
    return-object v5

    .line 10282
    :catch_86
    move-exception v0

    .line 10283
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v5
.end method

.method public static whitelist getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .registers 4
    .param p0, "bundles"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 10230
    if-nez p0, :cond_8

    .line 10231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 10233
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10234
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_28

    .line 10235
    aget-object v2, p0, v1

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_25

    .line 10236
    aget-object v2, p0, v1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v2

    .line 10237
    .local v2, "message":Landroid/app/Notification$MessagingStyle$Message;
    if-eqz v2, :cond_25

    .line 10238
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10234
    .end local v2    # "message":Landroid/app/Notification$MessagingStyle$Message;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 10242
    .end local v1    # "i":I
    :cond_28
    return-object v0
.end method

.method private blacklist stripNonStyleSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 10079
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_56

    .line 10080
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 10081
    .local v0, "ss":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 10082
    .local v1, "spans":[Ljava/lang/Object;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 10083
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    array-length v4, v1

    :goto_1c
    if-ge v3, v4, :cond_55

    aget-object v5, v1, v3

    .line 10085
    .local v5, "span":Ljava/lang/Object;
    instance-of v6, v5, Landroid/text/style/StyleSpan;

    if-nez v6, :cond_42

    instance-of v6, v5, Landroid/text/style/StrikethroughSpan;

    if-nez v6, :cond_42

    instance-of v6, v5, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_2d

    goto :goto_42

    .line 10089
    :cond_2d
    instance-of v6, v5, Landroid/text/style/TextAppearanceSpan;

    if-eqz v6, :cond_52

    .line 10090
    move-object v6, v5

    check-cast v6, Landroid/text/style/TextAppearanceSpan;

    .line 10091
    .local v6, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    .line 10093
    invoke-virtual {v6}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    invoke-direct/range {v7 .. v12}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .local v7, "resultSpan":Ljava/lang/Object;
    goto :goto_43

    .line 10088
    .end local v6    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v7    # "resultSpan":Ljava/lang/Object;
    :cond_42
    :goto_42
    move-object v7, v5

    .line 10100
    .restart local v7    # "resultSpan":Ljava/lang/Object;
    :goto_43
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 10101
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 10100
    invoke-virtual {v2, v7, v6, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10083
    .end local v5    # "span":Ljava/lang/Object;
    .end local v7    # "resultSpan":Ljava/lang/Object;
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 10103
    :cond_55
    return-object v2

    .line 10105
    .end local v0    # "ss":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_56
    return-object p1
.end method


# virtual methods
.method public blacklist ensureColorContrast(I)V
    .registers 3
    .param p1, "backgroundColor"    # I

    .line 10114
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Lcom/android/internal/util/ContrastColorUtil;->ensureColorSpanContrast(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    .line 10115
    return-void
.end method

.method public blacklist ensureColorContrastOrStripStyling(I)V
    .registers 3
    .param p1, "backgroundColor"    # I

    .line 10070
    invoke-static {}, Landroid/app/Flags;->cleanUpSpansAndNewLines()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10071
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle$Message;->stripNonStyleSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    goto :goto_12

    .line 10073
    :cond_f
    invoke-virtual {p0, p1}, Landroid/app/Notification$MessagingStyle$Message;->ensureColorContrast(I)V

    .line 10075
    :goto_12
    return-void
.end method

.method public whitelist getDataMimeType()Ljava/lang/String;
    .registers 2

    .line 10160
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDataUri()Landroid/net/Uri;
    .registers 2

    .line 10168
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 10136
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getSender()Ljava/lang/CharSequence;
    .registers 2

    .line 10145
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_c
    return-object v0
.end method

.method public whitelist getSenderPerson()Landroid/app/Person;
    .registers 2

    .line 10153
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 10122
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 10129
    iget-wide v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    return-wide v0
.end method

.method public greylist-max-o isRemoteInputHistory()Z
    .registers 2

    .line 10177
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    return v0
.end method

.method public whitelist setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;
    .registers 3
    .param p1, "dataMimeType"    # Ljava/lang/String;
    .param p2, "dataUri"    # Landroid/net/Uri;

    .line 10060
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    .line 10061
    iput-object p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    .line 10062
    return-object p0
.end method

.method public greylist-max-o toBundle()Landroid/os/Bundle;
    .registers 5

    .line 10187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10188
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_11

    .line 10189
    const-string/jumbo v1, "text"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10191
    :cond_11
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 10192
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    if-eqz v1, :cond_35

    .line 10194
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "sender"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10195
    const-string/jumbo v1, "sender_person"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10197
    :cond_35
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 10198
    const-string/jumbo v1, "type"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10200
    :cond_41
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v1, :cond_4d

    .line 10201
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10203
    :cond_4d
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_58

    .line 10204
    const-string v1, "extras"

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10206
    :cond_58
    iget-boolean v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    if-eqz v1, :cond_64

    .line 10207
    const-string/jumbo v1, "remote_input_history"

    iget-boolean v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mRemoteInputHistory:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10209
    :cond_64
    return-object v0
.end method

.method public blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 10218
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 10219
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    if-eqz v0, :cond_10

    .line 10220
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Landroid/app/Person;

    invoke-virtual {v0, p1}, Landroid/app/Person;->visitUris(Ljava/util/function/Consumer;)V

    .line 10222
    :cond_10
    return-void
.end method
