.class Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;
.super Ljava/lang/Object;
.source "AccountAuthenticatorCache.java"

# interfaces
.implements Landroid/content/pm/XmlSerializerAndParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountAuthenticatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/XmlSerializerAndParser",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/accounts/AuthenticatorDescription;
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    const-string/jumbo v0, "type"

    #@3
    const/4 v1, 0x0

    #@4
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public bridge synthetic createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
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
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/accounts/AuthenticatorDescription;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public writeAsXml(Landroid/accounts/AuthenticatorDescription;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "item"    # Landroid/accounts/AuthenticatorDescription;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    const-string/jumbo v0, "type"

    #@3
    iget-object v1, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    #@5
    const/4 v2, 0x0

    #@6
    invoke-interface {p2, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@9
    .line 85
    return-void
.end method

.method public bridge synthetic writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    #@2
    .end local p1    # "item":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;->writeAsXml(Landroid/accounts/AuthenticatorDescription;Lorg/xmlpull/v1/XmlSerializer;)V

    #@5
    return-void
.end method
