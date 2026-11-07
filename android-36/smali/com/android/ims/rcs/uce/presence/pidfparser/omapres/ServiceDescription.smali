.class public Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "ServiceDescription.java"


# static fields
.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "service-description"


# instance fields
.field private blacklist mDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

.field private blacklist mServiceId:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

.field private blacklist mVersion:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist getDescription()Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

    return-object v0
.end method

.method public blacklist getServiceId()Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mServiceId:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

    return-object v0
.end method

.method public blacklist getVersion()Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mVersion:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;

    return-object v0
.end method

.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 48
    const-string v0, "service-description"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 43
    const-string v0, "urn:oma:xml:prs:pidf:oma-pres"

    return-object v0
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

    .line 97
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 107
    .local v2, "eventType":I
    :cond_12
    const/4 v3, 0x3

    if-ne v2, v3, :cond_33

    .line 108
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 109
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_33

    .line 136
    :cond_32
    return-void

    .line 111
    :cond_33
    :goto_33
    const/4 v3, 0x2

    if-ne v2, v3, :cond_74

    .line 112
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "tagName":Ljava/lang/String;
    const-string v4, "service-id"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 115
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;-><init>()V

    .line 116
    .local v4, "serviceId":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 117
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mServiceId:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

    .line 118
    .end local v4    # "serviceId":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;
    goto :goto_74

    :cond_4d
    const-string v4, "version"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 119
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;-><init>()V

    .line 120
    .local v4, "version":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 121
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mVersion:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;

    .end local v4    # "version":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;
    goto :goto_73

    .line 122
    :cond_60
    const-string v4, "description"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 123
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;-><init>()V

    .line 124
    .local v4, "description":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 125
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

    goto :goto_74

    .line 122
    .end local v4    # "description":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;
    :cond_73
    :goto_73
    nop

    .line 129
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_74
    :goto_74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 132
    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 133
    return-void

    .line 101
    .end local v2    # "eventType":I
    :cond_7c
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

    .line 77
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mServiceId:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mVersion:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

    if-nez v0, :cond_d

    .line 78
    return-void

    .line 80
    :cond_d
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "element":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mServiceId:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

    if-eqz v2, :cond_21

    .line 84
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mServiceId:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

    invoke-virtual {v2, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 86
    :cond_21
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mVersion:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;

    if-eqz v2, :cond_2a

    .line 87
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mVersion:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;

    invoke-virtual {v2, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 89
    :cond_2a
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

    if-eqz v2, :cond_33

    .line 90
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

    invoke-virtual {v2, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 92
    :cond_33
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    return-void
.end method

.method public blacklist setDescription(Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;)V
    .registers 2
    .param p1, "description"    # Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

    .line 68
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Description;

    .line 69
    return-void
.end method

.method public blacklist setServiceId(Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;)V
    .registers 2
    .param p1, "serviceId"    # Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

    .line 52
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mServiceId:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceId;

    .line 53
    return-void
.end method

.method public blacklist setVersion(Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;)V
    .registers 2
    .param p1, "version"    # Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;

    .line 60
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->mVersion:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;

    .line 61
    return-void
.end method
