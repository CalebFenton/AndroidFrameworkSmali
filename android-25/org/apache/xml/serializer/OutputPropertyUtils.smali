.class public final Lorg/apache/xml/serializer/OutputPropertyUtils;
.super Ljava/lang/Object;
.source "OutputPropertyUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 52
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 54
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    const-string/jumbo v1, "yes"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 57
    const/4 v1, 0x1

    #@10
    return v1

    #@11
    .line 55
    :cond_0
    const/4 v1, 0x0

    #@12
    return v1
.end method

.method public static getIntProperty(Ljava/lang/String;Ljava/util/Properties;)I
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "props"    # Ljava/util/Properties;

    #@0
    .prologue
    .line 75
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 77
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    #@6
    .line 78
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 80
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b
    move-result v1

    #@c
    return v1
.end method
