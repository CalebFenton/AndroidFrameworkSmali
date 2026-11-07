.class public Landroid/content/RestrictionsManager;
.super Ljava/lang/Object;
.source "RestrictionsManager.java"


# static fields
.field public static final whitelist ACTION_PERMISSION_RESPONSE_RECEIVED:Ljava/lang/String; = "android.content.action.PERMISSION_RESPONSE_RECEIVED"

.field public static final whitelist ACTION_REQUEST_LOCAL_APPROVAL:Ljava/lang/String; = "android.content.action.REQUEST_LOCAL_APPROVAL"

.field public static final whitelist ACTION_REQUEST_PERMISSION:Ljava/lang/String; = "android.content.action.REQUEST_PERMISSION"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.content.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_REQUEST_BUNDLE:Ljava/lang/String; = "android.content.extra.REQUEST_BUNDLE"

.field public static final whitelist EXTRA_REQUEST_ID:Ljava/lang/String; = "android.content.extra.REQUEST_ID"

.field public static final whitelist EXTRA_REQUEST_TYPE:Ljava/lang/String; = "android.content.extra.REQUEST_TYPE"

.field public static final whitelist EXTRA_RESPONSE_BUNDLE:Ljava/lang/String; = "android.content.extra.RESPONSE_BUNDLE"

.field public static final whitelist META_DATA_APP_RESTRICTIONS:Ljava/lang/String; = "android.content.APP_RESTRICTIONS"

.field public static final whitelist REQUEST_KEY_APPROVE_LABEL:Ljava/lang/String; = "android.request.approve_label"

.field public static final whitelist REQUEST_KEY_DATA:Ljava/lang/String; = "android.request.data"

.field public static final whitelist REQUEST_KEY_DENY_LABEL:Ljava/lang/String; = "android.request.deny_label"

.field public static final whitelist REQUEST_KEY_ICON:Ljava/lang/String; = "android.request.icon"

.field public static final whitelist REQUEST_KEY_ID:Ljava/lang/String; = "android.request.id"

.field public static final whitelist REQUEST_KEY_MESSAGE:Ljava/lang/String; = "android.request.mesg"

.field public static final whitelist REQUEST_KEY_NEW_REQUEST:Ljava/lang/String; = "android.request.new_request"

.field public static final whitelist REQUEST_KEY_TITLE:Ljava/lang/String; = "android.request.title"

.field public static final whitelist REQUEST_TYPE_APPROVAL:Ljava/lang/String; = "android.request.type.approval"

.field public static final whitelist RESPONSE_KEY_ERROR_CODE:Ljava/lang/String; = "android.response.errorcode"

.field public static final whitelist RESPONSE_KEY_MESSAGE:Ljava/lang/String; = "android.response.msg"

.field public static final whitelist RESPONSE_KEY_RESPONSE_TIMESTAMP:Ljava/lang/String; = "android.response.timestamp"

.field public static final whitelist RESPONSE_KEY_RESULT:Ljava/lang/String; = "android.response.result"

.field public static final whitelist RESULT_APPROVED:I = 0x1

.field public static final whitelist RESULT_DENIED:I = 0x2

.field public static final whitelist RESULT_ERROR:I = 0x5

.field public static final whitelist RESULT_ERROR_BAD_REQUEST:I = 0x1

.field public static final whitelist RESULT_ERROR_INTERNAL:I = 0x3

.field public static final whitelist RESULT_ERROR_NETWORK:I = 0x2

.field public static final whitelist RESULT_NO_RESPONSE:I = 0x3

.field public static final whitelist RESULT_UNKNOWN_REQUEST:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "RestrictionsManager"

.field private static final greylist-max-o TAG_RESTRICTION:Ljava/lang/String; = "restriction"


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-p mService:Landroid/content/IRestrictionsManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/IRestrictionsManager;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/IRestrictionsManager;

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    .line 421
    iput-object p2, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    .line 422
    return-void
.end method

.method private static greylist-max-o addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;
    .registers 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "entry"    # Landroid/content/RestrictionEntry;

    .line 766
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_a0

    .line 806
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported restrictionEntry type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 807
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 788
    :pswitch_24
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v0

    .line 789
    .local v0, "bundleRestrictionArray":[Landroid/content/RestrictionEntry;
    array-length v1, v0

    new-array v1, v1, [Landroid/os/Bundle;

    .line 790
    .local v1, "bundleArray":[Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    array-length v3, v0

    if-ge v2, v3, :cond_53

    .line 791
    aget-object v3, v0, v2

    .line 792
    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v3

    .line 793
    .local v3, "bundleRestrictions":[Landroid/content/RestrictionEntry;
    if-nez v3, :cond_46

    .line 795
    const-string v4, "RestrictionsManager"

    const-string v5, "addRestrictionToBundle: Non-bundle entry found in bundle array"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v1, v2

    goto :goto_50

    .line 799
    :cond_46
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v1, v2

    .line 790
    .end local v3    # "bundleRestrictions":[Landroid/content/RestrictionEntry;
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 803
    .end local v2    # "i":I
    :cond_53
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 804
    goto :goto_9f

    .line 783
    .end local v0    # "bundleRestrictionArray":[Landroid/content/RestrictionEntry;
    .end local v1    # "bundleArray":[Landroid/os/Bundle;
    :pswitch_5b
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v0

    .line 784
    .local v0, "restrictions":[Landroid/content/RestrictionEntry;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v1

    .line 785
    .local v1, "childBundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 786
    goto :goto_9f

    .line 776
    .end local v0    # "restrictions":[Landroid/content/RestrictionEntry;
    .end local v1    # "childBundle":Landroid/os/Bundle;
    :pswitch_6f
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getIntValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 777
    goto :goto_9f

    .line 773
    :pswitch_7b
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 774
    goto :goto_9f

    .line 768
    :pswitch_87
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 769
    goto :goto_9f

    .line 780
    :pswitch_93
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    nop

    .line 809
    :goto_9f
    return-object p0

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_93
        :pswitch_87
        :pswitch_7b
        :pswitch_7b
        :pswitch_7b
        :pswitch_6f
        :pswitch_93
        :pswitch_5b
        :pswitch_24
    .end packed-switch
.end method

.method public static whitelist convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 758
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 759
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    .line 760
    .local v2, "entry":Landroid/content/RestrictionEntry;
    invoke-static {v0, v2}, Landroid/content/RestrictionsManager;->addRestrictionToBundle(Landroid/os/Bundle;Landroid/content/RestrictionEntry;)Landroid/os/Bundle;

    .line 761
    .end local v2    # "entry":Landroid/content/RestrictionEntry;
    goto :goto_9

    .line 762
    :cond_19
    return-object v0
.end method

.method private greylist-max-o loadManifestRestrictions(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Ljava/util/List;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 621
    const-string v0, "Reading restriction metadata for "

    const-string v1, "RestrictionsManager"

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_c} :catch_59

    .line 624
    .local v3, "appContext":Landroid/content/Context;
    nop

    .line 625
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v4, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    :try_start_12
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .line 630
    .local v5, "tagType":I
    :goto_16
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2b

    .line 631
    const/4 v6, 0x2

    if-ne v5, v6, :cond_25

    .line 632
    invoke-direct {p0, v3, p2}, Landroid/content/RestrictionsManager;->loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v6

    .line 633
    .local v6, "restriction":Landroid/content/RestrictionEntry;
    if-eqz v6, :cond_25

    .line 634
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .end local v6    # "restriction":Landroid/content/RestrictionEntry;
    :cond_25
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6
    :try_end_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_29} :catch_43
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_29} :catch_2d

    move v5, v6

    goto :goto_16

    .line 645
    .end local v5    # "tagType":I
    :cond_2b
    nop

    .line 647
    return-object v4

    .line 642
    :catch_2d
    move-exception v5

    .line 643
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    return-object v2

    .line 639
    .end local v5    # "e":Ljava/io/IOException;
    :catch_43
    move-exception v5

    .line 640
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 641
    return-object v2

    .line 622
    .end local v3    # "appContext":Landroid/content/Context;
    .end local v4    # "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/RestrictionEntry;>;"
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_59
    move-exception v0

    .line 623
    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v2
.end method

.method private greylist-max-o loadRestriction(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;
    .registers 20
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/content/res/TypedArray;
    .param p3, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 665
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x6

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 668
    .local v4, "restrictionType":I
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 669
    .local v6, "title":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 670
    .local v8, "description":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 671
    .local v9, "entries":I
    const/4 v10, 0x5

    invoke-virtual {v1, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 673
    .local v10, "entryValues":I
    const/4 v11, 0x0

    const-string v12, "RestrictionsManager"

    if-ne v4, v5, :cond_31

    .line 674
    const-string/jumbo v5, "restrictionType cannot be omitted"

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-object v11

    .line 678
    :cond_31
    if-nez v3, :cond_3a

    .line 679
    const-string/jumbo v5, "key cannot be omitted"

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-object v11

    .line 683
    :cond_3a
    new-instance v5, Landroid/content/RestrictionEntry;

    invoke-direct {v5, v4, v3}, Landroid/content/RestrictionEntry;-><init>(ILjava/lang/String;)V

    .line 684
    .local v5, "restriction":Landroid/content/RestrictionEntry;
    invoke-virtual {v5, v6}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v5, v8}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    .line 686
    if-eqz v9, :cond_4a

    .line 687
    invoke-virtual {v5, v0, v9}, Landroid/content/RestrictionEntry;->setChoiceEntries(Landroid/content/Context;I)V

    .line 689
    :cond_4a
    if-eqz v10, :cond_4f

    .line 690
    invoke-virtual {v5, v0, v10}, Landroid/content/RestrictionEntry;->setChoiceValues(Landroid/content/Context;I)V

    .line 693
    :cond_4f
    const/4 v11, 0x4

    packed-switch v4, :pswitch_data_10e

    .line 736
    :pswitch_53
    move-object/from16 v13, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown restriction type "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10d

    .line 717
    :pswitch_6d
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    .line 718
    .local v7, "outerDepth":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v11, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :goto_76
    invoke-static {v2, v7}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v13

    if-eqz v13, :cond_c8

    .line 720
    move-object/from16 v13, p0

    invoke-direct {v13, v0, v2}, Landroid/content/RestrictionsManager;->loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v14

    .line 721
    .local v14, "childEntry":Landroid/content/RestrictionEntry;
    if-nez v14, :cond_9b

    .line 722
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Child entry cannot be loaded for bundle restriction "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 724
    :cond_9b
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    const/16 v0, 0x8

    if-ne v4, v0, :cond_c5

    .line 726
    invoke-virtual {v14}, Landroid/content/RestrictionEntry;->getType()I

    move-result v0

    const/4 v15, 0x7

    if-eq v0, v15, :cond_c5

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bundle_array "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " can only contain entries of type bundle"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v14    # "childEntry":Landroid/content/RestrictionEntry;
    :cond_c5
    :goto_c5
    move-object/from16 v0, p1

    goto :goto_76

    .line 732
    :cond_c8
    move-object/from16 v13, p0

    .line 733
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/RestrictionEntry;

    .line 732
    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/RestrictionEntry;

    invoke-virtual {v5, v0}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    .line 734
    goto :goto_10d

    .line 701
    .end local v7    # "outerDepth":I
    .end local v11    # "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :pswitch_da
    move-object/from16 v13, p0

    .line 702
    invoke-virtual {v1, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 701
    invoke-virtual {v5, v0}, Landroid/content/RestrictionEntry;->setIntValue(I)V

    .line 703
    goto :goto_10d

    .line 705
    :pswitch_e4
    move-object/from16 v13, p0

    invoke-virtual {v1, v11, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 706
    .local v0, "resId":I
    if-eqz v0, :cond_10d

    .line 707
    nop

    .line 708
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 707
    invoke-virtual {v5, v7}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_10d

    .line 712
    .end local v0    # "resId":I
    :pswitch_f9
    move-object/from16 v13, p0

    .line 713
    invoke-virtual {v1, v11, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 712
    invoke-virtual {v5, v0}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 714
    goto :goto_10d

    .line 697
    :pswitch_103
    move-object/from16 v13, p0

    .line 698
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 697
    invoke-virtual {v5, v0}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 699
    nop

    .line 738
    :cond_10d
    :goto_10d
    return-object v5

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_103
        :pswitch_f9
        :pswitch_103
        :pswitch_53
        :pswitch_e4
        :pswitch_da
        :pswitch_103
        :pswitch_6d
        :pswitch_6d
    .end packed-switch
.end method

.method private greylist-max-o loadRestrictionElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;
    .registers 6
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "xml"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 652
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "restriction"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 653
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 654
    .local v0, "attrSet":Landroid/util/AttributeSet;
    if-eqz v0, :cond_1e

    .line 655
    sget-object v1, Lcom/android/internal/R$styleable;->RestrictionEntry:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 657
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v1, p2}, Landroid/content/RestrictionsManager;->loadRestriction(Landroid/content/Context;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)Landroid/content/RestrictionEntry;

    move-result-object v2

    return-object v2

    .line 660
    .end local v0    # "attrSet":Landroid/util/AttributeSet;
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public whitelist createLocalApprovalIntent()Landroid/content/Intent;
    .registers 4

    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, "result":Landroid/content/Intent;
    :try_start_1
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v1, :cond_19

    .line 549
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    invoke-interface {v1}, Landroid/content/IRestrictionsManager;->createLocalApprovalIntent()Landroid/content/Intent;

    move-result-object v1

    move-object v0, v1

    .line 550
    if-eqz v0, :cond_19

    .line 551
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    .line 552
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 551
    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_1b

    .line 557
    :cond_19
    nop

    .line 558
    return-object v0

    .line 555
    :catch_1b
    move-exception v1

    .line 556
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getApplicationRestrictions()Landroid/os/Bundle;
    .registers 3

    .line 441
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_11

    .line 442
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/IRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_14

    return-object v0

    .line 446
    :cond_11
    nop

    .line 447
    const/4 v0, 0x0

    return-object v0

    .line 444
    :catch_14
    move-exception v0

    .line 445
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getApplicationRestrictionsPerAdmin()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 481
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_17

    .line 482
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    .line 483
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-interface {v0, v1, v2}, Landroid/content/IRestrictionsManager;->getApplicationRestrictionsPerAdminForUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_1a

    return-object v0

    .line 487
    :cond_17
    nop

    .line 488
    const/4 v0, 0x0

    return-object v0

    .line 485
    :catch_1a
    move-exception v0

    .line 486
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getManifestRestrictions(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 601
    const/4 v0, 0x0

    .line 603
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_2c

    .line 607
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 608
    if-eqz v1, :cond_2a

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.content.APP_RESTRICTIONS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_2a

    .line 612
    :cond_1b
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    .line 613
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 614
    .local v0, "xml":Landroid/content/res/XmlResourceParser;
    invoke-direct {p0, p1, v0}, Landroid/content/RestrictionsManager;->loadManifestRestrictions(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 609
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    return-object v0

    .line 605
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2c
    move-exception v1

    .line 606
    .local v1, "pnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist hasRestrictionsProvider()Z
    .registers 3

    .line 499
    :try_start_0
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_b

    .line 500
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    invoke-interface {v0}, Landroid/content/IRestrictionsManager;->hasRestrictionsProvider()Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    return v0

    .line 504
    :cond_b
    nop

    .line 505
    const/4 v0, 0x0

    return v0

    .line 502
    :catch_e
    move-exception v0

    .line 503
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/PersistableBundle;

    .line 571
    if-eqz p1, :cond_3e

    .line 574
    if-eqz p2, :cond_35

    .line 577
    const-string v0, "android.request.id"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 580
    const-string v0, "android.response.result"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 584
    :try_start_14
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_1d

    .line 585
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    invoke-interface {v0, p1, p2}, Landroid/content/IRestrictionsManager;->notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_1f

    .line 589
    :cond_1d
    nop

    .line 590
    return-void

    .line 587
    :catch_1f
    move-exception v0

    .line 588
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 581
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RESPONSE_KEY_RESULT must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "REQUEST_KEY_ID must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_3e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist requestPermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/os/PersistableBundle;

    .line 526
    if-eqz p1, :cond_2f

    .line 529
    if-eqz p2, :cond_26

    .line 532
    if-eqz p3, :cond_1d

    .line 536
    :try_start_6
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    if-eqz v0, :cond_15

    .line 537
    iget-object v0, p0, Landroid/content/RestrictionsManager;->mService:Landroid/content/IRestrictionsManager;

    iget-object v1, p0, Landroid/content/RestrictionsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/content/IRestrictionsManager;->requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_17

    .line 542
    :cond_15
    nop

    .line 543
    return-void

    .line 540
    :catch_17
    move-exception v0

    .line 541
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 533
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "request cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
