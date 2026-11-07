.class public Landroid/service/voice/VoiceInteractionServiceInfo;
.super Ljava/lang/Object;
.source "VoiceInteractionServiceInfo.java"


# static fields
.field static final greylist-max-o TAG:Ljava/lang/String; = "VoiceInteractionServiceInfo"


# instance fields
.field private blacklist mHotwordDetectionService:Ljava/lang/String;

.field private greylist-max-o mParseError:Ljava/lang/String;

.field private greylist-max-o mRecognitionService:Ljava/lang/String;

.field private greylist-max-o mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private greylist-max-o mSessionService:Ljava/lang/String;

.field private greylist-max-o mSettingsActivity:Ljava/lang/String;

.field private greylist-max-o mSupportsAssist:Z

.field private greylist-max-o mSupportsLaunchFromKeyguard:Z

.field private greylist-max-o mSupportsLocalInteraction:Z

.field private blacklist mVisualQueryDetectionService:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 65
    invoke-static {p2, p3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 66
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    .registers 11
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "si"    # Landroid/content/pm/ServiceInfo;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, "android.permission.BIND_VOICE_INTERACTION"

    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 95
    const-string v0, "Service does not require permission android.permission.BIND_VOICE_INTERACTION"

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    .line 97
    return-void

    .line 100
    :cond_12
    :try_start_12
    const-string v0, "android.voice_interaction"

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_18} :catch_d4
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_18} :catch_d4

    .line 102
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_37

    .line 103
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No android.voice_interaction meta-data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_c8

    .line 152
    if-eqz v0, :cond_36

    :try_start_33
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_36} :catch_d4
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_36} :catch_d4

    .line 105
    :cond_36
    return-void

    .line 108
    :cond_37
    :try_start_37
    iget-object v1, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 113
    .local v2, "attrs":Landroid/util/AttributeSet;
    :goto_41
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v6, :cond_4d

    if-eq v4, v5, :cond_4d

    goto :goto_41

    .line 117
    :cond_4d
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "nodeName":Ljava/lang/String;
    const-string/jumbo v7, "voice-interaction-service"

    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 119
    const-string v5, "Meta-data does not start with voice-interaction-service tag"

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_5e
    .catchall {:try_start_37 .. :try_end_5e} :catchall_c8

    .line 152
    if-eqz v0, :cond_63

    :try_start_60
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_63
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_63} :catch_d4
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60 .. :try_end_63} :catch_d4

    .line 120
    :cond_63
    return-void

    .line 123
    :cond_64
    :try_start_64
    sget-object v7, Lcom/android/internal/R$styleable;->VoiceInteractionService:[I

    invoke-virtual {v1, v2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 125
    .local v7, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v7, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    .line 127
    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    .line 129
    const/4 v5, 0x0

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 131
    const/4 v6, 0x3

    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    .line 134
    const/4 v6, 0x4

    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    .line 137
    const/4 v6, 0x5

    invoke-virtual {v7, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    .line 139
    const/4 v5, 0x6

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mHotwordDetectionService:Ljava/lang/String;

    .line 141
    const/4 v5, 0x7

    invoke-virtual {v7, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mVisualQueryDetectionService:Ljava/lang/String;

    .line 143
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    if-nez v5, :cond_b1

    .line 145
    const-string v5, "No sessionService specified"

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_ab
    .catchall {:try_start_64 .. :try_end_ab} :catchall_c8

    .line 152
    if-eqz v0, :cond_b0

    :try_start_ad
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ad .. :try_end_b0} :catch_d4
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ad .. :try_end_b0} :catch_d4

    .line 146
    :cond_b0
    return-void

    .line 148
    :cond_b1
    :try_start_b1
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    if-nez v5, :cond_bf

    .line 149
    const-string v5, "No recognitionService specified"

    iput-object v5, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_b9
    .catchall {:try_start_b1 .. :try_end_b9} :catchall_c8

    .line 152
    if-eqz v0, :cond_be

    :try_start_bb
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 150
    :cond_be
    return-void

    .line 152
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "nodeName":Ljava/lang/String;
    .end local v4    # "type":I
    .end local v7    # "array":Landroid/content/res/TypedArray;
    :cond_bf
    if-eqz v0, :cond_c4

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_c4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bb .. :try_end_c4} :catch_d4
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c4} :catch_d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_bb .. :try_end_c4} :catch_d4

    .line 156
    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_c4
    nop

    .line 157
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 158
    return-void

    .line 100
    .restart local v0    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_c8
    move-exception v1

    if-eqz v0, :cond_d3

    :try_start_cb
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cf

    goto :goto_d3

    :catchall_cf
    move-exception v2

    :try_start_d0
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/service/voice/VoiceInteractionServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "si":Landroid/content/pm/ServiceInfo;
    :cond_d3
    :goto_d3
    throw v1
    :try_end_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d0 .. :try_end_d4} :catch_d4
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d4} :catch_d4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d0 .. :try_end_d4} :catch_d4

    .line 152
    .end local v0    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/service/voice/VoiceInteractionServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "si":Landroid/content/pm/ServiceInfo;
    :catch_d4
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing voice interation service meta-data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    .line 154
    const-string v1, "VoiceInteractionServiceInfo"

    const-string v2, "error parsing voice interaction service meta-data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    return-void
.end method

.method private static greylist-max-o getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .param p0, "comp"    # Landroid/content/ComponentName;
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 72
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/32 v1, 0xc0080

    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_f

    .line 77
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_e

    .line 78
    return-object v0

    .line 81
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    :cond_e
    goto :goto_10

    .line 80
    :catch_f
    move-exception v0

    .line 82
    :goto_10
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getHotwordDetectionService()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mHotwordDetectionService:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getParseError()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getRecognitionService()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public greylist-max-o getSessionService()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSupportsAssist()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    return v0
.end method

.method public greylist-max-o getSupportsLaunchFromKeyguard()Z
    .registers 2

    .line 185
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    return v0
.end method

.method public greylist-max-o getSupportsLocalInteraction()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    return v0
.end method

.method public blacklist getVisualQueryDetectionService()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mVisualQueryDetectionService:Ljava/lang/String;

    return-object v0
.end method
