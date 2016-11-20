.class public final Landroid/nfc/cardemulation/ApduServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/ApduServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "ApduServiceInfo"


# instance fields
.field final mBannerResourceId:I

.field final mDescription:Ljava/lang/String;

.field final mDynamicAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mOnHost:Z

.field final mRequiresDeviceUnlock:Z

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSettingsActivityName:Ljava/lang/String;

.field final mStaticAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 462
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    #@2
    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    #@5
    .line 461
    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 20
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 125
    move-object/from16 v0, p2

    #@5
    iget-object v15, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@7
    .line 126
    .local v15, "si":Landroid/content/pm/ServiceInfo;
    const/4 v12, 0x0

    #@8
    .line 128
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz p3, :cond_1

    #@a
    .line 129
    :try_start_0
    const-string/jumbo v17, "android.nfc.cardemulation.host_apdu_service"

    #@d
    move-object/from16 v0, p1

    #@f
    move-object/from16 v1, v17

    #@11
    invoke-virtual {v15, v0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@14
    move-result-object v12

    #@15
    .line 130
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v12, :cond_2

    #@17
    .line 131
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    #@19
    const-string/jumbo v18, "No android.nfc.cardemulation.host_apdu_service meta-data"

    #@1c
    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v17
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    .line 258
    .end local v12    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v7

    #@21
    .line 259
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    #@23
    new-instance v18, Ljava/lang/StringBuilder;

    #@25
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v19, "Unable to create context for: "

    #@2b
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v18

    #@2f
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@31
    move-object/from16 v19, v0

    #@33
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v18

    #@37
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v18

    #@3b
    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    .line 260
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v17

    #@40
    .line 261
    if-eqz v12, :cond_0

    #@42
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    #@45
    .line 260
    :cond_0
    throw v17

    #@46
    .line 135
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    const-string/jumbo v17, "android.nfc.cardemulation.off_host_apdu_service"

    #@49
    move-object/from16 v0, p1

    #@4b
    move-object/from16 v1, v17

    #@4d
    invoke-virtual {v15, v0, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@50
    move-result-object v12

    #@51
    .line 136
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v12, :cond_2

    #@53
    .line 137
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    #@55
    const-string/jumbo v18, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    #@58
    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v17

    #@5c
    .line 142
    :cond_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    #@5f
    move-result v8

    #@60
    .line 143
    .local v8, "eventType":I
    :goto_0
    const/16 v17, 0x2

    #@62
    move/from16 v0, v17

    #@64
    if-eq v8, v0, :cond_3

    #@66
    const/16 v17, 0x1

    #@68
    move/from16 v0, v17

    #@6a
    if-eq v8, v0, :cond_3

    #@6c
    .line 144
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    #@6f
    move-result v8

    #@70
    goto :goto_0

    #@71
    .line 147
    :cond_3
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@74
    move-result-object v16

    #@75
    .line 148
    .local v16, "tagName":Ljava/lang/String;
    if-eqz p3, :cond_4

    #@77
    const-string/jumbo v17, "host-apdu-service"

    #@7a
    move-object/from16 v0, v17

    #@7c
    move-object/from16 v1, v16

    #@7e
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@81
    move-result v17

    #@82
    if-eqz v17, :cond_a

    #@84
    .line 151
    :cond_4
    if-nez p3, :cond_5

    #@86
    const-string/jumbo v17, "offhost-apdu-service"

    #@89
    move-object/from16 v0, v17

    #@8b
    move-object/from16 v1, v16

    #@8d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v17

    #@91
    if-eqz v17, :cond_b

    #@93
    .line 156
    :cond_5
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@95
    move-object/from16 v17, v0

    #@97
    move-object/from16 v0, p1

    #@99
    move-object/from16 v1, v17

    #@9b
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@9e
    move-result-object v13

    #@9f
    .line 157
    .local v13, "res":Landroid/content/res/Resources;
    invoke-static {v12}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@a2
    move-result-object v4

    #@a3
    .line 158
    .local v4, "attrs":Landroid/util/AttributeSet;
    if-eqz p3, :cond_c

    #@a5
    .line 160
    sget-object v17, Lcom/android/internal/R$styleable;->HostApduService:[I

    #@a7
    .line 159
    move-object/from16 v0, v17

    #@a9
    invoke-virtual {v13, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@ac
    move-result-object v14

    #@ad
    .line 161
    .local v14, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    #@af
    move-object/from16 v1, p0

    #@b1
    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@b3
    .line 163
    const/16 v17, 0x0

    #@b5
    .line 162
    move/from16 v0, v17

    #@b7
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@ba
    move-result-object v17

    #@bb
    move-object/from16 v0, v17

    #@bd
    move-object/from16 v1, p0

    #@bf
    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    #@c1
    .line 165
    const/16 v17, 0x2

    #@c3
    .line 166
    const/16 v18, 0x0

    #@c5
    .line 164
    move/from16 v0, v17

    #@c7
    move/from16 v1, v18

    #@c9
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@cc
    move-result v17

    #@cd
    move/from16 v0, v17

    #@cf
    move-object/from16 v1, p0

    #@d1
    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    #@d3
    .line 168
    const/16 v17, 0x3

    #@d5
    const/16 v18, -0x1

    #@d7
    .line 167
    move/from16 v0, v17

    #@d9
    move/from16 v1, v18

    #@db
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@de
    move-result v17

    #@df
    move/from16 v0, v17

    #@e1
    move-object/from16 v1, p0

    #@e3
    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    #@e5
    .line 170
    const/16 v17, 0x1

    #@e7
    .line 169
    move/from16 v0, v17

    #@e9
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@ec
    move-result-object v17

    #@ed
    move-object/from16 v0, v17

    #@ef
    move-object/from16 v1, p0

    #@f1
    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@f3
    .line 171
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    #@f6
    .line 186
    :goto_1
    new-instance v17, Ljava/util/HashMap;

    #@f8
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    #@fb
    move-object/from16 v0, v17

    #@fd
    move-object/from16 v1, p0

    #@ff
    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@101
    .line 187
    new-instance v17, Ljava/util/HashMap;

    #@103
    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    #@106
    move-object/from16 v0, v17

    #@108
    move-object/from16 v1, p0

    #@10a
    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@10c
    .line 188
    move/from16 v0, p3

    #@10e
    move-object/from16 v1, p0

    #@110
    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    #@112
    .line 190
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@115
    move-result v6

    #@116
    .line 191
    .local v6, "depth":I
    const/4 v5, 0x0

    #@117
    .line 194
    :cond_6
    :goto_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    #@11a
    move-result v8

    #@11b
    const/16 v17, 0x3

    #@11d
    move/from16 v0, v17

    #@11f
    if-ne v8, v0, :cond_7

    #@121
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@124
    move-result v17

    #@125
    move/from16 v0, v17

    #@127
    if-le v0, v6, :cond_17

    #@129
    .line 195
    :cond_7
    const/16 v17, 0x1

    #@12b
    move/from16 v0, v17

    #@12d
    if-eq v8, v0, :cond_17

    #@12f
    .line 196
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@132
    move-result-object v16

    #@133
    .line 197
    const/16 v17, 0x2

    #@135
    move/from16 v0, v17

    #@137
    if-ne v8, v0, :cond_e

    #@139
    const-string/jumbo v17, "aid-group"

    #@13c
    move-object/from16 v0, v17

    #@13e
    move-object/from16 v1, v16

    #@140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@143
    move-result v17

    #@144
    if-eqz v17, :cond_e

    #@146
    .line 198
    if-nez v5, :cond_e

    #@148
    .line 200
    sget-object v17, Lcom/android/internal/R$styleable;->AidGroup:[I

    #@14a
    .line 199
    move-object/from16 v0, v17

    #@14c
    invoke-virtual {v13, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@14f
    move-result-object v9

    #@150
    .line 203
    .local v9, "groupAttrs":Landroid/content/res/TypedArray;
    const/16 v17, 0x1

    #@152
    .line 202
    move/from16 v0, v17

    #@154
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@157
    move-result-object v10

    #@158
    .line 205
    .local v10, "groupCategory":Ljava/lang/String;
    const/16 v17, 0x0

    #@15a
    .line 204
    move/from16 v0, v17

    #@15c
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@15f
    move-result-object v11

    #@160
    .line 206
    .local v11, "groupDescription":Ljava/lang/String;
    const-string/jumbo v17, "payment"

    #@163
    move-object/from16 v0, v17

    #@165
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@168
    move-result v17

    #@169
    if-nez v17, :cond_8

    #@16b
    .line 207
    const-string/jumbo v10, "other"

    #@16e
    .line 209
    :cond_8
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@172
    move-object/from16 v17, v0

    #@174
    move-object/from16 v0, v17

    #@176
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@179
    move-result-object v5

    #@17a
    check-cast v5, Landroid/nfc/cardemulation/AidGroup;

    #@17c
    .line 210
    .local v5, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    if-eqz v5, :cond_d

    #@17e
    .line 211
    const-string/jumbo v17, "other"

    #@181
    move-object/from16 v0, v17

    #@183
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@186
    move-result v17

    #@187
    if-nez v17, :cond_9

    #@189
    .line 212
    const-string/jumbo v17, "ApduServiceInfo"

    #@18c
    new-instance v18, Ljava/lang/StringBuilder;

    #@18e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@191
    const-string/jumbo v19, "Not allowing multiple aid-groups in the "

    #@194
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@197
    move-result-object v18

    #@198
    move-object/from16 v0, v18

    #@19a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19d
    move-result-object v18

    #@19e
    .line 213
    const-string/jumbo v19, " category"

    #@1a1
    .line 212
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a4
    move-result-object v18

    #@1a5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a8
    move-result-object v18

    #@1a9
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1ac
    .line 214
    const/4 v5, 0x0

    #@1ad
    .line 219
    .end local v5    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_9
    :goto_3
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    #@1b0
    goto/16 :goto_2

    #@1b2
    .line 149
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v6    # "depth":I
    .end local v9    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v10    # "groupCategory":Ljava/lang/String;
    .end local v11    # "groupDescription":Ljava/lang/String;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    :cond_a
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    #@1b4
    .line 150
    const-string/jumbo v18, "Meta-data does not start with <host-apdu-service> tag"

    #@1b7
    .line 149
    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1ba
    throw v17

    #@1bb
    .line 152
    :cond_b
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    #@1bd
    .line 153
    const-string/jumbo v18, "Meta-data does not start with <offhost-apdu-service> tag"

    #@1c0
    .line 152
    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1c3
    throw v17

    #@1c4
    .line 174
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v13    # "res":Landroid/content/res/Resources;
    :cond_c
    sget-object v17, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    #@1c6
    .line 173
    move-object/from16 v0, v17

    #@1c8
    invoke-virtual {v13, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1cb
    move-result-object v14

    #@1cc
    .line 175
    .restart local v14    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    #@1ce
    move-object/from16 v1, p0

    #@1d0
    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@1d2
    .line 177
    const/16 v17, 0x0

    #@1d4
    .line 176
    move/from16 v0, v17

    #@1d6
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1d9
    move-result-object v17

    #@1da
    move-object/from16 v0, v17

    #@1dc
    move-object/from16 v1, p0

    #@1de
    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    #@1e0
    .line 178
    const/16 v17, 0x0

    #@1e2
    move/from16 v0, v17

    #@1e4
    move-object/from16 v1, p0

    #@1e6
    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    #@1e8
    .line 180
    const/16 v17, 0x2

    #@1ea
    const/16 v18, -0x1

    #@1ec
    .line 179
    move/from16 v0, v17

    #@1ee
    move/from16 v1, v18

    #@1f0
    invoke-virtual {v14, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1f3
    move-result v17

    #@1f4
    move/from16 v0, v17

    #@1f6
    move-object/from16 v1, p0

    #@1f8
    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    #@1fa
    .line 182
    const/16 v17, 0x1

    #@1fc
    .line 181
    move/from16 v0, v17

    #@1fe
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@201
    move-result-object v17

    #@202
    move-object/from16 v0, v17

    #@204
    move-object/from16 v1, p0

    #@206
    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@208
    .line 183
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    #@20b
    goto/16 :goto_1

    #@20d
    .line 217
    .restart local v5    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v6    # "depth":I
    .restart local v9    # "groupAttrs":Landroid/content/res/TypedArray;
    .restart local v10    # "groupCategory":Ljava/lang/String;
    .restart local v11    # "groupDescription":Ljava/lang/String;
    :cond_d
    new-instance v5, Landroid/nfc/cardemulation/AidGroup;

    #@20f
    .end local v5    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-direct {v5, v10, v11}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@212
    .restart local v5    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_3

    #@213
    .line 220
    .end local v5    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v9    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v10    # "groupCategory":Ljava/lang/String;
    .end local v11    # "groupDescription":Ljava/lang/String;
    :cond_e
    const/16 v17, 0x3

    #@215
    move/from16 v0, v17

    #@217
    if-ne v8, v0, :cond_11

    #@219
    const-string/jumbo v17, "aid-group"

    #@21c
    move-object/from16 v0, v17

    #@21e
    move-object/from16 v1, v16

    #@220
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@223
    move-result v17

    #@224
    if-eqz v17, :cond_11

    #@226
    .line 221
    if-eqz v5, :cond_11

    #@228
    .line 222
    iget-object v0, v5, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@22a
    move-object/from16 v17, v0

    #@22c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    #@22f
    move-result v17

    #@230
    if-lez v17, :cond_10

    #@232
    .line 223
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@236
    move-object/from16 v17, v0

    #@238
    iget-object v0, v5, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@23a
    move-object/from16 v18, v0

    #@23c
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@23f
    move-result v17

    #@240
    if-nez v17, :cond_f

    #@242
    .line 224
    move-object/from16 v0, p0

    #@244
    iget-object v0, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@246
    move-object/from16 v17, v0

    #@248
    iget-object v0, v5, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@24a
    move-object/from16 v18, v0

    #@24c
    move-object/from16 v0, v17

    #@24e
    move-object/from16 v1, v18

    #@250
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@253
    .line 229
    :cond_f
    :goto_4
    const/4 v5, 0x0

    #@254
    .local v5, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto/16 :goto_2

    #@256
    .line 227
    .end local v5    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_10
    const-string/jumbo v17, "ApduServiceInfo"

    #@259
    const-string/jumbo v18, "Not adding <aid-group> with empty or invalid AIDs"

    #@25c
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25f
    goto :goto_4

    #@260
    .line 230
    :cond_11
    const/16 v17, 0x2

    #@262
    move/from16 v0, v17

    #@264
    if-ne v8, v0, :cond_14

    #@266
    const-string/jumbo v17, "aid-filter"

    #@269
    move-object/from16 v0, v17

    #@26b
    move-object/from16 v1, v16

    #@26d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@270
    move-result v17

    #@271
    if-eqz v17, :cond_14

    #@273
    .line 231
    if-eqz v5, :cond_14

    #@275
    .line 233
    sget-object v17, Lcom/android/internal/R$styleable;->AidFilter:[I

    #@277
    .line 232
    move-object/from16 v0, v17

    #@279
    invoke-virtual {v13, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@27c
    move-result-object v2

    #@27d
    .line 234
    .local v2, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    #@27f
    move/from16 v0, v17

    #@281
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@284
    move-result-object v17

    #@285
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@288
    move-result-object v3

    #@289
    .line 236
    .local v3, "aid":Ljava/lang/String;
    invoke-static {v3}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    #@28c
    move-result v17

    #@28d
    if-eqz v17, :cond_12

    #@28f
    iget-object v0, v5, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@291
    move-object/from16 v17, v0

    #@293
    move-object/from16 v0, v17

    #@295
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@298
    move-result v17

    #@299
    if-eqz v17, :cond_13

    #@29b
    .line 239
    :cond_12
    const-string/jumbo v17, "ApduServiceInfo"

    #@29e
    new-instance v18, Ljava/lang/StringBuilder;

    #@2a0
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2a3
    const-string/jumbo v19, "Ignoring invalid or duplicate aid: "

    #@2a6
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a9
    move-result-object v18

    #@2aa
    move-object/from16 v0, v18

    #@2ac
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v18

    #@2b0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b3
    move-result-object v18

    #@2b4
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2b7
    .line 241
    :goto_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@2ba
    goto/16 :goto_2

    #@2bc
    .line 237
    :cond_13
    iget-object v0, v5, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@2be
    move-object/from16 v17, v0

    #@2c0
    move-object/from16 v0, v17

    #@2c2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2c5
    goto :goto_5

    #@2c6
    .line 242
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "aid":Ljava/lang/String;
    :cond_14
    const/16 v17, 0x2

    #@2c8
    move/from16 v0, v17

    #@2ca
    if-ne v8, v0, :cond_6

    #@2cc
    .line 243
    const-string/jumbo v17, "aid-prefix-filter"

    #@2cf
    move-object/from16 v0, v17

    #@2d1
    move-object/from16 v1, v16

    #@2d3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d6
    move-result v17

    #@2d7
    .line 242
    if-eqz v17, :cond_6

    #@2d9
    .line 243
    if-eqz v5, :cond_6

    #@2db
    .line 245
    sget-object v17, Lcom/android/internal/R$styleable;->AidFilter:[I

    #@2dd
    .line 244
    move-object/from16 v0, v17

    #@2df
    invoke-virtual {v13, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@2e2
    move-result-object v2

    #@2e3
    .line 246
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    #@2e5
    move/from16 v0, v17

    #@2e7
    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@2ea
    move-result-object v17

    #@2eb
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@2ee
    move-result-object v3

    #@2ef
    .line 249
    .restart local v3    # "aid":Ljava/lang/String;
    const-string/jumbo v17, "*"

    #@2f2
    move-object/from16 v0, v17

    #@2f4
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    #@2f7
    move-result-object v3

    #@2f8
    .line 250
    invoke-static {v3}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    #@2fb
    move-result v17

    #@2fc
    if-eqz v17, :cond_15

    #@2fe
    iget-object v0, v5, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@300
    move-object/from16 v17, v0

    #@302
    move-object/from16 v0, v17

    #@304
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@307
    move-result v17

    #@308
    if-eqz v17, :cond_16

    #@30a
    .line 253
    :cond_15
    const-string/jumbo v17, "ApduServiceInfo"

    #@30d
    new-instance v18, Ljava/lang/StringBuilder;

    #@30f
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@312
    const-string/jumbo v19, "Ignoring invalid or duplicate aid: "

    #@315
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@318
    move-result-object v18

    #@319
    move-object/from16 v0, v18

    #@31b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31e
    move-result-object v18

    #@31f
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@322
    move-result-object v18

    #@323
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@326
    .line 255
    :goto_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@329
    goto/16 :goto_2

    #@32b
    .line 251
    :cond_16
    iget-object v0, v5, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@32d
    move-object/from16 v17, v0

    #@32f
    move-object/from16 v0, v17

    #@331
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@334
    goto :goto_6

    #@335
    .line 261
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v3    # "aid":Ljava/lang/String;
    :cond_17
    if-eqz v12, :cond_18

    #@337
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    #@33a
    .line 264
    :cond_18
    iget-object v0, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@33c
    move-object/from16 v17, v0

    #@33e
    move-object/from16 v0, v17

    #@340
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@342
    move/from16 v17, v0

    #@344
    move/from16 v0, v17

    #@346
    move-object/from16 v1, p0

    #@348
    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    #@34a
    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;)V
    .locals 4
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "settingsActivityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 102
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@5
    .line 107
    iput-object p3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    #@7
    .line 108
    new-instance v2, Ljava/util/HashMap;

    #@9
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@c
    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@e
    .line 109
    new-instance v2, Ljava/util/HashMap;

    #@10
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@13
    iput-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@15
    .line 110
    iput-boolean p2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    #@17
    .line 111
    iput-boolean p6, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    #@19
    .line 112
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_0

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    #@29
    .line 113
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@2b
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@2d
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    goto :goto_0

    #@31
    .line 115
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v1

    #@35
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_1

    #@3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    #@41
    .line 116
    .restart local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@43
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@45
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    goto :goto_1

    #@49
    .line 118
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    iput p7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    #@4b
    .line 119
    iput p8, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    #@4d
    .line 120
    iput-object p9, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@4f
    .line 105
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 439
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v5, "    "

    #@8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v4

    #@c
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    .line 495
    const-string/jumbo v5, " (Description: "

    #@17
    .line 494
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    .line 495
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    .line 494
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    .line 495
    const-string/jumbo v5, ")"

    #@26
    .line 494
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 496
    const-string/jumbo v4, "    Static AID groups:"

    #@34
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@37
    .line 497
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@39
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@3c
    move-result-object v4

    #@3d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@40
    move-result-object v3

    #@41
    .local v3, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_1

    #@47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    #@4d
    .line 498
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v5, "        Category: "

    #@55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v4

    #@59
    iget-object v5, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@5b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v4

    #@63
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@66
    .line 499
    iget-object v4, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@68
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object v1

    #@6c
    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v4

    #@70
    if-eqz v4, :cond_0

    #@72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    check-cast v0, Ljava/lang/String;

    #@78
    .line 500
    .local v0, "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v5, "            AID: "

    #@80
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v4

    #@88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8f
    goto :goto_0

    #@90
    .line 503
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    const-string/jumbo v4, "    Dynamic AID groups:"

    #@93
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@96
    .line 504
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@98
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@9b
    move-result-object v4

    #@9c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9f
    move-result-object v3

    #@a0
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@a3
    move-result v4

    #@a4
    if-eqz v4, :cond_3

    #@a6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@a9
    move-result-object v2

    #@aa
    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    #@ac
    .line 505
    .restart local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v5, "        Category: "

    #@b4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v4

    #@b8
    iget-object v5, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@ba
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v4

    #@be
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v4

    #@c2
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c5
    .line 506
    iget-object v4, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@c7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ca
    move-result-object v1

    #@cb
    .restart local v1    # "aid$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@ce
    move-result v4

    #@cf
    if-eqz v4, :cond_2

    #@d1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@d4
    move-result-object v0

    #@d5
    check-cast v0, Ljava/lang/String;

    #@d7
    .line 507
    .restart local v0    # "aid":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    #@d9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@dc
    const-string/jumbo v5, "            AID: "

    #@df
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v4

    #@e3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e6
    move-result-object v4

    #@e7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ea
    move-result-object v4

    #@eb
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ee
    goto :goto_1

    #@ef
    .line 510
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v5, "    Settings Activity: "

    #@f7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v4

    #@fb
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@fd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v4

    #@101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@104
    move-result-object v4

    #@105
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@108
    .line 493
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 424
    if-ne p0, p1, :cond_0

    #@2
    const/4 v1, 0x1

    #@3
    return v1

    #@4
    .line 425
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    #@6
    if-nez v1, :cond_1

    #@8
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 426
    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    #@d
    .line 428
    .local v0, "thatService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    return v1
.end method

.method public getAidGroups()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 320
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 321
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@7
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/util/Map$Entry;

    #@1b
    .line 322
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    #@21
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 324
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_0
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@27
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@2a
    move-result-object v3

    #@2b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v3

    #@33
    if-eqz v3, :cond_2

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Ljava/util/Map$Entry;

    #@3b
    .line 325
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@3d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@44
    move-result v3

    #@45
    if-nez v3, :cond_1

    #@47
    .line 328
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4a
    move-result-object v3

    #@4b
    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    #@4d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50
    goto :goto_1

    #@51
    .line 331
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_2
    return-object v2
.end method

.method public getAids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 281
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 282
    .local v0, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v2

    #@d
    .local v2, "group$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    #@19
    .line 283
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v1, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@1b
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@1e
    goto :goto_0

    #@1f
    .line 285
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    return-object v0
.end method

.method public getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    #@3
    move-result-object v2

    #@4
    .line 340
    .local v2, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    #@14
    .line 341
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@16
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 342
    iget-object v3, v0, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    #@22
    return-object v3

    #@23
    .line 345
    .end local v0    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    const/4 v3, 0x0

    #@24
    return-object v3
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 268
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8
    .line 269
    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@e
    .line 268
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    #@8
    return-object v0
.end method

.method public getPrefixAids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 289
    new-instance v4, Ljava/util/ArrayList;

    #@2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 290
    .local v4, "prefixAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    #@8
    move-result-object v5

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v3

    #@d
    .local v3, "group$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_2

    #@13
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    #@19
    .line 291
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v5, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    #@1b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v5

    #@23
    if-eqz v5, :cond_0

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/lang/String;

    #@2b
    .line 292
    .local v0, "aid":Ljava/lang/String;
    const-string/jumbo v5, "*"

    #@2e
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    .line 293
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    goto :goto_0

    #@38
    .line 297
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_2
    return-object v4
.end method

.method public getSettingsActivityName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 404
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 365
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    #@2
    return v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 433
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isOnHost()Z
    .locals 1

    #@0
    .prologue
    .line 353
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    #@2
    return v0
.end method

.method public loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 379
    :try_start_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    #@4
    const/16 v2, 0x80

    #@6
    .line 378
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 380
    :catch_0
    move-exception v0

    #@10
    .line 381
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    #@11
    return-object v1
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 392
    :try_start_0
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@3
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@5
    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    #@a
    move-result-object v3

    #@b
    .line 393
    .local v3, "res":Landroid/content/res/Resources;
    iget v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    #@d
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v0

    #@11
    .line 394
    .local v0, "banner":Landroid/graphics/drawable/Drawable;
    return-object v0

    #@12
    .line 398
    .end local v0    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v3    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    #@13
    .line 399
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "ApduServiceInfo"

    #@16
    const-string/jumbo v5, "Could not load banner."

    #@19
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 400
    return-object v6

    #@1d
    .line 395
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    #@1e
    .line 396
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v4, "ApduServiceInfo"

    #@21
    const-string/jumbo v5, "Could not load banner."

    #@24
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@27
    .line 397
    return-object v6
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 386
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

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
    .line 373
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public removeDynamicAidGroupForCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public requiresUnlock()Z
    .locals 1

    #@0
    .prologue
    .line 357
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    #@2
    return v0
.end method

.method public setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V
    .locals 2
    .param p1, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@2
    invoke-virtual {p1}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 368
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v3, "ApduService: "

    #@5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 409
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    .line 410
    const-string/jumbo v3, ", description: "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    iget-object v4, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 411
    const-string/jumbo v3, ", Static AID Groups: "

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 412
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@23
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@26
    move-result-object v3

    #@27
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v1

    #@2b
    .local v1, "aidGroup$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_0

    #@31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    #@37
    .line 413
    .local v0, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    goto :goto_0

    #@3f
    .line 415
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    const-string/jumbo v3, ", Dynamic AID Groups: "

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 416
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@47
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4a
    move-result-object v3

    #@4b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v1

    #@4f
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_1

    #@55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    #@5b
    .line 417
    .restart local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    goto :goto_1

    #@63
    .line 419
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v3

    #@67
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 444
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@7
    .line 445
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 446
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    #@e
    if-eqz v0, :cond_2

    #@10
    move v0, v1

    #@11
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 447
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@16
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@19
    move-result v0

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 448
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@1f
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@22
    move-result v0

    #@23
    if-lez v0, :cond_0

    #@25
    .line 449
    new-instance v0, Ljava/util/ArrayList;

    #@27
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    #@29
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@2c
    move-result-object v3

    #@2d
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@33
    .line 451
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@35
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@38
    move-result v0

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 452
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@3e
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@41
    move-result v0

    #@42
    if-lez v0, :cond_1

    #@44
    .line 453
    new-instance v0, Ljava/util/ArrayList;

    #@46
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    #@48
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@4b
    move-result-object v3

    #@4c
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@4f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    #@52
    .line 455
    :cond_1
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    #@54
    if-eqz v0, :cond_3

    #@56
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@59
    .line 456
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    #@5b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5e
    .line 457
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    #@60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@63
    .line 458
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    #@65
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@68
    .line 443
    return-void

    #@69
    :cond_2
    move v0, v2

    #@6a
    .line 446
    goto :goto_0

    #@6b
    :cond_3
    move v1, v2

    #@6c
    .line 455
    goto :goto_1
.end method
