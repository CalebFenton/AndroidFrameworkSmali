.class public Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "Audio.java"


# static fields
.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "audio"


# instance fields
.field private blacklist mSupported:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "supported"    # Z

    .line 41
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;->mSupported:Z

    .line 43
    return-void
.end method


# virtual methods
.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "audio"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 47
    const-string v0, "urn:ietf:params:xml:ns:pidf:caps"

    return-object v0
.end method

.method public blacklist isAudioSupported()Z
    .registers 2

    .line 56
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;->mSupported:Z

    return v0
.end method

.method public blacklist parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 81
    .local v2, "eventType":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_25

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "isSupported":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 84
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;->mSupported:Z

    .line 89
    .end local v3    # "isSupported":Ljava/lang/String;
    :cond_25
    invoke-virtual {p0, p1, v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;->moveToElementEndTag(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 90
    return-void

    .line 74
    .end local v2    # "eventType":I
    :cond_29
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist serialize(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "elementName":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;->isAudioSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    return-void
.end method
