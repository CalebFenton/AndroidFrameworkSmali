.class public Landroid/service/voice/VoiceInteractionServiceInfo;
.super Ljava/lang/Object;
.source "VoiceInteractionServiceInfo.java"


# static fields
.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceInfo"


# instance fields
.field private mParseError:Ljava/lang/String;

.field private mRecognitionService:Ljava/lang/String;

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private mSessionService:Ljava/lang/String;

.field private mSettingsActivity:Ljava/lang/String;

.field private mSupportsAssist:Z

.field private mSupportsLaunchFromKeyguard:Z

.field private mSupportsLocalInteraction:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 52
    const/16 v0, 0x80

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    #@9
    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 57
    invoke-static {p2, p3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    #@7
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    .locals 13
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "si"    # Landroid/content/pm/ServiceInfo;

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 78
    if-nez p2, :cond_0

    #@7
    .line 79
    const-string/jumbo v9, "Service not available"

    #@a
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@c
    .line 80
    return-void

    #@d
    .line 82
    :cond_0
    const-string/jumbo v9, "android.permission.BIND_VOICE_INTERACTION"

    #@10
    iget-object v10, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@12
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v9

    #@16
    if-nez v9, :cond_1

    #@18
    .line 83
    const-string/jumbo v9, "Service does not require permission android.permission.BIND_VOICE_INTERACTION"

    #@1b
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@1d
    .line 85
    return-void

    #@1e
    .line 88
    :cond_1
    const/4 v6, 0x0

    #@1f
    .line 90
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v9, "android.voice_interaction"

    #@22
    invoke-virtual {p2, p1, v9}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@25
    move-result-object v6

    #@26
    .line 91
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v6, :cond_3

    #@28
    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v10, "No android.voice_interaction meta-data for "

    #@30
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v9

    #@34
    .line 93
    iget-object v10, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@36
    .line 92
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v9

    #@3a
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 150
    if-eqz v6, :cond_2

    #@42
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@45
    .line 94
    :cond_2
    return-void

    #@46
    .line 97
    :cond_3
    :try_start_1
    iget-object v9, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@48
    invoke-virtual {p1, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@4b
    move-result-object v7

    #@4c
    .line 99
    .local v7, "res":Landroid/content/res/Resources;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@4f
    move-result-object v1

    #@50
    .line 102
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_4
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    #@53
    move-result v8

    #@54
    .local v8, "type":I
    if-eq v8, v11, :cond_5

    #@56
    .line 103
    if-ne v8, v12, :cond_4

    #@58
    .line 106
    :cond_5
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    .line 107
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v9, "voice-interaction-service"

    #@5f
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v9

    #@63
    if-nez v9, :cond_7

    #@65
    .line 108
    const-string/jumbo v9, "Meta-data does not start with voice-interaction-service tag"

    #@68
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6a
    .line 150
    if-eqz v6, :cond_6

    #@6c
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@6f
    .line 109
    :cond_6
    return-void

    #@70
    .line 113
    :cond_7
    :try_start_2
    sget-object v9, Lcom/android/internal/R$styleable;->VoiceInteractionService:[I

    #@72
    .line 112
    invoke-virtual {v7, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@75
    move-result-object v0

    #@76
    .line 115
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v9, 0x1

    #@77
    .line 114
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@7a
    move-result-object v9

    #@7b
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    #@7d
    .line 117
    const/4 v9, 0x2

    #@7e
    .line 116
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@81
    move-result-object v9

    #@82
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    #@84
    .line 119
    const/4 v9, 0x0

    #@85
    .line 118
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    #@8b
    .line 121
    const/4 v9, 0x3

    #@8c
    .line 122
    const/4 v10, 0x0

    #@8d
    .line 120
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@90
    move-result v9

    #@91
    iput-boolean v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    #@93
    .line 123
    const/4 v9, 0x4

    #@94
    .line 125
    const/4 v10, 0x0

    #@95
    .line 123
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@98
    move-result v9

    #@99
    iput-boolean v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    #@9b
    .line 126
    const/4 v9, 0x5

    #@9c
    .line 127
    const/4 v10, 0x0

    #@9d
    .line 126
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@a0
    move-result v9

    #@a1
    iput-boolean v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    #@a3
    .line 128
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@a6
    .line 129
    iget-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    #@a8
    if-nez v9, :cond_9

    #@aa
    .line 130
    const-string/jumbo v9, "No sessionService specified"

    #@ad
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@af
    .line 150
    if-eqz v6, :cond_8

    #@b1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@b4
    .line 131
    :cond_8
    return-void

    #@b5
    .line 133
    :cond_9
    :try_start_3
    iget-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    #@b7
    if-nez v9, :cond_b

    #@b9
    .line 134
    const-string/jumbo v9, "No recognitionService specified"

    #@bc
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@be
    .line 150
    if-eqz v6, :cond_a

    #@c0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@c3
    .line 135
    :cond_a
    return-void

    #@c4
    .line 150
    :cond_b
    if-eqz v6, :cond_c

    #@c6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@c9
    .line 152
    :cond_c
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@cb
    .line 77
    return-void

    #@cc
    .line 145
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "type":I
    :catch_0
    move-exception v2

    #@cd
    .line 146
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    #@cf
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d2
    const-string/jumbo v10, "Error parsing voice interation service meta-data: "

    #@d5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v9

    #@d9
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v9

    #@dd
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v9

    #@e1
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@e3
    .line 147
    const-string/jumbo v9, "VoiceInteractionServiceInfo"

    #@e6
    const-string/jumbo v10, "error parsing voice interaction service meta-data"

    #@e9
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ec
    .line 150
    if-eqz v6, :cond_d

    #@ee
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@f1
    .line 148
    :cond_d
    return-void

    #@f2
    .line 141
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    #@f3
    .line 142
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    #@f5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f8
    const-string/jumbo v10, "Error parsing voice interation service meta-data: "

    #@fb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v9

    #@ff
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v9

    #@103
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@106
    move-result-object v9

    #@107
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@109
    .line 143
    const-string/jumbo v9, "VoiceInteractionServiceInfo"

    #@10c
    const-string/jumbo v10, "error parsing voice interaction service meta-data"

    #@10f
    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@112
    .line 150
    if-eqz v6, :cond_e

    #@114
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@117
    .line 144
    :cond_e
    return-void

    #@118
    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    #@119
    .line 138
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    const-string/jumbo v10, "Error parsing voice interation service meta-data: "

    #@121
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@124
    move-result-object v9

    #@125
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@128
    move-result-object v9

    #@129
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12c
    move-result-object v9

    #@12d
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@12f
    .line 139
    const-string/jumbo v9, "VoiceInteractionServiceInfo"

    #@132
    const-string/jumbo v10, "error parsing voice interaction service meta-data"

    #@135
    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@138
    .line 150
    if-eqz v6, :cond_f

    #@13a
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@13d
    .line 140
    :cond_f
    return-void

    #@13e
    .line 149
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    #@13f
    .line 150
    if-eqz v6, :cond_10

    #@141
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@144
    .line 149
    :cond_10
    throw v9
.end method

.method static getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p0, "comp"    # Landroid/content/ComponentName;
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v2

    #@4
    .line 64
    const v3, 0x100c0080

    #@7
    .line 63
    invoke-interface {v2, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result-object v1

    #@b
    .line 69
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    #@d
    .line 70
    return-object v1

    #@e
    .line 72
    .end local v1    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    #@f
    .line 74
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@11
    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2
.end method


# virtual methods
.method public getParseError()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRecognitionService()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 168
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@2
    return-object v0
.end method

.method public getSessionService()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSupportsAssist()Z
    .locals 1

    #@0
    .prologue
    .line 176
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    #@2
    return v0
.end method

.method public getSupportsLaunchFromKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 180
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    #@2
    return v0
.end method

.method public getSupportsLocalInteraction()Z
    .locals 1

    #@0
    .prologue
    .line 184
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    #@2
    return v0
.end method
