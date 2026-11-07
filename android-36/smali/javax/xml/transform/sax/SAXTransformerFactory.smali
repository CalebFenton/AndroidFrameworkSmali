.class public abstract Ljavax/xml/transform/sax/SAXTransformerFactory;
.super Ljavax/xml/transform/TransformerFactory;
.source "SAXTransformerFactory.java"


# static fields
.field public static final whitelist test-api FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

.field public static final whitelist test-api FEATURE_XMLFILTER:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljavax/xml/transform/TransformerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist test-api newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation
.end method
