.class public Lcom/google/android/mms/pdu/PduBody;
.super Ljava/lang/Object;
.source "PduBody.java"


# instance fields
.field private blacklist mPartMapByContentId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPartMapByContentLocation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPartMapByFileName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPartMapByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    .line 30
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 31
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 32
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    .line 33
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private blacklist putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V
    .registers 8
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 50
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 51
    .local v0, "contentId":[B
    if-eqz v0, :cond_10

    .line 52
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_10
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    .line 57
    .local v1, "contentLocation":[B
    if-eqz v1, :cond_20

    .line 58
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 59
    .local v2, "clc":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .end local v2    # "clc":Ljava/lang/String;
    :cond_20
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v2

    .line 64
    .local v2, "name":[B
    if-eqz v2, :cond_30

    .line 65
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 66
    .local v3, "clc":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v3    # "clc":Ljava/lang/String;
    :cond_30
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 71
    .local v3, "fileName":[B
    if-eqz v3, :cond_40

    .line 72
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 73
    .local v4, "clc":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v4    # "clc":Ljava/lang/String;
    :cond_40
    return-void
.end method


# virtual methods
.method public greylist addPart(ILcom/google/android/mms/pdu/PduPart;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 103
    if-eqz p2, :cond_b

    .line 107
    invoke-direct {p0, p2}, Lcom/google/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 109
    return-void

    .line 104
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    .registers 3
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 86
    if-eqz p1, :cond_c

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 87
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist getPart(I)Lcom/google/android/mms/pdu/PduPart;
    .registers 3
    .param p1, "index"    # I

    .line 137
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public greylist getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .registers 3
    .param p1, "cid"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public greylist getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .registers 3
    .param p1, "contentLocation"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public greylist getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .registers 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public greylist getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public greylist-max-r getPartIndex(Lcom/google/android/mms/pdu/PduPart;)I
    .registers 3
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 148
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist getPartsNum()I
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public blacklist removeAll()V
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 127
    return-void
.end method

.method public greylist-max-r removePart(I)Lcom/google/android/mms/pdu/PduPart;
    .registers 3
    .param p1, "index"    # I

    .line 119
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method
