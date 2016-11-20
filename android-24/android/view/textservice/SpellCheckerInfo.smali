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
    .line 46
    const-class v0, Landroid/view/textservice/SpellCheckerInfo;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/view/textservice/SpellCheckerInfo;->TAG:Ljava/lang/String;

    #@8
    .line 196
    new-instance v0, Landroid/view/textservice/SpellCheckerInfo$1;

    #@a
    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerInfo$1;-><init>()V

    #@d
    .line 195
    sput-object v0, Landroid/view/textservice/SpellCheckerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 23
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
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    new-instance v3, Ljava/util/ArrayList;

    #@5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@8
    move-object/from16 v0, p0

    #@a
    iput-object v3, v0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@c
    .line 68
    move-object/from16 v0, p2

    #@e
    move-object/from16 v1, p0

    #@10
    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@12
    .line 69
    move-object/from16 v0, p2

    #@14
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@16
    move-object/from16 v19, v0

    #@18
    .line 70
    .local v19, "si":Landroid/content/pm/ServiceInfo;
    new-instance v3, Landroid/content/ComponentName;

    #@1a
    move-object/from16 v0, v19

    #@1c
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1e
    move-object/from16 v0, v19

    #@20
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@22
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@25
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    move-object/from16 v0, p0

    #@2b
    iput-object v3, v0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    #@2d
    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@30
    move-result-object v15

    #@31
    .line 73
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    #@32
    .line 74
    .local v12, "label":I
    const/16 v18, 0x0

    #@34
    .line 76
    .local v18, "settingsActivityComponent":Ljava/lang/String;
    const/4 v14, 0x0

    #@35
    .line 78
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v3, "android.view.textservice.scs"

    #@38
    move-object/from16 v0, v19

    #@3a
    invoke-virtual {v0, v15, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@3d
    move-result-object v14

    #@3e
    .line 79
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v14, :cond_1

    #@40
    .line 80
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@42
    const-string/jumbo v4, "No android.view.textservice.scs meta-data"

    #@45
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@48
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@49
    .line 130
    .end local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v18    # "settingsActivityComponent":Ljava/lang/String;
    :catch_0
    move-exception v11

    #@4a
    .line 131
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Landroid/view/textservice/SpellCheckerInfo;->TAG:Ljava/lang/String;

    #@4c
    new-instance v4, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v5, "Caught exception: "

    #@54
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v4

    #@5c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@63
    .line 132
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@65
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    #@67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@6a
    const-string/jumbo v5, "Unable to create context for: "

    #@6d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v4

    #@71
    move-object/from16 v0, v19

    #@73
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object v4

    #@7d
    .line 132
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@80
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@81
    .line 134
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    #@82
    .line 135
    if-eqz v14, :cond_0

    #@84
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    #@87
    .line 134
    :cond_0
    throw v3

    #@88
    .line 84
    .restart local v14    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v18    # "settingsActivityComponent":Ljava/lang/String;
    :cond_1
    :try_start_2
    move-object/from16 v0, v19

    #@8a
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8c
    invoke-virtual {v15, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@8f
    move-result-object v16

    #@90
    .line 85
    .local v16, "res":Landroid/content/res/Resources;
    invoke-static {v14}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@93
    move-result-object v9

    #@94
    .line 87
    .local v9, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    #@97
    move-result v21

    #@98
    .local v21, "type":I
    const/4 v3, 0x1

    #@99
    move/from16 v0, v21

    #@9b
    if-eq v0, v3, :cond_3

    #@9d
    .line 88
    const/4 v3, 0x2

    #@9e
    move/from16 v0, v21

    #@a0
    if-ne v0, v3, :cond_2

    #@a2
    .line 91
    :cond_3
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@a5
    move-result-object v13

    #@a6
    .line 92
    .local v13, "nodeName":Ljava/lang/String;
    const-string/jumbo v3, "spell-checker"

    #@a9
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ac
    move-result v3

    #@ad
    if-nez v3, :cond_4

    #@af
    .line 93
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@b1
    .line 94
    const-string/jumbo v4, "Meta-data does not start with spell-checker tag"

    #@b4
    .line 93
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@b7
    throw v3

    #@b8
    .line 98
    :cond_4
    sget-object v3, Lcom/android/internal/R$styleable;->SpellChecker:[I

    #@ba
    .line 97
    move-object/from16 v0, v16

    #@bc
    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@bf
    move-result-object v17

    #@c0
    .line 99
    .local v17, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    #@c1
    const/4 v4, 0x0

    #@c2
    move-object/from16 v0, v17

    #@c4
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c7
    move-result v12

    #@c8
    .line 101
    const/4 v3, 0x1

    #@c9
    .line 100
    move-object/from16 v0, v17

    #@cb
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@ce
    move-result-object v18

    #@cf
    .line 102
    .local v18, "settingsActivityComponent":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    #@d2
    .line 104
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@d5
    move-result v10

    #@d6
    .line 106
    .local v10, "depth":I
    :cond_5
    :goto_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    #@d9
    move-result v21

    #@da
    const/4 v3, 0x3

    #@db
    move/from16 v0, v21

    #@dd
    if-ne v0, v3, :cond_6

    #@df
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@e2
    move-result v3

    #@e3
    if-le v3, v10, :cond_8

    #@e5
    .line 107
    :cond_6
    const/4 v3, 0x1

    #@e6
    move/from16 v0, v21

    #@e8
    if-eq v0, v3, :cond_8

    #@ea
    .line 108
    const/4 v3, 0x2

    #@eb
    move/from16 v0, v21

    #@ed
    if-ne v0, v3, :cond_5

    #@ef
    .line 109
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@f2
    move-result-object v20

    #@f3
    .line 110
    .local v20, "subtypeNodeName":Ljava/lang/String;
    const-string/jumbo v3, "subtype"

    #@f6
    move-object/from16 v0, v20

    #@f8
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v3

    #@fc
    if-nez v3, :cond_7

    #@fe
    .line 111
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@100
    .line 112
    const-string/jumbo v4, "Meta-data in spell-checker does not start with subtype tag"

    #@103
    .line 111
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@106
    throw v3

    #@107
    .line 115
    :cond_7
    sget-object v3, Lcom/android/internal/R$styleable;->SpellChecker_Subtype:[I

    #@109
    .line 114
    move-object/from16 v0, v16

    #@10b
    invoke-virtual {v0, v9, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10e
    move-result-object v8

    #@10f
    .line 116
    .local v8, "a":Landroid/content/res/TypedArray;
    new-instance v2, Landroid/view/textservice/SpellCheckerSubtype;

    #@111
    .line 117
    const/4 v3, 0x0

    #@112
    .line 118
    const/4 v4, 0x0

    #@113
    .line 117
    invoke-virtual {v8, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@116
    move-result v3

    #@117
    .line 119
    const/4 v4, 0x1

    #@118
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@11b
    move-result-object v4

    #@11c
    .line 121
    const/4 v5, 0x4

    #@11d
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@120
    move-result-object v5

    #@121
    .line 123
    const/4 v6, 0x2

    #@122
    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@125
    move-result-object v6

    #@126
    .line 125
    const/4 v7, 0x3

    #@127
    .line 126
    const/16 v22, 0x0

    #@129
    .line 125
    move/from16 v0, v22

    #@12b
    invoke-virtual {v8, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    #@12e
    move-result v7

    #@12f
    .line 116
    invoke-direct/range {v2 .. v7}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    #@132
    .line 127
    .local v2, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    move-object/from16 v0, p0

    #@134
    iget-object v3, v0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@136
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@139
    goto :goto_0

    #@13a
    .line 135
    .end local v2    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v8    # "a":Landroid/content/res/TypedArray;
    .end local v20    # "subtypeNodeName":Ljava/lang/String;
    :cond_8
    if-eqz v14, :cond_9

    #@13c
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    #@13f
    .line 137
    :cond_9
    move-object/from16 v0, p0

    #@141
    iput v12, v0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    #@143
    .line 138
    move-object/from16 v0, v18

    #@145
    move-object/from16 v1, p0

    #@147
    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    #@149
    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@a
    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    #@10
    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    #@16
    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    #@1c
    .line 149
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
    .line 150
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@28
    sget-object v1, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    #@2d
    .line 145
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 270
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v3

    #@9
    const-string/jumbo v4, "mId="

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1d
    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "mSettingsActivityName="

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    const-string/jumbo v4, "Service:"

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@51
    .line 280
    iget-object v3, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@53
    new-instance v4, Landroid/util/PrintWriterPrinter;

    #@55
    invoke-direct {v4, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    #@58
    new-instance v5, Ljava/lang/StringBuilder;

    #@5a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v5

    #@61
    const-string/jumbo v6, "  "

    #@64
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v5

    #@68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v5

    #@6c
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@6f
    .line 281
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    #@72
    move-result v0

    #@73
    .line 282
    .local v0, "N":I
    const/4 v1, 0x0

    #@74
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@76
    .line 283
    invoke-virtual {p0, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    #@79
    move-result-object v2

    #@7a
    .line 284
    .local v2, "st":Landroid/view/textservice/SpellCheckerSubtype;
    new-instance v3, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    const-string/jumbo v4, "  "

    #@86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v3

    #@8a
    const-string/jumbo v4, "Subtype #"

    #@8d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    const-string/jumbo v4, ":"

    #@98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v3

    #@a0
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a3
    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v3

    #@ac
    const-string/jumbo v4, "    "

    #@af
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v3

    #@b3
    const-string/jumbo v4, "locale="

    #@b6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    #@bd
    move-result-object v4

    #@be
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v3

    #@c2
    .line 286
    const-string/jumbo v4, " languageTag="

    #@c5
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v3

    #@c9
    .line 286
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    #@cc
    move-result-object v4

    #@cd
    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v3

    #@d1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d4
    move-result-object v3

    #@d5
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d8
    .line 287
    new-instance v3, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v3

    #@e1
    const-string/jumbo v4, "    "

    #@e4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v3

    #@e8
    const-string/jumbo v4, "extraValue="

    #@eb
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v3

    #@ef
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    #@f2
    move-result-object v4

    #@f3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v3

    #@f7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fa
    move-result-object v3

    #@fb
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@fe
    .line 282
    add-int/lit8 v1, v1, 0x1

    #@100
    goto/16 :goto_0

    #@102
    .line 276
    .end local v2    # "st":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_0
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 165
    new-instance v0, Landroid/content/ComponentName;

    #@2
    .line 166
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
    .line 165
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 158
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 173
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
    .line 233
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
    .line 246
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 262
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
    .line 253
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
    .line 224
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
    .line 214
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
    .line 215
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
    .line 184
    iget v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 185
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 186
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 187
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@11
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@14
    .line 188
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@19
    .line 183
    return-void
.end method
