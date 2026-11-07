.class public Ljava/util/PropertyResourceBundle;
.super Ljava/util/ResourceBundle;
.source "PropertyResourceBundle.java"


# static fields
.field private static final blacklist encoding:Ljava/lang/String;


# instance fields
.field private final greylist-max-o lookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 146
    nop

    .line 147
    const-string v0, "java.util.PropertyResourceBundle.encoding"

    const-string v1, ""

    invoke-static {v0, v1}, Lsun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/util/PropertyResourceBundle;->encoding:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 188
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 189
    .local v0, "properties":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 190
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Ljava/util/PropertyResourceBundle;->lookup:Ljava/util/Map;

    .line 191
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Reader;)V
    .registers 4
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 209
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 210
    .local v0, "properties":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 211
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Ljava/util/PropertyResourceBundle;->lookup:Ljava/util/Map;

    .line 212
    return-void
.end method


# virtual methods
.method public whitelist test-api getKeys()Ljava/util/Enumeration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 232
    .local v0, "parent":Ljava/util/ResourceBundle;
    new-instance v1, Lsun/util/ResourceBundleEnumeration;

    iget-object v2, p0, Ljava/util/PropertyResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 233
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    :goto_12
    invoke-direct {v1, v2, v3}, Lsun/util/ResourceBundleEnumeration;-><init>(Ljava/util/Set;Ljava/util/Enumeration;)V

    .line 232
    return-object v1
.end method

.method public whitelist test-api handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 216
    if-eqz p1, :cond_9

    .line 219
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 217
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method protected whitelist test-api handleKeySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Ljava/util/PropertyResourceBundle;->lookup:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
