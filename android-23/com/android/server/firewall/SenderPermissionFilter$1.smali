.class final Lcom/android/server/firewall/SenderPermissionFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "SenderPermissionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/SenderPermissionFilter;
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
    .line 45
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
    .line 49
    const-string/jumbo v1, "name"

    #@4
    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 50
    .local v0, "permission":Ljava/lang/String;
    if-nez v0, :cond_0

    #@a
    .line 51
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    #@c
    const-string/jumbo v2, "Permission name must be specified."

    #@f
    invoke-direct {v1, v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@12
    throw v1

    #@13
    .line 54
    :cond_0
    new-instance v1, Lcom/android/server/firewall/SenderPermissionFilter;

    #@15
    invoke-direct {v1, v0, v3}, Lcom/android/server/firewall/SenderPermissionFilter;-><init>(Ljava/lang/String;Lcom/android/server/firewall/SenderPermissionFilter;)V

    #@18
    return-object v1
.end method
