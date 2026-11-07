.class public Lcom/android/apex/ApexInfoList;
.super Ljava/lang/Object;
.source "ApexInfoList.java"


# instance fields
.field private blacklist apexInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/apex/ApexInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/apex/ApexInfoList;
    .registers 8
    .param p0, "_parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/android/apex/ApexInfoList;

    invoke-direct {v0}, Lcom/android/apex/ApexInfoList;-><init>()V

    .line 15
    .local v0, "_instance":Lcom/android/apex/ApexInfoList;
    const/4 v1, 0x0

    .line 16
    .local v1, "_raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 18
    .local v2, "outerDepth":I
    :goto_a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_39

    if-eq v4, v6, :cond_39

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1d

    goto :goto_a

    .line 21
    :cond_1d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 22
    .local v3, "_tagName":Ljava/lang/String;
    const-string v5, "apex-info"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 23
    invoke-static {p0}, Lcom/android/apex/ApexInfo;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/apex/ApexInfo;

    move-result-object v5

    .line 24
    .local v5, "_value":Lcom/android/apex/ApexInfo;
    invoke-virtual {v0}, Lcom/android/apex/ApexInfoList;->getApexInfo()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .end local v5    # "_value":Lcom/android/apex/ApexInfo;
    goto :goto_38

    .line 26
    :cond_35
    invoke-static {p0}, Lcom/android/apex/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 28
    .end local v3    # "_tagName":Ljava/lang/String;
    :goto_38
    goto :goto_a

    .line 29
    :cond_39
    if-ne v4, v6, :cond_3c

    .line 32
    return-object v0

    .line 30
    :cond_3c
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "ApexInfoList is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public blacklist getApexInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/apex/ApexInfo;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/android/apex/ApexInfoList;->apexInfo:Ljava/util/List;

    if-nez v0, :cond_b

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/apex/ApexInfoList;->apexInfo:Ljava/util/List;

    .line 10
    :cond_b
    iget-object v0, p0, Lcom/android/apex/ApexInfoList;->apexInfo:Ljava/util/List;

    return-object v0
.end method

.method blacklist write(Lcom/android/apex/XmlWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "_out"    # Lcom/android/apex/XmlWriter;
    .param p2, "_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 37
    const-string v0, ">\n"

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/android/apex/XmlWriter;->increaseIndent()V

    .line 39
    invoke-virtual {p0}, Lcom/android/apex/ApexInfoList;->getApexInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/apex/ApexInfo;

    .line 40
    .local v2, "value":Lcom/android/apex/ApexInfo;
    const-string v3, "apex-info"

    invoke-virtual {v2, p1, v3}, Lcom/android/apex/ApexInfo;->write(Lcom/android/apex/XmlWriter;Ljava/lang/String;)V

    .line 41
    .end local v2    # "value":Lcom/android/apex/ApexInfo;
    goto :goto_26

    .line 42
    :cond_38
    invoke-virtual {p1}, Lcom/android/apex/XmlWriter;->decreaseIndent()V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/apex/XmlWriter;->print(Ljava/lang/String;)V

    .line 44
    return-void
.end method
