.class final Lcom/android/server/firewall/SenderPackageFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderPackageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderPackageFilter;
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
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 63
    const-string/jumbo v1, "name"

    #@4
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 65
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 66
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@c
    .line 67
    const-string/jumbo v2, "A package name must be specified."

    #@f
    .line 66
    invoke-direct {v1, v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@12
    throw v1

    #@13
    .line 70
    :cond_0
    new-instance v1, Lcom/android/server/firewall/SenderPackageFilter;

    #@15
    invoke-direct {v1, v0}, Lcom/android/server/firewall/SenderPackageFilter;-><init>(Ljava/lang/String;)V

    #@18
    return-object v1
.end method
