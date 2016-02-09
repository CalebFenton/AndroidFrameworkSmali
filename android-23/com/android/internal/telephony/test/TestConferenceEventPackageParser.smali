.class public Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
.super Ljava/lang/Object;
.source "TestConferenceEventPackageParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TestConferenceEventPackageParser"

.field private static final PARTICIPANT_TAG:Ljava/lang/String; = "participant"


# instance fields
.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    #@5
    .line 76
    return-void
.end method

.method private parseParticipant(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 128
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    .line 130
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, ""

    #@8
    .line 131
    .local v5, "user":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@b
    .line 132
    .local v1, "displayText":Ljava/lang/String;
    const-string/jumbo v2, ""

    #@e
    .line 133
    .local v2, "endpoint":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@11
    .line 135
    .local v4, "status":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@14
    move-result v3

    #@15
    .line 136
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {p1, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@18
    move-result v6

    #@19
    if-eqz v6, :cond_4

    #@1b
    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    const-string/jumbo v7, "user"

    #@22
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v6

    #@26
    if-eqz v6, :cond_1

    #@28
    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2b
    .line 139
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@2e
    move-result-object v5

    #@2f
    goto :goto_0

    #@30
    .line 140
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@33
    move-result-object v6

    #@34
    const-string/jumbo v7, "display-text"

    #@37
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v6

    #@3b
    if-eqz v6, :cond_2

    #@3d
    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@40
    .line 142
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@43
    move-result-object v1

    #@44
    goto :goto_0

    #@45
    .line 143
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    const-string/jumbo v7, "endpoint"

    #@4c
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v6

    #@50
    if-eqz v6, :cond_3

    #@52
    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@55
    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@58
    move-result-object v2

    #@59
    goto :goto_0

    #@5a
    .line 146
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@5d
    move-result-object v6

    #@5e
    const-string/jumbo v7, "status"

    #@61
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v6

    #@65
    if-eqz v6, :cond_0

    #@67
    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@6a
    .line 148
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    goto :goto_0

    #@6f
    .line 152
    :cond_4
    const-string/jumbo v6, "TestConferenceEventPackageParser"

    #@72
    new-instance v7, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v8, "User: "

    #@7a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v7

    #@7e
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@85
    move-result-object v7

    #@86
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@89
    .line 153
    const-string/jumbo v6, "TestConferenceEventPackageParser"

    #@8c
    new-instance v7, Ljava/lang/StringBuilder;

    #@8e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@91
    const-string/jumbo v8, "DisplayText: "

    #@94
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v7

    #@98
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v7

    #@9c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v7

    #@a0
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@a3
    .line 154
    const-string/jumbo v6, "TestConferenceEventPackageParser"

    #@a6
    new-instance v7, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v8, "Endpoint: "

    #@ae
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v7

    #@b2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v7

    #@b6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v7

    #@ba
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    .line 155
    const-string/jumbo v6, "TestConferenceEventPackageParser"

    #@c0
    new-instance v7, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v8, "Status: "

    #@c8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v7

    #@cc
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v7

    #@d0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v7

    #@d4
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    .line 157
    const-string/jumbo v6, "user"

    #@da
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@dd
    .line 158
    const-string/jumbo v6, "display-text"

    #@e0
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@e3
    .line 159
    const-string/jumbo v6, "endpoint"

    #@e6
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@e9
    .line 160
    const-string/jumbo v6, "status"

    #@ec
    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@ef
    .line 162
    return-object v0
.end method


# virtual methods
.method public parse()Lcom/android/ims/ImsConferenceState;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 88
    new-instance v0, Lcom/android/ims/ImsConferenceState;

    #@3
    invoke-direct {v0}, Lcom/android/ims/ImsConferenceState;-><init>()V

    #@6
    .line 92
    .local v0, "conferenceState":Lcom/android/ims/ImsConferenceState;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    #@9
    move-result-object v4

    #@a
    .line 93
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v6, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    #@c
    const/4 v7, 0x0

    #@d
    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    #@10
    .line 94
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    #@13
    .line 96
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v3

    #@17
    .line 97
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-static {v4, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    #@1a
    move-result v6

    #@1b
    if-eqz v6, :cond_1

    #@1d
    .line 98
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    const-string/jumbo v7, "participant"

    #@24
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_0

    #@2a
    .line 99
    const-string/jumbo v6, "TestConferenceEventPackageParser"

    #@2d
    const-string/jumbo v7, "Found participant."

    #@30
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@33
    .line 100
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->parseParticipant(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    #@36
    move-result-object v5

    #@37
    .line 101
    .local v5, "participant":Landroid/os/Bundle;
    iget-object v6, v0, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    #@39
    .line 102
    const-string/jumbo v7, "endpoint"

    #@3c
    .line 101
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v7

    #@40
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 105
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "participant":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    #@45
    .line 106
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v6, "TestConferenceEventPackageParser"

    #@48
    const-string/jumbo v7, "Failed to read test conference event package from XML file"

    #@4b
    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    .line 110
    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    #@50
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    #@53
    .line 107
    return-object v8

    #@54
    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    #@56
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@59
    .line 117
    return-object v0

    #@5a
    .line 111
    :catch_1
    move-exception v1

    #@5b
    .line 112
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "TestConferenceEventPackageParser"

    #@5e
    const-string/jumbo v7, "Failed to close test conference event package InputStream"

    #@61
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@64
    .line 113
    return-object v8

    #@65
    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    #@66
    .line 112
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "TestConferenceEventPackageParser"

    #@69
    const-string/jumbo v7, "Failed to close test conference event package InputStream"

    #@6c
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6f
    .line 113
    return-object v8

    #@70
    .line 108
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    #@71
    .line 110
    :try_start_4
    iget-object v7, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    #@73
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    #@76
    .line 108
    throw v6

    #@77
    .line 111
    :catch_3
    move-exception v1

    #@78
    .line 112
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "TestConferenceEventPackageParser"

    #@7b
    const-string/jumbo v7, "Failed to close test conference event package InputStream"

    #@7e
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@81
    .line 113
    return-object v8
.end method
