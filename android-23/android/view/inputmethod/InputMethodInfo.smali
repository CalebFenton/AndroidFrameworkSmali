.class public final Landroid/view/inputmethod/InputMethodInfo;
.super Ljava/lang/Object;
.source "InputMethodInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "InputMethodInfo"


# instance fields
.field private final mForceDefault:Z

.field final mId:Ljava/lang/String;

.field private final mIsAuxIme:Z

.field final mIsDefaultResId:I

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSettingsActivityName:Ljava/lang/String;

.field private final mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

.field private final mSupportsSwitchingToNextInputMethod:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 505
    new-instance v0, Landroid/view/inputmethod/InputMethodInfo$1;

    #@2
    invoke-direct {v0}, Landroid/view/inputmethod/InputMethodInfo$1;-><init>()V

    #@5
    .line 504
    sput-object v0, Landroid/view/inputmethod/InputMethodInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
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
    .line 116
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V

    #@4
    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/Map;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    .local p3, "additionalSubtypesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 131
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@9
    .line 132
    move-object/from16 v0, p2

    #@b
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@d
    move-object/from16 v17, v0

    #@f
    .line 133
    .local v17, "si":Landroid/content/pm/ServiceInfo;
    new-instance v22, Landroid/content/ComponentName;

    #@11
    move-object/from16 v0, v17

    #@13
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@15
    move-object/from16 v23, v0

    #@17
    move-object/from16 v0, v17

    #@19
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@1b
    move-object/from16 v24, v0

    #@1d
    invoke-direct/range {v22 .. v24}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@20
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@23
    move-result-object v22

    #@24
    move-object/from16 v0, v22

    #@26
    move-object/from16 v1, p0

    #@28
    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@2a
    .line 134
    const/4 v9, 0x1

    #@2b
    .line 135
    .local v9, "isAuxIme":Z
    const/16 v20, 0x0

    #@2d
    .line 136
    .local v20, "supportsSwitchingToNextInputMethod":Z
    const/16 v22, 0x0

    #@2f
    move/from16 v0, v22

    #@31
    move-object/from16 v1, p0

    #@33
    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    #@35
    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@38
    move-result-object v13

    #@39
    .line 139
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    #@3b
    .line 140
    .local v16, "settingsActivityComponent":Ljava/lang/String;
    const/4 v10, 0x0

    #@3c
    .line 142
    .local v10, "isDefaultResId":I
    const/4 v12, 0x0

    #@3d
    .line 143
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v19, Ljava/util/ArrayList;

    #@3f
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@42
    .line 145
    .local v19, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :try_start_0
    const-string/jumbo v22, "android.view.im"

    #@45
    move-object/from16 v0, v17

    #@47
    move-object/from16 v1, v22

    #@49
    invoke-virtual {v0, v13, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@4c
    move-result-object v12

    #@4d
    .line 146
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v12, :cond_1

    #@4f
    .line 147
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    #@51
    const-string/jumbo v23, "No android.view.im meta-data"

    #@54
    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@57
    throw v22
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@58
    .line 215
    .end local v12    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v16    # "settingsActivityComponent":Ljava/lang/String;
    .end local v20    # "supportsSwitchingToNextInputMethod":Z
    :catch_0
    move-exception v7

    #@59
    .line 216
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    #@5b
    .line 217
    new-instance v23, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    const-string/jumbo v24, "Unable to create context for: "

    #@63
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v23

    #@67
    move-object/from16 v0, v17

    #@69
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@6b
    move-object/from16 v24, v0

    #@6d
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    move-result-object v23

    #@71
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v23

    #@75
    .line 216
    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@78
    throw v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@79
    .line 218
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v22

    #@7a
    .line 219
    if-eqz v12, :cond_0

    #@7c
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    #@7f
    .line 218
    :cond_0
    throw v22

    #@80
    .line 151
    .restart local v12    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v16    # "settingsActivityComponent":Ljava/lang/String;
    .restart local v20    # "supportsSwitchingToNextInputMethod":Z
    :cond_1
    :try_start_2
    move-object/from16 v0, v17

    #@82
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@84
    move-object/from16 v22, v0

    #@86
    move-object/from16 v0, v22

    #@88
    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@8b
    move-result-object v14

    #@8c
    .line 153
    .local v14, "res":Landroid/content/res/Resources;
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@8f
    move-result-object v5

    #@90
    .line 156
    .local v5, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    #@93
    move-result v21

    #@94
    .local v21, "type":I
    const/16 v22, 0x1

    #@96
    move/from16 v0, v21

    #@98
    move/from16 v1, v22

    #@9a
    if-eq v0, v1, :cond_3

    #@9c
    .line 157
    const/16 v22, 0x2

    #@9e
    move/from16 v0, v21

    #@a0
    move/from16 v1, v22

    #@a2
    if-ne v0, v1, :cond_2

    #@a4
    .line 160
    :cond_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@a7
    move-result-object v11

    #@a8
    .line 161
    .local v11, "nodeName":Ljava/lang/String;
    const-string/jumbo v22, "input-method"

    #@ab
    move-object/from16 v0, v22

    #@ad
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b0
    move-result v22

    #@b1
    if-nez v22, :cond_4

    #@b3
    .line 162
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    #@b5
    .line 163
    const-string/jumbo v23, "Meta-data does not start with input-method tag"

    #@b8
    .line 162
    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v22

    #@bc
    .line 167
    :cond_4
    sget-object v22, Lcom/android/internal/R$styleable;->InputMethod:[I

    #@be
    .line 166
    move-object/from16 v0, v22

    #@c0
    invoke-virtual {v14, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c3
    move-result-object v15

    #@c4
    .line 169
    .local v15, "sa":Landroid/content/res/TypedArray;
    const/16 v22, 0x1

    #@c6
    .line 168
    move/from16 v0, v22

    #@c8
    invoke-virtual {v15, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@cb
    move-result-object v16

    #@cc
    .line 171
    .local v16, "settingsActivityComponent":Ljava/lang/String;
    const/16 v22, 0x0

    #@ce
    const/16 v23, 0x0

    #@d0
    .line 170
    move/from16 v0, v22

    #@d2
    move/from16 v1, v23

    #@d4
    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@d7
    move-result v10

    #@d8
    .line 173
    const/16 v22, 0x2

    #@da
    .line 174
    const/16 v23, 0x0

    #@dc
    .line 172
    move/from16 v0, v22

    #@de
    move/from16 v1, v23

    #@e0
    invoke-virtual {v15, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@e3
    move-result v20

    #@e4
    .line 175
    .local v20, "supportsSwitchingToNextInputMethod":Z
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    #@e7
    .line 177
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@ea
    move-result v6

    #@eb
    .line 179
    .local v6, "depth":I
    :cond_5
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    #@ee
    move-result v21

    #@ef
    const/16 v22, 0x3

    #@f1
    move/from16 v0, v21

    #@f3
    move/from16 v1, v22

    #@f5
    if-ne v0, v1, :cond_6

    #@f7
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@fa
    move-result v22

    #@fb
    move/from16 v0, v22

    #@fd
    if-le v0, v6, :cond_9

    #@ff
    .line 180
    :cond_6
    const/16 v22, 0x1

    #@101
    move/from16 v0, v21

    #@103
    move/from16 v1, v22

    #@105
    if-eq v0, v1, :cond_9

    #@107
    .line 181
    const/16 v22, 0x2

    #@109
    move/from16 v0, v21

    #@10b
    move/from16 v1, v22

    #@10d
    if-ne v0, v1, :cond_5

    #@10f
    .line 182
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@112
    move-result-object v11

    #@113
    .line 183
    const-string/jumbo v22, "subtype"

    #@116
    move-object/from16 v0, v22

    #@118
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11b
    move-result v22

    #@11c
    if-nez v22, :cond_7

    #@11e
    .line 184
    new-instance v22, Lorg/xmlpull/v1/XmlPullParserException;

    #@120
    .line 185
    const-string/jumbo v23, "Meta-data in input-method does not start with subtype tag"

    #@123
    .line 184
    invoke-direct/range {v22 .. v23}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@126
    throw v22

    #@127
    .line 188
    :cond_7
    sget-object v22, Lcom/android/internal/R$styleable;->InputMethod_Subtype:[I

    #@129
    .line 187
    move-object/from16 v0, v22

    #@12b
    invoke-virtual {v14, v5, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@12e
    move-result-object v3

    #@12f
    .line 189
    .local v3, "a":Landroid/content/res/TypedArray;
    new-instance v22, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@131
    invoke-direct/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    #@134
    .line 190
    const/16 v23, 0x0

    #@136
    .line 191
    const/16 v24, 0x0

    #@138
    .line 190
    move/from16 v0, v23

    #@13a
    move/from16 v1, v24

    #@13c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@13f
    move-result v23

    #@140
    .line 189
    invoke-virtual/range {v22 .. v23}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@143
    move-result-object v22

    #@144
    .line 192
    const/16 v23, 0x1

    #@146
    .line 193
    const/16 v24, 0x0

    #@148
    .line 192
    move/from16 v0, v23

    #@14a
    move/from16 v1, v24

    #@14c
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@14f
    move-result v23

    #@150
    .line 189
    invoke-virtual/range {v22 .. v23}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@153
    move-result-object v22

    #@154
    .line 194
    const/16 v23, 0x2

    #@156
    move/from16 v0, v23

    #@158
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@15b
    move-result-object v23

    #@15c
    .line 189
    invoke-virtual/range {v22 .. v23}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@15f
    move-result-object v22

    #@160
    .line 196
    const/16 v23, 0x3

    #@162
    move/from16 v0, v23

    #@164
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@167
    move-result-object v23

    #@168
    .line 189
    invoke-virtual/range {v22 .. v23}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@16b
    move-result-object v22

    #@16c
    .line 198
    const/16 v23, 0x4

    #@16e
    move/from16 v0, v23

    #@170
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@173
    move-result-object v23

    #@174
    .line 189
    invoke-virtual/range {v22 .. v23}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@177
    move-result-object v22

    #@178
    .line 200
    const/16 v23, 0x5

    #@17a
    .line 201
    const/16 v24, 0x0

    #@17c
    .line 200
    move/from16 v0, v23

    #@17e
    move/from16 v1, v24

    #@180
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@183
    move-result v23

    #@184
    .line 189
    invoke-virtual/range {v22 .. v23}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@187
    move-result-object v22

    #@188
    .line 203
    const/16 v23, 0x6

    #@18a
    .line 204
    const/16 v24, 0x0

    #@18c
    .line 202
    move/from16 v0, v23

    #@18e
    move/from16 v1, v24

    #@190
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@193
    move-result v23

    #@194
    .line 189
    invoke-virtual/range {v22 .. v23}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setOverridesImplicitlyEnabledSubtype(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@197
    move-result-object v22

    #@198
    .line 205
    const/16 v23, 0x7

    #@19a
    .line 206
    const/16 v24, 0x0

    #@19c
    .line 205
    move/from16 v0, v23

    #@19e
    move/from16 v1, v24

    #@1a0
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1a3
    move-result v23

    #@1a4
    .line 189
    invoke-virtual/range {v22 .. v23}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1a7
    move-result-object v22

    #@1a8
    .line 207
    const/16 v23, 0x8

    #@1aa
    .line 208
    const/16 v24, 0x0

    #@1ac
    .line 207
    move/from16 v0, v23

    #@1ae
    move/from16 v1, v24

    #@1b0
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b3
    move-result v23

    #@1b4
    .line 189
    invoke-virtual/range {v22 .. v23}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAsciiCapable(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    #@1b7
    move-result-object v22

    #@1b8
    invoke-virtual/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    #@1bb
    move-result-object v18

    #@1bc
    .line 209
    .local v18, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@1bf
    move-result v22

    #@1c0
    if-nez v22, :cond_8

    #@1c2
    .line 210
    const/4 v9, 0x0

    #@1c3
    .line 212
    :cond_8
    move-object/from16 v0, v19

    #@1c5
    move-object/from16 v1, v18

    #@1c7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1ca
    goto/16 :goto_0

    #@1cc
    .line 219
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_9
    if-eqz v12, :cond_a

    #@1ce
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    #@1d1
    .line 222
    :cond_a
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    #@1d4
    move-result v22

    #@1d5
    if-nez v22, :cond_b

    #@1d7
    .line 223
    const/4 v9, 0x0

    #@1d8
    .line 226
    :cond_b
    if-eqz p3, :cond_d

    #@1da
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@1de
    move-object/from16 v22, v0

    #@1e0
    move-object/from16 v0, p3

    #@1e2
    move-object/from16 v1, v22

    #@1e4
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1e7
    move-result v22

    #@1e8
    if-eqz v22, :cond_d

    #@1ea
    .line 227
    move-object/from16 v0, p0

    #@1ec
    iget-object v0, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@1ee
    move-object/from16 v22, v0

    #@1f0
    move-object/from16 v0, p3

    #@1f2
    move-object/from16 v1, v22

    #@1f4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f7
    move-result-object v4

    #@1f8
    check-cast v4, Ljava/util/List;

    #@1fa
    .line 228
    .local v4, "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@1fd
    move-result v2

    #@1fe
    .line 229
    .local v2, "N":I
    const/4 v8, 0x0

    #@1ff
    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_d

    #@201
    .line 230
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@204
    move-result-object v18

    #@205
    check-cast v18, Landroid/view/inputmethod/InputMethodSubtype;

    #@207
    .line 231
    .restart local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, v19

    #@209
    move-object/from16 v1, v18

    #@20b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@20e
    move-result v22

    #@20f
    if-nez v22, :cond_c

    #@211
    .line 232
    move-object/from16 v0, v19

    #@213
    move-object/from16 v1, v18

    #@215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@218
    .line 229
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@21a
    goto :goto_1

    #@21b
    .line 234
    :cond_c
    const-string/jumbo v22, "InputMethodInfo"

    #@21e
    new-instance v23, Ljava/lang/StringBuilder;

    #@220
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@223
    const-string/jumbo v24, "Duplicated subtype definition found: "

    #@226
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@229
    move-result-object v23

    #@22a
    .line 235
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@22d
    move-result-object v24

    #@22e
    .line 234
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@231
    move-result-object v23

    #@232
    .line 235
    const-string/jumbo v24, ", "

    #@235
    .line 234
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@238
    move-result-object v23

    #@239
    .line 235
    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@23c
    move-result-object v24

    #@23d
    .line 234
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@240
    move-result-object v23

    #@241
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@244
    move-result-object v23

    #@245
    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@248
    goto :goto_2

    #@249
    .line 239
    .end local v2    # "N":I
    .end local v4    # "additionalSubtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v8    # "i":I
    .end local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_d
    new-instance v22, Landroid/view/inputmethod/InputMethodSubtypeArray;

    #@24b
    move-object/from16 v0, v22

    #@24d
    move-object/from16 v1, v19

    #@24f
    invoke-direct {v0, v1}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    #@252
    move-object/from16 v0, v22

    #@254
    move-object/from16 v1, p0

    #@256
    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    #@258
    .line 240
    move-object/from16 v0, v16

    #@25a
    move-object/from16 v1, p0

    #@25c
    iput-object v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    #@25e
    .line 241
    move-object/from16 v0, p0

    #@260
    iput v10, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    #@262
    .line 242
    move-object/from16 v0, p0

    #@264
    iput-boolean v9, v0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    #@266
    .line 243
    move/from16 v0, v20

    #@268
    move-object/from16 v1, p0

    #@26a
    iput-boolean v0, v1, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    #@26c
    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZ)V
    .locals 8
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p5, "isDefaultResId"    # I
    .param p6, "forceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 274
    .local p4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v7, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    .line 273
    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZ)V

    #@b
    .line 272
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZ)V
    .locals 4
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "isAuxIme"    # Z
    .param p3, "settingsActivity"    # Ljava/lang/String;
    .param p5, "isDefaultResId"    # I
    .param p6, "forceDefault"    # Z
    .param p7, "supportsSwitchingToNextInputMethod"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;IZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 281
    .local p4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 284
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@5
    .line 285
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@7
    .line 286
    new-instance v1, Landroid/content/ComponentName;

    #@9
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@b
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@d
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@10
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@16
    .line 287
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    #@18
    .line 288
    iput p5, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    #@1a
    .line 289
    iput-boolean p2, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    #@1c
    .line 290
    new-instance v1, Landroid/view/inputmethod/InputMethodSubtypeArray;

    #@1e
    invoke-direct {v1, p4}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Ljava/util/List;)V

    #@21
    iput-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    #@23
    .line 291
    iput-boolean p6, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    #@25
    .line 292
    iput-boolean p7, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    #@27
    .line 283
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@b
    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    #@11
    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    #@17
    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v0

    #@1b
    if-ne v0, v1, :cond_0

    #@1d
    move v0, v1

    #@1e
    :goto_0
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    #@20
    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    if-ne v0, v1, :cond_1

    #@26
    :goto_1
    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    #@28
    .line 252
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2a
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@30
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@32
    .line 253
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtypeArray;

    #@34
    invoke-direct {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;-><init>(Landroid/os/Parcel;)V

    #@37
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    #@39
    .line 254
    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    #@3b
    .line 246
    return-void

    #@3c
    :cond_0
    move v0, v2

    #@3d
    .line 250
    goto :goto_0

    #@3e
    :cond_1
    move v1, v2

    #@3f
    .line 251
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "settingsActivity"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 262
    invoke-static {p1, p2, p3}, Landroid/view/inputmethod/InputMethodInfo;->buildDummyResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;

    #@4
    move-result-object v1

    #@5
    const/4 v4, 0x0

    #@6
    .line 263
    const/4 v7, 0x1

    #@7
    move-object v0, p0

    #@8
    move-object v3, p4

    #@9
    move v5, v2

    #@a
    move v6, v2

    #@b
    .line 262
    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/List;IZZ)V

    #@e
    .line 261
    return-void
.end method

.method private static buildDummyResolveInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 297
    new-instance v1, Landroid/content/pm/ResolveInfo;

    #@3
    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    #@6
    .line 298
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/pm/ServiceInfo;

    #@8
    invoke-direct {v2}, Landroid/content/pm/ServiceInfo;-><init>()V

    #@b
    .line 299
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    #@d
    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    #@10
    .line 300
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iput-object p0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@12
    .line 301
    iput-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    #@14
    .line 302
    iput-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    .line 303
    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->enabled:Z

    #@18
    .line 304
    iput-object p0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@1a
    .line 305
    iput-object p1, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@1c
    .line 306
    iput-boolean v3, v2, Landroid/content/pm/ServiceInfo;->exported:Z

    #@1e
    .line 307
    iput-object p2, v2, Landroid/content/pm/ServiceInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@20
    .line 308
    iput-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@22
    .line 309
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 519
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "mId="

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 432
    const-string/jumbo v1, " mSettingsActivityName="

    #@19
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 432
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    #@1f
    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@2a
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    const-string/jumbo v1, "mIsDefaultResId=0x"

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 434
    iget v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    #@3c
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@4b
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    const-string/jumbo v1, "Service:"

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@62
    .line 436
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@64
    new-instance v1, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    const-string/jumbo v2, "  "

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v1

    #@78
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@7b
    .line 430
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 455
    if-ne p1, p0, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 456
    :cond_0
    if-nez p1, :cond_1

    #@7
    return v2

    #@8
    .line 458
    :cond_1
    instance-of v1, p1, Landroid/view/inputmethod/InputMethodInfo;

    #@a
    if-nez v1, :cond_2

    #@c
    return v2

    #@d
    :cond_2
    move-object v0, p1

    #@e
    .line 460
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@10
    .line 461
    .local v0, "obj":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@12
    iget-object v2, v0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v1

    #@18
    return v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 348
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8
    .line 349
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@e
    .line 348
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIsDefaultResourceId()I
    .locals 1

    #@0
    .prologue
    .line 408
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    #@2
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 324
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

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
    .line 340
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 332
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@4
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 383
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->get(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSubtypeCount()I
    .locals 1

    #@0
    .prologue
    .line 390
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    #@2
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtypeArray;->getCount()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 466
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isAuxiliaryIme()Z
    .locals 1

    #@0
    .prologue
    .line 473
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    #@2
    return v0
.end method

.method public isDefault(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 416
    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodInfo;->mForceDefault:Z

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 417
    const/4 v2, 0x1

    #@6
    return v2

    #@7
    .line 420
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_1

    #@d
    .line 421
    return v4

    #@e
    .line 423
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    const/4 v3, 0x0

    #@13
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v1

    #@1b
    .line 424
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getIsDefaultResourceId()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result v2

    #@23
    return v2

    #@24
    .line 425
    .end local v1    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    #@25
    .line 426
    .local v0, "e":Ljava/lang/Exception;
    return v4
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 359
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public supportsSwitchingToNextInputMethod()Z
    .locals 1

    #@0
    .prologue
    .line 481
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "InputMethodInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 442
    const-string/jumbo v1, ", settings: "

    #@15
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 443
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    #@1b
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 443
    const-string/jumbo v1, "}"

    #@22
    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 492
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mId:Ljava/lang/String;

    #@4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7
    .line 493
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSettingsActivityName:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 494
    iget v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsDefaultResId:I

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 495
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mIsAuxIme:Z

    #@13
    if-eqz v0, :cond_0

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 496
    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSupportsSwitchingToNextInputMethod:Z

    #@1b
    if-eqz v0, :cond_1

    #@1d
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 497
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@22
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 498
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodInfo;->mSubtypes:Landroid/view/inputmethod/InputMethodSubtypeArray;

    #@27
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodSubtypeArray;->writeToParcel(Landroid/os/Parcel;)V

    #@2a
    .line 491
    return-void

    #@2b
    :cond_0
    move v0, v2

    #@2c
    .line 495
    goto :goto_0

    #@2d
    :cond_1
    move v1, v2

    #@2e
    .line 496
    goto :goto_1
.end method
