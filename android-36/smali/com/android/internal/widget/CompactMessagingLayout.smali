.class public Lcom/android/internal/widget/CompactMessagingLayout;
.super Landroid/widget/FrameLayout;
.source "CompactMessagingLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mConversationFacePileViewStub:Landroid/view/ViewStub;

.field private blacklist mFacePileAvatarSize:I

.field private blacklist mFacePileProtectionWidth:I

.field private blacklist mFacePileSize:I

.field private blacklist mLayoutColor:I

.field private blacklist mNotificationBackgroundColor:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;


# direct methods
.method public static synthetic blacklist $r8$lambda$c_PWNd-0DX0Mo4ChxVLIqlcqs0A(Lcom/android/internal/widget/CompactMessagingLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/CompactMessagingLayout;->lambda$setGroupFacePileAsync$0(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 68
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 73
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 78
    return-void
.end method

.method private static blacklist getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "person"    # Landroid/app/Person;

    .line 254
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_13

    :cond_4
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0
.end method

.method private blacklist getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;
    .registers 7
    .param p1, "sender"    # Landroid/app/Person;
    .param p2, "uniqueNames"    # Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;
    .param p3, "layoutColor"    # I

    .line 203
    const-string v0, ""

    if-nez p1, :cond_b

    .line 204
    iget-object v1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v1, v0, v0, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 208
    :cond_b
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 209
    invoke-virtual {p1}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 212
    :cond_16
    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 213
    .local v1, "senderName":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 214
    if-eqz p2, :cond_26

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;->getPrefix(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "symbol":Ljava/lang/String;
    :cond_26
    iget-object v2, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v2, v1, v0, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2

    .line 218
    .end local v0    # "symbol":Ljava/lang/String;
    :cond_2d
    iget-object v2, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {v2, v0, v0, p3}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist groupMessages(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;>;"
        }
    .end annotation

    .line 229
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    .local p1, "historicMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 231
    :cond_11
    const/4 v0, 0x0

    .line 232
    .local v0, "currentGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$MessagingStyle$Message;>;"
    const/4 v1, 0x0

    .line 233
    .local v1, "currentSenderKey":Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 236
    .local v3, "histSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_5b

    .line 237
    if-ge v4, v3, :cond_2d

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$MessagingStyle$Message;

    goto :goto_35

    .line 238
    :cond_2d
    sub-int v5, v4, v3

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$MessagingStyle$Message;

    :goto_35
    nop

    .line 239
    .local v5, "message":Landroid/app/Notification$MessagingStyle$Message;
    if-nez v5, :cond_39

    goto :goto_58

    .line 241
    :cond_39
    invoke-virtual {v5}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/CompactMessagingLayout;->getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 242
    .local v6, "senderKey":Ljava/lang/CharSequence;
    if-eqz v0, :cond_48

    if-eq v6, v1, :cond_46

    goto :goto_48

    :cond_46
    const/4 v7, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    const/4 v7, 0x1

    .line 243
    .local v7, "isNewGroup":Z
    :goto_49
    if-eqz v7, :cond_55

    .line 244
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    .line 245
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    move-object v1, v6

    .line 248
    :cond_55
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v5    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v6    # "senderKey":Ljava/lang/CharSequence;
    .end local v7    # "isNewGroup":Z
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 250
    .end local v4    # "i":I
    :cond_5b
    return-object v2
.end method

.method private synthetic blacklist lambda$setGroupFacePileAsync$0(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "secondLastIconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "lastIconDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mConversationFacePileViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "conversationFacePile":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    const v1, 0x10202ad

    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 184
    .local v1, "facePileBottomBg":Landroid/widget/ImageView;
    const v2, 0x10202ae

    invoke-virtual {v0, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 186
    .local v2, "facePileTop":Landroid/widget/ImageView;
    const v3, 0x10202ac

    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 189
    .local v3, "facePileBottom":Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget v4, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mNotificationBackgroundColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 192
    iget v4, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileSize:I

    invoke-static {v0, v4}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    .line 193
    iget v4, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    invoke-static {v3, v4}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    .line 194
    iget v4, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    invoke-static {v2, v4}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    .line 195
    iget v4, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    iget v5, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileProtectionWidth:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Lcom/android/internal/widget/CompactMessagingLayout;->setSize(Landroid/view/View;I)V

    .line 196
    return-void
.end method

.method private static blacklist setSize(Landroid/view/View;I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "size"    # I

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 259
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 260
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 261
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    return-void
.end method


# virtual methods
.method protected whitelist onFinishInflate()V
    .registers 3

    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 84
    const v0, 0x10202ab

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CompactMessagingLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mConversationFacePileViewStub:Landroid/view/ViewStub;

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    const v1, 0x1050132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileSize:I

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x1050130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileAvatarSize:I

    .line 89
    invoke-virtual {p0}, Lcom/android/internal/widget/CompactMessagingLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mFacePileProtectionWidth:I

    .line 91
    return-void
.end method

.method public blacklist setGroupFacePile(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setGroupFacePileAsync"
    .end annotation

    .line 101
    return-void
.end method

.method public blacklist setGroupFacePileAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .registers 22
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "android.messages"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 131
    .local v2, "messages":[Landroid/os/Parcelable;
    nop

    .line 132
    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v3

    .line 133
    .local v3, "newMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    nop

    .line 134
    const-string v4, "android.messages.historic"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 135
    .local v4, "histMessages":[Landroid/os/Parcelable;
    nop

    .line 136
    invoke-static {v4}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v5

    .line 137
    .local v5, "newHistoricMessages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    const-string v6, "android.messagingUser"

    const-class v7, Landroid/app/Person;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    .line 139
    .local v6, "user":Landroid/app/Person;
    invoke-static {v3, v5}, Lcom/android/internal/widget/CompactMessagingLayout;->groupMessages(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 141
    .local v7, "groups":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;>;"
    iget-object v8, v0, Lcom/android/internal/widget/CompactMessagingLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 142
    invoke-virtual {v8, v7}, Lcom/android/internal/widget/PeopleHelper;->mapUniqueNamesToPrefixWithGroupList(Ljava/util/List;)Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;

    move-result-object v8

    .line 143
    .local v8, "nameToPrefixMap":Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;
    iget v9, v0, Lcom/android/internal/widget/CompactMessagingLayout;->mLayoutColor:I

    .line 145
    .local v9, "layoutColor":I
    const/4 v10, 0x0

    .line 146
    .local v10, "secondLastIcon":Landroid/graphics/drawable/Icon;
    const/4 v11, 0x0

    .line 147
    .local v11, "lastIcon":Landroid/graphics/drawable/Icon;
    const/4 v12, 0x0

    .line 148
    .local v12, "lastKey":Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/android/internal/widget/CompactMessagingLayout;->getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 149
    .local v13, "userKey":Ljava/lang/CharSequence;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    .local v14, "i":I
    :goto_3e
    if-ltz v14, :cond_94

    .line 150
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/Notification$MessagingStyle$Message;

    .line 152
    .local v15, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v15}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v16

    if-eqz v16, :cond_5a

    invoke-virtual {v15}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v16

    goto :goto_5c

    :cond_5a
    move-object/from16 v16, v6

    :goto_5c
    move-object/from16 v17, v16

    .line 153
    .local v17, "sender":Landroid/app/Person;
    invoke-static/range {v17 .. v17}, Lcom/android/internal/widget/CompactMessagingLayout;->getPersonKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 154
    .local v1, "senderKey":Ljava/lang/CharSequence;
    if-eq v1, v13, :cond_67

    const/16 v18, 0x1

    goto :goto_69

    :cond_67
    const/16 v18, 0x0

    .line 155
    .local v18, "notUser":Z
    :goto_69
    if-eq v1, v12, :cond_6e

    const/16 v16, 0x1

    goto :goto_70

    :cond_6e
    const/16 v16, 0x0

    .line 157
    .local v16, "notIncluded":Z
    :goto_70
    if-eqz v18, :cond_74

    if-nez v16, :cond_78

    :cond_74
    if-nez v14, :cond_8a

    if-nez v12, :cond_8a

    .line 158
    :cond_78
    move-object/from16 v19, v1

    move-object/from16 v1, v17

    .end local v17    # "sender":Landroid/app/Person;
    .local v1, "sender":Landroid/app/Person;
    .local v19, "senderKey":Ljava/lang/CharSequence;
    invoke-direct {v0, v1, v8, v9}, Lcom/android/internal/widget/CompactMessagingLayout;->getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;

    move-result-object v17

    .line 159
    .local v17, "icon":Landroid/graphics/drawable/Icon;
    if-nez v11, :cond_87

    .line 160
    move-object/from16 v11, v17

    .line 161
    move-object/from16 v12, v19

    goto :goto_8e

    .line 163
    :cond_87
    move-object/from16 v10, v17

    .line 164
    goto :goto_94

    .line 157
    .end local v19    # "senderKey":Ljava/lang/CharSequence;
    .local v1, "senderKey":Ljava/lang/CharSequence;
    .local v17, "sender":Landroid/app/Person;
    :cond_8a
    move-object/from16 v19, v1

    move-object/from16 v1, v17

    .line 149
    .end local v1    # "senderKey":Ljava/lang/CharSequence;
    .end local v15    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v16    # "notIncluded":Z
    .end local v17    # "sender":Landroid/app/Person;
    .end local v18    # "notUser":Z
    :goto_8e
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v1, p1

    const/4 v15, 0x1

    goto :goto_3e

    .line 169
    .end local v14    # "i":I
    :cond_94
    :goto_94
    const/4 v1, 0x0

    if-nez v11, :cond_9b

    .line 170
    invoke-direct {v0, v1, v1, v9}, Lcom/android/internal/widget/CompactMessagingLayout;->getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;

    move-result-object v11

    .line 173
    :cond_9b
    if-nez v10, :cond_a1

    .line 174
    invoke-direct {v0, v1, v1, v9}, Lcom/android/internal/widget/CompactMessagingLayout;->getSenderIcon(Landroid/app/Person;Lcom/android/internal/widget/PeopleHelper$NameToPrefixMap;I)Landroid/graphics/drawable/Icon;

    move-result-object v10

    .line 176
    :cond_a1
    invoke-virtual {v0}, Lcom/android/internal/widget/CompactMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 177
    .local v1, "secondLastIconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lcom/android/internal/widget/CompactMessagingLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 178
    .local v14, "lastIconDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v15, Lcom/android/internal/widget/CompactMessagingLayout$$ExternalSyntheticLambda0;

    invoke-direct {v15, v0, v1, v14}, Lcom/android/internal/widget/CompactMessagingLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CompactMessagingLayout;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v15
.end method

.method public blacklist setLayoutColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    .line 114
    iput p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mLayoutColor:I

    .line 115
    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .registers 3
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 108
    iput p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mLayoutColor:I

    .line 109
    sget-object v0, Lcom/android/internal/widget/NotificationRunnables;->NOOP:Ljava/lang/Runnable;

    return-object v0
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 122
    iput p1, p0, Lcom/android/internal/widget/CompactMessagingLayout;->mNotificationBackgroundColor:I

    .line 123
    return-void
.end method
