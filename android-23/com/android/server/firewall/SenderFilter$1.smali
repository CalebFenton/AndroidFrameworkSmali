.class final Lcom/android/server/firewall/SenderFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderFilter;
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
    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 61
    const-string/jumbo v1, "type"

    #@4
    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 62
    .local v0, "typeString":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 63
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@c
    const-string/jumbo v2, "type attribute must be specified for <sender>"

    #@f
    invoke-direct {v1, v2, p1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@12
    throw v1

    #@13
    .line 66
    :cond_0
    const-string/jumbo v1, "system"

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 67
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->-get1()Lcom/android/server/firewall/Filter;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 68
    :cond_1
    const-string/jumbo v1, "signature"

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 69
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->-get0()Lcom/android/server/firewall/Filter;

    #@2d
    move-result-object v1

    #@2e
    return-object v1

    #@2f
    .line 70
    :cond_2
    const-string/jumbo v1, "system|signature"

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_3

    #@38
    .line 71
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->-get2()Lcom/android/server/firewall/Filter;

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 72
    :cond_3
    const-string/jumbo v1, "userId"

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_4

    #@46
    .line 73
    invoke-static {}, Lcom/android/server/firewall/SenderFilter;->-get3()Lcom/android/server/firewall/Filter;

    #@49
    move-result-object v1

    #@4a
    return-object v1

    #@4b
    .line 75
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@4d
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v3, "Invalid type attribute for <sender>: "

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v2

    #@61
    .line 75
    invoke-direct {v1, v2, p1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@64
    throw v1
.end method
