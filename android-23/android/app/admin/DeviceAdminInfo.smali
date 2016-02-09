.class public final Landroid/app/admin/DeviceAdminInfo;
.super Ljava/lang/Object;
.source "DeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DeviceAdminInfo$PolicyInfo;,
        Landroid/app/admin/DeviceAdminInfo$1;
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
.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mUsesPolicies:I

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    #@0
    .prologue
    const v10, 0x10401fc

    #@3
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@a
    .line 190
    new-instance v0, Ljava/util/HashMap;

    #@c
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@f
    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    #@11
    .line 191
    new-instance v0, Landroid/util/SparseArray;

    #@13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@16
    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    #@18
    .line 194
    sget-object v9, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@1a
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@1c
    const-string/jumbo v2, "wipe-data"

    #@1f
    const/4 v1, 0x4

    #@20
    .line 195
    const v3, 0x1040203

    #@23
    .line 196
    const v4, 0x1040204

    #@26
    .line 197
    const v5, 0x1040205

    #@29
    .line 198
    const v6, 0x1040206

    #@2c
    .line 194
    invoke-direct/range {v0 .. v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    #@2f
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 200
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@34
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@36
    const-string/jumbo v2, "reset-password"

    #@39
    const/4 v3, 0x2

    #@3a
    .line 201
    const v4, 0x10401ff

    #@3d
    .line 202
    const v5, 0x1040200

    #@40
    .line 200
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@46
    .line 203
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@48
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@4a
    const-string/jumbo v2, "limit-password"

    #@4d
    const/4 v3, 0x0

    #@4e
    .line 204
    const v4, 0x10401fa

    #@51
    .line 205
    const v5, 0x10401fb

    #@54
    .line 203
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5a
    .line 206
    sget-object v9, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@5c
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@5e
    const-string/jumbo v2, "watch-login"

    #@61
    const/4 v1, 0x1

    #@62
    .line 208
    const v4, 0x10401fd

    #@65
    .line 210
    const v6, 0x10401fe

    #@68
    move v3, v10

    #@69
    move v5, v10

    #@6a
    .line 206
    invoke-direct/range {v0 .. v6}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;IIII)V

    #@6d
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@70
    .line 212
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@72
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@74
    const-string/jumbo v2, "force-lock"

    #@77
    const/4 v3, 0x3

    #@78
    .line 213
    const v4, 0x1040201

    #@7b
    .line 214
    const v5, 0x1040202

    #@7e
    .line 212
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@81
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@84
    .line 215
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@86
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@88
    const-string/jumbo v2, "set-global-proxy"

    #@8b
    const/4 v3, 0x5

    #@8c
    .line 216
    const v4, 0x1040207

    #@8f
    .line 217
    const v5, 0x1040208

    #@92
    .line 215
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@98
    .line 218
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@9a
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@9c
    const-string/jumbo v2, "expire-password"

    #@9f
    const/4 v3, 0x6

    #@a0
    .line 219
    const v4, 0x1040209

    #@a3
    .line 220
    const v5, 0x104020a

    #@a6
    .line 218
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@a9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ac
    .line 221
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@ae
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@b0
    const-string/jumbo v2, "encrypted-storage"

    #@b3
    const/4 v3, 0x7

    #@b4
    .line 222
    const v4, 0x104020b

    #@b7
    .line 223
    const v5, 0x104020c

    #@ba
    .line 221
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@bd
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@c0
    .line 224
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@c2
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@c4
    const-string/jumbo v2, "disable-camera"

    #@c7
    const/16 v3, 0x8

    #@c9
    .line 225
    const v4, 0x104020d

    #@cc
    .line 226
    const v5, 0x104020e

    #@cf
    .line 224
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@d2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@d5
    .line 227
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@d7
    new-instance v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@d9
    .line 228
    const-string/jumbo v2, "disable-keyguard-features"

    #@dc
    const/16 v3, 0x9

    #@de
    .line 229
    const v4, 0x104020f

    #@e1
    .line 230
    const v5, 0x1040210

    #@e4
    .line 227
    invoke-direct {v1, v3, v2, v4, v5}, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    #@e7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ea
    .line 232
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
    .line 233
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@f5
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f8
    move-result-object v8

    #@f9
    check-cast v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@fb
    .line 234
    .local v8, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    sget-object v0, Landroid/app/admin/DeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    #@fd
    iget v1, v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    #@ff
    invoke-virtual {v0, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@102
    .line 235
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
    .line 232
    add-int/lit8 v7, v7, 0x1

    #@111
    goto :goto_0

    #@112
    .line 488
    .end local v8    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_0
    new-instance v0, Landroid/app/admin/DeviceAdminInfo$1;

    #@114
    invoke-direct {v0}, Landroid/app/admin/DeviceAdminInfo$1;-><init>()V

    #@117
    .line 487
    sput-object v0, Landroid/app/admin/DeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@119
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 263
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, p0

    #@7
    iput-object v0, v1, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@9
    .line 264
    move-object/from16 v0, p2

    #@b
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@d
    .line 266
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@10
    move-result-object v9

    #@11
    .line 268
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    #@12
    .line 270
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v16, "android.app.device_admin"

    #@15
    move-object/from16 v0, v16

    #@17
    invoke-virtual {v2, v9, v0}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1a
    move-result-object v8

    #@1b
    .line 271
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v8, :cond_1

    #@1d
    .line 272
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    #@1f
    const-string/jumbo v17, "No android.app.device_admin meta-data"

    #@22
    invoke-direct/range {v16 .. v17}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@25
    throw v16
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 324
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v4

    #@27
    .line 325
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    #@29
    .line 326
    new-instance v17, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v18, "Unable to create context for: "

    #@31
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v17

    #@35
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@37
    move-object/from16 v18, v0

    #@39
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v17

    #@3d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v17

    #@41
    .line 325
    invoke-direct/range {v16 .. v17}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@44
    throw v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@45
    .line 327
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v16

    #@46
    .line 328
    if-eqz v8, :cond_0

    #@48
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@4b
    .line 327
    :cond_0
    throw v16

    #@4c
    .line 276
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@4e
    move-object/from16 v16, v0

    #@50
    move-object/from16 v0, v16

    #@52
    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@55
    move-result-object v11

    #@56
    .line 278
    .local v11, "res":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@59
    move-result-object v3

    #@5a
    .line 281
    .local v3, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    #@5d
    move-result v14

    #@5e
    .local v14, "type":I
    const/16 v16, 0x1

    #@60
    move/from16 v0, v16

    #@62
    if-eq v14, v0, :cond_3

    #@64
    .line 282
    const/16 v16, 0x2

    #@66
    move/from16 v0, v16

    #@68
    if-ne v14, v0, :cond_2

    #@6a
    .line 285
    :cond_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@6d
    move-result-object v6

    #@6e
    .line 286
    .local v6, "nodeName":Ljava/lang/String;
    const-string/jumbo v16, "device-admin"

    #@71
    move-object/from16 v0, v16

    #@73
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v16

    #@77
    if-nez v16, :cond_4

    #@79
    .line 287
    new-instance v16, Lorg/xmlpull/v1/XmlPullParserException;

    #@7b
    .line 288
    const-string/jumbo v17, "Meta-data does not start with device-admin tag"

    #@7e
    .line 287
    invoke-direct/range {v16 .. v17}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@81
    throw v16

    #@82
    .line 292
    :cond_4
    sget-object v16, Lcom/android/internal/R$styleable;->DeviceAdmin:[I

    #@84
    .line 291
    move-object/from16 v0, v16

    #@86
    invoke-virtual {v11, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@89
    move-result-object v12

    #@8a
    .line 295
    .local v12, "sa":Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    #@8c
    const/16 v17, 0x1

    #@8e
    .line 294
    move/from16 v0, v16

    #@90
    move/from16 v1, v17

    #@92
    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@95
    move-result v16

    #@96
    move/from16 v0, v16

    #@98
    move-object/from16 v1, p0

    #@9a
    iput-boolean v0, v1, Landroid/app/admin/DeviceAdminInfo;->mVisible:Z

    #@9c
    .line 297
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    #@9f
    .line 299
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@a2
    move-result v7

    #@a3
    .line 300
    .local v7, "outerDepth":I
    :cond_5
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    #@a6
    move-result v14

    #@a7
    const/16 v16, 0x1

    #@a9
    move/from16 v0, v16

    #@ab
    if-eq v14, v0, :cond_a

    #@ad
    .line 301
    const/16 v16, 0x3

    #@af
    move/from16 v0, v16

    #@b1
    if-ne v14, v0, :cond_6

    #@b3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@b6
    move-result v16

    #@b7
    move/from16 v0, v16

    #@b9
    if-le v0, v7, :cond_a

    #@bb
    .line 302
    :cond_6
    const/16 v16, 0x3

    #@bd
    move/from16 v0, v16

    #@bf
    if-eq v14, v0, :cond_5

    #@c1
    const/16 v16, 0x4

    #@c3
    move/from16 v0, v16

    #@c5
    if-eq v14, v0, :cond_5

    #@c7
    .line 305
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@ca
    move-result-object v13

    #@cb
    .line 306
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v16, "uses-policies"

    #@ce
    move-object/from16 v0, v16

    #@d0
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d3
    move-result v16

    #@d4
    if-eqz v16, :cond_5

    #@d6
    .line 307
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@d9
    move-result v5

    #@da
    .line 308
    .local v5, "innerDepth":I
    :cond_7
    :goto_0
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    #@dd
    move-result v14

    #@de
    const/16 v16, 0x1

    #@e0
    move/from16 v0, v16

    #@e2
    if-eq v14, v0, :cond_5

    #@e4
    .line 309
    const/16 v16, 0x3

    #@e6
    move/from16 v0, v16

    #@e8
    if-ne v14, v0, :cond_8

    #@ea
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@ed
    move-result v16

    #@ee
    move/from16 v0, v16

    #@f0
    if-le v0, v5, :cond_5

    #@f2
    .line 310
    :cond_8
    const/16 v16, 0x3

    #@f4
    move/from16 v0, v16

    #@f6
    if-eq v14, v0, :cond_7

    #@f8
    const/16 v16, 0x4

    #@fa
    move/from16 v0, v16

    #@fc
    if-eq v14, v0, :cond_7

    #@fe
    .line 313
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@101
    move-result-object v10

    #@102
    .line 314
    .local v10, "policyName":Ljava/lang/String;
    sget-object v16, Landroid/app/admin/DeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    #@104
    move-object/from16 v0, v16

    #@106
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@109
    move-result-object v15

    #@10a
    check-cast v15, Ljava/lang/Integer;

    #@10c
    .line 315
    .local v15, "val":Ljava/lang/Integer;
    if-eqz v15, :cond_9

    #@10e
    .line 316
    move-object/from16 v0, p0

    #@110
    iget v0, v0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@112
    move/from16 v16, v0

    #@114
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    #@117
    move-result v17

    #@118
    const/16 v18, 0x1

    #@11a
    shl-int v17, v18, v17

    #@11c
    or-int v16, v16, v17

    #@11e
    move/from16 v0, v16

    #@120
    move-object/from16 v1, p0

    #@122
    iput v0, v1, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@124
    goto :goto_0

    #@125
    .line 318
    :cond_9
    const-string/jumbo v16, "DeviceAdminInfo"

    #@128
    new-instance v17, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v18, "Unknown tag under uses-policies of "

    #@130
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v17

    #@134
    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    #@137
    move-result-object v18

    #@138
    .line 318
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v17

    #@13c
    .line 319
    const-string/jumbo v18, ": "

    #@13f
    .line 318
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v17

    #@143
    move-object/from16 v0, v17

    #@145
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v17

    #@149
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14c
    move-result-object v17

    #@14d
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@150
    goto :goto_0

    #@151
    .line 328
    .end local v5    # "innerDepth":I
    .end local v10    # "policyName":Ljava/lang/String;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v15    # "val":Ljava/lang/Integer;
    :cond_a
    if-eqz v8, :cond_b

    #@153
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@156
    .line 262
    :cond_b
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 333
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@5
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/content/pm/ResolveInfo;

    #@b
    iput-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@d
    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@13
    .line 332
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 499
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
    .line 464
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
    .line 465
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

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
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    #@30
    .line 463
    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 364
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@8
    .line 365
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@e
    .line 364
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 341
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .locals 1
    .param p1, "policyIdent"    # I

    #@0
    .prologue
    .line 435
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
    .line 440
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 441
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
    .line 442
    sget-object v3, Landroid/app/admin/DeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    #@16
    .line 443
    .local v1, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v3, v1, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    #@18
    invoke-virtual {p0, v3}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    .line 444
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 441
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 447
    .end local v1    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_1
    return-object v2
.end method

.method public isVisible()Z
    .locals 1

    #@0
    .prologue
    .line 413
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
    .line 385
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4
    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@6
    if-eqz v2, :cond_1

    #@8
    .line 386
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@c
    .line 387
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    #@d
    .line 388
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    #@f
    .line 389
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@11
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@13
    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@15
    .line 390
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@17
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b
    .line 393
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    iget-object v2, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@1d
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@1f
    iget v2, v2, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    #@21
    .line 392
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 395
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@28
    invoke-direct {v2}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    #@2b
    throw v2
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

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
    .line 375
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

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
    .line 460
    const-string/jumbo v0, "flags"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 459
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v0

    #@c
    iput v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@e
    .line 458
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 470
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
    iget-object v1, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@e
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@10
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, "}"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
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
    .line 426
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
    .line 453
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
    .line 452
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Landroid/app/admin/DeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@5
    .line 481
    iget v0, p0, Landroid/app/admin/DeviceAdminInfo;->mUsesPolicies:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 479
    return-void
.end method
