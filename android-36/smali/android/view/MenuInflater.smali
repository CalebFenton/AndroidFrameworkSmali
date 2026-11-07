.class public Landroid/view/MenuInflater;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MenuInflater$MenuState;,
        Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "MenuInflater"

.field private static final greylist-max-o NO_ID:I = 0x0

.field private static final greylist-max-o XML_GROUP:Ljava/lang/String; = "group"

.field private static final greylist-max-o XML_ITEM:Ljava/lang/String; = "item"

.field private static final greylist-max-o XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final greylist-max-o mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final greylist-max-o mActionViewConstructorArguments:[Ljava/lang/Object;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mRealOwner:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActionProviderConstructorArguments(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActionViewConstructorArguments(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRealOwner(Landroid/view/MenuInflater;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Landroid/view/MenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetACTION_PROVIDER_CONSTRUCTOR_SIGNATURE()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetACTION_VIEW_CONSTRUCTOR_SIGNATURE()[Ljava/lang/Class;
    .registers 1

    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 66
    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 82
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "realOwner"    # Ljava/lang/Object;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 95
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 97
    return-void
.end method

.method private greylist-max-o findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "owner"    # Ljava/lang/Object;

    .line 275
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_5

    .line 276
    return-object p1

    .line 278
    :cond_5
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_15

    .line 279
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 281
    :cond_15
    return-object p1
.end method

.method private greylist-max-o getRealOwner()Ljava/lang/Object;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 269
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 271
    :cond_c
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    return-object v0
.end method

.method private greylist-max-o parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 14
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/view/MenuInflater$MenuState;

    invoke-direct {v0, p0, p3}, Landroid/view/MenuInflater$MenuState;-><init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    .line 132
    .local v0, "menuState":Landroid/view/MenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 134
    .local v1, "eventType":I
    const/4 v2, 0x0

    .line 135
    .local v2, "lookingForEndOfUnknownTag":Z
    const/4 v3, 0x0

    .line 139
    .local v3, "unknownTagName":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x2

    const-string v5, "menu"

    if-ne v1, v4, :cond_38

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "tagName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 144
    goto :goto_3f

    .line 147
    :cond_1f
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expecting menu, got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 149
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 150
    const/4 v4, 0x1

    if-ne v1, v4, :cond_b

    .line 152
    :goto_3f
    const/4 v4, 0x0

    .line 153
    .local v4, "reachedEndOfMenu":Z
    :goto_40
    if-nez v4, :cond_d7

    .line 154
    const-string v6, "item"

    const-string v7, "group"

    packed-switch v1, :pswitch_data_d8

    goto/16 :goto_d1

    .line 179
    :pswitch_4b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "tagName":Ljava/lang/String;
    if-eqz v2, :cond_5b

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5b

    .line 181
    const/4 v2, 0x0

    .line 182
    const/4 v3, 0x0

    goto/16 :goto_d1

    .line 183
    :cond_5b
    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 184
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    goto/16 :goto_d1

    .line 185
    :cond_66
    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_92

    .line 188
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->hasAddedItem()Z

    move-result v6

    if-nez v6, :cond_d1

    .line 189
    invoke-static {v0}, Landroid/view/MenuInflater$MenuState;->-$$Nest$fgetitemActionProvider(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v6

    if-eqz v6, :cond_8a

    invoke-static {v0}, Landroid/view/MenuInflater$MenuState;->-$$Nest$fgetitemActionProvider(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    move-result-object v6

    .line 190
    invoke-virtual {v6}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 191
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    goto :goto_d1

    .line 193
    :cond_8a
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->addItem()Landroid/view/MenuItem;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V

    goto :goto_d1

    .line 196
    :cond_92
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 197
    const/4 v4, 0x1

    goto :goto_d1

    .line 156
    .end local v8    # "tagName":Ljava/lang/String;
    :pswitch_9a
    if-eqz v2, :cond_9d

    .line 157
    goto :goto_d1

    .line 160
    :cond_9d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 161
    .restart local v8    # "tagName":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 162
    invoke-virtual {v0, p2}, Landroid/view/MenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    goto :goto_d1

    .line 163
    :cond_ab
    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 164
    invoke-virtual {v0, p2}, Landroid/view/MenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    goto :goto_d1

    .line 165
    :cond_b5
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 167
    invoke-virtual {v0}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v6

    .line 168
    .local v6, "subMenu":Landroid/view/SubMenu;
    invoke-direct {p0, v6, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    .line 171
    invoke-direct {p0, p1, p2, v6}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    .line 172
    .end local v6    # "subMenu":Landroid/view/SubMenu;
    goto :goto_d1

    .line 173
    :cond_c6
    const/4 v2, 0x1

    .line 174
    move-object v3, v8

    .line 176
    goto :goto_d1

    .line 202
    .end local v8    # "tagName":Ljava/lang/String;
    :pswitch_c9
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unexpected end of document"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_d1
    :goto_d1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto/16 :goto_40

    .line 207
    :cond_d7
    return-void

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_c9
        :pswitch_9a
        :pswitch_4b
    .end packed-switch
.end method

.method private greylist-max-o registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .line 216
    return-void
.end method

.method private greylist-max-o registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "subMenu"    # Landroid/view/SubMenu;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .line 225
    return-void
.end method


# virtual methods
.method greylist-max-o getContext()Landroid/content/Context;
    .registers 2

    .line 229
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist inflate(ILandroid/view/Menu;)V
    .registers 7
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .line 109
    const-string v0, "Error inflating menu XML"

    const/4 v1, 0x0

    .line 111
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_3
    iget-object v2, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 112
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 114
    .local v2, "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, v1, v2, p2}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_15} :catch_24
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_1d
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    .line 120
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 122
    :cond_1a
    return-void

    .line 120
    :catchall_1b
    move-exception v0

    goto :goto_2b

    .line 117
    :catch_1d
    move-exception v2

    .line 118
    .local v2, "e":Ljava/io/IOException;
    :try_start_1e
    new-instance v3, Landroid/view/InflateException;

    invoke-direct {v3, v0, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/view/MenuInflater;
    .end local p1    # "menuRes":I
    .end local p2    # "menu":Landroid/view/Menu;
    throw v3

    .line 115
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/view/MenuInflater;
    .restart local p1    # "menuRes":I
    .restart local p2    # "menu":Landroid/view/Menu;
    :catch_24
    move-exception v2

    .line 116
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Landroid/view/InflateException;

    invoke-direct {v3, v0, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/view/MenuInflater;
    .end local p1    # "menuRes":I
    .end local p2    # "menu":Landroid/view/Menu;
    throw v3
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_1b

    .line 120
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/view/MenuInflater;
    .restart local p1    # "menuRes":I
    .restart local p2    # "menu":Landroid/view/Menu;
    :goto_2b
    if-eqz v1, :cond_30

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 121
    :cond_30
    throw v0
.end method
