.class public Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;
.super Ljava/lang/Object;
.source "TestConferenceEventPackageParser.java"


# instance fields
.field private blacklist mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor blacklist <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method private blacklist parseParticipant(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 127
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 134
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const-string v1, ""

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 135
    :cond_e
    :goto_e
    invoke-static {p1, v0}, Lcom/android/internal/telephony/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v5

    const-string v6, "status"

    const-string v7, "endpoint"

    const-string v8, "display-text"

    const-string v9, "user"

    if-eqz v5, :cond_64

    .line 136
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 139
    :cond_2e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    .line 142
    :cond_40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    .line 145
    :cond_52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 151
    :cond_64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TestConferenceEventPackageParser"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisplayText: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Endpoint: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public blacklist parse()Landroid/telephony/ims/ImsConferenceState;
    .registers 10

    .line 87
    const-string v0, "Failed to close test conference event package InputStream"

    const-string v1, "TestConferenceEventPackageParser"

    new-instance v2, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v2}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    const/4 v3, 0x0

    .line 91
    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 92
    iget-object v5, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-interface {v4, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 95
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 96
    :cond_1a
    :goto_1a
    invoke-static {v4, v5}, Lcom/android/internal/telephony/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 97
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "participant"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 98
    const-string v6, "Found participant."

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->parseParticipant(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v6

    .line 100
    iget-object v7, v2, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    const-string v8, "endpoint"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_40} :catch_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_40} :catch_43
    .catchall {:try_start_a .. :try_end_40} :catchall_41

    goto :goto_1a

    :catchall_41
    move-exception v2

    goto :goto_60

    :catch_43
    move-exception v2

    goto :goto_50

    .line 109
    :cond_45
    :try_start_45
    iget-object p0, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_4b

    return-object v2

    :catch_4b
    move-exception p0

    .line 111
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    .line 105
    :goto_50
    :try_start_50
    const-string v4, "Failed to read test conference event package from XML file"

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_41

    .line 109
    :try_start_55
    iget-object p0, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_5b

    return-object v3

    :catch_5b
    move-exception p0

    .line 111
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    .line 109
    :goto_60
    :try_start_60
    iget-object p0, p0, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_65} :catch_66

    .line 114
    throw v2

    :catch_66
    move-exception p0

    .line 111
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method
