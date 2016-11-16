.class public Ljava/util/PropertyResourceBundle;
.super Ljava/util/ResourceBundle;
.source "PropertyResourceBundle.java"


# instance fields
.field private lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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
    .line 128
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    #@3
    .line 129
    new-instance v0, Ljava/util/Properties;

    #@5
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@8
    .line 130
    .local v0, "properties":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    #@b
    .line 131
    new-instance v1, Ljava/util/HashMap;

    #@d
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@10
    iput-object v1, p0, Ljava/util/PropertyResourceBundle;->lookup:Ljava/util/Map;

    #@12
    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    #@3
    .line 147
    new-instance v0, Ljava/util/Properties;

    #@5
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    #@8
    .line 148
    .local v0, "properties":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    #@b
    .line 149
    new-instance v1, Ljava/util/HashMap;

    #@d
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@10
    iput-object v1, p0, Ljava/util/PropertyResourceBundle;->lookup:Ljava/util/Map;

    #@12
    .line 146
    return-void
.end method


# virtual methods
.method public getKeys()Ljava/util/Enumeration;
    .locals 4
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
    const/4 v1, 0x0

    #@1
    .line 169
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@3
    .line 170
    .local v0, "parent":Ljava/util/ResourceBundle;
    new-instance v2, Lsun/util/ResourceBundleEnumeration;

    #@5
    iget-object v3, p0, Ljava/util/PropertyResourceBundle;->lookup:Ljava/util/Map;

    #@7
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@a
    move-result-object v3

    #@b
    .line 171
    if-eqz v0, :cond_0

    #@d
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@10
    move-result-object v1

    #@11
    .line 170
    :cond_0
    invoke-direct {v2, v3, v1}, Lsun/util/ResourceBundleEnumeration;-><init>(Ljava/util/Set;Ljava/util/Enumeration;)V

    #@14
    return-object v2
.end method

.method public handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    if-nez p1, :cond_0

    #@2
    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 157
    :cond_0
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->lookup:Ljava/util/Map;

    #@a
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
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
    .line 184
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->lookup:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
