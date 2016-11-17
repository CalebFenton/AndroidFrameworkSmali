.class public final Landroid/nfc/cardemulation/NfcFServiceInfo;
.super Ljava/lang/Object;
.source "NfcFServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/NfcFServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "NfcFServiceInfo"


# instance fields
.field final mDescription:Ljava/lang/String;

.field mDynamicNfcid2:Ljava/lang/String;

.field mDynamicSystemCode:Ljava/lang/String;

.field final mNfcid2:Ljava/lang/String;

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSystemCode:Ljava/lang/String;

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 270
    new-instance v0, Landroid/nfc/cardemulation/NfcFServiceInfo$1;

    #@2
    invoke-direct {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo$1;-><init>()V

    #@5
    .line 269
    sput-object v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 17
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    move-object/from16 v0, p2

    #@5
    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@7
    .line 100
    .local v11, "si":Landroid/content/pm/ServiceInfo;
    const/4 v8, 0x0

    #@8
    .line 102
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v14, "android.nfc.cardemulation.host_nfcf_service"

    #@b
    move-object/from16 v0, p1

    #@d
    invoke-virtual {v11, v0, v14}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@10
    move-result-object v8

    #@11
    .line 103
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v8, :cond_1

    #@13
    .line 104
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    #@15
    const-string/jumbo v15, "No android.nfc.cardemulation.host_nfcf_service meta-data"

    #@18
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    .line 167
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v5

    #@1d
    .line 168
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    #@1f
    new-instance v15, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v16, "Unable to create context for: "

    #@27
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v15

    #@2b
    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2d
    move-object/from16 v16, v0

    #@2f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v15

    #@33
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v15

    #@37
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    .line 169
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v14

    #@3c
    .line 170
    if-eqz v8, :cond_0

    #@3e
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@41
    .line 169
    :cond_0
    throw v14

    #@42
    .line 108
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    #@45
    move-result v6

    #@46
    .line 109
    .local v6, "eventType":I
    :goto_0
    const/4 v14, 0x2

    #@47
    if-eq v6, v14, :cond_2

    #@49
    .line 110
    const/4 v14, 0x1

    #@4a
    if-eq v6, v14, :cond_2

    #@4c
    .line 111
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    #@4f
    move-result v6

    #@50
    goto :goto_0

    #@51
    .line 114
    :cond_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@54
    move-result-object v13

    #@55
    .line 115
    .local v13, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "host-nfcf-service"

    #@58
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5b
    move-result v14

    #@5c
    if-nez v14, :cond_3

    #@5e
    .line 116
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    #@60
    .line 117
    const-string/jumbo v15, "Meta-data does not start with <host-nfcf-service> tag"

    #@63
    .line 116
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@66
    throw v14

    #@67
    .line 120
    :cond_3
    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@69
    move-object/from16 v0, p1

    #@6b
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@6e
    move-result-object v9

    #@6f
    .line 121
    .local v9, "res":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@72
    move-result-object v3

    #@73
    .line 123
    .local v3, "attrs":Landroid/util/AttributeSet;
    sget-object v14, Lcom/android/internal/R$styleable;->HostNfcFService:[I

    #@75
    .line 122
    invoke-virtual {v9, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@78
    move-result-object v10

    #@79
    .line 124
    .local v10, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    #@7b
    move-object/from16 v1, p0

    #@7d
    iput-object v0, v1, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@7f
    .line 126
    const/4 v14, 0x0

    #@80
    .line 125
    invoke-virtual {v10, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@83
    move-result-object v14

    #@84
    move-object/from16 v0, p0

    #@86
    iput-object v14, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    #@88
    .line 127
    const/4 v14, 0x0

    #@89
    move-object/from16 v0, p0

    #@8b
    iput-object v14, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    #@8d
    .line 128
    const/4 v14, 0x0

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-object v14, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    #@92
    .line 129
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    #@95
    .line 131
    const/4 v12, 0x0

    #@96
    .line 132
    .local v12, "systemCode":Ljava/lang/String;
    const/4 v7, 0x0

    #@97
    .line 133
    .local v7, "nfcid2":Ljava/lang/String;
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@9a
    move-result v4

    #@9b
    .line 135
    .end local v7    # "nfcid2":Ljava/lang/String;
    .end local v12    # "systemCode":Ljava/lang/String;
    .local v4, "depth":I
    :cond_4
    :goto_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    #@9e
    move-result v6

    #@9f
    const/4 v14, 0x3

    #@a0
    if-ne v6, v14, :cond_5

    #@a2
    .line 136
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@a5
    move-result v14

    #@a6
    if-le v14, v4, :cond_b

    #@a8
    :cond_5
    const/4 v14, 0x1

    #@a9
    if-eq v6, v14, :cond_b

    #@ab
    .line 137
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@ae
    move-result-object v13

    #@af
    .line 138
    const/4 v14, 0x2

    #@b0
    if-ne v6, v14, :cond_8

    #@b2
    .line 139
    const-string/jumbo v14, "system-code-filter"

    #@b5
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v14

    #@b9
    .line 138
    if-eqz v14, :cond_8

    #@bb
    .line 139
    if-nez v12, :cond_8

    #@bd
    .line 141
    sget-object v14, Lcom/android/internal/R$styleable;->SystemCodeFilter:[I

    #@bf
    .line 140
    invoke-virtual {v9, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@c2
    move-result-object v2

    #@c3
    .line 143
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    #@c4
    .line 142
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@c7
    move-result-object v14

    #@c8
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@cb
    move-result-object v12

    #@cc
    .line 144
    .local v12, "systemCode":Ljava/lang/String;
    invoke-static {v12}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidSystemCode(Ljava/lang/String;)Z

    #@cf
    move-result v14

    #@d0
    if-nez v14, :cond_6

    #@d2
    .line 145
    const-string/jumbo v14, "NULL"

    #@d5
    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@d8
    move-result v14

    #@d9
    if-eqz v14, :cond_7

    #@db
    .line 149
    .end local v12    # "systemCode":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@de
    goto :goto_1

    #@df
    .line 146
    .restart local v12    # "systemCode":Ljava/lang/String;
    :cond_7
    const-string/jumbo v14, "NfcFServiceInfo"

    #@e2
    new-instance v15, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    const-string/jumbo v16, "Invalid System Code: "

    #@ea
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v15

    #@ee
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v15

    #@f2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v15

    #@f6
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f9
    .line 147
    const/4 v12, 0x0

    #@fa
    .local v12, "systemCode":Ljava/lang/String;
    goto :goto_2

    #@fb
    .line 150
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v12    # "systemCode":Ljava/lang/String;
    :cond_8
    const/4 v14, 0x2

    #@fc
    if-ne v6, v14, :cond_4

    #@fe
    .line 151
    const-string/jumbo v14, "nfcid2-filter"

    #@101
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@104
    move-result v14

    #@105
    .line 150
    if-eqz v14, :cond_4

    #@107
    .line 151
    if-nez v7, :cond_4

    #@109
    .line 153
    sget-object v14, Lcom/android/internal/R$styleable;->Nfcid2Filter:[I

    #@10b
    .line 152
    invoke-virtual {v9, v3, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10e
    move-result-object v2

    #@10f
    .line 155
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    #@110
    .line 154
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@113
    move-result-object v14

    #@114
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@117
    move-result-object v7

    #@118
    .line 156
    .local v7, "nfcid2":Ljava/lang/String;
    const-string/jumbo v14, "RANDOM"

    #@11b
    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@11e
    move-result v14

    #@11f
    if-nez v14, :cond_9

    #@121
    .line 157
    const-string/jumbo v14, "NULL"

    #@124
    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@127
    move-result v14

    #@128
    if-eqz v14, :cond_a

    #@12a
    .line 162
    .end local v7    # "nfcid2":Ljava/lang/String;
    :cond_9
    :goto_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@12d
    goto/16 :goto_1

    #@12f
    .line 158
    .restart local v7    # "nfcid2":Ljava/lang/String;
    :cond_a
    invoke-static {v7}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidNfcid2(Ljava/lang/String;)Z

    #@132
    move-result v14

    #@133
    if-nez v14, :cond_9

    #@135
    .line 159
    const-string/jumbo v14, "NfcFServiceInfo"

    #@138
    new-instance v15, Ljava/lang/StringBuilder;

    #@13a
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@13d
    const-string/jumbo v16, "Invalid NFCID2: "

    #@140
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v15

    #@144
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v15

    #@148
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v15

    #@14c
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@14f
    .line 160
    const/4 v7, 0x0

    #@150
    .local v7, "nfcid2":Ljava/lang/String;
    goto :goto_3

    #@151
    .line 165
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "nfcid2":Ljava/lang/String;
    :cond_b
    if-nez v12, :cond_c

    #@153
    const-string/jumbo v12, "NULL"

    #@156
    :cond_c
    move-object/from16 v0, p0

    #@158
    iput-object v12, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    #@15a
    .line 166
    if-nez v7, :cond_d

    #@15c
    const-string/jumbo v7, "NULL"

    #@15f
    :cond_d
    move-object/from16 v0, p0

    #@161
    iput-object v7, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@163
    .line 170
    if-eqz v8, :cond_e

    #@165
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    #@168
    .line 173
    :cond_e
    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16a
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    #@16c
    move-object/from16 v0, p0

    #@16e
    iput v14, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    #@170
    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "systemCode"    # Ljava/lang/String;
    .param p4, "dynamicSystemCode"    # Ljava/lang/String;
    .param p5, "nfcid2"    # Ljava/lang/String;
    .param p6, "dynamicNfcid2"    # Ljava/lang/String;
    .param p7, "uid"    # I

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 88
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@5
    .line 89
    iput-object p2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    #@7
    .line 90
    iput-object p3, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    #@9
    .line 91
    iput-object p4, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    #@b
    .line 92
    iput-object p5, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    #@d
    .line 93
    iput-object p6, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    #@f
    .line 94
    iput p7, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    #@11
    .line 87
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 249
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "    "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 299
    const-string/jumbo v1, " (Description: "

    #@17
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 299
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getDescription()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 299
    const-string/jumbo v1, ")"

    #@26
    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@31
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v1, "    System Code: "

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v1, "    NFCID2: "

    #@54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v0

    #@58
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 297
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 231
    if-ne p0, p1, :cond_0

    #@4
    return v4

    #@5
    .line 232
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    #@7
    if-nez v1, :cond_1

    #@9
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 233
    check-cast v0, Landroid/nfc/cardemulation/NfcFServiceInfo;

    #@d
    .line 235
    .local v0, "thatService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    return v3

    #@1c
    .line 236
    :cond_2
    iget-object v1, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    #@1e
    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    if-nez v1, :cond_3

    #@26
    return v3

    #@27
    .line 237
    :cond_3
    iget-object v1, v0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    #@29
    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_4

    #@31
    return v3

    #@32
    .line 239
    :cond_4
    return v4
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 177
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@8
    .line 178
    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@c
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    #@e
    .line 177
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 198
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNfcid2()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    #@9
    goto :goto_0
.end method

.method public getSystemCode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    #@9
    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 202
    iget v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

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
    .line 206
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public setOrReplaceDynamicNfcid2(Ljava/lang/String;)V
    .locals 0
    .param p1, "nfcid2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 194
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    #@2
    .line 193
    return-void
.end method

.method public setOrReplaceDynamicSystemCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemCode"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    iput-object p1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    #@2
    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "NfcFService: "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 216
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    .line 217
    const-string/jumbo v1, ", description: "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 218
    const-string/jumbo v1, ", System Code: "

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    .line 219
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    #@29
    if-eqz v1, :cond_0

    #@2b
    .line 220
    const-string/jumbo v1, ", dynamic System Code: "

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 222
    :cond_0
    const-string/jumbo v1, ", NFCID2: "

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    #@40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    .line 223
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    #@45
    if-eqz v1, :cond_1

    #@47
    .line 224
    const-string/jumbo v1, ", dynamic NFCID2: "

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget-object v2, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 226
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    return-object v1
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
    .line 254
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    #@4
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    #@7
    .line 255
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDescription:Ljava/lang/String;

    #@9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@c
    .line 256
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mSystemCode:Ljava/lang/String;

    #@e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 257
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    #@13
    if-eqz v0, :cond_2

    #@15
    move v0, v1

    #@16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 258
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 259
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicSystemCode:Ljava/lang/String;

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@22
    .line 261
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mNfcid2:Ljava/lang/String;

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@27
    .line 262
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    #@29
    if-eqz v0, :cond_3

    #@2b
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 263
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    #@30
    if-eqz v0, :cond_1

    #@32
    .line 264
    iget-object v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mDynamicNfcid2:Ljava/lang/String;

    #@34
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@37
    .line 266
    :cond_1
    iget v0, p0, Landroid/nfc/cardemulation/NfcFServiceInfo;->mUid:I

    #@39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3c
    .line 253
    return-void

    #@3d
    :cond_2
    move v0, v2

    #@3e
    .line 257
    goto :goto_0

    #@3f
    :cond_3
    move v1, v2

    #@40
    .line 262
    goto :goto_1
.end method
