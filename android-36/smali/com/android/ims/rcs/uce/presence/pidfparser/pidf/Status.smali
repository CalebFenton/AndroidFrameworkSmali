.class public Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "Status.java"


# static fields
.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "status"

.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mBasic:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist getBasic()Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->mBasic:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;

    return-object v0
.end method

.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "status"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 47
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

    .line 77
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 85
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 88
    .local v2, "eventType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 89
    new-instance v3, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;

    invoke-direct {v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;-><init>()V

    .line 90
    .local v3, "basic":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;
    invoke-virtual {v3, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 91
    iput-object v3, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->mBasic:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;

    .line 92
    .end local v3    # "basic":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;
    goto :goto_38

    .line 93
    :cond_20
    sget-object v3, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The eventType is not START_TAG="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_38
    invoke-virtual {p0, p1, v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->moveToElementEndTag(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 98
    return-void

    .line 81
    .end local v2    # "eventType":I
    :cond_3c
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

    .line 65
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->mBasic:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;

    if-nez v0, :cond_5

    .line 66
    return-void

    .line 68
    :cond_5
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "element":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->mBasic:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;

    invoke-virtual {v2, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 72
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 73
    return-void
.end method

.method public blacklist setBasic(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;)V
    .registers 2
    .param p1, "basic"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;

    .line 56
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->mBasic:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;

    .line 57
    return-void
.end method
