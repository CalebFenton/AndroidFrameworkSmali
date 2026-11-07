.class public interface abstract Landroid/content/pm/XmlSerializerAndParser;
.super Ljava/lang/Object;
.source "XmlSerializerAndParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public greylist createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .registers 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 43
    .local p0, "this":Landroid/content/pm/XmlSerializerAndParser;, "Landroid/content/pm/XmlSerializerAndParser<TT;>;"
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/pm/XmlSerializerAndParser;->createFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist writeAsXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/modules/utils/TypedXmlSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public greylist writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 4
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/xmlpull/v1/XmlSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    .local p0, "this":Landroid/content/pm/XmlSerializerAndParser;, "Landroid/content/pm/XmlSerializerAndParser<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->makeTyped(Lorg/xmlpull/v1/XmlSerializer;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/pm/XmlSerializerAndParser;->writeAsXml(Ljava/lang/Object;Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 39
    return-void
.end method
