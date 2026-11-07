.class public Llibcore/util/XmlObjectFactory;
.super Ljava/lang/Object;
.source "XmlObjectFactory.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist test-api newXMLReader()Lorg/xml/sax/XMLReader;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 75
    new-instance v0, Lorg/apache/harmony/xml/ExpatReader;

    invoke-direct {v0}, Lorg/apache/harmony/xml/ExpatReader;-><init>()V

    return-object v0
.end method

.method public static blacklist test-api newXmlPullParser()Lorg/xmlpull/v1/XmlPullParser;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 63
    new-instance v0, Lcom/android/org/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lcom/android/org/kxml2/io/KXmlParser;-><init>()V

    return-object v0
.end method

.method public static blacklist test-api newXmlSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 50
    new-instance v0, Lcom/android/org/kxml2/io/KXmlSerializer;

    invoke-direct {v0}, Lcom/android/org/kxml2/io/KXmlSerializer;-><init>()V

    return-object v0
.end method
