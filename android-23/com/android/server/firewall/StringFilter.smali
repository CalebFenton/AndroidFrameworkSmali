.class abstract Lcom/android/server/firewall/StringFilter;
.super Ljava/lang/Object;
.source "StringFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/firewall/StringFilter$ValueProvider;,
        Lcom/android/server/firewall/StringFilter$EqualsFilter;,
        Lcom/android/server/firewall/StringFilter$ContainsFilter;,
        Lcom/android/server/firewall/StringFilter$StartsWithFilter;,
        Lcom/android/server/firewall/StringFilter$PatternStringFilter;,
        Lcom/android/server/firewall/StringFilter$RegexFilter;,
        Lcom/android/server/firewall/StringFilter$IsNullFilter;,
        Lcom/android/server/firewall/StringFilter$1;,
        Lcom/android/server/firewall/StringFilter$2;,
        Lcom/android/server/firewall/StringFilter$3;,
        Lcom/android/server/firewall/StringFilter$4;,
        Lcom/android/server/firewall/StringFilter$5;,
        Lcom/android/server/firewall/StringFilter$6;,
        Lcom/android/server/firewall/StringFilter$7;,
        Lcom/android/server/firewall/StringFilter$8;,
        Lcom/android/server/firewall/StringFilter$9;,
        Lcom/android/server/firewall/StringFilter$10;
    }
.end annotation


# static fields
.field public static final ACTION:Lcom/android/server/firewall/FilterFactory;

.field private static final ATTR_CONTAINS:Ljava/lang/String; = "contains"

.field private static final ATTR_EQUALS:Ljava/lang/String; = "equals"

.field private static final ATTR_IS_NULL:Ljava/lang/String; = "isNull"

.field private static final ATTR_PATTERN:Ljava/lang/String; = "pattern"

.field private static final ATTR_REGEX:Ljava/lang/String; = "regex"

.field private static final ATTR_STARTS_WITH:Ljava/lang/String; = "startsWith"

.field public static final COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

.field public static final SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;


# instance fields
.field private final mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 230
    new-instance v0, Lcom/android/server/firewall/StringFilter$1;

    #@2
    const-string/jumbo v1, "component"

    #@5
    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$1;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@a
    .line 241
    new-instance v0, Lcom/android/server/firewall/StringFilter$2;

    #@c
    const-string/jumbo v1, "component-name"

    #@f
    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$2;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_NAME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@14
    .line 252
    new-instance v0, Lcom/android/server/firewall/StringFilter$3;

    #@16
    const-string/jumbo v1, "component-package"

    #@19
    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$3;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Lcom/android/server/firewall/StringFilter;->COMPONENT_PACKAGE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@1e
    .line 263
    new-instance v0, Lcom/android/server/firewall/StringFilter$4;

    #@20
    const-string/jumbo v1, "action"

    #@23
    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$4;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Lcom/android/server/firewall/StringFilter;->ACTION:Lcom/android/server/firewall/FilterFactory;

    #@28
    .line 271
    new-instance v0, Lcom/android/server/firewall/StringFilter$5;

    #@2a
    const-string/jumbo v1, "data"

    #@2d
    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$5;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Lcom/android/server/firewall/StringFilter;->DATA:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@32
    .line 283
    new-instance v0, Lcom/android/server/firewall/StringFilter$6;

    #@34
    const-string/jumbo v1, "mime-type"

    #@37
    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$6;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Lcom/android/server/firewall/StringFilter;->MIME_TYPE:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@3c
    .line 291
    new-instance v0, Lcom/android/server/firewall/StringFilter$7;

    #@3e
    const-string/jumbo v1, "scheme"

    #@41
    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$7;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Lcom/android/server/firewall/StringFilter;->SCHEME:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@46
    .line 303
    new-instance v0, Lcom/android/server/firewall/StringFilter$8;

    #@48
    const-string/jumbo v1, "scheme-specific-part"

    #@4b
    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$8;-><init>(Ljava/lang/String;)V

    #@4e
    sput-object v0, Lcom/android/server/firewall/StringFilter;->SSP:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@50
    .line 315
    new-instance v0, Lcom/android/server/firewall/StringFilter$9;

    #@52
    const-string/jumbo v1, "host"

    #@55
    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$9;-><init>(Ljava/lang/String;)V

    #@58
    sput-object v0, Lcom/android/server/firewall/StringFilter;->HOST:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@5a
    .line 327
    new-instance v0, Lcom/android/server/firewall/StringFilter$10;

    #@5c
    const-string/jumbo v1, "path"

    #@5f
    invoke-direct {v0, v1}, Lcom/android/server/firewall/StringFilter$10;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Lcom/android/server/firewall/StringFilter;->PATH:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@64
    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;)V
    .locals 0
    .param p1, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 40
    iput-object p1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@5
    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Lcom/android/server/firewall/StringFilter;)V
    .locals 0
    .param p1, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;)V

    #@3
    return-void
.end method

.method private static getFilter(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/firewall/StringFilter;
    .locals 3
    .param p0, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attributeIndex"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 79
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 81
    .local v0, "attributeName":Ljava/lang/String;
    const/4 v1, 0x0

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@9
    move-result v1

    #@a
    sparse-switch v1, :sswitch_data_0

    #@d
    .line 115
    return-object v2

    #@e
    .line 83
    :sswitch_0
    const-string/jumbo v1, "equals"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 84
    return-object v2

    #@18
    .line 86
    :cond_0
    new-instance v1, Lcom/android/server/firewall/StringFilter$EqualsFilter;

    #@1a
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$EqualsFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    #@21
    return-object v1

    #@22
    .line 88
    :sswitch_1
    const-string/jumbo v1, "isNull"

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_1

    #@2b
    .line 89
    return-object v2

    #@2c
    .line 91
    :cond_1
    new-instance v1, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    #@2e
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    #@35
    return-object v1

    #@36
    .line 93
    :sswitch_2
    const-string/jumbo v1, "startsWith"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c
    move-result v1

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 94
    return-object v2

    #@40
    .line 96
    :cond_2
    new-instance v1, Lcom/android/server/firewall/StringFilter$StartsWithFilter;

    #@42
    .line 97
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 96
    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$StartsWithFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    #@49
    return-object v1

    #@4a
    .line 99
    :sswitch_3
    const-string/jumbo v1, "contains"

    #@4d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v1

    #@51
    if-nez v1, :cond_3

    #@53
    .line 100
    return-object v2

    #@54
    .line 102
    :cond_3
    new-instance v1, Lcom/android/server/firewall/StringFilter$ContainsFilter;

    #@56
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$ContainsFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    #@5d
    return-object v1

    #@5e
    .line 104
    :sswitch_4
    const-string/jumbo v1, "pattern"

    #@61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v1

    #@65
    if-nez v1, :cond_4

    #@67
    .line 105
    return-object v2

    #@68
    .line 107
    :cond_4
    new-instance v1, Lcom/android/server/firewall/StringFilter$PatternStringFilter;

    #@6a
    .line 108
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@6d
    move-result-object v2

    #@6e
    .line 107
    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$PatternStringFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    #@71
    return-object v1

    #@72
    .line 110
    :sswitch_5
    const-string/jumbo v1, "regex"

    #@75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@78
    move-result v1

    #@79
    if-nez v1, :cond_5

    #@7b
    .line 111
    return-object v2

    #@7c
    .line 113
    :cond_5
    new-instance v1, Lcom/android/server/firewall/StringFilter$RegexFilter;

    #@7e
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    invoke-direct {v1, p0, v2}, Lcom/android/server/firewall/StringFilter$RegexFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Ljava/lang/String;)V

    #@85
    return-object v1

    #@86
    .line 81
    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_3
        0x65 -> :sswitch_0
        0x69 -> :sswitch_1
        0x70 -> :sswitch_4
        0x72 -> :sswitch_5
        0x73 -> :sswitch_2
    .end sparse-switch
.end method

.method public static readFromXml(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/StringFilter;
    .locals 5
    .param p0, "valueProvider"    # Lcom/android/server/firewall/StringFilter$ValueProvider;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 56
    const/4 v0, 0x0

    #@1
    .line 58
    .local v0, "filter":Lcom/android/server/firewall/StringFilter;
    const/4 v1, 0x0

    #@2
    .end local v0    # "filter":Lcom/android/server/firewall/StringFilter;
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    #@5
    move-result v3

    #@6
    if-ge v1, v3, :cond_2

    #@8
    .line 59
    invoke-static {p0, p1, v1}, Lcom/android/server/firewall/StringFilter;->getFilter(Lcom/android/server/firewall/StringFilter$ValueProvider;Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/firewall/StringFilter;

    #@b
    move-result-object v2

    #@c
    .line 60
    .local v2, "newFilter":Lcom/android/server/firewall/StringFilter;
    if-eqz v2, :cond_1

    #@e
    .line 61
    if-eqz v0, :cond_0

    #@10
    .line 62
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@12
    const-string/jumbo v4, "Multiple string filter attributes found"

    #@15
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 64
    :cond_0
    move-object v0, v2

    #@1a
    .line 58
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 68
    .end local v2    # "newFilter":Lcom/android/server/firewall/StringFilter;
    :cond_2
    if-nez v0, :cond_3

    #@1f
    .line 71
    new-instance v0, Lcom/android/server/firewall/StringFilter$IsNullFilter;

    #@21
    const/4 v3, 0x0

    #@22
    invoke-direct {v0, p0, v3}, Lcom/android/server/firewall/StringFilter$IsNullFilter;-><init>(Lcom/android/server/firewall/StringFilter$ValueProvider;Z)V

    #@25
    .line 74
    :cond_3
    return-object v0
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .locals 2
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    #@0
    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/server/firewall/StringFilter;->mValueProvider:Lcom/android/server/firewall/StringFilter$ValueProvider;

    #@2
    invoke-virtual {v1, p2, p3, p6}, Lcom/android/server/firewall/StringFilter$ValueProvider;->getValue(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 124
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/firewall/StringFilter;->matchesValue(Ljava/lang/String;)Z

    #@9
    move-result v1

    #@a
    return v1
.end method

.method protected abstract matchesValue(Ljava/lang/String;)Z
.end method
