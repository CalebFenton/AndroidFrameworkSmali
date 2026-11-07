.class public Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "Basic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic$BasicValue;
    }
.end annotation


# static fields
.field public static final blacklist CLOSED:Ljava/lang/String; = "closed"

.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "basic"

.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field public static final blacklist OPEN:Ljava/lang/String; = "open"


# instance fields
.field private blacklist mBasic:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Basic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->mBasic:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->mBasic:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 70
    const-string v0, "basic"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 65
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

    .line 91
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 99
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 102
    .local v2, "eventType":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 103
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "basicValue":Ljava/lang/String;
    const-string v4, "open"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 105
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->mBasic:Ljava/lang/String;

    goto :goto_32

    .line 106
    :cond_24
    const-string v4, "closed"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 107
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->mBasic:Ljava/lang/String;

    goto :goto_32

    .line 109
    :cond_2f
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->mBasic:Ljava/lang/String;

    .line 111
    .end local v3    # "basicValue":Ljava/lang/String;
    :goto_32
    goto :goto_4b

    .line 112
    :cond_33
    sget-object v3, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The eventType is not TEXT="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_4b
    invoke-virtual {p0, p1, v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->moveToElementEndTag(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 117
    return-void

    .line 95
    .end local v2    # "eventType":I
    :cond_4f
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

    .line 79
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->mBasic:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 80
    return-void

    .line 82
    :cond_5
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "element":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Basic;->mBasic:Ljava/lang/String;

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    return-void
.end method
