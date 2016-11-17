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
        Landroid/app/Notification$MessagingStyle$Message;
    }
.end annotation


# static fields
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field mConversationTitle:Ljava/lang/CharSequence;

.field mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field mUserDisplayName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 4476
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4474
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@a
    .line 4476
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "userDisplayName"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4485
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    #@3
    .line 4474
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@a
    .line 4486
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    #@c
    .line 4485
    return-void
.end method

.method private findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;
    .locals 4

    #@0
    .prologue
    .line 4640
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@2
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@a
    .line 4641
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@c
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    #@12
    .line 4643
    .local v1, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@15
    move-result-object v2

    #@16
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v2

    #@1a
    if-nez v2, :cond_0

    #@1c
    .line 4644
    return-object v1

    #@1d
    .line 4640
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 4647
    .end local v1    # "m":Landroid/app/Notification$MessagingStyle$Message;
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@22
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    #@25
    move-result v2

    #@26
    if-nez v2, :cond_2

    #@28
    .line 4649
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@2a
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@2c
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@2f
    move-result v3

    #@30
    add-int/lit8 v3, v3, -0x1

    #@32
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    #@38
    return-object v2

    #@39
    .line 4651
    :cond_2
    const/4 v2, 0x0

    #@3a
    return-object v2
.end method

.method private fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4578
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    #@3
    move-result-object v1

    #@4
    .line 4579
    .local v1, "m":Landroid/app/Notification$MessagingStyle$Message;
    if-nez v1, :cond_2

    #@6
    const/4 v3, 0x0

    #@7
    .line 4580
    :goto_0
    if-nez v1, :cond_3

    #@9
    const/4 v2, 0x0

    #@a
    .line 4583
    :goto_1
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_6

    #@12
    .line 4584
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v5

    #@16
    if-nez v5, :cond_5

    #@18
    .line 4585
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    #@1b
    move-result-object v0

    #@1c
    .line 4586
    .local v0, "bidi":Landroid/text/BidiFormatter;
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@1e
    invoke-static {v5}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Landroid/content/Context;

    #@21
    move-result-object v5

    #@22
    const/4 v6, 0x2

    #@23
    new-array v6, v6, [Ljava/lang/Object;

    #@25
    .line 4588
    iget-object v7, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@27
    invoke-virtual {v0, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@2a
    move-result-object v7

    #@2b
    const/4 v8, 0x0

    #@2c
    aput-object v7, v6, v8

    #@2e
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@31
    move-result-object v7

    #@32
    invoke-virtual {v0, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@35
    move-result-object v7

    #@36
    const/4 v8, 0x1

    #@37
    aput-object v7, v6, v8

    #@39
    .line 4587
    const v7, 0x10405ce

    #@3c
    .line 4586
    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 4596
    .end local v0    # "bidi":Landroid/text/BidiFormatter;
    .local v4, "title":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v4, :cond_0

    #@42
    .line 4597
    const-string/jumbo v5, "android.title"

    #@45
    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@48
    .line 4599
    :cond_0
    if-eqz v3, :cond_1

    #@4a
    .line 4600
    const-string/jumbo v5, "android.text"

    #@4d
    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@50
    .line 4577
    :cond_1
    return-void

    #@51
    .line 4579
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@54
    move-result-object v3

    #@55
    .local v3, "text":Ljava/lang/CharSequence;
    goto :goto_0

    #@56
    .line 4581
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@59
    move-result-object v5

    #@5a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5d
    move-result v5

    #@5e
    if-eqz v5, :cond_4

    #@60
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    #@62
    .local v2, "sender":Ljava/lang/CharSequence;
    goto :goto_1

    #@63
    .end local v2    # "sender":Ljava/lang/CharSequence;
    :cond_4
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@66
    move-result-object v2

    #@67
    .restart local v2    # "sender":Ljava/lang/CharSequence;
    goto :goto_1

    #@68
    .line 4590
    .end local v2    # "sender":Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@6a
    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto :goto_2

    #@6b
    .line 4593
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_6
    move-object v4, v2

    #@6c
    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto :goto_2
.end method

.method private static makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
    .locals 6
    .param p0, "color"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 4763
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    #@4
    .line 4764
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@7
    move-result-object v4

    #@8
    move v3, v2

    #@9
    move-object v5, v1

    #@a
    .line 4763
    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    #@d
    return-object v0
.end method

.method private makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "m"    # Landroid/app/Notification$MessagingStyle$Message;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 4726
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    #@4
    move-result-object v0

    #@5
    .line 4727
    .local v0, "bidi":Landroid/text/BidiFormatter;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    #@7
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@a
    .line 4728
    .local v2, "sb":Landroid/text/SpannableStringBuilder;
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@d
    move-result-object v4

    #@e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_1

    #@14
    .line 4729
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    #@16
    if-nez v4, :cond_0

    #@18
    const-string/jumbo v1, ""

    #@1b
    .line 4730
    .local v1, "replyName":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1e
    move-result-object v4

    #@1f
    .line 4731
    iget-object v5, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@21
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    #@24
    move-result v5

    #@25
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    #@28
    move-result-object v5

    #@29
    .line 4730
    invoke-virtual {v2, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    #@2c
    .line 4738
    .end local v1    # "replyName":Ljava/lang/CharSequence;
    :goto_1
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@2f
    move-result-object v4

    #@30
    if-nez v4, :cond_2

    #@32
    const-string/jumbo v3, ""

    #@35
    .line 4739
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_2
    const-string/jumbo v4, "  "

    #@38
    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v0, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3f
    move-result-object v5

    #@40
    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@43
    .line 4740
    return-object v2

    #@44
    .line 4729
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    #@46
    goto :goto_0

    #@47
    .line 4734
    :cond_1
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@4e
    move-result-object v4

    #@4f
    .line 4735
    const/high16 v5, -0x1000000

    #@51
    invoke-static {v5}, Landroid/app/Notification$MessagingStyle;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;

    #@54
    move-result-object v5

    #@55
    .line 4734
    invoke-virtual {v2, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    #@58
    goto :goto_1

    #@59
    .line 4738
    :cond_2
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@5c
    move-result-object v3

    #@5d
    .restart local v3    # "text":Ljava/lang/CharSequence;
    goto :goto_2
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4563
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    #@3
    .line 4564
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 4565
    const-string/jumbo v0, "android.selfDisplayName"

    #@a
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    #@c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@f
    .line 4567
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 4568
    const-string/jumbo v0, "android.conversationTitle"

    #@16
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@1b
    .line 4570
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@1d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@20
    move-result v0

    #@21
    if-nez v0, :cond_2

    #@23
    const-string/jumbo v0, "android.messages"

    #@26
    .line 4571
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@28
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    #@2b
    move-result-object v1

    #@2c
    .line 4570
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@2f
    .line 4574
    :cond_2
    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    #@32
    .line 4562
    return-void
.end method

.method public addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .locals 2
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    #@0
    .prologue
    .line 4544
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 4545
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@7
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@a
    move-result v0

    #@b
    const/16 v1, 0x19

    #@d
    if-le v0, v1, :cond_0

    #@f
    .line 4546
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@11
    const/4 v1, 0x0

    #@12
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@15
    .line 4548
    :cond_0
    return-object p0
.end method

.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4531
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@2
    new-instance v1, Landroid/app/Notification$MessagingStyle$Message;

    #@4
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V

    #@7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@a
    .line 4532
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@c
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@f
    move-result v0

    #@10
    const/16 v1, 0x19

    #@12
    if-le v0, v1, :cond_0

    #@14
    .line 4533
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@16
    const/4 v1, 0x0

    #@17
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@1a
    .line 4535
    :cond_0
    return-object p0
.end method

.method public getConversationTitle()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 4512
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4555
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getUserDisplayName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 4493
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 17

    #@0
    .prologue
    .line 4659
    invoke-static/range {p0 .. p0}, Landroid/app/Notification$Style;->-get0(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    #@3
    move-result-object v13

    #@4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v13

    #@8
    if-nez v13, :cond_0

    #@a
    .line 4660
    invoke-static/range {p0 .. p0}, Landroid/app/Notification$Style;->-get0(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    #@d
    move-result-object v12

    #@e
    .line 4662
    .local v12, "title":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@11
    move-result v13

    #@12
    if-eqz v13, :cond_1

    #@14
    const/4 v6, 0x0

    #@15
    .line 4664
    .local v6, "hasTitle":Z
    :goto_1
    move-object/from16 v0, p0

    #@17
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@19
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@1c
    move-result v13

    #@1d
    const/4 v14, 0x1

    #@1e
    if-ne v13, v14, :cond_3

    #@20
    .line 4669
    if-eqz v6, :cond_2

    #@22
    .line 4670
    move-object v1, v12

    #@23
    .line 4671
    .local v1, "bigTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@25
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@27
    const/4 v14, 0x0

    #@28
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v13

    #@2c
    check-cast v13, Landroid/app/Notification$MessagingStyle$Message;

    #@2e
    move-object/from16 v0, p0

    #@30
    invoke-direct {v0, v13}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@33
    move-result-object v11

    #@34
    .line 4676
    .local v11, "text":Ljava/lang/CharSequence;
    :goto_2
    move-object/from16 v0, p0

    #@36
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@38
    .line 4677
    move-object/from16 v0, p0

    #@3a
    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@3c
    invoke-static {v14}, Landroid/app/Notification$Builder;->-wrap9(Landroid/app/Notification$Builder;)I

    #@3f
    move-result v14

    #@40
    .line 4678
    const/4 v15, 0x0

    #@41
    const/16 v16, 0x0

    #@43
    .line 4676
    move-object/from16 v0, v16

    #@45
    invoke-static {v13, v14, v15, v1, v0}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    #@48
    move-result-object v2

    #@49
    .line 4679
    .local v2, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    #@4b
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@4d
    invoke-static {v13, v2, v11}, Landroid/app/Notification$BigTextStyle;->applyBigTextContentView(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    #@50
    .line 4680
    return-object v2

    #@51
    .line 4661
    .end local v1    # "bigTitle":Ljava/lang/CharSequence;
    .end local v2    # "contentView":Landroid/widget/RemoteViews;
    .end local v6    # "hasTitle":Z
    .end local v11    # "text":Ljava/lang/CharSequence;
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_0
    move-object/from16 v0, p0

    #@53
    iget-object v12, v0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@55
    goto :goto_0

    #@56
    .line 4662
    .restart local v12    # "title":Ljava/lang/CharSequence;
    :cond_1
    const/4 v6, 0x1

    #@57
    .restart local v6    # "hasTitle":Z
    goto :goto_1

    #@58
    .line 4673
    :cond_2
    move-object/from16 v0, p0

    #@5a
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@5c
    const/4 v14, 0x0

    #@5d
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v13

    #@61
    check-cast v13, Landroid/app/Notification$MessagingStyle$Message;

    #@63
    invoke-static {v13}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@66
    move-result-object v1

    #@67
    .line 4674
    .restart local v1    # "bigTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@69
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@6b
    const/4 v14, 0x0

    #@6c
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6f
    move-result-object v13

    #@70
    check-cast v13, Landroid/app/Notification$MessagingStyle$Message;

    #@72
    invoke-static {v13}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@75
    move-result-object v11

    #@76
    .restart local v11    # "text":Ljava/lang/CharSequence;
    goto :goto_2

    #@77
    .line 4683
    .end local v1    # "bigTitle":Ljava/lang/CharSequence;
    .end local v11    # "text":Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    #@79
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@7b
    .line 4684
    move-object/from16 v0, p0

    #@7d
    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@7f
    invoke-static {v14}, Landroid/app/Notification$Builder;->-wrap11(Landroid/app/Notification$Builder;)I

    #@82
    move-result v14

    #@83
    .line 4685
    const/4 v15, 0x0

    #@84
    .line 4687
    const/16 v16, 0x0

    #@86
    .line 4683
    move-object/from16 v0, v16

    #@88
    invoke-static {v13, v14, v15, v12, v0}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    #@8b
    move-result-object v2

    #@8c
    .line 4689
    .restart local v2    # "contentView":Landroid/widget/RemoteViews;
    const/4 v13, 0x7

    #@8d
    new-array v10, v13, [I

    #@8f
    .local v10, "rowIds":[I
    fill-array-data v10, :array_0

    #@92
    .line 4693
    const/4 v13, 0x0

    #@93
    array-length v14, v10

    #@94
    :goto_3
    if-ge v13, v14, :cond_4

    #@96
    aget v9, v10, v13

    #@98
    .line 4694
    .local v9, "rowId":I
    const/16 v15, 0x8

    #@9a
    invoke-virtual {v2, v9, v15}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@9d
    .line 4693
    add-int/lit8 v13, v13, 0x1

    #@9f
    goto :goto_3

    #@a0
    .line 4697
    .end local v9    # "rowId":I
    :cond_4
    const/4 v7, 0x0

    #@a1
    .line 4699
    .local v7, "i":I
    if-eqz v6, :cond_6

    #@a3
    const v13, 0x105004d

    #@a6
    .line 4698
    :goto_4
    const v14, 0x10203bf

    #@a9
    invoke-virtual {v2, v14, v13}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    #@ac
    .line 4700
    const-string/jumbo v14, "setNumIndentLines"

    #@af
    .line 4701
    move-object/from16 v0, p0

    #@b1
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@b3
    invoke-static {v13}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    #@b6
    move-result-object v13

    #@b7
    invoke-static {v13}, Landroid/app/Notification;->-wrap1(Landroid/app/Notification;)Z

    #@ba
    move-result v13

    #@bb
    if-nez v13, :cond_7

    #@bd
    const/4 v13, 0x0

    #@be
    .line 4700
    :goto_5
    const v15, 0x10203be

    #@c1
    invoke-virtual {v2, v15, v14, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@c4
    .line 4703
    const/4 v3, -0x1

    #@c5
    .line 4704
    .local v3, "contractedChildId":I
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    #@c8
    move-result-object v4

    #@c9
    .line 4705
    .local v4, "contractedMessage":Landroid/app/Notification$MessagingStyle$Message;
    move-object/from16 v0, p0

    #@cb
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@cd
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@d0
    move-result v13

    #@d1
    array-length v14, v10

    #@d2
    sub-int/2addr v13, v14

    #@d3
    const/4 v14, 0x0

    #@d4
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    #@d7
    move-result v5

    #@d8
    .line 4706
    .local v5, "firstMessage":I
    :goto_6
    add-int v13, v5, v7

    #@da
    move-object/from16 v0, p0

    #@dc
    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@de
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@e1
    move-result v14

    #@e2
    if-ge v13, v14, :cond_9

    #@e4
    array-length v13, v10

    #@e5
    if-ge v7, v13, :cond_9

    #@e7
    .line 4707
    move-object/from16 v0, p0

    #@e9
    iget-object v13, v0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@eb
    add-int v14, v5, v7

    #@ed
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f0
    move-result-object v8

    #@f1
    check-cast v8, Landroid/app/Notification$MessagingStyle$Message;

    #@f3
    .line 4708
    .local v8, "m":Landroid/app/Notification$MessagingStyle$Message;
    aget v9, v10, v7

    #@f5
    .line 4710
    .restart local v9    # "rowId":I
    const/4 v13, 0x0

    #@f6
    invoke-virtual {v2, v9, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    #@f9
    .line 4711
    move-object/from16 v0, p0

    #@fb
    invoke-direct {v0, v8}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@fe
    move-result-object v13

    #@ff
    invoke-virtual {v2, v9, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    #@102
    .line 4713
    if-ne v4, v8, :cond_5

    #@104
    .line 4714
    move v3, v9

    #@105
    .line 4717
    :cond_5
    add-int/lit8 v7, v7, 0x1

    #@107
    goto :goto_6

    #@108
    .line 4699
    .end local v3    # "contractedChildId":I
    .end local v4    # "contractedMessage":Landroid/app/Notification$MessagingStyle$Message;
    .end local v5    # "firstMessage":I
    .end local v8    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v9    # "rowId":I
    :cond_6
    const/4 v13, 0x0

    #@109
    goto :goto_4

    #@10a
    .line 4701
    :cond_7
    if-eqz v6, :cond_8

    #@10c
    const/4 v13, 0x1

    #@10d
    goto :goto_5

    #@10e
    :cond_8
    const/4 v13, 0x2

    #@10f
    goto :goto_5

    #@110
    .line 4720
    .restart local v3    # "contractedChildId":I
    .restart local v4    # "contractedMessage":Landroid/app/Notification$MessagingStyle$Message;
    .restart local v5    # "firstMessage":I
    :cond_9
    const-string/jumbo v13, "setContractedChildId"

    #@113
    const v14, 0x10203be

    #@116
    invoke-virtual {v2, v14, v13, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    #@119
    .line 4722
    return-object v2

    #@11a
    .line 4689
    :array_0
    .array-data 4
        0x10203b6
        0x10203b7
        0x10203b8
        0x10203b9
        0x10203ba
        0x10203bb
        0x10203bc
    .end array-data
.end method

.method public makeContentView()Landroid/widget/RemoteViews;
    .locals 6

    #@0
    .prologue
    .line 4625
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    #@3
    move-result-object v0

    #@4
    .line 4626
    .local v0, "m":Landroid/app/Notification$MessagingStyle$Message;
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 4627
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@a
    .line 4629
    :goto_0
    if-nez v0, :cond_2

    #@c
    .line 4630
    const/4 v1, 0x0

    #@d
    .line 4633
    :goto_1
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@f
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@11
    invoke-static {v4}, Landroid/app/Notification$Builder;->-wrap6(Landroid/app/Notification$Builder;)I

    #@14
    move-result v4

    #@15
    .line 4634
    const/4 v5, 0x0

    #@16
    .line 4633
    invoke-static {v3, v4, v5, v2, v1}, Landroid/app/Notification$Builder;->-wrap4(Landroid/app/Notification$Builder;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 4628
    :cond_0
    if-nez v0, :cond_1

    #@1d
    const/4 v2, 0x0

    #@1e
    .local v2, "title":Ljava/lang/CharSequence;
    goto :goto_0

    #@1f
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    .local v2, "title":Ljava/lang/CharSequence;
    goto :goto_0

    #@24
    .line 4631
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@26
    if-eqz v3, :cond_3

    #@28
    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@2b
    move-result-object v1

    #@2c
    .local v1, "text":Ljava/lang/CharSequence;
    goto :goto_1

    #@2d
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@30
    move-result-object v1

    #@31
    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 6

    #@0
    .prologue
    .line 4748
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    #@3
    move-result-object v0

    #@4
    .line 4749
    .local v0, "m":Landroid/app/Notification$MessagingStyle$Message;
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 4750
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@a
    .line 4752
    :goto_0
    if-nez v0, :cond_2

    #@c
    .line 4753
    const/4 v1, 0x0

    #@d
    .line 4756
    :goto_1
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@f
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    #@11
    invoke-static {v4}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;)I

    #@14
    move-result v4

    #@15
    .line 4757
    const/4 v5, 0x0

    #@16
    .line 4756
    invoke-static {v3, v4, v5, v2, v1}, Landroid/app/Notification$Builder;->-wrap1(Landroid/app/Notification$Builder;IZLjava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 4751
    :cond_0
    if-nez v0, :cond_1

    #@1d
    const/4 v2, 0x0

    #@1e
    .local v2, "title":Ljava/lang/CharSequence;
    goto :goto_0

    #@1f
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get0(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@22
    move-result-object v2

    #@23
    .local v2, "title":Ljava/lang/CharSequence;
    goto :goto_0

    #@24
    .line 4754
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@26
    if-eqz v3, :cond_3

    #@28
    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessageLine(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@2b
    move-result-object v1

    #@2c
    .local v1, "text":Ljava/lang/CharSequence;
    goto :goto_1

    #@2d
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_3
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-get1(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    #@30
    move-result-object v1

    #@31
    .restart local v1    # "text":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 4609
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    #@3
    .line 4611
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    #@8
    .line 4612
    const-string/jumbo v1, "android.selfDisplayName"

    #@b
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@e
    move-result-object v1

    #@f
    iput-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;

    #@11
    .line 4613
    const-string/jumbo v1, "android.conversationTitle"

    #@14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@1a
    .line 4614
    const-string/jumbo v1, "android.messages"

    #@1d
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    #@20
    move-result-object v0

    #@21
    .line 4615
    .local v0, "parcelables":[Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    #@23
    instance-of v1, v0, [Landroid/os/Parcelable;

    #@25
    if-eqz v1, :cond_0

    #@27
    .line 4616
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    #@2a
    move-result-object v1

    #@2b
    iput-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    #@2d
    .line 4608
    :cond_0
    return-void
.end method

.method public setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .locals 0
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4503
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    #@2
    .line 4504
    return-object p0
.end method
