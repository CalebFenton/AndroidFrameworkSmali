.class public Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "Contact.java"


# static fields
.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "contact"


# instance fields
.field private blacklist mContact:Ljava/lang/String;

.field private blacklist mPriority:Ljava/lang/Double;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist getContact()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->mContact:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPriority()Ljava/lang/Double;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->mPriority:Ljava/lang/Double;

    return-object v0
.end method

.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 50
    const-string v0, "contact"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 45
    const-string v0, "urn:ietf:params:xml:ns:pidf"

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

    .line 88
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 95
    const-string v2, ""

    const-string v3, "priority"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "priority":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 97
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->mPriority:Ljava/lang/Double;

    .line 101
    :cond_26
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 104
    .local v3, "eventType":I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_39

    .line 105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "contact":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 107
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->mContact:Ljava/lang/String;

    .line 112
    .end local v4    # "contact":Ljava/lang/String;
    :cond_39
    invoke-virtual {p0, p1, v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->moveToElementEndTag(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 113
    return-void

    .line 92
    .end local v2    # "priority":Ljava/lang/String;
    .end local v3    # "eventType":I
    :cond_3d
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
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->mContact:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 73
    return-void

    .line 75
    :cond_5
    const-string v0, ""

    .line 76
    .local v0, "noNamespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->getElementName()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "elementName":Ljava/lang/String;
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->mPriority:Ljava/lang/Double;

    if-eqz v3, :cond_21

    .line 80
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->mPriority:Ljava/lang/Double;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "priority"

    invoke-interface {p1, v0, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    :cond_21
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->mContact:Ljava/lang/String;

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    return-void
.end method

.method public blacklist setContact(Ljava/lang/String;)V
    .registers 2
    .param p1, "contact"    # Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->mContact:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public blacklist setPriority(Ljava/lang/Double;)V
    .registers 2
    .param p1, "priority"    # Ljava/lang/Double;

    .line 54
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->mPriority:Ljava/lang/Double;

    .line 55
    return-void
.end method
