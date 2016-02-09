.class public final Landroid/view/textservice/SpellCheckerInfo;
.super Ljava/lang/Object;
.source "SpellCheckerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mLabel:I

.field private final mService:Landroid/content/pm/ResolveInfo;

.field private final mSettingsActivityName:Ljava/lang/String;

.field private final mSubtypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 44
    const-class v0, Landroid/view/textservice/SpellCheckerInfo;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/view/textservice/SpellCheckerInfo;->TAG:Ljava/lang/String;

    #@8
    .line 190
    new-instance v0, Landroid/view/textservice/SpellCheckerInfo$1;

    #@a
    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerInfo$1;-><init>()V

    #@d
    .line 189
    sput-object v0, Landroid/view/textservice/SpellCheckerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v18, Ljava/util/ArrayList;

    #@5
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@8
    move-object/from16 v0, v18

    #@a
    move-object/from16 v1, p0

    #@c
    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@e
    .line 66
    move-object/from16 v0, p2

    #@10
    move-object/from16 v1, p0

    #@12
    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@14
    .line 67
    move-object/from16 v0, p2

    #@16
    iget-object v14, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@18
    .line 68
    .local v14, "si":Landroid/content/pm/ServiceInfo;
    new-instance v18, Landroid/content/ComponentName;

    #@1a
    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1c
    move-object/from16 v19, v0

    #@1e
    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@20
    move-object/from16 v20, v0

    #@22
    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@28
    move-result-object v18

    #@29
    move-object/from16 v0, v18

    #@2b
    move-object/from16 v1, p0

    #@2d
    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    #@2f
    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@32
    move-result-object v10

    #@33
    .line 71
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    #@34
    .line 72
    .local v7, "label":I
    const/4 v13, 0x0

    #@35
    .line 74
    .local v13, "settingsActivityComponent":Ljava/lang/String;
    const/4 v9, 0x0

    #@36
    .line 76
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v18, "android.view.textservice.scs"

    #@39
    move-object/from16 v0, v18

    #@3b
    invoke-virtual {v14, v10, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@3e
    move-result-object v9

    #@3f
    .line 77
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v9, :cond_1

    #@41
    .line 78
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    #@43
    const-string/jumbo v19, "No android.view.textservice.scs meta-data"

    #@46
    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@49
    throw v18
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 124
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v13    # "settingsActivityComponent":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@4b
    .line 125
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v18, Landroid/view/textservice/SpellCheckerInfo;->TAG:Ljava/lang/String;

    #@4d
    new-instance v19, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v20, "Caught exception: "

    #@55
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v19

    #@59
    move-object/from16 v0, v19

    #@5b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v19

    #@5f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v19

    #@63
    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 126
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    #@68
    .line 127
    new-instance v19, Ljava/lang/StringBuilder;

    #@6a
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@6d
    const-string/jumbo v20, "Unable to create context for: "

    #@70
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v19

    #@74
    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@76
    move-object/from16 v20, v0

    #@78
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v19

    #@7c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v19

    #@80
    .line 126
    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@83
    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@84
    .line 128
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    #@85
    .line 129
    if-eqz v9, :cond_0

    #@87
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@8a
    .line 128
    :cond_0
    throw v18

    #@8b
    .line 82
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v13    # "settingsActivityComponent":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v0, v14, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8d
    move-object/from16 v18, v0

    #@8f
    move-object/from16 v0, v18

    #@91
    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@94
    move-result-object v11

    #@95
    .line 83
    .local v11, "res":Landroid/content/res/Resources;
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@98
    move-result-object v4

    #@99
    .line 85
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    #@9c
    move-result v17

    #@9d
    .local v17, "type":I
    const/16 v18, 0x1

    #@9f
    move/from16 v0, v17

    #@a1
    move/from16 v1, v18

    #@a3
    if-eq v0, v1, :cond_3

    #@a5
    .line 86
    const/16 v18, 0x2

    #@a7
    move/from16 v0, v17

    #@a9
    move/from16 v1, v18

    #@ab
    if-ne v0, v1, :cond_2

    #@ad
    .line 89
    :cond_3
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@b0
    move-result-object v8

    #@b1
    .line 90
    .local v8, "nodeName":Ljava/lang/String;
    const-string/jumbo v18, "spell-checker"

    #@b4
    move-object/from16 v0, v18

    #@b6
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v18

    #@ba
    if-nez v18, :cond_4

    #@bc
    .line 91
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    #@be
    .line 92
    const-string/jumbo v19, "Meta-data does not start with spell-checker tag"

    #@c1
    .line 91
    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@c4
    throw v18

    #@c5
    .line 96
    :cond_4
    sget-object v18, Lcom/android/internal/R$styleable;->SpellChecker:[I

    #@c7
    .line 95
    move-object/from16 v0, v18

    #@c9
    invoke-virtual {v11, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@cc
    move-result-object v12

    #@cd
    .line 97
    .local v12, "sa":Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    #@cf
    const/16 v19, 0x0

    #@d1
    move/from16 v0, v18

    #@d3
    move/from16 v1, v19

    #@d5
    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@d8
    move-result v7

    #@d9
    .line 99
    const/16 v18, 0x1

    #@db
    .line 98
    move/from16 v0, v18

    #@dd
    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@e0
    move-result-object v13

    #@e1
    .line 100
    .local v13, "settingsActivityComponent":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    #@e4
    .line 102
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@e7
    move-result v5

    #@e8
    .line 104
    .local v5, "depth":I
    :cond_5
    :goto_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    #@eb
    move-result v17

    #@ec
    const/16 v18, 0x3

    #@ee
    move/from16 v0, v17

    #@f0
    move/from16 v1, v18

    #@f2
    if-ne v0, v1, :cond_6

    #@f4
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@f7
    move-result v18

    #@f8
    move/from16 v0, v18

    #@fa
    if-le v0, v5, :cond_8

    #@fc
    .line 105
    :cond_6
    const/16 v18, 0x1

    #@fe
    move/from16 v0, v17

    #@100
    move/from16 v1, v18

    #@102
    if-eq v0, v1, :cond_8

    #@104
    .line 106
    const/16 v18, 0x2

    #@106
    move/from16 v0, v17

    #@108
    move/from16 v1, v18

    #@10a
    if-ne v0, v1, :cond_5

    #@10c
    .line 107
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@10f
    move-result-object v16

    #@110
    .line 108
    .local v16, "subtypeNodeName":Ljava/lang/String;
    const-string/jumbo v18, "subtype"

    #@113
    move-object/from16 v0, v18

    #@115
    move-object/from16 v1, v16

    #@117
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11a
    move-result v18

    #@11b
    if-nez v18, :cond_7

    #@11d
    .line 109
    new-instance v18, Lorg/xmlpull/v1/XmlPullParserException;

    #@11f
    .line 110
    const-string/jumbo v19, "Meta-data in spell-checker does not start with subtype tag"

    #@122
    .line 109
    invoke-direct/range {v18 .. v19}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@125
    throw v18

    #@126
    .line 113
    :cond_7
    sget-object v18, Lcom/android/internal/R$styleable;->SpellChecker_Subtype:[I

    #@128
    .line 112
    move-object/from16 v0, v18

    #@12a
    invoke-virtual {v11, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@12d
    move-result-object v3

    #@12e
    .line 114
    .local v3, "a":Landroid/content/res/TypedArray;
    new-instance v15, Landroid/view/textservice/SpellCheckerSubtype;

    #@130
    .line 115
    const/16 v18, 0x0

    #@132
    .line 116
    const/16 v19, 0x0

    #@134
    .line 115
    move/from16 v0, v18

    #@136
    move/from16 v1, v19

    #@138
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@13b
    move-result v18

    #@13c
    .line 117
    const/16 v19, 0x1

    #@13e
    move/from16 v0, v19

    #@140
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@143
    move-result-object v19

    #@144
    .line 119
    const/16 v20, 0x2

    #@146
    move/from16 v0, v20

    #@148
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@14b
    move-result-object v20

    #@14c
    .line 114
    move/from16 v0, v18

    #@14e
    move-object/from16 v1, v19

    #@150
    move-object/from16 v2, v20

    #@152
    invoke-direct {v15, v0, v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@155
    .line 121
    .local v15, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    move-object/from16 v0, p0

    #@157
    iget-object v0, v0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@159
    move-object/from16 v18, v0

    #@15b
    move-object/from16 v0, v18

    #@15d
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@160
    goto :goto_0

    #@161
    .line 129
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v15    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v16    # "subtypeNodeName":Ljava/lang/String;
    :cond_8
    if-eqz v9, :cond_9

    #@163
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    #@166
    .line 131
    :cond_9
    move-object/from16 v0, p0

    #@168
    iput v7, v0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    #@16a
    .line 132
    move-object/from16 v0, p0

    #@16c
    iput-object v13, v0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    #@16e
    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@a
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    #@10
    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    #@16
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    #@1c
    .line 143
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@24
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@26
    .line 144
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@28
    sget-object v1, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    #@2d
    .line 139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 264
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 159
    new-instance v0, Landroid/content/ComponentName;

    #@2
    .line 160
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8
    iget-object v2, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@e
    .line 159
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/textservice/SpellCheckerSubtype;

    #@8
    return-object v0
.end method

.method public getSubtypeCount()I
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 208
    iget v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    #@2
    if-eqz v0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    :cond_0
    const-string/jumbo v0, ""

    #@9
    return-object v0

    #@a
    .line 209
    :cond_1
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    iget v1, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    #@10
    iget-object v2, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@12
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@14
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 178
    iget v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 179
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 180
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 181
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@11
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 182
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@19
    .line 177
    return-void
.end method
