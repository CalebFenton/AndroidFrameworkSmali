.class public Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "Presence.java"


# static fields
.field private static final blacklist ATTRIBUTE_NAME_ENTITY:Ljava/lang/String; = "entity"

.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "presence"

.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mEntity:Ljava/lang/String;

.field private final blacklist mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTupleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Presence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mTupleList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mNoteList:Ljava/util/List;

    .line 64
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;)V
    .registers 3
    .param p1, "contact"    # Landroid/net/Uri;

    .line 66
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mTupleList:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mNoteList:Ljava/util/List;

    .line 67
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->initEntity(Landroid/net/Uri;)V

    .line 68
    return-void
.end method

.method private blacklist initEntity(Landroid/net/Uri;)V
    .registers 3
    .param p1, "contact"    # Landroid/net/Uri;

    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mEntity:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private blacklist isNoteElement(ILjava/lang/String;)Z
    .registers 4
    .param p1, "eventType"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    const-string v0, "note"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 194
    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 193
    :goto_e
    return v0
.end method

.method private blacklist isTupleElement(ILjava/lang/String;)Z
    .registers 4
    .param p1, "eventType"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 188
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    const-string v0, "tuple"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 189
    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 188
    :goto_e
    return v0
.end method


# virtual methods
.method public blacklist addNote(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;)V
    .registers 3
    .param p1, "note"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;

    .line 102
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public blacklist addTuple(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;)V
    .registers 3
    .param p1, "tuple"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 94
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mTupleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public blacklist getEntity()Ljava/lang/String;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mEntity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNoteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mNoteList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTupleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mTupleList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "presence"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 81
    const-string v0, "urn:ietf:params:xml:ns:pidf"

    return-object v0
.end method

.method public blacklist parse(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 132
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 139
    const-string v2, ""

    const-string v3, "entity"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mEntity:Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mEntity:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_98

    .line 145
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 147
    .local v2, "eventType":I
    :cond_24
    const/4 v3, 0x3

    if-ne v2, v3, :cond_45

    .line 148
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 149
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_45

    .line 185
    :cond_44
    return-void

    .line 151
    :cond_45
    :goto_45
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v3, :cond_91

    .line 152
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "tagName":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->isTupleElement(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 155
    new-instance v5, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    invoke-direct {v5}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;-><init>()V

    .line 159
    .local v5, "tuple":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    :try_start_58
    invoke-virtual {v5, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->parse(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_58 .. :try_end_5b} :catch_5c

    .line 164
    goto :goto_6a

    .line 160
    :catch_5c
    move-exception v6

    .line 161
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 162
    sget-object v7, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->LOG_TAG:Ljava/lang/String;

    const-string v8, "parse: Exception occurred during Tuple parsing."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v5, v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->setMalformed(Z)V

    .line 165
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6a
    iget-object v6, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mTupleList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v5    # "tuple":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    goto :goto_90

    .line 166
    :cond_70
    invoke-direct {p0, v2, v3}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->isNoteElement(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    .line 167
    new-instance v5, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;

    invoke-direct {v5}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;-><init>()V

    .line 169
    .local v5, "note":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;
    :try_start_7b
    invoke-virtual {v5, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;->parse(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 173
    goto :goto_8a

    .line 170
    :catch_7f
    move-exception v6

    .line 171
    .restart local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 172
    sget-object v7, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->LOG_TAG:Ljava/lang/String;

    const-string v8, "parse: Exception occurred during Note parsing."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_8a
    iget-object v6, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mNoteList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 166
    .end local v5    # "note":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;
    :cond_90
    :goto_90
    nop

    .line 178
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_91
    :goto_91
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 181
    if-ne v2, v4, :cond_24

    .line 182
    return-void

    .line 141
    .end local v2    # "eventType":I
    :cond_98
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Entity uri of presence is empty"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_a0
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

    .line 111
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "elementName":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    const-string v2, "entity"

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mEntity:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mTupleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;

    .line 120
    .local v3, "tuple":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    invoke-virtual {v3, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 121
    .end local v3    # "tuple":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
    goto :goto_1a

    .line 124
    :cond_2a
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mNoteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;

    .line 125
    .local v3, "note":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;
    invoke-virtual {v3, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 126
    .end local v3    # "note":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;
    goto :goto_30

    .line 127
    :cond_40
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    return-void
.end method

.method public blacklist setEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "entity"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Presence;->mEntity:Ljava/lang/String;

    .line 77
    return-void
.end method
