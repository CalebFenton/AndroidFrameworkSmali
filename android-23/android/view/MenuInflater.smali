.class public Landroid/view/MenuInflater;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;,
        Landroid/view/MenuInflater$MenuState;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "MenuInflater"

.field private static final NO_ID:I = 0x0

.field private static final XML_GROUP:Ljava/lang/String; = "group"

.field private static final XML_ITEM:Ljava/lang/String; = "item"

.field private static final XML_MENU:Ljava/lang/String; = "menu"


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()[Ljava/lang/Class;
    .locals 1

    #@0
    sget-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/Class;
    .locals 1

    #@0
    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/view/MenuInflater;)[Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/view/MenuInflater;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/MenuInflater;)Ljava/lang/Object;
    .locals 1

    #@0
    invoke-direct {p0}, Landroid/view/MenuInflater;->getRealOwner()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 61
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const-class v1, Landroid/content/Context;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    sput-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@a
    .line 63
    sget-object v0, Landroid/view/MenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@c
    sput-object v0, Landroid/view/MenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    #@e
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    #@5
    .line 79
    const/4 v0, 0x1

    #@6
    new-array v0, v0, [Ljava/lang/Object;

    #@8
    const/4 v1, 0x0

    #@9
    aput-object p1, v0, v1

    #@b
    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    #@d
    .line 80
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    #@f
    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    #@11
    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "realOwner"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    iput-object p1, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    #@5
    .line 91
    iput-object p2, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    #@7
    .line 92
    const/4 v0, 0x1

    #@8
    new-array v0, v0, [Ljava/lang/Object;

    #@a
    const/4 v1, 0x0

    #@b
    aput-object p1, v0, v1

    #@d
    iput-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    #@f
    .line 93
    iget-object v0, p0, Landroid/view/MenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    #@11
    iput-object v0, p0, Landroid/view/MenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    #@13
    .line 89
    return-void
.end method

.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "owner"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 272
    instance-of v0, p1, Landroid/app/Activity;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 273
    return-object p1

    #@5
    .line 275
    :cond_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 276
    check-cast p1, Landroid/content/ContextWrapper;

    #@b
    .end local p1    # "owner":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@e
    move-result-object v0

    #@f
    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 278
    .restart local p1    # "owner":Ljava/lang/Object;
    :cond_1
    return-object p1
.end method

.method private getRealOwner()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 266
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    #@6
    invoke-direct {p0, v0}, Landroid/view/MenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    #@c
    .line 268
    :cond_0
    iget-object v0, p0, Landroid/view/MenuInflater;->mRealOwner:Ljava/lang/Object;

    #@e
    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    new-instance v2, Landroid/view/MenuInflater$MenuState;

    #@2
    invoke-direct {v2, p0, p3}, Landroid/view/MenuInflater$MenuState;-><init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V

    #@5
    .line 129
    .local v2, "menuState":Landroid/view/MenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@8
    move-result v0

    #@9
    .line 131
    .local v0, "eventType":I
    const/4 v1, 0x0

    #@a
    .line 132
    .local v1, "lookingForEndOfUnknownTag":Z
    const/4 v6, 0x0

    #@b
    .line 136
    .local v6, "unknownTagName":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x2

    #@c
    if-ne v0, v7, :cond_3

    #@e
    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@11
    move-result-object v5

    #@12
    .line 138
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "menu"

    #@15
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v7

    #@19
    if-eqz v7, :cond_2

    #@1b
    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@1e
    move-result v0

    #@1f
    .line 149
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    #@20
    .line 150
    .end local v6    # "unknownTagName":Ljava/lang/String;
    .local v3, "reachedEndOfMenu":Z
    :goto_1
    if-nez v3, :cond_b

    #@22
    .line 151
    packed-switch v0, :pswitch_data_0

    #@25
    .line 202
    :cond_1
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@28
    move-result v0

    #@29
    goto :goto_1

    #@2a
    .line 144
    .end local v3    # "reachedEndOfMenu":Z
    .restart local v5    # "tagName":Ljava/lang/String;
    .restart local v6    # "unknownTagName":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    #@2c
    new-instance v8, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v9, "Expecting menu, got "

    #@34
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v8

    #@38
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v8

    #@3c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v8

    #@40
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw v7

    #@44
    .line 146
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@47
    move-result v0

    #@48
    .line 147
    const/4 v7, 0x1

    #@49
    if-eq v0, v7, :cond_0

    #@4b
    goto :goto_0

    #@4c
    .line 153
    .end local v6    # "unknownTagName":Ljava/lang/String;
    .restart local v3    # "reachedEndOfMenu":Z
    :pswitch_0
    if-nez v1, :cond_1

    #@4e
    .line 157
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    .line 158
    .restart local v5    # "tagName":Ljava/lang/String;
    const-string/jumbo v7, "group"

    #@55
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_4

    #@5b
    .line 159
    invoke-virtual {v2, p2}, Landroid/view/MenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V

    #@5e
    goto :goto_2

    #@5f
    .line 160
    :cond_4
    const-string/jumbo v7, "item"

    #@62
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v7

    #@66
    if-eqz v7, :cond_5

    #@68
    .line 161
    invoke-virtual {v2, p2}, Landroid/view/MenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V

    #@6b
    goto :goto_2

    #@6c
    .line 162
    :cond_5
    const-string/jumbo v7, "menu"

    #@6f
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v7

    #@73
    if-eqz v7, :cond_6

    #@75
    .line 164
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    #@78
    move-result-object v4

    #@79
    .line 165
    .local v4, "subMenu":Landroid/view/SubMenu;
    invoke-direct {p0, v4, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    #@7c
    .line 168
    invoke-direct {p0, p1, p2, v4}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    #@7f
    goto :goto_2

    #@80
    .line 170
    .end local v4    # "subMenu":Landroid/view/SubMenu;
    :cond_6
    const/4 v1, 0x1

    #@81
    .line 171
    move-object v6, v5

    #@82
    .local v6, "unknownTagName":Ljava/lang/String;
    goto :goto_2

    #@83
    .line 176
    .end local v5    # "tagName":Ljava/lang/String;
    .end local v6    # "unknownTagName":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@86
    move-result-object v5

    #@87
    .line 177
    .restart local v5    # "tagName":Ljava/lang/String;
    if-eqz v1, :cond_7

    #@89
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8c
    move-result v7

    #@8d
    if-eqz v7, :cond_7

    #@8f
    .line 178
    const/4 v1, 0x0

    #@90
    .line 179
    const/4 v6, 0x0

    #@91
    .local v6, "unknownTagName":Ljava/lang/String;
    goto :goto_2

    #@92
    .line 180
    .end local v6    # "unknownTagName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v7, "group"

    #@95
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v7

    #@99
    if-eqz v7, :cond_8

    #@9b
    .line 181
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    #@9e
    goto :goto_2

    #@9f
    .line 182
    :cond_8
    const-string/jumbo v7, "item"

    #@a2
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a5
    move-result v7

    #@a6
    if-eqz v7, :cond_a

    #@a8
    .line 185
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->hasAddedItem()Z

    #@ab
    move-result v7

    #@ac
    if-nez v7, :cond_1

    #@ae
    .line 186
    invoke-static {v2}, Landroid/view/MenuInflater$MenuState;->-get0(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    #@b1
    move-result-object v7

    #@b2
    if-eqz v7, :cond_9

    #@b4
    .line 187
    invoke-static {v2}, Landroid/view/MenuInflater$MenuState;->-get0(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;

    #@b7
    move-result-object v7

    #@b8
    invoke-virtual {v7}, Landroid/view/ActionProvider;->hasSubMenu()Z

    #@bb
    move-result v7

    #@bc
    .line 186
    if-eqz v7, :cond_9

    #@be
    .line 188
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    #@c1
    move-result-object v7

    #@c2
    invoke-direct {p0, v7, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V

    #@c5
    goto/16 :goto_2

    #@c7
    .line 190
    :cond_9
    invoke-virtual {v2}, Landroid/view/MenuInflater$MenuState;->addItem()Landroid/view/MenuItem;

    #@ca
    move-result-object v7

    #@cb
    invoke-direct {p0, v7, p2}, Landroid/view/MenuInflater;->registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V

    #@ce
    goto/16 :goto_2

    #@d0
    .line 193
    :cond_a
    const-string/jumbo v7, "menu"

    #@d3
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d6
    move-result v7

    #@d7
    if-eqz v7, :cond_1

    #@d9
    .line 194
    const/4 v3, 0x1

    #@da
    goto/16 :goto_2

    #@dc
    .line 199
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_2
    new-instance v7, Ljava/lang/RuntimeException;

    #@de
    const-string/jumbo v8, "Unexpected end of document"

    #@e1
    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e4
    throw v7

    #@e5
    .line 126
    :cond_b
    return-void

    #@e6
    .line 151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerMenu(Landroid/view/MenuItem;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "set"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 212
    return-void
.end method

.method private registerMenu(Landroid/view/SubMenu;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "subMenu"    # Landroid/view/SubMenu;
    .param p2, "set"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 221
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public inflate(ILandroid/view/Menu;)V
    .locals 6
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 106
    const/4 v3, 0x0

    #@1
    .line 108
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v4, p0, Landroid/view/MenuInflater;->mContext:Landroid/content/Context;

    #@3
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v4

    #@7
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    #@a
    move-result-object v3

    #@b
    .line 109
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@e
    move-result-object v0

    #@f
    .line 111
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, v3, v0, p2}, Landroid/view/MenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 117
    if-eqz v3, :cond_0

    #@14
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    #@17
    .line 105
    :cond_0
    return-void

    #@18
    .line 114
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v1

    #@19
    .line 115
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Landroid/view/InflateException;

    #@1b
    const-string/jumbo v5, "Error inflating menu XML"

    #@1e
    invoke-direct {v4, v5, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@21
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    #@23
    .line 117
    if-eqz v3, :cond_1

    #@25
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    #@28
    .line 116
    :cond_1
    throw v4

    #@29
    .line 112
    :catch_1
    move-exception v2

    #@2a
    .line 113
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v4, Landroid/view/InflateException;

    #@2c
    const-string/jumbo v5, "Error inflating menu XML"

    #@2f
    invoke-direct {v4, v5, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@32
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
