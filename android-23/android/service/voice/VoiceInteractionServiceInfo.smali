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
    .line 51
    const/16 v0, 0x80

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    #@9
    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@3
    move-result-object v0

    #@4
    .line 57
    const/16 v1, 0x80

    #@6
    .line 56
    invoke-interface {v0, p2, v1, p3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    #@d
    .line 55
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 61
    const-string/jumbo v9, "android.permission.BIND_VOICE_INTERACTION"

    #@8
    iget-object v10, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    #@a
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v9

    #@e
    if-nez v9, :cond_0

    #@10
    .line 62
    const-string/jumbo v9, "Service does not require permission android.permission.BIND_VOICE_INTERACTION"

    #@13
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@15
    .line 64
    return-void

    #@16
    .line 67
    :cond_0
    const/4 v6, 0x0

    #@17
    .line 69
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v9, "android.voice_interaction"

    #@1a
    invoke-virtual {p2, p1, v9}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@1d
    move-result-object v6

    #@1e
    .line 70
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v6, :cond_2

    #@20
    .line 71
    new-instance v9, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v10, "No android.voice_interaction meta-data for "

    #@28
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v9

    #@2c
    .line 72
    iget-object v10, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@2e
    .line 71
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v9

    #@32
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v9

    #@36
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    .line 127
    if-eqz v6, :cond_1

    #@3a
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@3d
    .line 73
    :cond_1
    return-void

    #@3e
    .line 76
    :cond_2
    :try_start_1
    iget-object v9, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@40
    invoke-virtual {p1, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@43
    move-result-object v7

    #@44
    .line 78
    .local v7, "res":Landroid/content/res/Resources;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@47
    move-result-object v1

    #@48
    .line 81
    .local v1, "attrs":Landroid/util/AttributeSet;
    :cond_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    #@4b
    move-result v8

    #@4c
    .local v8, "type":I
    if-eq v8, v11, :cond_4

    #@4e
    .line 82
    if-ne v8, v12, :cond_3

    #@50
    .line 85
    :cond_4
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@53
    move-result-object v5

    #@54
    .line 86
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v9, "voice-interaction-service"

    #@57
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5a
    move-result v9

    #@5b
    if-nez v9, :cond_6

    #@5d
    .line 87
    const-string/jumbo v9, "Meta-data does not start with voice-interaction-service tag"

    #@60
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@62
    .line 127
    if-eqz v6, :cond_5

    #@64
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@67
    .line 88
    :cond_5
    return-void

    #@68
    .line 92
    :cond_6
    :try_start_2
    sget-object v9, Lcom/android/internal/R$styleable;->VoiceInteractionService:[I

    #@6a
    .line 91
    invoke-virtual {v7, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6d
    move-result-object v0

    #@6e
    .line 94
    .local v0, "array":Landroid/content/res/TypedArray;
    const/4 v9, 0x1

    #@6f
    .line 93
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@72
    move-result-object v9

    #@73
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    #@75
    .line 96
    const/4 v9, 0x2

    #@76
    .line 95
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@79
    move-result-object v9

    #@7a
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    #@7c
    .line 98
    const/4 v9, 0x0

    #@7d
    .line 97
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@80
    move-result-object v9

    #@81
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    #@83
    .line 100
    const/4 v9, 0x3

    #@84
    .line 101
    const/4 v10, 0x0

    #@85
    .line 99
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@88
    move-result v9

    #@89
    iput-boolean v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    #@8b
    .line 102
    const/4 v9, 0x4

    #@8c
    .line 104
    const/4 v10, 0x0

    #@8d
    .line 102
    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@90
    move-result v9

    #@91
    iput-boolean v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    #@93
    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@96
    .line 106
    iget-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    #@98
    if-nez v9, :cond_8

    #@9a
    .line 107
    const-string/jumbo v9, "No sessionService specified"

    #@9d
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9f
    .line 127
    if-eqz v6, :cond_7

    #@a1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@a4
    .line 108
    :cond_7
    return-void

    #@a5
    .line 110
    :cond_8
    :try_start_3
    iget-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    #@a7
    if-nez v9, :cond_a

    #@a9
    .line 111
    const-string/jumbo v9, "No recognitionService specified"

    #@ac
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ae
    .line 127
    if-eqz v6, :cond_9

    #@b0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@b3
    .line 112
    :cond_9
    return-void

    #@b4
    .line 127
    :cond_a
    if-eqz v6, :cond_b

    #@b6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@b9
    .line 129
    :cond_b
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@bb
    .line 60
    return-void

    #@bc
    .line 122
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "nodeName":Ljava/lang/String;
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "type":I
    :catch_0
    move-exception v2

    #@bd
    .line 123
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    const-string/jumbo v10, "Error parsing voice interation service meta-data: "

    #@c5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v9

    #@c9
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v9

    #@cd
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v9

    #@d1
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@d3
    .line 124
    const-string/jumbo v9, "VoiceInteractionServiceInfo"

    #@d6
    const-string/jumbo v10, "error parsing voice interaction service meta-data"

    #@d9
    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@dc
    .line 127
    if-eqz v6, :cond_c

    #@de
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@e1
    .line 125
    :cond_c
    return-void

    #@e2
    .line 118
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    #@e3
    .line 119
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v10, "Error parsing voice interation service meta-data: "

    #@eb
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v9

    #@ef
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v9

    #@f3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v9

    #@f7
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@f9
    .line 120
    const-string/jumbo v9, "VoiceInteractionServiceInfo"

    #@fc
    const-string/jumbo v10, "error parsing voice interaction service meta-data"

    #@ff
    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@102
    .line 127
    if-eqz v6, :cond_d

    #@104
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@107
    .line 121
    :cond_d
    return-void

    #@108
    .line 114
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    #@109
    .line 115
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    #@10b
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@10e
    const-string/jumbo v10, "Error parsing voice interation service meta-data: "

    #@111
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v9

    #@115
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v9

    #@119
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11c
    move-result-object v9

    #@11d
    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@11f
    .line 116
    const-string/jumbo v9, "VoiceInteractionServiceInfo"

    #@122
    const-string/jumbo v10, "error parsing voice interaction service meta-data"

    #@125
    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@128
    .line 127
    if-eqz v6, :cond_e

    #@12a
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@12d
    .line 117
    :cond_e
    return-void

    #@12e
    .line 126
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v9

    #@12f
    .line 127
    if-eqz v6, :cond_f

    #@131
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    #@134
    .line 126
    :cond_f
    throw v9
.end method


# virtual methods
.method public getParseError()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRecognitionService()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    #@2
    return-object v0
.end method

.method public getSessionService()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSupportsAssist()Z
    .locals 1

    #@0
    .prologue
    .line 153
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    #@2
    return v0
.end method

.method public getSupportsLaunchFromKeyguard()Z
    .locals 1

    #@0
    .prologue
    .line 157
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    #@2
    return v0
.end method
