.class public Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "Duplex.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex$DuplexType;
    }
.end annotation


# static fields
.field public static final blacklist DUPLEX_FULL:Ljava/lang/String; = "full"

.field public static final blacklist DUPLEX_HALF:Ljava/lang/String; = "half"

.field public static final blacklist DUPLEX_RECEIVE_ONLY:Ljava/lang/String; = "receive-only"

.field public static final blacklist DUPLEX_SEND_ONLY:Ljava/lang/String; = "send-only"

.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "duplex"

.field public static final blacklist ELEMENT_NOT_SUPPORTED:Ljava/lang/String; = "notsupported"

.field public static final blacklist ELEMENT_SUPPORTED:Ljava/lang/String; = "supported"


# instance fields
.field private final blacklist mNotSupportedTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->mSupportedTypeList:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->mNotSupportedTypeList:Ljava/util/List;

    .line 75
    return-void
.end method

.method private blacklist getDuplexType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 171
    .local v0, "eventType":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2c

    .line 173
    const-string v2, "full"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 174
    const-string v2, "half"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 175
    const-string v2, "receive-only"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 176
    const-string v2, "send-only"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 177
    :cond_2b
    return-object v1

    .line 180
    :cond_2c
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public blacklist addNotSupportedType(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->mNotSupportedTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method public blacklist addSupportedType(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->mSupportedTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public blacklist getNotSupportedTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->mNotSupportedTypeList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->mSupportedTypeList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 84
    const-string v0, "duplex"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 79
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

    .line 128
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 136
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 138
    .local v2, "eventType":I
    :cond_12
    const/4 v3, 0x3

    if-ne v2, v3, :cond_33

    .line 139
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 140
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_33

    .line 165
    :cond_32
    return-void

    .line 142
    :cond_33
    :goto_33
    const/4 v3, 0x2

    if-ne v2, v3, :cond_67

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "tagName":Ljava/lang/String;
    const-string v4, "supported"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 146
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->getDuplexType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "duplexType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 148
    invoke-virtual {p0, v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->addSupportedType(Ljava/lang/String;)V

    goto :goto_66

    .line 150
    .end local v4    # "duplexType":Ljava/lang/String;
    :cond_50
    const-string v4, "notsupported"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 151
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->getDuplexType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .restart local v4    # "duplexType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_67

    .line 153
    invoke-virtual {p0, v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->addNotSupportedType(Ljava/lang/String;)V

    goto :goto_67

    .line 150
    .end local v4    # "duplexType":Ljava/lang/String;
    :cond_66
    :goto_66
    nop

    .line 158
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_67
    :goto_67
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 161
    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 162
    return-void

    .line 132
    .end local v2    # "eventType":I
    :cond_6f
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

    .line 105
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->mSupportedTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->mNotSupportedTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 106
    return-void

    .line 108
    :cond_11
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "elementName":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->mSupportedTypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    .local v3, "supportedType":Ljava/lang/String;
    const-string v4, "supported"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    .end local v3    # "supportedType":Ljava/lang/String;
    goto :goto_22

    .line 117
    :cond_3d
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/Duplex;->mNotSupportedTypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    .local v3, "notSupportedType":Ljava/lang/String;
    const-string v4, "notsupported"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    .end local v3    # "notSupportedType":Ljava/lang/String;
    goto :goto_43

    .line 123
    :cond_5e
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    return-void
.end method
