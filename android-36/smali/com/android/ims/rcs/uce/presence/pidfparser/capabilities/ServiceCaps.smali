.class public Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "ServiceCaps.java"


# static fields
.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "servcaps"


# instance fields
.field private final blacklist mElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->mElements:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist addElement(Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;)V
    .registers 3
    .param p1, "element"    # Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;

    .line 53
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->mElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public blacklist getElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->mElements:Ljava/util/List;

    return-object v0
.end method

.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 49
    const-string v0, "servcaps"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, "urn:ietf:params:xml:ns:pidf:caps"

    return-object v0
.end method

.method public blacklist parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 77
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 87
    .local v2, "eventType":I
    :cond_12
    const/4 v3, 0x3

    if-ne v2, v3, :cond_33

    .line 88
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 89
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_33

    .line 116
    :cond_32
    return-void

    .line 91
    :cond_33
    :goto_33
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7d

    .line 92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "tagName":Ljava/lang/String;
    const-string v4, "audio"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 95
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;-><init>()V

    .line 96
    .local v4, "audio":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 97
    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->mElements:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v4    # "audio":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Audio;
    goto :goto_7d

    :cond_50
    const-string v4, "video"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 99
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;-><init>()V

    .line 100
    .local v4, "video":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 101
    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->mElements:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "video":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Video;
    goto :goto_7c

    .line 102
    :cond_66
    const-string v4, "duplex"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 103
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;-><init>()V

    .line 104
    .local v4, "duplex":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 105
    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->mElements:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    .line 102
    .end local v4    # "duplex":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;
    :cond_7c
    :goto_7c
    nop

    .line 109
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_7d
    :goto_7d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 112
    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 113
    return-void

    .line 81
    .end local v2    # "eventType":I
    :cond_85
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
    .registers 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->mElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    return-void

    .line 65
    :cond_9
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "elementName":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->mElements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;

    .line 69
    .local v3, "element":Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
    invoke-virtual {v3, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 70
    .end local v3    # "element":Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
    goto :goto_1a

    .line 71
    :cond_2a
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    return-void
.end method
