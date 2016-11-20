.class final Lcom/android/server/firewall/PortFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "PortFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/PortFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 60
    const/4 v2, -0x1

    #@2
    .line 61
    .local v2, "lowerBound":I
    const/4 v4, -0x1

    #@3
    .line 63
    .local v4, "upperBound":I
    const-string/jumbo v7, "equals"

    #@6
    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 64
    .local v0, "equalsValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    .line 67
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v6

    #@10
    .line 72
    .local v6, "value":I
    move v2, v6

    #@11
    .line 73
    move v4, v6

    #@12
    .line 76
    .end local v6    # "value":I
    :cond_0
    const-string/jumbo v7, "min"

    #@15
    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    .line 77
    .local v3, "lowerBoundString":Ljava/lang/String;
    const-string/jumbo v7, "max"

    #@1c
    invoke-interface {p1, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    .line 78
    .local v5, "upperBoundString":Ljava/lang/String;
    if-nez v3, :cond_1

    #@22
    if-eqz v5, :cond_4

    #@24
    .line 79
    :cond_1
    if-eqz v0, :cond_2

    #@26
    .line 80
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    #@28
    .line 81
    const-string/jumbo v8, "Port filter cannot use both equals and range filtering"

    #@2b
    .line 80
    invoke-direct {v7, v8, p1, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@2e
    throw v7

    #@2f
    .line 68
    .end local v3    # "lowerBoundString":Ljava/lang/String;
    .end local v5    # "upperBoundString":Ljava/lang/String;
    :catch_0
    move-exception v1

    #@30
    .line 69
    .local v1, "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    #@32
    new-instance v8, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v9, "Invalid port value: "

    #@3a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v8

    #@3e
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v8

    #@42
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v8

    #@46
    invoke-direct {v7, v8, p1, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@49
    throw v7

    #@4a
    .line 85
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v3    # "lowerBoundString":Ljava/lang/String;
    .restart local v5    # "upperBoundString":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    #@4c
    .line 87
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    #@4f
    move-result v2

    #@50
    .line 95
    :cond_3
    if-eqz v5, :cond_4

    #@52
    .line 97
    :try_start_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    #@55
    move-result v4

    #@56
    .line 107
    :cond_4
    new-instance v7, Lcom/android/server/firewall/PortFilter;

    #@58
    invoke-direct {v7, v2, v4, v10}, Lcom/android/server/firewall/PortFilter;-><init>(IILcom/android/server/firewall/PortFilter;)V

    #@5b
    return-object v7

    #@5c
    .line 88
    :catch_1
    move-exception v1

    #@5d
    .line 89
    .restart local v1    # "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    #@5f
    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v9, "Invalid minimum port value: "

    #@67
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v8

    #@6b
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v8

    #@73
    .line 89
    invoke-direct {v7, v8, p1, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@76
    throw v7

    #@77
    .line 98
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v1

    #@78
    .line 99
    .restart local v1    # "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    #@7a
    .line 100
    new-instance v8, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v9, "Invalid maximum port value: "

    #@82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v8

    #@86
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v8

    #@8a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    .line 99
    invoke-direct {v7, v8, p1, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@91
    throw v7
.end method
