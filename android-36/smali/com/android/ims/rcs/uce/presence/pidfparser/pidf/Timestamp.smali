.class public Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "Timestamp.java"


# static fields
.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "timestamp"


# instance fields
.field private blacklist mTimestamp:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "timestamp"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->mTimestamp:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 49
    const-string v0, "timestamp"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 44
    const-string v0, "urn:ietf:params:xml:ns:pidf"

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

    .line 70
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 81
    .local v2, "eventType":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_21

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "timestamp":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 84
    iput-object v3, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->mTimestamp:Ljava/lang/String;

    .line 89
    .end local v3    # "timestamp":Ljava/lang/String;
    :cond_21
    invoke-virtual {p0, p1, v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->moveToElementEndTag(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 90
    return-void

    .line 74
    .end local v2    # "eventType":I
    :cond_25
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

    .line 58
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->mTimestamp:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 59
    return-void

    .line 61
    :cond_5
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "element":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->mTimestamp:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 66
    return-void
.end method
