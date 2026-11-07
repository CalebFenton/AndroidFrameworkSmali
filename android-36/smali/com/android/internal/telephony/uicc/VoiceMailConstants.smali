.class Lcom/android/internal/telephony/uicc/VoiceMailConstants;
.super Ljava/lang/Object;
.source "VoiceMailConstants.java"


# instance fields
.field private blacklist CarrierVmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-r <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    .line 54
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->loadVoiceMail()V

    return-void
.end method

.method private blacklist loadVoiceMail()V
    .registers 11

    .line 79
    const-string v0, "Exception in Voicemail parser "

    const-string v1, "voicemail"

    const-string v2, "VoiceMailConstants"

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "etc/voicemail-conf.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    :try_start_11
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_16} :catch_88

    .line 91
    :try_start_16
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 92
    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 94
    invoke-static {v3, v1}, Lcom/android/internal/telephony/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 97
    :goto_20
    invoke-static {v3}, Lcom/android/internal/telephony/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 99
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_2b} :catch_58
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2b} :catch_56
    .catchall {:try_start_16 .. :try_end_2b} :catchall_54

    if-nez v5, :cond_31

    .line 119
    :try_start_2d
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_83

    return-void

    .line 105
    :cond_31
    :try_start_31
    const-string v5, "numeric"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    const-string v7, "carrier"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 107
    const-string v8, "vmnumber"

    invoke-interface {v3, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    const-string v9, "vmtag"

    invoke-interface {v3, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v7, v8, v6}, [Ljava/lang/String;

    move-result-object v6

    .line 110
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_53} :catch_58
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_53} :catch_56
    .catchall {:try_start_31 .. :try_end_53} :catchall_54

    goto :goto_20

    :catchall_54
    move-exception p0

    goto :goto_84

    :catch_56
    move-exception p0

    goto :goto_5a

    :catch_58
    move-exception p0

    goto :goto_70

    .line 115
    :goto_5a
    :try_start_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_5a .. :try_end_6c} :catchall_54

    .line 119
    :goto_6c
    :try_start_6c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_83

    goto :goto_83

    .line 113
    :goto_70
    :try_start_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_70 .. :try_end_82} :catchall_54

    goto :goto_6c

    :catch_83
    :goto_83
    return-void

    .line 119
    :goto_84
    :try_start_84
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_87

    .line 122
    :catch_87
    throw p0

    .line 85
    :catch_88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t open "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method blacklist containsCarrier(Ljava/lang/String;)Z
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method blacklist getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 p1, 0x1

    .line 68
    aget-object p0, p0, p1

    return-object p0
.end method

.method blacklist getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const/4 p1, 0x2

    .line 73
    aget-object p0, p0, p1

    return-object p0
.end method
