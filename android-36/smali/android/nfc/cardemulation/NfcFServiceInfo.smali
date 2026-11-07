.class public final Landroid/nfc/cardemulation/NfcFServiceInfo;
.super Ljava/lang/Object;
.source "NfcFServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_T3T_PMM:Ljava/lang/String; = "FFFFFFFFFFFFFFFF"

.field static final greylist-max-o TAG:Ljava/lang/String; = "NfcFServiceInfo"


# instance fields
.field private final greylist-max-o mDescription:Ljava/lang/String;

.field private greylist-max-o mDynamicNfcid2:Ljava/lang/String;

.field private greylist-max-o mDynamicSystemCode:Ljava/lang/String;

.field private final greylist-max-o mNfcid2:Ljava/lang/String;

.field private final greylist-max-o mService:Landroid/content/pm/ResolveInfo;

.field private final greylist-max-o mSystemCode:Ljava/lang/String;

.field private final greylist-max-o mT3tPmm:Ljava/lang/String;

.field private final greylist-max-o mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 383
    new-instance v0, Landroid/nfc/cardemulation/NfcFServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .registers 21
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 130
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 131
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    const/4 v5, 0x0

    .line 133
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_c
    const-string v0, "android.nfc.cardemulation.host_nfcf_service"

    invoke-virtual {v4, v2, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    move-object v5, v0

    .line 134
    if-eqz v5, :cond_186

    .line 139
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 140
    .local v0, "eventType":I
    :goto_19
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v0, v7, :cond_25

    if-eq v0, v6, :cond_25

    .line 142
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    move v0, v6

    goto :goto_19

    .line 145
    :cond_25
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "host-nfcf-service"

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17e

    .line 151
    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 152
    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 153
    .local v10, "attrs":Landroid/util/AttributeSet;
    sget-object v11, Lcom/android/internal/R$styleable;->HostNfcFService:[I

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 155
    .local v11, "sa":Landroid/content/res/TypedArray;
    iput-object v3, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 156
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    .line 158
    const/4 v13, 0x0

    iput-object v13, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    .line 159
    iput-object v13, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    .line 160
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    const/4 v13, 0x0

    .line 163
    .local v13, "systemCode":Ljava/lang/String;
    const/4 v14, 0x0

    .line 164
    .local v14, "nfcid2":Ljava/lang/String;
    const/4 v15, 0x0

    .line 165
    .local v15, "t3tPmm":Ljava/lang/String;
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v16

    move/from16 v17, v16

    .line 167
    .local v17, "depth":I
    :goto_5c
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12
    :try_end_60
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_60} :catch_190
    .catchall {:try_start_c .. :try_end_60} :catchall_18e

    move v0, v12

    const/4 v7, 0x3

    const-string v6, "NULL"

    if-ne v12, v7, :cond_6f

    .line 168
    :try_start_66
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    move/from16 v12, v17

    .end local v17    # "depth":I
    .local v12, "depth":I
    if-le v7, v12, :cond_15d

    goto :goto_71

    .line 167
    .end local v12    # "depth":I
    .restart local v17    # "depth":I
    :cond_6f
    move/from16 v12, v17

    .line 168
    .end local v17    # "depth":I
    .restart local v12    # "depth":I
    :goto_71
    const/4 v7, 0x1

    if-eq v0, v7, :cond_15d

    .line 169
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66 .. :try_end_78} :catch_190
    .catchall {:try_start_66 .. :try_end_78} :catchall_18e

    move-object/from16 v8, v17

    .line 170
    const-string v7, "NfcFServiceInfo"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_cc

    :try_start_7f
    const-string/jumbo v2, "system-code-filter"

    .line 171
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    if-nez v13, :cond_cc

    .line 172
    sget-object v2, Lcom/android/internal/R$styleable;->SystemCodeFilter:[I

    invoke-virtual {v9, v10, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 174
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 175
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 176
    .end local v13    # "systemCode":Ljava/lang/String;
    .local v3, "systemCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->isValidSystemCode(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_be

    .line 177
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_be

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid System Code: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v3, 0x0

    move-object v13, v3

    goto :goto_bf

    .line 181
    :cond_be
    move-object v13, v3

    .end local v3    # "systemCode":Ljava/lang/String;
    .restart local v13    # "systemCode":Ljava/lang/String;
    :goto_bf
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    .end local v2    # "a":Landroid/content/res/TypedArray;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v17, v12

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v12, 0x0

    goto :goto_5c

    :cond_cc
    const/4 v2, 0x2

    if-ne v0, v2, :cond_125

    const-string/jumbo v2, "nfcid2-filter"

    .line 183
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    if-nez v14, :cond_125

    .line 184
    sget-object v2, Lcom/android/internal/R$styleable;->Nfcid2Filter:[I

    invoke-virtual {v9, v10, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 186
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 187
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 188
    .end local v14    # "nfcid2":Ljava/lang/String;
    .local v3, "nfcid2":Ljava/lang/String;
    const-string v14, "RANDOM"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_116

    .line 189
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_116

    .line 190
    invoke-static {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_116

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid NFCID2: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v3, 0x0

    move-object v14, v3

    goto :goto_117

    .line 194
    :cond_116
    move-object v14, v3

    .end local v3    # "nfcid2":Ljava/lang/String;
    .restart local v14    # "nfcid2":Ljava/lang/String;
    :goto_117
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 195
    .end local v2    # "a":Landroid/content/res/TypedArray;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v17, v12

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v12, 0x0

    goto/16 :goto_5c

    :cond_125
    const/4 v2, 0x2

    if-ne v0, v2, :cond_151

    const-string/jumbo v3, "t3tPmm-filter"

    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_151

    if-nez v15, :cond_151

    .line 197
    sget-object v3, Lcom/android/internal/R$styleable;->T3tPmmFilter:[I

    invoke-virtual {v9, v10, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 199
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 200
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    .line 201
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 202
    .end local v3    # "a":Landroid/content/res/TypedArray;
    move-object/from16 v3, p2

    move v7, v2

    move/from16 v17, v12

    move-object/from16 v2, p1

    move v12, v6

    const/4 v6, 0x1

    goto/16 :goto_5c

    .line 195
    :cond_151
    const/4 v6, 0x0

    .line 167
    move-object/from16 v3, p2

    move v7, v2

    move/from16 v17, v12

    move-object/from16 v2, p1

    move v12, v6

    const/4 v6, 0x1

    goto/16 :goto_5c

    .line 204
    :cond_15d
    if-nez v13, :cond_161

    move-object v2, v6

    goto :goto_162

    :cond_161
    move-object v2, v13

    :goto_162
    iput-object v2, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    .line 205
    if-nez v14, :cond_167

    goto :goto_168

    :cond_167
    move-object v6, v14

    :goto_168
    iput-object v6, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    .line 206
    if-nez v15, :cond_16f

    const-string v2, "FFFFFFFFFFFFFFFF"

    goto :goto_170

    :cond_16f
    move-object v2, v15

    :goto_170
    iput-object v2, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;
    :try_end_172
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_172} :catch_190
    .catchall {:try_start_7f .. :try_end_172} :catchall_18e

    .line 210
    .end local v0    # "eventType":I
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "res":Landroid/content/res/Resources;
    .end local v10    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "sa":Landroid/content/res/TypedArray;
    .end local v12    # "depth":I
    .end local v13    # "systemCode":Ljava/lang/String;
    .end local v14    # "nfcid2":Ljava/lang/String;
    .end local v15    # "t3tPmm":Ljava/lang/String;
    if-eqz v5, :cond_177

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 213
    :cond_177
    iget-object v0, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    .line 214
    return-void

    .line 147
    .restart local v0    # "eventType":I
    .restart local v8    # "tagName":Ljava/lang/String;
    :cond_17e
    :try_start_17e
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Meta-data does not start with <host-nfcf-service> tag"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    throw v2

    .line 135
    .end local v0    # "eventType":I
    .end local v8    # "tagName":Ljava/lang/String;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_186
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No android.nfc.cardemulation.host_nfcf_service meta-data"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    throw v0
    :try_end_18e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17e .. :try_end_18e} :catch_190
    .catchall {:try_start_17e .. :try_end_18e} :catchall_18e

    .line 210
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    :catchall_18e
    move-exception v0

    goto :goto_1ac

    .line 207
    :catch_190
    move-exception v0

    .line 208
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_191
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create context for: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    throw v2
    :try_end_1ac
    .catchall {:try_start_191 .. :try_end_1ac} :catchall_18e

    .line 210
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    :goto_1ac
    if-eqz v5, :cond_1b1

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 211
    :cond_1b1
    throw v0
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "systemCode"    # Ljava/lang/String;
    .param p4, "dynamicSystemCode"    # Ljava/lang/String;
    .param p5, "nfcid2"    # Ljava/lang/String;
    .param p6, "dynamicNfcid2"    # Ljava/lang/String;
    .param p7, "uid"    # I
    .param p8, "t3tPmm"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 110
    iput-object p2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    .line 114
    iput-object p6, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    .line 115
    iput p7, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    .line 116
    iput-object p8, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private static blacklist isValidNfcid2(Ljava/lang/String;)Z
    .registers 8
    .param p0, "nfcid2"    # Ljava/lang/String;

    .line 477
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 478
    return v0

    .line 480
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    const-string v3, " is not a valid NFCID2."

    const-string v4, "NFCID2 "

    const-string v5, "NfcFServiceInfo"

    if-eq v1, v2, :cond_2b

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return v0

    .line 485
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, "02FE"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return v0

    .line 490
    :cond_50
    :try_start_50
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_53} :catch_56

    .line 494
    nop

    .line 495
    const/4 v0, 0x1

    return v0

    .line 491
    :catch_56
    move-exception v1

    .line 492
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return v0
.end method

.method private static blacklist isValidSystemCode(Ljava/lang/String;)Z
    .registers 7
    .param p0, "systemCode"    # Ljava/lang/String;

    .line 451
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 452
    return v0

    .line 454
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, " is not a valid System Code."

    const-string v4, "System Code "

    const-string v5, "NfcFServiceInfo"

    if-eq v1, v2, :cond_2a

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return v0

    .line 459
    :cond_2a
    const-string v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_61

    .line 464
    :cond_3f
    const/16 v1, 0x10

    :try_start_41
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_44} :catch_47

    .line 468
    nop

    .line 469
    const/4 v0, 0x1

    return v0

    .line 465
    :catch_47
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return v0

    .line 460
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_61
    :goto_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Landroid/os/ParcelFileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 422
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") (UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    System Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    NFCID2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    T3tPmm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public whitelist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 439
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 440
    const-wide v0, 0x10900000002L

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 441
    const-wide v0, 0x10900000003L

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 442
    const-wide v0, 0x10900000004L

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 443
    const-wide v0, 0x10900000005L

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 444
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 340
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 341
    :cond_4
    instance-of v1, p1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 342
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 344
    .local v1, "thatService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    return v2

    .line 345
    :cond_1c
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v4

    if-eq v3, v4, :cond_27

    return v2

    .line 346
    :cond_27
    iget-object v3, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    return v2

    .line 347
    :cond_32
    iget-object v3, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    return v2

    .line 348
    :cond_3d
    iget-object v3, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    iget-object v4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_48

    return v2

    .line 349
    :cond_48
    return v0
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 4

    .line 224
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 276
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNfcid2()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public whitelist getSystemCode()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public whitelist getT3tPmm()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 285
    iget v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 354
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 317
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 306
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setDynamicNfcid2(Ljava/lang/String;)V
    .registers 2
    .param p1, "nfcid2"    # Ljava/lang/String;

    .line 266
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public whitelist setDynamicSystemCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "systemCode"    # Ljava/lang/String;

    .line 245
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NfcFService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 323
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", System Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-eqz v1, :cond_72

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dynamic System Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", NFCID2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v1, :cond_a6

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dynamic NFCID2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", T3T PMM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 366
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 367
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 371
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    :cond_24
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v2

    :goto_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 376
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    :cond_3b
    iget v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mT3tPmm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    return-void
.end method
