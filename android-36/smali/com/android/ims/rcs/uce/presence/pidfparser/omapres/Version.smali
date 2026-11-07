.class public Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "Version.java"


# static fields
.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "version"


# instance fields
.field private blacklist mMajorVersion:I

.field private blacklist mMinorVersion:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3
    .param p1, "majorVersion"    # I
    .param p2, "minorVersion"    # I

    .line 42
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->mMajorVersion:I

    .line 44
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->mMinorVersion:I

    .line 45
    return-void
.end method

.method private blacklist handleParsedVersion(Ljava/lang/String;)V
    .registers 5
    .param p1, "version"    # Ljava/lang/String;

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 96
    return-void

    .line 99
    :cond_7
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "versionAry":[Ljava/lang/String;
    if-eqz v0, :cond_25

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_25

    .line 101
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->mMajorVersion:I

    .line 102
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->mMinorVersion:I

    .line 104
    :cond_25
    return-void
.end method


# virtual methods
.method public blacklist getValue()Ljava/lang/String;
    .registers 4

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->mMajorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->mMinorVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 54
    const-string v0, "version"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 49
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

    .line 74
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 85
    .local v2, "eventType":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    .line 86
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "version":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->handleParsedVersion(Ljava/lang/String;)V

    .line 91
    .end local v3    # "version":Ljava/lang/String;
    :cond_1c
    invoke-virtual {p0, p1, v2}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->moveToElementEndTag(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 92
    return-void

    .line 78
    .end local v2    # "eventType":I
    :cond_20
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
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "elementName":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/Version;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    return-void
.end method
