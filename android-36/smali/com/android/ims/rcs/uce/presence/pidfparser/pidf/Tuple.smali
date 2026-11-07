.class public Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;
.super Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;
.source "Tuple.java"


# static fields
.field private static final blacklist ATTRIBUTE_NAME_TUPLE_ID:Ljava/lang/String; = "id"

.field public static final blacklist ELEMENT_NAME:Ljava/lang/String; = "tuple"

.field private static final blacklist LOCK:Ljava/lang/Object;

.field private static blacklist sTupleId:J


# instance fields
.field private blacklist mContact:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mMalformed:Z

.field private blacklist mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mServiceCaps:Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;

.field private blacklist mServiceDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

.field private blacklist mStatus:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;

.field private blacklist mTimestamp:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 50
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->sTupleId:J

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/ElementBase;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mNoteList:Ljava/util/List;

    .line 65
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getTupleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mId:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mMalformed:Z

    .line 67
    return-void
.end method

.method private blacklist getTupleId()Ljava/lang/String;
    .registers 7

    .line 233
    sget-object v0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->sTupleId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->sTupleId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 235
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method


# virtual methods
.method public blacklist addNote(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;)V
    .registers 3
    .param p1, "note"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;

    .line 112
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public blacklist getContact()Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mContact:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;

    return-object v0
.end method

.method public blacklist getMalformed()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mMalformed:Z

    return v0
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

    .line 116
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mNoteList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getServiceCaps()Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mServiceCaps:Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;

    return-object v0
.end method

.method public blacklist getServiceDescription()Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mServiceDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    return-object v0
.end method

.method public blacklist getStatus()Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mStatus:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;

    return-object v0
.end method

.method public blacklist getTimestamp()Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mTimestamp:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;

    return-object v0
.end method

.method protected blacklist initElementName()Ljava/lang/String;
    .registers 2

    .line 76
    const-string v0, "tuple"

    return-object v0
.end method

.method protected blacklist initNamespace()Ljava/lang/String;
    .registers 2

    .line 71
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

    .line 176
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->verifyParsingElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 184
    const-string v2, ""

    const-string v3, "id"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mId:Ljava/lang/String;

    .line 187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 189
    .local v2, "eventType":I
    :cond_1c
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3d

    .line 190
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 191
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_3d

    .line 230
    :cond_3c
    return-void

    .line 193
    :cond_3d
    :goto_3d
    const/4 v3, 0x2

    if-ne v2, v3, :cond_ba

    .line 194
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "tagName":Ljava/lang/String;
    const-string v4, "status"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 197
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;-><init>()V

    .line 198
    .local v4, "status":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 199
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mStatus:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;

    .line 200
    .end local v4    # "status":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;
    goto :goto_ba

    :cond_57
    const-string v4, "service-description"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 201
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;-><init>()V

    .line 202
    .local v4, "serviceDescription":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 203
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mServiceDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    .line 204
    .end local v4    # "serviceDescription":Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;
    goto :goto_ba

    :cond_6a
    const-string v4, "servcaps"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 205
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;-><init>()V

    .line 206
    .local v4, "serviceCaps":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 207
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mServiceCaps:Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;

    .line 208
    .end local v4    # "serviceCaps":Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;
    goto :goto_ba

    :cond_7d
    const-string v4, "contact"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 209
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;-><init>()V

    .line 210
    .local v4, "contact":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 211
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mContact:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;

    .line 212
    .end local v4    # "contact":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;
    goto :goto_ba

    :cond_90
    const-string v4, "note"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 213
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;-><init>()V

    .line 214
    .local v4, "note":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 215
    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mNoteList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v4    # "note":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;
    goto :goto_b9

    .line 216
    :cond_a6
    const-string v4, "timestamp"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 217
    new-instance v4, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;

    invoke-direct {v4}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;-><init>()V

    .line 218
    .local v4, "timestamp":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;
    invoke-virtual {v4, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 219
    iput-object v4, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mTimestamp:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;

    goto :goto_ba

    .line 216
    .end local v4    # "timestamp":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;
    :cond_b9
    :goto_b9
    nop

    .line 223
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_ba
    :goto_ba
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 226
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 227
    return-void

    .line 180
    .end local v2    # "eventType":I
    :cond_c2
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

    .line 137
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "namespace":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->getElementName()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "elementName":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const-string v2, "id"

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mId:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mStatus:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;

    invoke-virtual {v2, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 148
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mServiceDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    if-eqz v2, :cond_22

    .line 149
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mServiceDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    invoke-virtual {v2, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 153
    :cond_22
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mServiceCaps:Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;

    if-eqz v2, :cond_2b

    .line 154
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mServiceCaps:Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;

    invoke-virtual {v2, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 158
    :cond_2b
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mContact:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;

    if-eqz v2, :cond_34

    .line 159
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mContact:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;

    invoke-virtual {v2, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 163
    :cond_34
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mNoteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;

    .line 164
    .local v3, "note":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;
    invoke-virtual {v3, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 165
    .end local v3    # "note":Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Note;
    goto :goto_3a

    .line 168
    :cond_4a
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mTimestamp:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;

    if-eqz v2, :cond_53

    .line 169
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mTimestamp:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;

    invoke-virtual {v2, p1}, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 171
    :cond_53
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    return-void
.end method

.method public blacklist setContact(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;)V
    .registers 2
    .param p1, "contact"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;

    .line 104
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mContact:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Contact;

    .line 105
    return-void
.end method

.method public blacklist setMalformed(Z)V
    .registers 2
    .param p1, "malformed"    # Z

    .line 128
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mMalformed:Z

    .line 129
    return-void
.end method

.method public blacklist setServiceCaps(Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;)V
    .registers 2
    .param p1, "serviceCaps"    # Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;

    .line 96
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mServiceCaps:Lcom/android/ims/rcs/uce/presence/pidfparser/capabilities/ServiceCaps;

    .line 97
    return-void
.end method

.method public blacklist setServiceDescription(Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;)V
    .registers 2
    .param p1, "servDescription"    # Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    .line 88
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mServiceDescription:Lcom/android/ims/rcs/uce/presence/pidfparser/omapres/ServiceDescription;

    .line 89
    return-void
.end method

.method public blacklist setStatus(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;)V
    .registers 2
    .param p1, "status"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;

    .line 80
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mStatus:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Status;

    .line 81
    return-void
.end method

.method public blacklist setTimestamp(Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;)V
    .registers 2
    .param p1, "timestamp"    # Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;

    .line 120
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Tuple;->mTimestamp:Lcom/android/ims/rcs/uce/presence/pidfparser/pidf/Timestamp;

    .line 121
    return-void
.end method
