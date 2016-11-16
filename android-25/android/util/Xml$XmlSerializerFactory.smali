.class Landroid/util/Xml$XmlSerializerFactory;
.super Ljava/lang/Object;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Xml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XmlSerializerFactory"
.end annotation


# static fields
.field static final TYPE:Ljava/lang/String; = "org.kxml2.io.KXmlParser,org.kxml2.io.KXmlSerializer"

.field static final instance:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 119
    :try_start_0
    const-string/jumbo v1, "org.kxml2.io.KXmlParser,org.kxml2.io.KXmlSerializer"

    #@3
    const/4 v2, 0x0

    #@4
    invoke-static {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    #@7
    move-result-object v1

    #@8
    sput-object v1, Landroid/util/Xml$XmlSerializerFactory;->instance:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 113
    return-void

    #@b
    .line 120
    :catch_0
    move-exception v0

    #@c
    .line 121
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/AssertionError;

    #@e
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@11
    throw v1
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
