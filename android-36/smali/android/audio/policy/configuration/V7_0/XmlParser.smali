.class public Landroid/audio/policy/configuration/V7_0/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist read(Ljava/io/InputStream;)Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 6
    .local v0, "_parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 7
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 10
    .local v2, "_tagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 11
    .local v3, "_raw":Ljava/lang/String;
    const-string v4, "audioPolicyConfiguration"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 12
    invoke-static {v0}, Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;

    move-result-object v1

    .line 13
    .local v1, "_value":Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;
    return-object v1

    .line 15
    .end local v1    # "_value":Landroid/audio/policy/configuration/V7_0/AudioPolicyConfiguration;
    :cond_28
    return-object v1
.end method

.method public static blacklist readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 4
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    const-string v0, ""

    .line 20
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    .line 21
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 24
    :cond_10
    return-object v0
.end method

.method public static blacklist skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 3
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 31
    const/4 v0, 0x1

    .line 32
    .local v0, "depth":I
    :goto_8
    if-eqz v0, :cond_18

    .line 33
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    goto :goto_17

    .line 35
    :pswitch_12
    add-int/lit8 v0, v0, -0x1

    .line 36
    goto :goto_17

    .line 38
    :pswitch_15
    add-int/lit8 v0, v0, 0x1

    .line 39
    :goto_17
    goto :goto_8

    .line 42
    :cond_18
    return-void

    .line 29
    .end local v0    # "depth":I
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method
