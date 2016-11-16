.class Lcom/android/server/firewall/IntentFirewall$Rule;
.super Lcom/android/server/firewall/AndFilter;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rule"
.end annotation


# static fields
.field private static final ATTR_BLOCK:Ljava/lang/String; = "block"

.field private static final ATTR_LOG:Ljava/lang/String; = "log"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final TAG_COMPONENT_FILTER:Ljava/lang/String; = "component-filter"

.field private static final TAG_INTENT_FILTER:Ljava/lang/String; = "intent-filter"


# instance fields
.field private block:Z

.field private log:Z

.field private final mComponentFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 413
    invoke-direct {p0}, Lcom/android/server/firewall/AndFilter;-><init>()V

    #@3
    .line 422
    new-instance v0, Ljava/util/ArrayList;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    .line 421
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    #@b
    .line 423
    new-instance v0, Ljava/util/ArrayList;

    #@d
    const/4 v1, 0x0

    #@e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    #@13
    .line 413
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getBlock()Z
    .locals 1

    #@0
    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    #@2
    return v0
.end method

.method public getComponentFilter(I)Landroid/content/ComponentName;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/content/ComponentName;

    #@8
    return-object v0
.end method

.method public getComponentFilterCount()I
    .locals 1

    #@0
    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    #@8
    return-object v0
.end method

.method public getIntentFilterCount()I
    .locals 1

    #@0
    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLog()Z
    .locals 1

    #@0
    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    #@2
    return v0
.end method

.method protected readChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 438
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 440
    .local v2, "currentTag":Ljava/lang/String;
    const-string/jumbo v4, "intent-filter"

    #@8
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 441
    new-instance v3, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    #@10
    invoke-direct {v3, p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;-><init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V

    #@13
    .line 442
    .local v3, "intentFilter":Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    invoke-virtual {v3, p1}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    #@16
    .line 443
    iget-object v4, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 437
    .end local v3    # "intentFilter":Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    :goto_0
    return-void

    #@1c
    .line 444
    :cond_0
    const-string/jumbo v4, "component-filter"

    #@1f
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_3

    #@25
    .line 445
    const-string/jumbo v4, "name"

    #@28
    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    .line 446
    .local v1, "componentStr":Ljava/lang/String;
    if-nez v1, :cond_1

    #@2e
    .line 447
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@30
    const-string/jumbo v5, "Component name must be specified."

    #@33
    invoke-direct {v4, v5, p1, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    #@36
    throw v4

    #@37
    .line 451
    :cond_1
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@3a
    move-result-object v0

    #@3b
    .line 452
    .local v0, "componentName":Landroid/content/ComponentName;
    if-nez v0, :cond_2

    #@3d
    .line 453
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@3f
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "Invalid component name: "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@56
    throw v4

    #@57
    .line 456
    :cond_2
    iget-object v4, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    #@59
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5c
    goto :goto_0

    #@5d
    .line 458
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "componentStr":Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Lcom/android/server/firewall/AndFilter;->readChild(Lorg/xmlpull/v1/XmlPullParser;)V

    #@60
    goto :goto_0
.end method

.method public bridge synthetic readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;
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
    .line 428
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
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
    const/4 v1, 0x0

    #@1
    .line 429
    const-string/jumbo v0, "block"

    #@4
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@b
    move-result v0

    #@c
    iput-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    #@e
    .line 430
    const-string/jumbo v0, "log"

    #@11
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    #@18
    move-result v0

    #@19
    iput-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    #@1b
    .line 432
    invoke-super {p0, p1}, Lcom/android/server/firewall/AndFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    #@1e
    .line 433
    return-object p0
.end method
