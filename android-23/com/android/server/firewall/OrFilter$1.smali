.class final Lcom/android/server/firewall/OrFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "OrFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/OrFilter;
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
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    new-instance v0, Lcom/android/server/firewall/OrFilter;

    #@2
    invoke-direct {v0}, Lcom/android/server/firewall/OrFilter;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Lcom/android/server/firewall/OrFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method
