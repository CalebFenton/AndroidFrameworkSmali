.class public final Landroid/app/admin/DeviceAdminInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminInfo$1;,
        Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "DeviceAdminInfo"

.field public static final USES_ENCRYPTED_STORAGE:I = 0x7

.field public static final USES_POLICY_DEVICE_OWNER:I = -0x2

.field public static final USES_POLICY_DISABLE_CAMERA:I = 0x8

.field public static final USES_POLICY_DISABLE_KEYGUARD_FEATURES:I = 0x9

.field public static final USES_POLICY_EXPIRE_PASSWORD:I = 0x6

.field public static final USES_POLICY_FORCE_LOCK:I = 0x3

.field public static final USES_POLICY_LIMIT_PASSWORD:I = 0x0

.field public static final USES_POLICY_PROFILE_OWNER:I = -0x1

.field public static final USES_POLICY_RESET_PASSWORD:I = 0x2

.field public static final USES_POLICY_SETS_GLOBAL_PROXY:I = 0x5

.field public static final USES_POLICY_WATCH_LOGIN:I = 0x1

.field public static final USES_POLICY_WIPE_DATA:I = 0x4

.field static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mActivityInfo:Landroid/content/pm/ActivityInfo;

.field mUsesPolicies:I

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    #@0
    .prologue
    const v10, 0x104022a

    #@3
    .line 190
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@a
    .line 191
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    #@11
    .line 192
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    #@18
    .line 195
    sget-object v9, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@1a
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@1c
    const-string/jumbo v2, "wipe-data"

    #@1f
    const/4 v1, 0x4

    #@20
    .line 196
    const v3, 0x1040231

    #@23
    .line 197
    const v4, 0x1040232

    #@26
    .line 198
    const v5, 0x1040233

    #@29
    .line 199
    const v6, 0x1040234

    #@2c
    .line 195
    invoke-direct/range {v0 .. v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    #@2f
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 201
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@34
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@36
    const-string/jumbo v2, "reset-password"

    #@39
    const/4 v3, 0x2

    #@3a
    .line 202
    const v4, 0x104022d

    #@3d
    .line 203
    const v5, 0x104022e

    #@40
    .line 201
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 204
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@48
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@4a
    const-string/jumbo v2, "limit-password"

    #@4d
    const/4 v3, 0x0

    #@4e
    .line 205
    const v4, 0x1040228

    #@51
    .line 206
    const v5, 0x1040229

    #@54
    .line 204
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    .line 207
    sget-object v9, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@5c
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@5e
    const-string/jumbo v2, "watch-login"

    #@61
    const/4 v1, 0x1

    #@62
    .line 209
    const v4, 0x104022b

    #@65
    .line 211
    const v6, 0x104022c

    #@68
    move v3, v10

    #@69
    move v5, v10

    #@6a
    .line 207
    invoke-direct/range {v0 .. v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    #@6d
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 213
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@72
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@74
    const-string/jumbo v2, "force-lock"

    #@77
    const/4 v3, 0x3

    #@78
    .line 214
    const v4, 0x104022f

    #@7b
    .line 215
    const v5, 0x1040230

    #@7e
    .line 213
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@84
    .line 216
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@86
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@88
    const-string/jumbo v2, "set-global-proxy"

    #@8b
    const/4 v3, 0x5

    #@8c
    .line 217
    const v4, 0x1040235

    #@8f
    .line 218
    const v5, 0x1040236

    #@92
    .line 216
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@98
    .line 219
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@9a
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@9c
    const-string/jumbo v2, "expire-password"

    #@9f
    const/4 v3, 0x6

    #@a0
    .line 220
    const v4, 0x1040237

    #@a3
    .line 221
    const v5, 0x1040238

    #@a6
    .line 219
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@a9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac
    .line 222
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@ae
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@b0
    const-string/jumbo v2, "encrypted-storage"

    #@b3
    const/4 v3, 0x7

    #@b4
    .line 223
    const v4, 0x1040239

    #@b7
    .line 224
    const v5, 0x104023a

    #@ba
    .line 222
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@bd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c0
    .line 225
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@c2
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@c4
    const-string/jumbo v2, "disable-camera"

    #@c7
    const/16 v3, 0x8

    #@c9
    .line 226
    const v4, 0x104023b

    #@cc
    .line 227
    const v5, 0x104023c

    #@cf
    .line 225
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@d2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d5
    .line 228
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@d7
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@d9
    .line 229
    const-string/jumbo v2, "disable-keyguard-features"

    #@dc
    const/16 v3, 0x9

    #@de
    .line 230
    const v4, 0x104023d

    #@e1
    .line 231
    const v5, 0x104023e

    #@e4
    .line 228
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@e7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ea
    .line 233
    const/4 v7, 0x0

    #@eb
    .local v7, "i":I
    :goto_0
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@ed
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@f0
    move-result v0

    #@f1
    if-ge v7, v0, :cond_0

    #@f3
    .line 234
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@f5
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f8
    move-result-object v8

    #@f9
    check-cast v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@fb
    .line 235
    .local v8, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    #@fd
    iget v1, v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    #@ff
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@102
    .line 236
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    #@104
    iget-object v1, v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    #@106
    iget v2, v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    #@108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10b
    move-result-object v2

    #@10c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10f
    .line 233
    add-int/lit8 v7, v7, 0x1

    #@111
    goto :goto_0

    #@112
    .line 497
    .end local v8    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$1;

    #@114
    invoke-direct {v0}, Landroid/app/admin/DeviceAdminInfo$1;-><init>()V

    #@117
    .line 496
    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@119
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 276
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 278
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@9
    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@c
    move-result-object v8

    #@d
    .line 282
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    #@e
    .line 284
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    #@10
    iget-object v15, v0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@12
    const-string/jumbo v16, "android.app.device_admin"

    #@15
    move-object/from16 v0, v16

    #@17
    invoke-virtual {v15, v8, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1a
    move-result-object v7

    #@1b
    .line 285
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v7, :cond_1

    #@1d
    .line 286
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    #@1f
    const-string/jumbo v16, "No android.app.device_admin meta-data"

    #@22
    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@25
    throw v15
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 338
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    #@27
    .line 339
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    #@29
    .line 340
    new-instance v16, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v17, "Unable to create context for: "

    #@31
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v16

    #@35
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@39
    move-object/from16 v17, v0

    #@3b
    move-object/from16 v0, v17

    #@3d
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@3f
    move-object/from16 v17, v0

    #@41
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v16

    #@45
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v16

    #@49
    .line 339
    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 341
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v15

    #@4e
    .line 342
    if-eqz v7, :cond_0

    #@50
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@53
    .line 341
    :cond_0
    throw v15

    #@54
    .line 290
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@56
    iget-object v15, v0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@58
    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5a
    invoke-virtual {v8, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@5d
    move-result-object v10

    #@5e
    .line 292
    .local v10, "res":Landroid/content/res/Resources;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@61
    move-result-object v2

    #@62
    .line 295
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    #@65
    move-result v13

    #@66
    .local v13, "type":I
    const/4 v15, 0x1

    #@67
    if-eq v13, v15, :cond_3

    #@69
    .line 296
    const/4 v15, 0x2

    #@6a
    if-ne v13, v15, :cond_2

    #@6c
    .line 299
    :cond_3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    .line 300
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "device-admin"

    #@73
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v15

    #@77
    if-nez v15, :cond_4

    #@79
    .line 301
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    #@7b
    .line 302
    const-string/jumbo v16, "Meta-data does not start with device-admin tag"

    #@7e
    .line 301
    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@81
    throw v15

    #@82
    .line 306
    :cond_4
    sget-object v15, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    #@84
    .line 305
    invoke-virtual {v10, v2, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@87
    move-result-object v11

    #@88
    .line 309
    .local v11, "sa":Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    #@89
    const/16 v16, 0x1

    #@8b
    .line 308
    move/from16 v0, v16

    #@8d
    invoke-virtual {v11, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@90
    move-result v15

    #@91
    move-object/from16 v0, p0

    #@93
    iput-boolean v15, v0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    #@95
    .line 311
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    #@98
    .line 313
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@9b
    move-result v6

    #@9c
    .line 314
    .local v6, "outerDepth":I
    :cond_5
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    #@9f
    move-result v13

    #@a0
    const/4 v15, 0x1

    #@a1
    if-eq v13, v15, :cond_a

    #@a3
    .line 315
    const/4 v15, 0x3

    #@a4
    if-ne v13, v15, :cond_6

    #@a6
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@a9
    move-result v15

    #@aa
    if-le v15, v6, :cond_a

    #@ac
    .line 316
    :cond_6
    const/4 v15, 0x3

    #@ad
    if-eq v13, v15, :cond_5

    #@af
    const/4 v15, 0x4

    #@b0
    if-eq v13, v15, :cond_5

    #@b2
    .line 319
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@b5
    move-result-object v12

    #@b6
    .line 320
    .local v12, "tagName":Ljava/lang/String;
    const-string/jumbo v15, "uses-policies"

    #@b9
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@bc
    move-result v15

    #@bd
    if-eqz v15, :cond_5

    #@bf
    .line 321
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@c2
    move-result v4

    #@c3
    .line 322
    .local v4, "innerDepth":I
    :cond_7
    :goto_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    #@c6
    move-result v13

    #@c7
    const/4 v15, 0x1

    #@c8
    if-eq v13, v15, :cond_5

    #@ca
    .line 323
    const/4 v15, 0x3

    #@cb
    if-ne v13, v15, :cond_8

    #@cd
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@d0
    move-result v15

    #@d1
    if-le v15, v4, :cond_5

    #@d3
    .line 324
    :cond_8
    const/4 v15, 0x3

    #@d4
    if-eq v13, v15, :cond_7

    #@d6
    const/4 v15, 0x4

    #@d7
    if-eq v13, v15, :cond_7

    #@d9
    .line 327
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@dc
    move-result-object v9

    #@dd
    .line 328
    .local v9, "policyName":Ljava/lang/String;
    sget-object v15, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    #@df
    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e2
    move-result-object v14

    #@e3
    check-cast v14, Ljava/lang/Integer;

    #@e5
    .line 329
    .local v14, "val":Ljava/lang/Integer;
    if-eqz v14, :cond_9

    #@e7
    .line 330
    move-object/from16 v0, p0

    #@e9
    iget v15, v0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@eb
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@ee
    move-result v16

    #@ef
    const/16 v17, 0x1

    #@f1
    shl-int v16, v17, v16

    #@f3
    or-int v15, v15, v16

    #@f5
    move-object/from16 v0, p0

    #@f7
    iput v15, v0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@f9
    goto :goto_0

    #@fa
    .line 332
    :cond_9
    const-string/jumbo v15, "DeviceAdminInfo"

    #@fd
    new-instance v16, Ljava/lang/StringBuilder;

    #@ff
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@102
    const-string/jumbo v17, "Unknown tag under uses-policies of "

    #@105
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v16

    #@109
    .line 333
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@10c
    move-result-object v17

    #@10d
    .line 332
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v16

    #@111
    .line 333
    const-string/jumbo v17, ": "

    #@114
    .line 332
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v16

    #@118
    move-object/from16 v0, v16

    #@11a
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v16

    #@11e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v16

    #@122
    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@125
    goto :goto_0

    #@126
    .line 342
    .end local v4    # "innerDepth":I
    .end local v9    # "policyName":Ljava/lang/String;
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v14    # "val":Ljava/lang/Integer;
    :cond_a
    if-eqz v7, :cond_b

    #@128
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    #@12b
    .line 277
    :cond_b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    invoke-direct {p0, p1, v0}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    #@5
    .line 264
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 347
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/content/pm/ActivityInfo;

    #@b
    iput-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@d
    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@13
    .line 346
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 508
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
    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "Receiver:"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    #@17
    .line 474
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, "  "

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@30
    .line 472
    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 379
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@6
    .line 380
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@8
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@a
    .line 379
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .locals 1
    .param p1, "policyIdent"    # I

    #@0
    .prologue
    .line 444
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@8
    iget-object v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    #@a
    return-object v0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/admin/DeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 449
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 450
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v3

    #@c
    if-ge v0, v3, :cond_1

    #@e
    .line 451
    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@16
    .line 452
    .local v1, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    #@18
    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 453
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 450
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 456
    .end local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_1
    return-object v2
.end method

.method public isVisible()Z
    .locals 1

    #@0
    .prologue
    .line 422
    iget-boolean v0, p0, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    #@2
    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 400
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    iget v0, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 401
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@8
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@a
    .line 402
    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@c
    iget v1, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@e
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@10
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@12
    .line 401
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 404
    :cond_0
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    #@19
    invoke-direct {v0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    #@1c
    throw v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 414
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

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
    .line 390
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 469
    const-string/jumbo v0, "flags"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 468
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@e
    .line 467
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "DeviceAdminInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@e
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "}"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method public usesPolicy(I)Z
    .locals 4
    .param p1, "policyIdent"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 435
    iget v2, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@4
    shl-int v3, v0, p1

    #@6
    and-int/2addr v2, v3

    #@7
    if-eqz v2, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    move v0, v1

    #@b
    goto :goto_0
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    const-string/jumbo v0, "flags"

    #@3
    iget v1, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@5
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@d
    .line 461
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 490
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 488
    return-void
.end method
