.class public final Landroid/view/textservice/SpellCheckerInfo;
.super Ljava/lang/Object;
.source "SpellCheckerInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mLabel:I

.field private final greylist-max-o mService:Landroid/content/pm/ResolveInfo;

.field private final greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field private final greylist-max-o mSubtypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    const-class v0, Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/SpellCheckerInfo;->TAG:Ljava/lang/String;

    .line 196
    new-instance v0, Landroid/view/textservice/SpellCheckerInfo$1;

    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerInfo$1;-><init>()V

    sput-object v0, Landroid/view/textservice/SpellCheckerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 68
    iput-object v2, v1, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 69
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 70
    .local v3, "si":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 73
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 74
    .local v5, "label":I
    const/4 v6, 0x0

    .line 76
    .local v6, "settingsActivityComponent":Ljava/lang/String;
    const/4 v7, 0x0

    .line 78
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_28
    const-string v0, "android.view.textservice.scs"

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v7, v0

    .line 79
    if-eqz v7, :cond_e7

    .line 84
    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    .line 87
    .local v8, "attrs":Landroid/util/AttributeSet;
    :goto_3b
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    move v10, v9

    .local v10, "type":I
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v9, v12, :cond_47

    if-eq v10, v11, :cond_47

    goto :goto_3b

    .line 91
    :cond_47
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "nodeName":Ljava/lang/String;
    const-string/jumbo v13, "spell-checker"

    invoke-virtual {v13, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_dd

    .line 97
    sget-object v13, Lcom/android/internal/R$styleable;->SpellChecker:[I

    invoke-virtual {v0, v8, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 99
    .local v13, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v13, v14, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move v5, v15

    .line 100
    invoke-virtual {v13, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object v6, v15

    .line 102
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 106
    .local v15, "depth":I
    :goto_6c
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move v10, v14

    const/4 v11, 0x3

    if-ne v14, v11, :cond_7a

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v15, :cond_d3

    :cond_7a
    if-eq v10, v12, :cond_d1

    .line 108
    const/4 v14, 0x2

    if-ne v10, v14, :cond_c9

    .line 109
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 110
    .local v14, "subtypeNodeName":Ljava/lang/String;
    const-string/jumbo v11, "subtype"

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bf

    .line 114
    sget-object v11, Lcom/android/internal/R$styleable;->SpellChecker_Subtype:[I

    invoke-virtual {v0, v8, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 116
    .local v11, "a":Landroid/content/res/TypedArray;
    new-instance v17, Landroid/view/textservice/SpellCheckerSubtype;

    .line 117
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 119
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 121
    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 123
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 125
    move-object/from16 v16, v0

    const/4 v0, 0x0

    const/4 v12, 0x3

    .end local v0    # "res":Landroid/content/res/Resources;
    .local v16, "res":Landroid/content/res/Resources;
    invoke-virtual {v11, v12, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v22

    invoke-direct/range {v17 .. v22}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v12, v17

    .line 127
    .local v12, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    iget-object v0, v1, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    nop

    .end local v11    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v14    # "subtypeNodeName":Ljava/lang/String;
    goto :goto_cb

    .line 111
    .end local v16    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v14    # "subtypeNodeName":Ljava/lang/String;
    :cond_bf
    move-object/from16 v16, v0

    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v16    # "res":Landroid/content/res/Resources;
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v11, "Meta-data in spell-checker does not start with subtype tag"

    invoke-direct {v0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "si":Landroid/content/pm/ServiceInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "label":I
    .end local v6    # "settingsActivityComponent":Ljava/lang/String;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/view/textservice/SpellCheckerInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    throw v0
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_c9} :catch_f1
    .catchall {:try_start_28 .. :try_end_c9} :catchall_ef

    .line 108
    .end local v14    # "subtypeNodeName":Ljava/lang/String;
    .end local v16    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v3    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "label":I
    .restart local v6    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/view/textservice/SpellCheckerInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    :cond_c9
    move-object/from16 v16, v0

    .line 106
    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v16    # "res":Landroid/content/res/Resources;
    :goto_cb
    move-object/from16 v0, v16

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v14, 0x0

    goto :goto_6c

    .end local v16    # "res":Landroid/content/res/Resources;
    .restart local v0    # "res":Landroid/content/res/Resources;
    :cond_d1
    move-object/from16 v16, v0

    .line 136
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v15    # "depth":I
    :cond_d3
    if-eqz v7, :cond_d8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 138
    :cond_d8
    iput v5, v1, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    .line 139
    iput-object v6, v1, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 140
    return-void

    .line 93
    .restart local v0    # "res":Landroid/content/res/Resources;
    .restart local v8    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "nodeName":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_dd
    move-object/from16 v16, v0

    .end local v0    # "res":Landroid/content/res/Resources;
    .restart local v16    # "res":Landroid/content/res/Resources;
    :try_start_df
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v11, "Meta-data does not start with spell-checker tag"

    invoke-direct {v0, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "si":Landroid/content/pm/ServiceInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "label":I
    .end local v6    # "settingsActivityComponent":Ljava/lang/String;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/view/textservice/SpellCheckerInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    throw v0

    .line 80
    .end local v8    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v16    # "res":Landroid/content/res/Resources;
    .restart local v3    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "label":I
    .restart local v6    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/view/textservice/SpellCheckerInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    :cond_e7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "No android.view.textservice.scs meta-data"

    invoke-direct {v0, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "si":Landroid/content/pm/ServiceInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "label":I
    .end local v6    # "settingsActivityComponent":Ljava/lang/String;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/view/textservice/SpellCheckerInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    throw v0
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_ef} :catch_f1
    .catchall {:try_start_df .. :try_end_ef} :catchall_ef

    .line 136
    .restart local v3    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "label":I
    .restart local v6    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/view/textservice/SpellCheckerInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    :catchall_ef
    move-exception v0

    goto :goto_125

    .line 131
    :catch_f1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    :try_start_f2
    sget-object v8, Landroid/view/textservice/SpellCheckerInfo;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caught exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to create context for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "si":Landroid/content/pm/ServiceInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "label":I
    .end local v6    # "settingsActivityComponent":Ljava/lang/String;
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/view/textservice/SpellCheckerInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "service":Landroid/content/pm/ResolveInfo;
    throw v8
    :try_end_125
    .catchall {:try_start_f2 .. :try_end_125} :catchall_ef

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "label":I
    .restart local v6    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/view/textservice/SpellCheckerInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "service":Landroid/content/pm/ResolveInfo;
    :goto_125
    if-eqz v7, :cond_12a

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 137
    :cond_12a
    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 150
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 151
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 152
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 271
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    .line 283
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_70
    if-ge v1, v0, :cond_e3

    .line 284
    invoke-virtual {p0, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v2

    .line 285
    .local v2, "st":Landroid/view/textservice/SpellCheckerSubtype;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  Subtype #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " languageTag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 287
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    extraValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    .end local v2    # "st":Landroid/view/textservice/SpellCheckerSubtype;
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 290
    .end local v1    # "i":I
    :cond_e3
    return-void
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 166
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public whitelist getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;
    .registers 3
    .param p1, "index"    # I

    .line 263
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/SpellCheckerSubtype;

    return-object v0
.end method

.method public whitelist getSubtypeCount()I
    .registers 2

    .line 254
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 225
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 215
    iget v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    if-eqz v0, :cond_18

    if-nez p1, :cond_7

    goto :goto_18

    .line 216
    :cond_7
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 215
    :cond_18
    :goto_18
    const-string v0, ""

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 185
    iget v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 189
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerInfo;->mSubtypes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 190
    return-void
.end method
