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
.field static final KEY_DATA_MIME_TYPE:Ljava/lang/String; = "type"

.field static final KEY_DATA_URI:Ljava/lang/String; = "uri"

.field static final KEY_SENDER:Ljava/lang/String; = "sender"

.field static final KEY_TEXT:Ljava/lang/String; = "text"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "time"


# instance fields
.field private mDataMimeType:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field private final mSender:Ljava/lang/CharSequence;

.field private final mText:Ljava/lang/CharSequence;

.field private final mTimestamp:J


# direct methods
.method static synthetic -get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4966
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    #@5
    .line 4967
    iput-wide p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    #@7
    .line 4968
    iput-object p4, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    #@9
    .line 4965
    return-void
.end method

.method static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)[",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 5060
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v3

    #@4
    new-array v1, v3, [Landroid/os/Bundle;

    #@6
    .line 5061
    .local v1, "bundles":[Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@9
    move-result v0

    #@a
    .line 5062
    .local v0, "N":I
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    #@d
    .line 5063
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    #@13
    invoke-direct {v3}, Landroid/app/Notification$MessagingStyle$Message;->toBundle()Landroid/os/Bundle;

    #@16
    move-result-object v3

    #@17
    aput-object v3, v1, v2

    #@19
    .line 5062
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 5065
    :cond_0
    return-object v1
.end method

.method static getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 5083
    :try_start_0
    const-string/jumbo v2, "text"

    #@4
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_1

    #@a
    const-string/jumbo v2, "time"

    #@d
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 5086
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    #@15
    const-string/jumbo v2, "text"

    #@18
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@1b
    move-result-object v2

    #@1c
    .line 5087
    const-string/jumbo v3, "time"

    #@1f
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    #@22
    move-result-wide v4

    #@23
    const-string/jumbo v3, "sender"

    #@26
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@29
    move-result-object v3

    #@2a
    .line 5086
    invoke-direct {v1, v2, v4, v5, v3}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    #@2d
    .line 5088
    .local v1, "message":Landroid/app/Notification$MessagingStyle$Message;
    const-string/jumbo v2, "type"

    #@30
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_0

    #@36
    .line 5089
    const-string/jumbo v2, "uri"

    #@39
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    #@3c
    move-result v2

    #@3d
    .line 5088
    if-eqz v2, :cond_0

    #@3f
    .line 5091
    const-string/jumbo v2, "type"

    #@42
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 5092
    const-string/jumbo v2, "uri"

    #@49
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Landroid/net/Uri;

    #@4f
    .line 5091
    invoke-virtual {v1, v3, v2}, Landroid/app/Notification$MessagingStyle$Message;->setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 5094
    :cond_0
    return-object v1

    #@53
    .line 5084
    .end local v1    # "message":Landroid/app/Notification$MessagingStyle$Message;
    :cond_1
    return-object v6

    #@54
    .line 5096
    :catch_0
    move-exception v0

    #@55
    .line 5097
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v6
.end method

.method static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 4
    .param p0, "bundles"    # [Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 5069
    new-instance v2, Ljava/util/ArrayList;

    #@2
    array-length v3, p0

    #@3
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 5070
    .local v2, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v3, p0

    #@8
    if-ge v0, v3, :cond_1

    #@a
    .line 5071
    aget-object v3, p0, v0

    #@c
    instance-of v3, v3, Landroid/os/Bundle;

    #@e
    if-eqz v3, :cond_0

    #@10
    .line 5072
    aget-object v3, p0, v0

    #@12
    check-cast v3, Landroid/os/Bundle;

    #@14
    invoke-static {v3}, Landroid/app/Notification$MessagingStyle$Message;->getMessageFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$MessagingStyle$Message;

    #@17
    move-result-object v1

    #@18
    .line 5073
    .local v1, "message":Landroid/app/Notification$MessagingStyle$Message;
    if-eqz v1, :cond_0

    #@1a
    .line 5074
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1d
    .line 5070
    .end local v1    # "message":Landroid/app/Notification$MessagingStyle$Message;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 5078
    :cond_1
    return-object v2
.end method

.method private toBundle()Landroid/os/Bundle;
    .locals 4

    #@0
    .prologue
    .line 5042
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 5043
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 5044
    const-string/jumbo v1, "text"

    #@c
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@11
    .line 5046
    :cond_0
    const-string/jumbo v1, "time"

    #@14
    iget-wide v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    #@16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    #@19
    .line 5047
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 5048
    const-string/jumbo v1, "sender"

    #@20
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@25
    .line 5050
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 5051
    const-string/jumbo v1, "type"

    #@2c
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    #@2e
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@31
    .line 5053
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    #@33
    if-eqz v1, :cond_3

    #@35
    .line 5054
    const-string/jumbo v1, "uri"

    #@38
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    #@3a
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    #@3d
    .line 5056
    :cond_3
    return-object v0
.end method


# virtual methods
.method public getDataMimeType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 5030
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    #@0
    .prologue
    .line 5038
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    #@2
    return-object v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 5023
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mSender:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 5009
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 5016
    iget-wide v0, p0, Landroid/app/Notification$MessagingStyle$Message;->mTimestamp:J

    #@2
    return-wide v0
.end method

.method public setData(Ljava/lang/String;Landroid/net/Uri;)Landroid/app/Notification$MessagingStyle$Message;
    .locals 0
    .param p1, "dataMimeType"    # Ljava/lang/String;
    .param p2, "dataUri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 4999
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    #@2
    .line 5000
    iput-object p2, p0, Landroid/app/Notification$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    #@4
    .line 5001
    return-object p0
.end method
