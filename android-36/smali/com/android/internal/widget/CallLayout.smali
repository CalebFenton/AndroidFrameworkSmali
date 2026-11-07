.class public Lcom/android/internal/widget/CallLayout;
.super Landroid/widget/FrameLayout;
.source "CallLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private blacklist mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mConversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mIcon:Lcom/android/internal/widget/CachingIconView;

.field private blacklist mLargeIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mLayoutColor:I

.field private final blacklist mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

.field private blacklist mUser:Landroid/app/Person;


# direct methods
.method public static synthetic blacklist $r8$lambda$-wwf7N-wL4IzjC0LWlDfo_Val0A(Lcom/android/internal/widget/CallLayout;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->lambda$setDataAsync$5(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EasLOVn_n2ubkh5YJufKWDNP7q0(Lcom/android/internal/widget/CallLayout;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->lambda$setLayoutColorAsync$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Iz5Rus-oguxo3HeNGvlDtDq1mes(Lcom/android/internal/widget/CallLayout;Landroid/graphics/drawable/Icon;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->lambda$setLargeIconAsync$3(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$d3TAshWO8tXuEgYiPT2vQHCamoU(Lcom/android/internal/widget/CallLayout;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->lambda$onFinishInflate$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

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

    .line 42
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

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

    .line 42
    new-instance v0, Lcom/android/internal/widget/PeopleHelper;

    invoke-direct {v0}, Lcom/android/internal/widget/PeopleHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    .line 78
    return-void
.end method

.method private blacklist getConversationIcon()Landroid/graphics/drawable/Icon;
    .registers 6

    .line 96
    const-string v0, ""

    .line 97
    .local v0, "callerName":Ljava/lang/CharSequence;
    const-string v1, ""

    .line 98
    .local v1, "symbol":Ljava/lang/String;
    const/4 v2, 0x0

    .line 99
    .local v2, "icon":Landroid/graphics/drawable/Icon;
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    if-eqz v3, :cond_1d

    .line 100
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v3}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    invoke-virtual {v3}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    const-string v4, ""

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/PeopleHelper;->findNamePrefix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_1d
    if-nez v2, :cond_21

    .line 105
    iget-object v2, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 107
    :cond_21
    if-nez v2, :cond_2b

    .line 108
    iget-object v3, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget v4, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/internal/widget/PeopleHelper;->createAvatarSymbol(Ljava/lang/CharSequence;Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 110
    :cond_2b
    return-object v2
.end method

.method private blacklist getPerson(Landroid/os/Bundle;)Landroid/app/Person;
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 184
    const-string v0, "android.callPerson"

    const-class v1, Landroid/app/Person;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    return-object v0
.end method

.method private synthetic blacklist lambda$onFinishInflate$0(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "forceHidden"    # Ljava/lang/Boolean;

    .line 90
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    iget-object v1, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/PeopleHelper;->animateViewForceHidden(Lcom/android/internal/widget/CachingIconView;Z)V

    .line 91
    return-void
.end method

.method private synthetic blacklist lambda$setDataAsync$5(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CallLayout;->setData(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$setLargeIconAsync$3(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CallLayout;->setLargeIcon(Landroid/graphics/drawable/Icon;)V

    return-void
.end method

.method static synthetic blacklist lambda$setLargeIconAsync$4()V
    .registers 0

    .line 147
    return-void
.end method

.method private synthetic blacklist lambda$setLayoutColorAsync$1(I)V
    .registers 2
    .param p1, "color"    # I

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/CallLayout;->setLayoutColor(I)V

    return-void
.end method

.method static synthetic blacklist lambda$setLayoutColorAsync$2()V
    .registers 0

    .line 122
    return-void
.end method

.method private blacklist setUser(Landroid/app/Person;)V
    .registers 2
    .param p1, "user"    # Landroid/app/Person;

    .line 188
    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mUser:Landroid/app/Person;

    .line 189
    return-void
.end method


# virtual methods
.method protected whitelist onFinishInflate()V
    .registers 3

    .line 82
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mPeopleHelper:Lcom/android/internal/widget/PeopleHelper;

    invoke-virtual {p0}, Lcom/android/internal/widget/CallLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PeopleHelper;->init(Landroid/content/Context;)V

    .line 84
    const v0, 0x10202b0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    .line 85
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    .line 86
    const v0, 0x10202b2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/CallLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mIcon:Lcom/android/internal/widget/CachingIconView;

    new-instance v1, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/CallLayout;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setOnForceHiddenChangedListener(Ljava/util/function/Consumer;)V

    .line 92
    return-void
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setDataAsync"
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->getPerson(Landroid/os/Bundle;)Landroid/app/Person;

    move-result-object v0

    .line 161
    .local v0, "person":Landroid/app/Person;
    invoke-direct {p0, v0}, Lcom/android/internal/widget/CallLayout;->setUser(Landroid/app/Person;)V

    .line 163
    invoke-direct {p0}, Lcom/android/internal/widget/CallLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 164
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    iget-object v2, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/CachingIconView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 165
    return-void
.end method

.method public blacklist setDataAsync(Landroid/os/Bundle;)Ljava/lang/Runnable;
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 171
    invoke-static {}, Landroid/widget/flags/Flags;->callStyleSetDataAsync()Z

    move-result v0

    if-nez v0, :cond_c

    .line 172
    new-instance v0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/CallLayout;Landroid/os/Bundle;)V

    return-object v0

    .line 175
    :cond_c
    invoke-direct {p0, p1}, Lcom/android/internal/widget/CallLayout;->getPerson(Landroid/os/Bundle;)Landroid/app/Person;

    move-result-object v0

    .line 176
    .local v0, "person":Landroid/app/Person;
    invoke-direct {p0, v0}, Lcom/android/internal/widget/CallLayout;->setUser(Landroid/app/Person;)V

    .line 178
    invoke-direct {p0}, Lcom/android/internal/widget/CallLayout;->getConversationIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 179
    .local v1, "conversationIcon":Landroid/graphics/drawable/Icon;
    iget-object v2, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconView:Lcom/android/internal/widget/CachingIconView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/CachingIconView;->setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;

    move-result-object v2

    return-object v2
.end method

.method public blacklist setLargeIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLargeIconAsync"
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 153
    return-void
.end method

.method public blacklist setLargeIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 3
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;

    .line 142
    invoke-static {}, Landroid/widget/flags/Flags;->callStyleSetDataAsync()Z

    move-result v0

    if-nez v0, :cond_c

    .line 143
    new-instance v0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/CallLayout;Landroid/graphics/drawable/Icon;)V

    return-object v0

    .line 146
    :cond_c
    iput-object p1, p0, Lcom/android/internal/widget/CallLayout;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 147
    new-instance v0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda5;-><init>()V

    return-object v0
.end method

.method public blacklist setLayoutColor(I)V
    .registers 2
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setLayoutColorAsync"
    .end annotation

    .line 127
    iput p1, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    .line 128
    return-void
.end method

.method public blacklist setLayoutColorAsync(I)Ljava/lang/Runnable;
    .registers 3
    .param p1, "color"    # I

    .line 117
    invoke-static {}, Landroid/widget/flags/Flags;->callStyleSetDataAsync()Z

    move-result v0

    if-nez v0, :cond_c

    .line 118
    new-instance v0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/CallLayout;I)V

    return-object v0

    .line 121
    :cond_c
    iput p1, p0, Lcom/android/internal/widget/CallLayout;->mLayoutColor:I

    .line 122
    new-instance v0, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/widget/CallLayout$$ExternalSyntheticLambda3;-><init>()V

    return-object v0
.end method

.method public blacklist setNotificationBackgroundColor(I)V
    .registers 4
    .param p1, "color"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/internal/widget/CallLayout;->mConversationIconBadgeBg:Lcom/android/internal/widget/CachingIconView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CachingIconView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 136
    return-void
.end method
