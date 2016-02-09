.class public Landroid/content/RestrictionsManager;
.super Ljava/lang/Object;
.source "RestrictionsManager.java"


# static fields
.field public static final ACTION_PERMISSION_RESPONSE_RECEIVED:Ljava/lang/String; = "android.content.action.PERMISSION_RESPONSE_RECEIVED"

.field public static final ACTION_REQUEST_LOCAL_APPROVAL:Ljava/lang/String; = "android.content.action.REQUEST_LOCAL_APPROVAL"

.field public static final ACTION_REQUEST_PERMISSION:Ljava/lang/String; = "android.content.action.REQUEST_PERMISSION"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.extra.PACKAGE_NAME"

.field public static final EXTRA_REQUEST_BUNDLE:Ljava/lang/String; = "android.content.extra.REQUEST_BUNDLE"

.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "android.content.extra.REQUEST_ID"

.field public static final EXTRA_REQUEST_TYPE:Ljava/lang/String; = "android.content.extra.REQUEST_TYPE"

.field public static final EXTRA_RESPONSE_BUNDLE:Ljava/lang/String; = "android.content.extra.RESPONSE_BUNDLE"

.field public static final META_DATA_APP_RESTRICTIONS:Ljava/lang/String; = "android.content.APP_RESTRICTIONS"

.field public static final REQUEST_KEY_APPROVE_LABEL:Ljava/lang/String; = "android.request.approve_label"

.field public static final REQUEST_KEY_DATA:Ljava/lang/String; = "android.request.data"

.field public static final REQUEST_KEY_DENY_LABEL:Ljava/lang/String; = "android.request.deny_label"

.field public static final REQUEST_KEY_ICON:Ljava/lang/String; = "android.request.icon"

.field public static final REQUEST_KEY_ID:Ljava/lang/String; = "android.request.id"

.field public static final REQUEST_KEY_MESSAGE:Ljava/lang/String; = "android.request.mesg"

.field public static final REQUEST_KEY_NEW_REQUEST:Ljava/lang/String; = "android.request.new_request"

.field public static final REQUEST_KEY_TITLE:Ljava/lang/String; = "android.request.title"

.field public static final REQUEST_TYPE_APPROVAL:Ljava/lang/String; = "android.request.type.approval"

.field public static final RESPONSE_KEY_ERROR_CODE:Ljava/lang/String; = "android.response.errorcode"

.field public static final RESPONSE_KEY_MESSAGE:Ljava/lang/String; = "android.response.msg"

.field public static final RESPONSE_KEY_RESPONSE_TIMESTAMP:Ljava/lang/String; = "android.response.timestamp"

.field public static final RESPONSE_KEY_RESULT:Ljava/lang/String; = "android.response.result"

.field public static final RESULT_APPROVED:I = 0x1

.field public static final RESULT_DENIED:I = 0x2

.field public static final RESULT_ERROR:I = 0x5

.field public static final RESULT_ERROR_BAD_REQUEST:I = 0x1

.field public static final RESULT_ERROR_INTERNAL:I = 0x3

.field public static final RESULT_ERROR_NETWORK:I = 0x2

.field public static final RESULT_NO_RESPONSE:I = 0x3

.field public static final RESULT_UNKNOWN_REQUEST:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RestrictionsManager"

.field private static final TAG_RESTRICTION:Ljava/lang/String; = "restriction"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/IRestrictionsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/IRestrictionsManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/IRestrictionsManager;

    #@0
    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 409
    iput-object p1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    #@5
    .line 410
    iput-object p2, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@7
    .line 408
    return-void
.end method

.method private static addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "entry"    # Landroid/content/RestrictionEntry;

    #@0
    .prologue
    .line 699
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    #@3
    move-result v4

    #@4
    packed-switch v4, :pswitch_data_0

    #@7
    .line 729
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@9
    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v6, "Unsupported restrictionEntry type: "

    #@11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v5

    #@15
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    #@18
    move-result v6

    #@19
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    .line 729
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v4

    #@25
    .line 701
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    #@2c
    move-result v5

    #@2d
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@30
    .line 732
    :goto_0
    return-object p0

    #@31
    .line 706
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    #@38
    move-result-object v5

    #@39
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@3c
    goto :goto_0

    #@3d
    .line 709
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getIntValue()I

    #@44
    move-result v5

    #@45
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@48
    goto :goto_0

    #@49
    .line 713
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    #@50
    move-result-object v5

    #@51
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@54
    goto :goto_0

    #@55
    .line 716
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    #@58
    move-result-object v3

    #@59
    .line 717
    .local v3, "restrictions":[Landroid/content/RestrictionEntry;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@5c
    move-result-object v4

    #@5d
    invoke-static {v4}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    #@60
    move-result-object v1

    #@61
    .line 718
    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {p0, v4, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    #@68
    goto :goto_0

    #@69
    .line 721
    .end local v1    # "childBundle":Landroid/os/Bundle;
    .end local v3    # "restrictions":[Landroid/content/RestrictionEntry;
    :pswitch_5
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    #@6c
    move-result-object v3

    #@6d
    .line 722
    .restart local v3    # "restrictions":[Landroid/content/RestrictionEntry;
    array-length v4, v3

    #@6e
    new-array v0, v4, [Landroid/os/Bundle;

    #@70
    .line 723
    .local v0, "bundleArray":[Landroid/os/Bundle;
    const/4 v2, 0x0

    #@71
    .local v2, "i":I
    :goto_1
    array-length v4, v3

    #@72
    if-ge v2, v4, :cond_0

    #@74
    .line 724
    new-instance v4, Landroid/os/Bundle;

    #@76
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@79
    aget-object v5, v3, v2

    #@7b
    invoke-static {v4, v5}, Landroid/content/RestrictionsManager;->addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;

    #@7e
    move-result-object v4

    #@7f
    aput-object v4, v0, v2

    #@81
    .line 723
    add-int/lit8 v2, v2, 0x1

    #@83
    goto :goto_1

    #@84
    .line 726
    :cond_0
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {p0, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    #@8b
    goto :goto_0

    #@8c
    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 691
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 692
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Landroid/content/RestrictionEntry;

    #@15
    .line 693
    .local v1, "entry":Landroid/content/RestrictionEntry;
    invoke-static {v0, v1}, Landroid/content/RestrictionsManager;->addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;

    #@18
    goto :goto_0

    #@19
    .line 695
    .end local v1    # "entry":Landroid/content/RestrictionEntry;
    :cond_0
    return-object v0
.end method

.method private loadManifestRestrictions(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 555
    :try_start_0
    iget-object v7, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    #@3
    const/4 v8, 0x0

    #@4
    invoke-virtual {v7, p1, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result-object v0

    #@8
    .line 559
    .local v0, "appContext":Landroid/content/Context;
    new-instance v5, Ljava/util/ArrayList;

    #@a
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 563
    .local v5, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    :try_start_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    #@10
    move-result v6

    #@11
    .line 564
    .local v6, "tagType":I
    :goto_0
    const/4 v7, 0x1

    #@12
    if-eq v6, v7, :cond_1

    #@14
    .line 565
    const/4 v7, 0x2

    #@15
    if-ne v6, v7, :cond_0

    #@17
    .line 566
    invoke-direct {p0, v0, p2}, Landroid/content/RestrictionsManager;->loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    #@1a
    move-result-object v4

    #@1b
    .line 567
    .local v4, "restriction":Landroid/content/RestrictionEntry;
    if-eqz v4, :cond_0

    #@1d
    .line 568
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20
    .line 571
    .end local v4    # "restriction":Landroid/content/RestrictionEntry;
    :cond_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@23
    move-result v6

    #@24
    goto :goto_0

    #@25
    .line 556
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v5    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v6    # "tagType":I
    :catch_0
    move-exception v3

    #@26
    .line 557
    .local v3, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v10

    #@27
    .line 576
    .end local v3    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appContext":Landroid/content/Context;
    .restart local v5    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    :catch_1
    move-exception v1

    #@28
    .line 577
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v7, "RestrictionsManager"

    #@2b
    new-instance v8, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v9, "Reading restriction metadata for "

    #@33
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v8

    #@37
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v8

    #@3b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v8

    #@3f
    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    .line 578
    return-object v10

    #@43
    .line 573
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    #@44
    .line 574
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v7, "RestrictionsManager"

    #@47
    new-instance v8, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v9, "Reading restriction metadata for "

    #@4f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v8

    #@57
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v8

    #@5b
    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5e
    .line 575
    return-object v10

    #@5f
    .line 581
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "tagType":I
    :cond_1
    return-object v5
.end method

.method private loadRestriction(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;
    .locals 17
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/content/res/TypedArray;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 599
    const/4 v14, 0x3

    #@1
    move-object/from16 v0, p2

    #@3
    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@6
    move-result-object v7

    #@7
    .line 601
    .local v7, "key":Ljava/lang/String;
    const/4 v14, 0x6

    #@8
    const/4 v15, -0x1

    #@9
    .line 600
    move-object/from16 v0, p2

    #@b
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@e
    move-result v12

    #@f
    .line 602
    .local v12, "restrictionType":I
    const/4 v14, 0x2

    #@10
    move-object/from16 v0, p2

    #@12
    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@15
    move-result-object v13

    #@16
    .line 603
    .local v13, "title":Ljava/lang/String;
    const/4 v14, 0x0

    #@17
    move-object/from16 v0, p2

    #@19
    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 604
    .local v4, "description":Ljava/lang/String;
    const/4 v14, 0x1

    #@1e
    const/4 v15, 0x0

    #@1f
    move-object/from16 v0, p2

    #@21
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@24
    move-result v5

    #@25
    .line 605
    .local v5, "entries":I
    const/4 v14, 0x5

    #@26
    const/4 v15, 0x0

    #@27
    move-object/from16 v0, p2

    #@29
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@2c
    move-result v6

    #@2d
    .line 607
    .local v6, "entryValues":I
    const/4 v14, -0x1

    #@2e
    if-ne v12, v14, :cond_0

    #@30
    .line 608
    const-string/jumbo v14, "RestrictionsManager"

    #@33
    const-string/jumbo v15, "restrictionType cannot be omitted"

    #@36
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 609
    const/4 v14, 0x0

    #@3a
    return-object v14

    #@3b
    .line 612
    :cond_0
    if-nez v7, :cond_1

    #@3d
    .line 613
    const-string/jumbo v14, "RestrictionsManager"

    #@40
    const-string/jumbo v15, "key cannot be omitted"

    #@43
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 614
    const/4 v14, 0x0

    #@47
    return-object v14

    #@48
    .line 617
    :cond_1
    new-instance v10, Landroid/content/RestrictionEntry;

    #@4a
    invoke-direct {v10, v12, v7}, Landroid/content/RestrictionEntry;-><init>(ILjava/lang/String;)V

    #@4d
    .line 618
    .local v10, "restriction":Landroid/content/RestrictionEntry;
    invoke-virtual {v10, v13}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    #@50
    .line 619
    invoke-virtual {v10, v4}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    #@53
    .line 620
    if-eqz v5, :cond_2

    #@55
    .line 621
    move-object/from16 v0, p1

    #@57
    invoke-virtual {v10, v0, v5}, Landroid/content/RestrictionEntry;->setChoiceEntries(Landroid/content/Context;I)V

    #@5a
    .line 623
    :cond_2
    if-eqz v6, :cond_3

    #@5c
    .line 624
    move-object/from16 v0, p1

    #@5e
    invoke-virtual {v10, v0, v6}, Landroid/content/RestrictionEntry;->setChoiceValues(Landroid/content/Context;I)V

    #@61
    .line 627
    :cond_3
    packed-switch v12, :pswitch_data_0

    #@64
    .line 670
    :pswitch_0
    const-string/jumbo v14, "RestrictionsManager"

    #@67
    new-instance v15, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    const-string/jumbo v16, "Unknown restriction type "

    #@6f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v15

    #@73
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v15

    #@77
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v15

    #@7b
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7e
    .line 672
    :cond_4
    :goto_0
    return-object v10

    #@7f
    .line 632
    :pswitch_1
    const/4 v14, 0x4

    #@80
    move-object/from16 v0, p2

    #@82
    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@85
    move-result-object v14

    #@86
    .line 631
    invoke-virtual {v10, v14}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    #@89
    goto :goto_0

    #@8a
    .line 636
    :pswitch_2
    const/4 v14, 0x4

    #@8b
    const/4 v15, 0x0

    #@8c
    move-object/from16 v0, p2

    #@8e
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    #@91
    move-result v14

    #@92
    .line 635
    invoke-virtual {v10, v14}, Landroid/content/RestrictionEntry;->setIntValue(I)V

    #@95
    goto :goto_0

    #@96
    .line 639
    :pswitch_3
    const/4 v14, 0x4

    #@97
    const/4 v15, 0x0

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@9d
    move-result v9

    #@9e
    .line 640
    .local v9, "resId":I
    if-eqz v9, :cond_4

    #@a0
    .line 642
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a3
    move-result-object v14

    #@a4
    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@a7
    move-result-object v14

    #@a8
    .line 641
    invoke-virtual {v10, v14}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    #@ab
    goto :goto_0

    #@ac
    .line 647
    .end local v9    # "resId":I
    :pswitch_4
    const/4 v14, 0x4

    #@ad
    const/4 v15, 0x0

    #@ae
    move-object/from16 v0, p2

    #@b0
    invoke-virtual {v0, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@b3
    move-result v14

    #@b4
    .line 646
    invoke-virtual {v10, v14}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    #@b7
    goto :goto_0

    #@b8
    .line 651
    :pswitch_5
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@bb
    move-result v8

    #@bc
    .line 652
    .local v8, "outerDepth":I
    new-instance v11, Ljava/util/ArrayList;

    #@be
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    #@c1
    .line 653
    .local v11, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :cond_5
    :goto_1
    move-object/from16 v0, p3

    #@c3
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@c6
    move-result v14

    #@c7
    if-eqz v14, :cond_7

    #@c9
    .line 654
    move-object/from16 v0, p0

    #@cb
    move-object/from16 v1, p1

    #@cd
    move-object/from16 v2, p3

    #@cf
    invoke-direct {v0, v1, v2}, Landroid/content/RestrictionsManager;->loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    #@d2
    move-result-object v3

    #@d3
    .line 655
    .local v3, "childEntry":Landroid/content/RestrictionEntry;
    if-nez v3, :cond_6

    #@d5
    .line 656
    const-string/jumbo v14, "RestrictionsManager"

    #@d8
    new-instance v15, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v16, "Child entry cannot be loaded for bundle restriction "

    #@e0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v15

    #@e4
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v15

    #@e8
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@eb
    move-result-object v15

    #@ec
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ef
    goto :goto_1

    #@f0
    .line 658
    :cond_6
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f3
    .line 659
    const/16 v14, 0x8

    #@f5
    if-ne v12, v14, :cond_5

    #@f7
    .line 660
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getType()I

    #@fa
    move-result v14

    #@fb
    const/4 v15, 0x7

    #@fc
    if-eq v14, v15, :cond_5

    #@fe
    .line 661
    const-string/jumbo v14, "RestrictionsManager"

    #@101
    new-instance v15, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v16, "bundle_array "

    #@109
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v15

    #@10d
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v15

    #@111
    .line 662
    const-string/jumbo v16, " can only contain entries of type bundle"

    #@114
    .line 661
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v15

    #@118
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v15

    #@11c
    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11f
    goto :goto_1

    #@120
    .line 667
    .end local v3    # "childEntry":Landroid/content/RestrictionEntry;
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@123
    move-result v14

    #@124
    .line 666
    new-array v14, v14, [Landroid/content/RestrictionEntry;

    #@126
    invoke-interface {v11, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@129
    move-result-object v14

    #@12a
    check-cast v14, [Landroid/content/RestrictionEntry;

    #@12c
    invoke-virtual {v10, v14}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    #@12f
    goto/16 :goto_0

    #@131
    .line 627
    nop

    #@132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 586
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    const-string/jumbo v3, "restriction"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 587
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@11
    move-result-object v1

    #@12
    .line 588
    .local v1, "attrSet":Landroid/util/AttributeSet;
    if-eqz v1, :cond_0

    #@14
    .line 590
    sget-object v2, Lcom/android/internal/R$styleable;->RestrictionEntry:[I

    #@16
    .line 589
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@19
    move-result-object v0

    #@1a
    .line 591
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v0, p2}, Landroid/content/RestrictionsManager;->loadRestriction(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    #@1d
    move-result-object v2

    #@1e
    return-object v2

    #@1f
    .line 594
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "attrSet":Landroid/util/AttributeSet;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public createLocalApprovalIntent()Landroid/content/Intent;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 486
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 487
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@7
    invoke-interface {v1}, Landroid/content/IRestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 489
    :catch_0
    move-exception v0

    #@d
    .line 490
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestrictionsManager"

    #@10
    const-string/jumbo v2, "Couldn\'t reach service"

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@16
    .line 492
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getApplicationRestrictions()Landroid/os/Bundle;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 422
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@7
    iget-object v2, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    #@9
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-interface {v1, v2}, Landroid/content/IRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 424
    :catch_0
    move-exception v0

    #@13
    .line 425
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestrictionsManager"

    #@16
    const-string/jumbo v2, "Couldn\'t reach service"

    #@19
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 427
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v3
.end method

.method public getManifestRestrictions(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 535
    const/4 v0, 0x0

    #@2
    .line 537
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v3, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@7
    move-result-object v3

    #@8
    .line 538
    const/16 v4, 0x80

    #@a
    .line 537
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v0

    #@e
    .line 542
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@10
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    #@12
    const-string/jumbo v4, "android.content.APP_RESTRICTIONS"

    #@15
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 547
    iget-object v3, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    #@1d
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@20
    move-result-object v3

    #@21
    const-string/jumbo v4, "android.content.APP_RESTRICTIONS"

    #@24
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@27
    move-result-object v2

    #@28
    .line 548
    .local v2, "xml":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, p1, v2}, Landroid/content/RestrictionsManager;->loadManifestRestrictions(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 539
    .end local v2    # "xml":Landroid/content/res/XmlResourceParser;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@2e
    .line 540
    .local v1, "pnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@30
    new-instance v4, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v5, "No such package "

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v3

    #@48
    .line 543
    .end local v1    # "pnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v5
.end method

.method public hasRestrictionsProvider()Z
    .locals 3

    #@0
    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 439
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@6
    invoke-interface {v1}, Landroid/content/IRestrictionsManager;->hasRestrictionsProvider()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 441
    :catch_0
    move-exception v0

    #@c
    .line 442
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestrictionsManager"

    #@f
    const-string/jumbo v2, "Couldn\'t reach service"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 444
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    #@16
    return v1
.end method

.method public notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 505
    if-nez p1, :cond_0

    #@2
    .line 506
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "packageName cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 508
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 509
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "request cannot be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 511
    :cond_1
    const-string/jumbo v1, "android.request.id"

    #@19
    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_2

    #@1f
    .line 512
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v2, "REQUEST_KEY_ID must be specified"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 514
    :cond_2
    const-string/jumbo v1, "android.response.result"

    #@2b
    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_3

    #@31
    .line 515
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@33
    const-string/jumbo v2, "RESPONSE_KEY_RESULT must be specified"

    #@36
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 518
    :cond_3
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@3c
    if-eqz v1, :cond_4

    #@3e
    .line 519
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@40
    invoke-interface {v1, p1, p2}, Landroid/content/IRestrictionsManager;->notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 504
    :cond_4
    :goto_0
    return-void

    #@44
    .line 521
    :catch_0
    move-exception v0

    #@45
    .line 522
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestrictionsManager"

    #@48
    const-string/jumbo v2, "Couldn\'t reach service"

    #@4b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_0
.end method

.method public requestPermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 465
    if-nez p1, :cond_0

    #@2
    .line 466
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v2, "requestType cannot be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 468
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 469
    new-instance v1, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v2, "requestId cannot be null"

    #@12
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1

    #@16
    .line 471
    :cond_1
    if-nez p3, :cond_2

    #@18
    .line 472
    new-instance v1, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v2, "request cannot be null"

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 475
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 476
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    #@27
    iget-object v2, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    #@29
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-interface {v1, v2, p1, p2, p3}, Landroid/content/IRestrictionsManager;->requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 464
    :cond_3
    :goto_0
    return-void

    #@31
    .line 479
    :catch_0
    move-exception v0

    #@32
    .line 480
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestrictionsManager"

    #@35
    const-string/jumbo v2, "Couldn\'t reach service"

    #@38
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0
.end method
