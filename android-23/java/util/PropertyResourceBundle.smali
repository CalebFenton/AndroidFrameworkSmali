.class public Ljava/util/PropertyResourceBundle;
.super Ljava/util/ResourceBundle;
.source "PropertyResourceBundle.java"


# instance fields
.field resources:Ljava/util/Properties;


# direct methods
.method static synthetic -wrap0(Ljava/util/PropertyResourceBundle;)Ljava/util/Enumeration;
    .locals 1

    #@0
    invoke-direct {p0}, Ljava/util/PropertyResourceBundle;->getLocalKeys()Ljava/util/Enumeration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    #@3
    .line 48
    if-nez p1, :cond_0

    #@5
    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "stream == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 51
    :cond_0
    new-instance v0, Ljava/util/Properties;

    #@10
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@13
    iput-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    #@15
    .line 52
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    #@17
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@1a
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    #@3
    .line 63
    new-instance v0, Ljava/util/Properties;

    #@5
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@8
    iput-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    #@a
    .line 64
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    #@c
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    #@f
    .line 62
    return-void
.end method

.method private getLocalKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    #@2
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 79
    invoke-direct {p0}, Ljava/util/PropertyResourceBundle;->getLocalKeys()Ljava/util/Enumeration;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 81
    :cond_0
    new-instance v0, Ljava/util/PropertyResourceBundle$1;

    #@b
    invoke-direct {v0, p0}, Ljava/util/PropertyResourceBundle$1;-><init>(Ljava/util/PropertyResourceBundle;)V

    #@e
    return-object v0
.end method

.method public handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->resources:Ljava/util/Properties;

    #@2
    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
