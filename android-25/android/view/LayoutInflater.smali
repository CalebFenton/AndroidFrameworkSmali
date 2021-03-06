.class public abstract Landroid/view/LayoutInflater;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LayoutInflater$BlinkLayout;,
        Landroid/view/LayoutInflater$Factory2;,
        Landroid/view/LayoutInflater$Factory;,
        Landroid/view/LayoutInflater$FactoryMerger;,
        Landroid/view/LayoutInflater$Filter;
    }
.end annotation


# static fields
.field private static final ATTRS_THEME:[I

.field private static final ATTR_LAYOUT:Ljava/lang/String; = "layout"

.field private static final BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final DEBUG:Z = false

.field private static final EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_1995:Ljava/lang/String; = "blink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_REQUEST_FOCUS:Ljava/lang/String; = "requestFocus"

.field private static final TAG_TAG:Ljava/lang/String; = "tag"

.field static final mConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mFactory:Landroid/view/LayoutInflater$Factory;

.field private mFactory2:Landroid/view/LayoutInflater$Factory2;

.field private mFactorySet:Z

.field private mFilter:Landroid/view/LayoutInflater$Filter;

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

.field private mTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 72
    const-class v0, Landroid/view/LayoutInflater;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    sput-object v0, Landroid/view/LayoutInflater;->TAG:Ljava/lang/String;

    #@a
    .line 76
    new-array v0, v2, [Ljava/lang/StackTraceElement;

    #@c
    sput-object v0, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    #@e
    .line 93
    const/4 v0, 0x2

    #@f
    new-array v0, v0, [Ljava/lang/Class;

    #@11
    .line 94
    const-class v1, Landroid/content/Context;

    #@13
    aput-object v1, v0, v2

    #@15
    const-class v1, Landroid/util/AttributeSet;

    #@17
    aput-object v1, v0, v3

    #@19
    .line 93
    sput-object v0, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    #@1b
    .line 97
    new-instance v0, Ljava/util/HashMap;

    #@1d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@20
    .line 96
    sput-object v0, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    #@22
    .line 111
    new-array v0, v3, [I

    #@24
    .line 112
    const/high16 v1, 0x1010000

    #@26
    aput v1, v0, v2

    #@28
    .line 111
    sput-object v0, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    #@2a
    .line 558
    const-class v0, Landroid/view/LayoutInflater;

    #@2c
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2f
    move-result-object v0

    #@30
    sput-object v0, Landroid/view/LayoutInflater;->BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@32
    .line 70
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [Ljava/lang/Object;

    #@6
    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@8
    .line 208
    iput-object p1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    #@a
    .line 207
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 1
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    const/4 v0, 0x2

    #@4
    new-array v0, v0, [Ljava/lang/Object;

    #@6
    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@8
    .line 220
    iput-object p2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    #@a
    .line 221
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@c
    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@e
    .line 222
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    #@10
    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    #@12
    .line 223
    iget-object v0, p1, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    #@14
    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    #@16
    .line 224
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    #@18
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    #@1b
    .line 219
    return-void
.end method

.method static final consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1032
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@3
    move-result v0

    #@4
    .line 1033
    .local v0, "currentDepth":I
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@7
    move-result v1

    #@8
    .local v1, "type":I
    const/4 v2, 0x3

    #@9
    if-ne v1, v2, :cond_1

    #@b
    .line 1034
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@e
    move-result v2

    #@f
    if-le v2, v0, :cond_2

    #@11
    :cond_1
    const/4 v2, 0x1

    #@12
    if-ne v1, v2, :cond_0

    #@14
    .line 1030
    :cond_2
    return-void
.end method

.method private createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 727
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-virtual/range {v0 .. v5}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 683
    new-instance v0, Landroid/view/InflateException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    .line 684
    const-string/jumbo v2, ": Class not allowed to be inflated "

    #@12
    .line 683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 684
    if-eqz p2, :cond_0

    #@18
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object p1

    #@29
    .line 683
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0
.end method

.method public static from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 232
    const-string/jumbo v1, "layout_inflater"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/view/LayoutInflater;

    #@9
    .line 233
    .local v0, "LayoutInflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_0

    #@b
    .line 234
    new-instance v1, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v2, "LayoutInflater not found."

    #@10
    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v1

    #@14
    .line 236
    :cond_0
    return-object v0
.end method

.method private parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "parent"    # Landroid/view/View;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 902
    move-object/from16 v0, p3

    #@2
    instance-of v2, v0, Landroid/view/ViewGroup;

    #@4
    if-eqz v2, :cond_e

    #@6
    .line 907
    sget-object v2, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    #@8
    move-object/from16 v0, p2

    #@a
    move-object/from16 v1, p4

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@f
    move-result-object v20

    #@10
    .line 908
    .local v20, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    #@11
    const/4 v4, 0x0

    #@12
    move-object/from16 v0, v20

    #@14
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@17
    move-result v21

    #@18
    .line 909
    .local v21, "themeResId":I
    if-eqz v21, :cond_2

    #@1a
    const/4 v12, 0x1

    #@1b
    .line 910
    .local v12, "hasThemeOverride":Z
    :goto_0
    if-eqz v12, :cond_0

    #@1d
    .line 911
    new-instance v14, Landroid/view/ContextThemeWrapper;

    #@1f
    move-object/from16 v0, p2

    #@21
    move/from16 v1, v21

    #@23
    invoke-direct {v14, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@26
    .end local p2    # "context":Landroid/content/Context;
    .local v14, "context":Landroid/content/Context;
    move-object/from16 p2, v14

    #@28
    .line 913
    .end local v14    # "context":Landroid/content/Context;
    .restart local p2    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    #@2b
    .line 917
    const-string/jumbo v2, "layout"

    #@2e
    const/4 v4, 0x0

    #@2f
    const/4 v5, 0x0

    #@30
    move-object/from16 v0, p4

    #@32
    invoke-interface {v0, v4, v2, v5}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    #@35
    move-result v18

    #@36
    .line 918
    .local v18, "layout":I
    if-nez v18, :cond_4

    #@38
    .line 919
    const-string/jumbo v2, "layout"

    #@3b
    const/4 v4, 0x0

    #@3c
    move-object/from16 v0, p4

    #@3e
    invoke-interface {v0, v4, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@41
    move-result-object v23

    #@42
    .line 920
    .local v23, "value":Ljava/lang/String;
    if-eqz v23, :cond_1

    #@44
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@47
    move-result v2

    #@48
    if-gtz v2, :cond_3

    #@4a
    .line 921
    :cond_1
    new-instance v2, Landroid/view/InflateException;

    #@4c
    const-string/jumbo v4, "You must specify a layout in the include tag: <include layout=\"@layout/layoutID\" />"

    #@4f
    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2

    #@53
    .line 909
    .end local v12    # "hasThemeOverride":Z
    .end local v18    # "layout":I
    .end local v23    # "value":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    #@54
    goto :goto_0

    #@55
    .line 926
    .restart local v12    # "hasThemeOverride":Z
    .restart local v18    # "layout":I
    .restart local v23    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@58
    move-result-object v2

    #@59
    const/4 v4, 0x1

    #@5a
    move-object/from16 v0, v23

    #@5c
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5f
    move-result-object v4

    #@60
    const/4 v5, 0x0

    #@61
    const/4 v7, 0x0

    #@62
    invoke-virtual {v2, v4, v5, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@65
    move-result v18

    #@66
    .line 930
    .end local v23    # "value":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    #@68
    iget-object v2, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    #@6a
    if-nez v2, :cond_5

    #@6c
    .line 931
    new-instance v2, Landroid/util/TypedValue;

    #@6e
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    #@71
    move-object/from16 v0, p0

    #@73
    iput-object v2, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    #@75
    .line 933
    :cond_5
    if-eqz v18, :cond_6

    #@77
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@7a
    move-result-object v2

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-object v4, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    #@7f
    const/4 v5, 0x1

    #@80
    move/from16 v0, v18

    #@82
    invoke-virtual {v2, v0, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    #@85
    move-result v2

    #@86
    if-eqz v2, :cond_6

    #@88
    .line 934
    move-object/from16 v0, p0

    #@8a
    iget-object v2, v0, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    #@8c
    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    #@8e
    move/from16 v18, v0

    #@90
    .line 937
    :cond_6
    if-nez v18, :cond_7

    #@92
    .line 938
    const-string/jumbo v2, "layout"

    #@95
    const/4 v4, 0x0

    #@96
    move-object/from16 v0, p4

    #@98
    invoke-interface {v0, v4, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9b
    move-result-object v23

    #@9c
    .line 939
    .restart local v23    # "value":Ljava/lang/String;
    new-instance v2, Landroid/view/InflateException;

    #@9e
    new-instance v4, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v5, "You must specify a valid layout reference. The layout ID "

    #@a6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v4

    #@aa
    move-object/from16 v0, v23

    #@ac
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v4

    #@b0
    .line 940
    const-string/jumbo v5, " is not valid."

    #@b3
    .line 939
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v4

    #@b7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v4

    #@bb
    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@be
    throw v2

    #@bf
    .line 942
    .end local v23    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c2
    move-result-object v2

    #@c3
    move/from16 v0, v18

    #@c5
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    #@c8
    move-result-object v3

    #@c9
    .line 945
    .local v3, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@cc
    move-result-object v6

    #@cd
    .line 947
    .local v6, "childAttrs":Landroid/util/AttributeSet;
    :cond_8
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    #@d0
    move-result v22

    #@d1
    .local v22, "type":I
    const/4 v2, 0x2

    #@d2
    move/from16 v0, v22

    #@d4
    if-eq v0, v2, :cond_9

    #@d6
    .line 948
    const/4 v2, 0x1

    #@d7
    move/from16 v0, v22

    #@d9
    if-ne v0, v2, :cond_8

    #@db
    .line 952
    :cond_9
    const/4 v2, 0x2

    #@dc
    move/from16 v0, v22

    #@de
    if-eq v0, v2, :cond_a

    #@e0
    .line 953
    new-instance v2, Landroid/view/InflateException;

    #@e2
    new-instance v4, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    #@ea
    move-result-object v5

    #@eb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v4

    #@ef
    .line 954
    const-string/jumbo v5, ": No start tag found!"

    #@f2
    .line 953
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v4

    #@f6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v4

    #@fa
    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@fd
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@fe
    .line 1014
    .end local v6    # "childAttrs":Landroid/util/AttributeSet;
    .end local v22    # "type":I
    :catchall_0
    move-exception v2

    #@ff
    .line 1015
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    #@102
    .line 1014
    throw v2

    #@103
    .line 957
    .restart local v6    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v22    # "type":I
    :cond_a
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@106
    move-result-object v9

    #@107
    .line 959
    .local v9, "childName":Ljava/lang/String;
    const-string/jumbo v2, "merge"

    #@10a
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10d
    move-result v2

    #@10e
    if-eqz v2, :cond_b

    #@110
    .line 962
    const/4 v7, 0x0

    #@111
    move-object/from16 v2, p0

    #@113
    move-object/from16 v4, p3

    #@115
    move-object/from16 v5, p2

    #@117
    invoke-virtual/range {v2 .. v7}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11a
    .line 1015
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    #@11d
    .line 1022
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    #@120
    .line 899
    return-void

    #@121
    :cond_b
    move-object/from16 v7, p0

    #@123
    move-object/from16 v8, p3

    #@125
    move-object/from16 v10, p2

    #@127
    move-object v11, v6

    #@128
    .line 964
    :try_start_2
    invoke-virtual/range {v7 .. v12}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    #@12b
    move-result-object v24

    #@12c
    .line 966
    .local v24, "view":Landroid/view/View;
    move-object/from16 v0, p3

    #@12e
    check-cast v0, Landroid/view/ViewGroup;

    #@130
    move-object/from16 v16, v0

    #@132
    .line 969
    .local v16, "group":Landroid/view/ViewGroup;
    sget-object v2, Lcom/android/internal/R$styleable;->Include:[I

    #@134
    .line 968
    move-object/from16 v0, p2

    #@136
    move-object/from16 v1, p4

    #@138
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@13b
    move-result-object v13

    #@13c
    .line 970
    .local v13, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    #@13d
    const/4 v4, -0x1

    #@13e
    invoke-virtual {v13, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@141
    move-result v17

    #@142
    .line 971
    .local v17, "id":I
    const/4 v2, 0x1

    #@143
    const/4 v4, -0x1

    #@144
    invoke-virtual {v13, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@147
    move-result v25

    #@148
    .line 972
    .local v25, "visibility":I
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@14b
    .line 982
    const/16 v19, 0x0

    #@14d
    .line 984
    .local v19, "params":Landroid/view/ViewGroup$LayoutParams;
    :try_start_3
    move-object/from16 v0, v16

    #@14f
    move-object/from16 v1, p4

    #@151
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@154
    move-result-object v19

    #@155
    .line 988
    .end local v19    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    if-nez v19, :cond_c

    #@157
    .line 989
    :try_start_4
    move-object/from16 v0, v16

    #@159
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    #@15c
    move-result-object v19

    #@15d
    .line 991
    :cond_c
    move-object/from16 v0, v24

    #@15f
    move-object/from16 v1, v19

    #@161
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@164
    .line 994
    const/4 v2, 0x1

    #@165
    move-object/from16 v0, p0

    #@167
    move-object/from16 v1, v24

    #@169
    invoke-virtual {v0, v3, v1, v6, v2}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    #@16c
    .line 996
    const/4 v2, -0x1

    #@16d
    move/from16 v0, v17

    #@16f
    if-eq v0, v2, :cond_d

    #@171
    .line 997
    move-object/from16 v0, v24

    #@173
    move/from16 v1, v17

    #@175
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    #@178
    .line 1000
    :cond_d
    packed-switch v25, :pswitch_data_0

    #@17b
    .line 1012
    :goto_3
    move-object/from16 v0, v16

    #@17d
    move-object/from16 v1, v24

    #@17f
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@182
    goto :goto_1

    #@183
    .line 985
    .restart local v19    # "params":Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v15

    #@184
    .local v15, "e":Ljava/lang/RuntimeException;
    goto :goto_2

    #@185
    .line 1002
    .end local v15    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "params":Landroid/view/ViewGroup$LayoutParams;
    :pswitch_0
    const/4 v2, 0x0

    #@186
    move-object/from16 v0, v24

    #@188
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@18b
    goto :goto_3

    #@18c
    .line 1005
    :pswitch_1
    const/4 v2, 0x4

    #@18d
    move-object/from16 v0, v24

    #@18f
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    #@192
    goto :goto_3

    #@193
    .line 1008
    :pswitch_2
    const/16 v2, 0x8

    #@195
    move-object/from16 v0, v24

    #@197
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@19a
    goto :goto_3

    #@19b
    .line 1019
    .end local v3    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v6    # "childAttrs":Landroid/util/AttributeSet;
    .end local v9    # "childName":Ljava/lang/String;
    .end local v12    # "hasThemeOverride":Z
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v16    # "group":Landroid/view/ViewGroup;
    .end local v17    # "id":I
    .end local v18    # "layout":I
    .end local v20    # "ta":Landroid/content/res/TypedArray;
    .end local v21    # "themeResId":I
    .end local v22    # "type":I
    .end local v24    # "view":Landroid/view/View;
    .end local v25    # "visibility":I
    :cond_e
    new-instance v2, Landroid/view/InflateException;

    #@19d
    const-string/jumbo v4, "<include /> can only be used inside of a ViewGroup"

    #@1a0
    invoke-direct {v2, v4}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@1a3
    throw v2

    #@1a4
    .line 1000
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V
    .locals 0
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 877
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    #@3
    .line 879
    invoke-static {p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    #@6
    .line 876
    return-void
.end method

.method private parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 888
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@4
    move-result-object v0

    #@5
    .line 889
    .local v0, "context":Landroid/content/Context;
    sget-object v4, Lcom/android/internal/R$styleable;->ViewTag:[I

    #@7
    invoke-virtual {v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@a
    move-result-object v2

    #@b
    .line 890
    .local v2, "ta":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    #@c
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@f
    move-result v1

    #@10
    .line 891
    .local v1, "key":I
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@13
    move-result-object v3

    #@14
    .line 892
    .local v3, "value":Ljava/lang/CharSequence;
    invoke-virtual {p2, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@17
    .line 893
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@1a
    .line 895
    invoke-static {p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    #@1d
    .line 887
    return-void
.end method

.method private final verifyClassLoader(Ljava/lang/reflect/Constructor;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v3, 0x1

    #@1
    .line 561
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    #@4
    move-result-object v2

    #@5
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@8
    move-result-object v1

    #@9
    .line 562
    .local v1, "constructorLoader":Ljava/lang/ClassLoader;
    sget-object v2, Landroid/view/LayoutInflater;->BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 564
    return v3

    #@e
    .line 568
    :cond_0
    iget-object v2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@13
    move-result-object v0

    #@14
    .line 570
    .local v0, "cl":Ljava/lang/ClassLoader;
    :cond_1
    if-ne v1, v0, :cond_2

    #@16
    .line 571
    return v3

    #@17
    .line 573
    :cond_2
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    #@1a
    move-result-object v0

    #@1b
    .line 574
    if-nez v0, :cond_1

    #@1d
    .line 575
    const/4 v2, 0x0

    #@1e
    return v2
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
.end method

.method public final createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    #@0
    .prologue
    .line 597
    sget-object v14, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v6

    #@8
    check-cast v6, Ljava/lang/reflect/Constructor;

    #@a
    .line 598
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    if-eqz v6, :cond_0

    #@c
    move-object/from16 v0, p0

    #@e
    invoke-direct {v0, v6}, Landroid/view/LayoutInflater;->verifyClassLoader(Ljava/lang/reflect/Constructor;)Z

    #@11
    move-result v14

    #@12
    if-eqz v14, :cond_4

    #@14
    .line 602
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    :cond_0
    :goto_0
    const/4 v5, 0x0

    #@15
    .line 605
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-wide/16 v14, 0x8

    #@17
    :try_start_0
    move-object/from16 v0, p1

    #@19
    invoke-static {v14, v15, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@1c
    .line 607
    if-nez v6, :cond_6

    #@1e
    .line 609
    move-object/from16 v0, p0

    #@20
    iget-object v14, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    #@22
    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@25
    move-result-object v15

    #@26
    .line 610
    if-eqz p2, :cond_5

    #@28
    new-instance v14, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    move-object/from16 v0, p2

    #@2f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v14

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v14

    #@39
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v14

    #@3d
    .line 609
    :goto_1
    invoke-virtual {v15, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@40
    move-result-object v14

    #@41
    .line 610
    const-class v15, Landroid/view/View;

    #@43
    .line 609
    invoke-virtual {v14, v15}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@46
    move-result-object v5

    #@47
    .line 612
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    move-object/from16 v0, p0

    #@49
    iget-object v14, v0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    #@4b
    if-eqz v14, :cond_1

    #@4d
    if-eqz v5, :cond_1

    #@4f
    .line 613
    move-object/from16 v0, p0

    #@51
    iget-object v14, v0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    #@53
    invoke-interface {v14, v5}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    #@56
    move-result v2

    #@57
    .line 614
    .local v2, "allowed":Z
    if-nez v2, :cond_1

    #@59
    .line 615
    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    #@5c
    .line 618
    .end local v2    # "allowed":Z
    :cond_1
    sget-object v14, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    #@5e
    invoke-virtual {v5, v14}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@61
    move-result-object v6

    #@62
    .line 619
    .restart local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v14, 0x1

    #@63
    invoke-virtual {v6, v14}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@66
    .line 620
    sget-object v14, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    #@68
    move-object/from16 v0, p1

    #@6a
    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    .line 642
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    #@6f
    iget-object v4, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@71
    .line 643
    .local v4, "args":[Ljava/lang/Object;
    const/4 v14, 0x1

    #@72
    aput-object p3, v4, v14

    #@74
    .line 645
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    move-result-object v12

    #@78
    check-cast v12, Landroid/view/View;

    #@7a
    .line 646
    .local v12, "view":Landroid/view/View;
    instance-of v14, v12, Landroid/view/ViewStub;

    #@7c
    if-eqz v14, :cond_3

    #@7e
    .line 648
    move-object v0, v12

    #@7f
    check-cast v0, Landroid/view/ViewStub;

    #@81
    move-object v13, v0

    #@82
    .line 649
    .local v13, "viewStub":Landroid/view/ViewStub;
    const/4 v14, 0x0

    #@83
    aget-object v14, v4, v14

    #@85
    check-cast v14, Landroid/content/Context;

    #@87
    move-object/from16 v0, p0

    #@89
    invoke-virtual {v0, v14}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@8c
    move-result-object v14

    #@8d
    invoke-virtual {v13, v14}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    .line 675
    .end local v13    # "viewStub":Landroid/view/ViewStub;
    :cond_3
    const-wide/16 v14, 0x8

    #@92
    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    #@95
    .line 651
    return-object v12

    #@96
    .line 599
    .end local v4    # "args":[Ljava/lang/Object;
    .end local v12    # "view":Landroid/view/View;
    .restart local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    :cond_4
    const/4 v6, 0x0

    #@97
    .line 600
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    sget-object v14, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    #@99
    move-object/from16 v0, p1

    #@9b
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9e
    goto/16 :goto_0

    #@a0
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_5
    move-object/from16 v14, p1

    #@a2
    .line 610
    goto :goto_1

    #@a3
    .line 623
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    #@a5
    iget-object v14, v0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    #@a7
    if-eqz v14, :cond_2

    #@a9
    .line 625
    move-object/from16 v0, p0

    #@ab
    iget-object v14, v0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    #@ad
    move-object/from16 v0, p1

    #@af
    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    move-result-object v3

    #@b3
    check-cast v3, Ljava/lang/Boolean;

    #@b5
    .line 626
    .local v3, "allowedState":Ljava/lang/Boolean;
    if-nez v3, :cond_a

    #@b7
    .line 628
    move-object/from16 v0, p0

    #@b9
    iget-object v14, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    #@bb
    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@be
    move-result-object v15

    #@bf
    .line 629
    if-eqz p2, :cond_8

    #@c1
    new-instance v14, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    move-object/from16 v0, p2

    #@c8
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v14

    #@cc
    move-object/from16 v0, p1

    #@ce
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v14

    #@d2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v14

    #@d6
    .line 628
    :goto_3
    invoke-virtual {v15, v14}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@d9
    move-result-object v14

    #@da
    .line 629
    const-class v15, Landroid/view/View;

    #@dc
    .line 628
    invoke-virtual {v14, v15}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@df
    move-result-object v5

    #@e0
    .line 631
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    if-eqz v5, :cond_9

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget-object v14, v0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    #@e6
    invoke-interface {v14, v5}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    #@e9
    move-result v2

    #@ea
    .line 632
    :goto_4
    move-object/from16 v0, p0

    #@ec
    iget-object v14, v0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    #@ee
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f1
    move-result-object v15

    #@f2
    move-object/from16 v0, p1

    #@f4
    invoke-virtual {v14, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f7
    .line 633
    if-nez v2, :cond_2

    #@f9
    .line 634
    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@fc
    goto/16 :goto_2

    #@fe
    .line 653
    .end local v3    # "allowedState":Ljava/lang/Boolean;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :catch_0
    move-exception v10

    #@ff
    .line 654
    .local v10, "e":Ljava/lang/NoSuchMethodException;
    :try_start_2
    new-instance v11, Landroid/view/InflateException;

    #@101
    new-instance v14, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@109
    move-result-object v15

    #@10a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v14

    #@10e
    .line 655
    const-string/jumbo v15, ": Error inflating class "

    #@111
    .line 654
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v14

    #@115
    .line 655
    if-eqz p2, :cond_7

    #@117
    new-instance v15, Ljava/lang/StringBuilder;

    #@119
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@11c
    move-object/from16 v0, p2

    #@11e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    move-result-object v15

    #@122
    move-object/from16 v0, p1

    #@124
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@127
    move-result-object v15

    #@128
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12b
    move-result-object p1

    #@12c
    .line 654
    .end local p1    # "name":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    #@12e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v14

    #@132
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v14

    #@136
    invoke-direct {v11, v14, v10}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@139
    .line 656
    .local v11, "ie":Landroid/view/InflateException;
    sget-object v14, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    #@13b
    invoke-virtual {v11, v14}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@13e
    .line 657
    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@13f
    .line 674
    .end local v10    # "e":Ljava/lang/NoSuchMethodException;
    .end local v11    # "ie":Landroid/view/InflateException;
    :catchall_0
    move-exception v14

    #@140
    .line 675
    const-wide/16 v16, 0x8

    #@142
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    #@145
    .line 674
    throw v14

    #@146
    .restart local v3    # "allowedState":Ljava/lang/Boolean;
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p1    # "name":Ljava/lang/String;
    :cond_8
    move-object/from16 v14, p1

    #@148
    .line 629
    goto :goto_3

    #@149
    .line 631
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_9
    const/4 v2, 0x0

    #@14a
    .local v2, "allowed":Z
    goto :goto_4

    #@14b
    .line 636
    .end local v2    # "allowed":Z
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :cond_a
    :try_start_3
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@14d
    invoke-virtual {v3, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    #@150
    move-result v14

    #@151
    if-eqz v14, :cond_2

    #@153
    .line 637
    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@156
    goto/16 :goto_2

    #@158
    .line 659
    .end local v3    # "allowedState":Ljava/lang/Boolean;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    :catch_1
    move-exception v7

    #@159
    .line 661
    .local v7, "e":Ljava/lang/ClassCastException;
    :try_start_4
    new-instance v11, Landroid/view/InflateException;

    #@15b
    new-instance v14, Ljava/lang/StringBuilder;

    #@15d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@160
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@163
    move-result-object v15

    #@164
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@167
    move-result-object v14

    #@168
    .line 662
    const-string/jumbo v15, ": Class is not a View "

    #@16b
    .line 661
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v14

    #@16f
    .line 662
    if-eqz p2, :cond_b

    #@171
    new-instance v15, Ljava/lang/StringBuilder;

    #@173
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@176
    move-object/from16 v0, p2

    #@178
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    move-result-object v15

    #@17c
    move-object/from16 v0, p1

    #@17e
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@181
    move-result-object v15

    #@182
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@185
    move-result-object p1

    #@186
    .line 661
    .end local p1    # "name":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p1

    #@188
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v14

    #@18c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18f
    move-result-object v14

    #@190
    invoke-direct {v11, v14, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@193
    .line 663
    .restart local v11    # "ie":Landroid/view/InflateException;
    sget-object v14, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    #@195
    invoke-virtual {v11, v14}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@198
    .line 664
    throw v11

    #@199
    .line 668
    .end local v7    # "e":Ljava/lang/ClassCastException;
    .end local v11    # "ie":Landroid/view/InflateException;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_2
    move-exception v9

    #@19a
    .line 669
    .local v9, "e":Ljava/lang/Exception;
    new-instance v11, Landroid/view/InflateException;

    #@19c
    .line 670
    new-instance v14, Ljava/lang/StringBuilder;

    #@19e
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@1a1
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@1a4
    move-result-object v15

    #@1a5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v14

    #@1a9
    const-string/jumbo v15, ": Error inflating class "

    #@1ac
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v15

    #@1b0
    .line 671
    if-nez v5, :cond_c

    #@1b2
    const-string/jumbo v14, "<unknown>"

    #@1b5
    .line 670
    :goto_5
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b8
    move-result-object v14

    #@1b9
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bc
    move-result-object v14

    #@1bd
    .line 669
    invoke-direct {v11, v14, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1c0
    .line 672
    .restart local v11    # "ie":Landroid/view/InflateException;
    sget-object v14, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    #@1c2
    invoke-virtual {v11, v14}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@1c5
    .line 673
    throw v11

    #@1c6
    .line 671
    .end local v11    # "ie":Landroid/view/InflateException;
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1c9
    move-result-object v14

    #@1ca
    goto :goto_5

    #@1cb
    .line 665
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    #@1cc
    .line 667
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;
    .locals 16
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "ignoreThemeAttr"    # Z

    #@0
    .prologue
    .line 747
    const-string/jumbo v13, "view"

    #@3
    move-object/from16 v0, p2

    #@5
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v13

    #@9
    if-eqz v13, :cond_0

    #@b
    .line 748
    const-string/jumbo v13, "class"

    #@e
    const/4 v14, 0x0

    #@f
    move-object/from16 v0, p4

    #@11
    invoke-interface {v0, v14, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object p2

    #@15
    .line 752
    :cond_0
    if-nez p5, :cond_2

    #@17
    .line 753
    sget-object v13, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    #@19
    move-object/from16 v0, p3

    #@1b
    move-object/from16 v1, p4

    #@1d
    invoke-virtual {v0, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@20
    move-result-object v10

    #@21
    .line 754
    .local v10, "ta":Landroid/content/res/TypedArray;
    const/4 v13, 0x0

    #@22
    const/4 v14, 0x0

    #@23
    invoke-virtual {v10, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@26
    move-result v11

    #@27
    .line 755
    .local v11, "themeResId":I
    if-eqz v11, :cond_1

    #@29
    .line 756
    new-instance v4, Landroid/view/ContextThemeWrapper;

    #@2b
    move-object/from16 v0, p3

    #@2d
    invoke-direct {v4, v0, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@30
    .end local p3    # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    move-object/from16 p3, v4

    #@32
    .line 758
    .end local v4    # "context":Landroid/content/Context;
    .restart local p3    # "context":Landroid/content/Context;
    :cond_1
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    #@35
    .line 761
    .end local v10    # "ta":Landroid/content/res/TypedArray;
    .end local v11    # "themeResId":I
    :cond_2
    const-string/jumbo v13, "blink"

    #@38
    move-object/from16 v0, p2

    #@3a
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v13

    #@3e
    if-eqz v13, :cond_3

    #@40
    .line 763
    new-instance v13, Landroid/view/LayoutInflater$BlinkLayout;

    #@42
    move-object/from16 v0, p3

    #@44
    move-object/from16 v1, p4

    #@46
    invoke-direct {v13, v0, v1}, Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@49
    return-object v13

    #@4a
    .line 768
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    #@4c
    iget-object v13, v0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    #@4e
    if-eqz v13, :cond_6

    #@50
    .line 769
    move-object/from16 v0, p0

    #@52
    iget-object v13, v0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    #@54
    move-object/from16 v0, p1

    #@56
    move-object/from16 v1, p2

    #@58
    move-object/from16 v2, p3

    #@5a
    move-object/from16 v3, p4

    #@5c
    invoke-interface {v13, v0, v1, v2, v3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@5f
    move-result-object v12

    #@60
    .line 776
    :goto_0
    if-nez v12, :cond_4

    #@62
    move-object/from16 v0, p0

    #@64
    iget-object v13, v0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    #@66
    if-eqz v13, :cond_4

    #@68
    .line 777
    move-object/from16 v0, p0

    #@6a
    iget-object v13, v0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    #@6c
    move-object/from16 v0, p1

    #@6e
    move-object/from16 v1, p2

    #@70
    move-object/from16 v2, p3

    #@72
    move-object/from16 v3, p4

    #@74
    invoke-interface {v13, v0, v1, v2, v3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@77
    move-result-object v12

    #@78
    .line 780
    :cond_4
    if-nez v12, :cond_5

    #@7a
    .line 781
    move-object/from16 v0, p0

    #@7c
    iget-object v13, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@7e
    const/4 v14, 0x0

    #@7f
    aget-object v9, v13, v14

    #@81
    .line 782
    .local v9, "lastContext":Ljava/lang/Object;
    move-object/from16 v0, p0

    #@83
    iget-object v13, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@85
    const/4 v14, 0x0

    #@86
    aput-object p3, v13, v14
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@88
    .line 784
    const/16 v13, 0x2e

    #@8a
    :try_start_1
    move-object/from16 v0, p2

    #@8c
    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(I)I

    #@8f
    move-result v13

    #@90
    const/4 v14, -0x1

    #@91
    if-ne v14, v13, :cond_8

    #@93
    .line 785
    move-object/from16 v0, p0

    #@95
    move-object/from16 v1, p1

    #@97
    move-object/from16 v2, p2

    #@99
    move-object/from16 v3, p4

    #@9b
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9e
    move-result-object v12

    #@9f
    .line 790
    .local v12, "view":Landroid/view/View;
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    #@a1
    iget-object v13, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@a3
    const/4 v14, 0x0

    #@a4
    aput-object v9, v13, v14

    #@a6
    .line 794
    .end local v9    # "lastContext":Ljava/lang/Object;
    .end local v12    # "view":Landroid/view/View;
    :cond_5
    return-object v12

    #@a7
    .line 770
    :cond_6
    move-object/from16 v0, p0

    #@a9
    iget-object v13, v0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@ab
    if-eqz v13, :cond_7

    #@ad
    .line 771
    move-object/from16 v0, p0

    #@af
    iget-object v13, v0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@b1
    move-object/from16 v0, p2

    #@b3
    move-object/from16 v1, p3

    #@b5
    move-object/from16 v2, p4

    #@b7
    invoke-interface {v13, v0, v1, v2}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_2
    .catch Landroid/view/InflateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@ba
    move-result-object v12

    #@bb
    .restart local v12    # "view":Landroid/view/View;
    goto :goto_0

    #@bc
    .line 773
    .end local v12    # "view":Landroid/view/View;
    :cond_7
    const/4 v12, 0x0

    #@bd
    .local v12, "view":Landroid/view/View;
    goto :goto_0

    #@be
    .line 787
    .end local v12    # "view":Landroid/view/View;
    .restart local v9    # "lastContext":Ljava/lang/Object;
    :cond_8
    const/4 v13, 0x0

    #@bf
    :try_start_3
    move-object/from16 v0, p0

    #@c1
    move-object/from16 v1, p2

    #@c3
    move-object/from16 v2, p4

    #@c5
    invoke-virtual {v0, v1, v13, v2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c8
    move-result-object v12

    #@c9
    .local v12, "view":Landroid/view/View;
    goto :goto_1

    #@ca
    .line 789
    .end local v12    # "view":Landroid/view/View;
    :catchall_0
    move-exception v13

    #@cb
    .line 790
    :try_start_4
    move-object/from16 v0, p0

    #@cd
    iget-object v14, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@cf
    const/4 v15, 0x0

    #@d0
    aput-object v9, v14, v15

    #@d2
    .line 789
    throw v13
    :try_end_4
    .catch Landroid/view/InflateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    #@d3
    .line 795
    .end local v9    # "lastContext":Ljava/lang/Object;
    :catch_0
    move-exception v5

    #@d4
    .line 796
    .local v5, "e":Landroid/view/InflateException;
    throw v5

    #@d5
    .line 804
    .end local v5    # "e":Landroid/view/InflateException;
    :catch_1
    move-exception v7

    #@d6
    .line 805
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Landroid/view/InflateException;

    #@d8
    new-instance v13, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@e0
    move-result-object v14

    #@e1
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v13

    #@e5
    .line 806
    const-string/jumbo v14, ": Error inflating class "

    #@e8
    .line 805
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v13

    #@ec
    move-object/from16 v0, p2

    #@ee
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f1
    move-result-object v13

    #@f2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f5
    move-result-object v13

    #@f6
    invoke-direct {v8, v13, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f9
    .line 807
    .local v8, "ie":Landroid/view/InflateException;
    sget-object v13, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    #@fb
    invoke-virtual {v8, v13}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@fe
    .line 808
    throw v8

    #@ff
    .line 798
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "ie":Landroid/view/InflateException;
    :catch_2
    move-exception v6

    #@100
    .line 799
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    new-instance v8, Landroid/view/InflateException;

    #@102
    new-instance v13, Ljava/lang/StringBuilder;

    #@104
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@107
    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@10a
    move-result-object v14

    #@10b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v13

    #@10f
    .line 800
    const-string/jumbo v14, ": Error inflating class "

    #@112
    .line 799
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v13

    #@116
    move-object/from16 v0, p2

    #@118
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v13

    #@11c
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11f
    move-result-object v13

    #@120
    invoke-direct {v8, v13, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@123
    .line 801
    .restart local v8    # "ie":Landroid/view/InflateException;
    sget-object v13, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    #@125
    invoke-virtual {v8, v13}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@128
    .line 802
    throw v8
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public final getFactory()Landroid/view/LayoutInflater$Factory;
    .locals 1

    #@0
    .prologue
    .line 267
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@2
    return-object v0
.end method

.method public final getFactory2()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    #@2
    return-object v0
.end method

.method public getFilter()Landroid/view/LayoutInflater$Filter;
    .locals 1

    #@0
    .prologue
    .line 346
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    #@2
    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 377
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 3
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    #@0
    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v1

    #@8
    .line 424
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    #@b
    move-result-object v0

    #@c
    .line 426
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v2

    #@10
    .line 428
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    #@13
    .line 426
    return-object v2

    #@14
    .line 427
    :catchall_0
    move-exception v2

    #@15
    .line 428
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    #@18
    .line 427
    throw v2
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;

    #@0
    .prologue
    .line 397
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    #@0
    .prologue
    .line 455
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@4
    move-object/from16 v17, v0

    #@6
    monitor-enter v17

    #@7
    .line 456
    :try_start_0
    const-string/jumbo v2, "inflate"

    #@a
    const-wide/16 v18, 0x8

    #@c
    move-wide/from16 v0, v18

    #@e
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@11
    .line 458
    move-object/from16 v0, p0

    #@13
    iget-object v5, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    #@15
    .line 459
    .local v5, "inflaterContext":Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@18
    move-result-object v6

    #@19
    .line 460
    .local v6, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p0

    #@1b
    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@1d
    const/4 v3, 0x0

    #@1e
    aget-object v11, v2, v3

    #@20
    check-cast v11, Landroid/content/Context;

    #@22
    .line 461
    .local v11, "lastContext":Landroid/content/Context;
    move-object/from16 v0, p0

    #@24
    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@26
    const/4 v3, 0x0

    #@27
    aput-object v5, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@29
    .line 462
    move-object/from16 v14, p2

    #@2b
    .line 467
    .local v14, "result":Landroid/view/View;
    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@2e
    move-result v16

    #@2f
    .local v16, "type":I
    const/4 v2, 0x2

    #@30
    move/from16 v0, v16

    #@32
    if-eq v0, v2, :cond_1

    #@34
    .line 468
    const/4 v2, 0x1

    #@35
    move/from16 v0, v16

    #@37
    if-ne v0, v2, :cond_0

    #@39
    .line 472
    :cond_1
    const/4 v2, 0x2

    #@3a
    move/from16 v0, v16

    #@3c
    if-eq v0, v2, :cond_2

    #@3e
    .line 473
    new-instance v2, Landroid/view/InflateException;

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 474
    const-string/jumbo v4, ": No start tag found!"

    #@50
    .line 473
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@5c
    .line 537
    .end local v16    # "type":I
    :catch_0
    move-exception v9

    #@5d
    .line 538
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    new-instance v10, Landroid/view/InflateException;

    #@5f
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-direct {v10, v2, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@66
    .line 539
    .local v10, "ie":Landroid/view/InflateException;
    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    #@68
    invoke-virtual {v10, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@6b
    .line 540
    throw v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6c
    .line 546
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v10    # "ie":Landroid/view/InflateException;
    :catchall_0
    move-exception v2

    #@6d
    .line 548
    :try_start_3
    move-object/from16 v0, p0

    #@6f
    iget-object v3, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@71
    const/4 v4, 0x0

    #@72
    aput-object v11, v3, v4

    #@74
    .line 549
    move-object/from16 v0, p0

    #@76
    iget-object v3, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@78
    const/4 v4, 0x0

    #@79
    const/4 v7, 0x1

    #@7a
    aput-object v4, v3, v7

    #@7c
    .line 551
    const-wide/16 v18, 0x8

    #@7e
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    #@81
    .line 546
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@82
    .line 455
    .end local v5    # "inflaterContext":Landroid/content/Context;
    .end local v6    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "lastContext":Landroid/content/Context;
    .end local v14    # "result":Landroid/view/View;
    :catchall_1
    move-exception v2

    #@83
    monitor-exit v17

    #@84
    throw v2

    #@85
    .line 477
    .restart local v5    # "inflaterContext":Landroid/content/Context;
    .restart local v6    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "lastContext":Landroid/content/Context;
    .restart local v14    # "result":Landroid/view/View;
    .restart local v16    # "type":I
    :cond_2
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@88
    move-result-object v12

    #@89
    .line 486
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v2, "merge"

    #@8c
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v2

    #@90
    if-eqz v2, :cond_5

    #@92
    .line 487
    if-eqz p2, :cond_4

    #@94
    if-eqz p3, :cond_4

    #@96
    .line 492
    const/4 v7, 0x0

    #@97
    move-object/from16 v2, p0

    #@99
    move-object/from16 v3, p1

    #@9b
    move-object/from16 v4, p2

    #@9d
    invoke-virtual/range {v2 .. v7}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@a0
    .line 548
    :cond_3
    :goto_0
    :try_start_5
    move-object/from16 v0, p0

    #@a2
    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@a4
    const/4 v3, 0x0

    #@a5
    aput-object v11, v2, v3

    #@a7
    .line 549
    move-object/from16 v0, p0

    #@a9
    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    #@ab
    const/4 v3, 0x0

    #@ac
    const/4 v4, 0x1

    #@ad
    aput-object v3, v2, v4

    #@af
    .line 551
    const-wide/16 v2, 0x8

    #@b1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@b4
    monitor-exit v17

    #@b5
    .line 554
    return-object v14

    #@b6
    .line 488
    :cond_4
    :try_start_6
    new-instance v2, Landroid/view/InflateException;

    #@b8
    const-string/jumbo v3, "<merge /> can be used only with a valid ViewGroup root and attachToRoot=true"

    #@bb
    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@be
    throw v2
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@bf
    .line 541
    .end local v12    # "name":Ljava/lang/String;
    .end local v16    # "type":I
    :catch_1
    move-exception v8

    #@c0
    .line 542
    .local v8, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v10, Landroid/view/InflateException;

    #@c2
    new-instance v2, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@ca
    move-result-object v3

    #@cb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v2

    #@cf
    .line 543
    const-string/jumbo v3, ": "

    #@d2
    .line 542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v2

    #@d6
    .line 543
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@d9
    move-result-object v3

    #@da
    .line 542
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v2

    #@de
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v2

    #@e2
    invoke-direct {v10, v2, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e5
    .line 544
    .restart local v10    # "ie":Landroid/view/InflateException;
    sget-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    #@e7
    invoke-virtual {v10, v2}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@ea
    .line 545
    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@eb
    .line 495
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "ie":Landroid/view/InflateException;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v16    # "type":I
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    #@ed
    move-object/from16 v1, p2

    #@ef
    invoke-direct {v0, v1, v12, v5, v6}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@f2
    move-result-object v15

    #@f3
    .line 497
    .local v15, "temp":Landroid/view/View;
    const/4 v13, 0x0

    #@f4
    .line 499
    .local v13, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p2, :cond_6

    #@f6
    .line 505
    move-object/from16 v0, p2

    #@f8
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    #@fb
    move-result-object v13

    #@fc
    .line 506
    .local v13, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez p3, :cond_6

    #@fe
    .line 509
    invoke-virtual {v15, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@101
    .line 518
    .end local v13    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/4 v2, 0x1

    #@102
    move-object/from16 v0, p0

    #@104
    move-object/from16 v1, p1

    #@106
    invoke-virtual {v0, v1, v15, v6, v2}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    #@109
    .line 526
    if-eqz p2, :cond_7

    #@10b
    if-eqz p3, :cond_7

    #@10d
    .line 527
    move-object/from16 v0, p2

    #@10f
    invoke-virtual {v0, v15, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@112
    .line 532
    :cond_7
    if-eqz p2, :cond_8

    #@114
    if-nez p3, :cond_3

    #@116
    .line 533
    :cond_8
    move-object v14, v15

    #@117
    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 717
    invoke-virtual {p0, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 700
    const-string/jumbo v0, "android.view."

    #@3
    invoke-virtual {p0, p1, v0, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "finishInflate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 834
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@4
    move-result v0

    #@5
    .line 837
    .local v0, "depth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v3

    #@9
    .local v3, "type":I
    const/4 v6, 0x3

    #@a
    if-ne v3, v6, :cond_1

    #@c
    .line 838
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@f
    move-result v6

    #@10
    if-le v6, v0, :cond_7

    #@12
    :cond_1
    if-eq v3, v7, :cond_7

    #@14
    .line 840
    const/4 v6, 0x2

    #@15
    if-ne v3, v6, :cond_0

    #@17
    .line 844
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    .line 846
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v6, "requestFocus"

    #@1e
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_2

    #@24
    .line 847
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;->parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V

    #@27
    goto :goto_0

    #@28
    .line 848
    :cond_2
    const-string/jumbo v6, "tag"

    #@2b
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v6

    #@2f
    if-eqz v6, :cond_3

    #@31
    .line 849
    invoke-direct {p0, p1, p2, p4}, Landroid/view/LayoutInflater;->parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    #@34
    goto :goto_0

    #@35
    .line 850
    :cond_3
    const-string/jumbo v6, "include"

    #@38
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_5

    #@3e
    .line 851
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@41
    move-result v6

    #@42
    if-nez v6, :cond_4

    #@44
    .line 852
    new-instance v6, Landroid/view/InflateException;

    #@46
    const-string/jumbo v7, "<include /> cannot be the root element"

    #@49
    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v6

    #@4d
    .line 854
    :cond_4
    invoke-direct {p0, p1, p3, p2, p4}, Landroid/view/LayoutInflater;->parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    #@50
    goto :goto_0

    #@51
    .line 855
    :cond_5
    const-string/jumbo v6, "merge"

    #@54
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@57
    move-result v6

    #@58
    if-eqz v6, :cond_6

    #@5a
    .line 856
    new-instance v6, Landroid/view/InflateException;

    #@5c
    const-string/jumbo v7, "<merge /> must be the root element"

    #@5f
    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@62
    throw v6

    #@63
    .line 858
    :cond_6
    invoke-direct {p0, p2, v1, p3, p4}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@66
    move-result-object v4

    #@67
    .local v4, "view":Landroid/view/View;
    move-object v5, p2

    #@68
    .line 859
    check-cast v5, Landroid/view/ViewGroup;

    #@6a
    .line 860
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v5, p4}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    #@6d
    move-result-object v2

    #@6e
    .line 861
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p1, v4, p4, v7}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    #@71
    .line 862
    invoke-virtual {v5, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@74
    goto :goto_0

    #@75
    .line 866
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewGroup":Landroid/view/ViewGroup;
    :cond_7
    if-eqz p5, :cond_8

    #@77
    .line 867
    invoke-virtual {p2}, Landroid/view/View;->onFinishInflate()V

    #@7a
    .line 832
    :cond_8
    return-void
.end method

.method final rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "finishInflate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 821
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v3

    #@4
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-object v2, p2

    #@7
    move-object v4, p3

    #@8
    move v5, p4

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    #@c
    .line 820
    return-void
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 4
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 297
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string/jumbo v1, "A factory has already been set on this LayoutInflater"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 300
    :cond_0
    if-nez p1, :cond_1

    #@10
    .line 301
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "Given factory can not be null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 303
    :cond_1
    const/4 v0, 0x1

    #@1a
    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    #@1c
    .line 304
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@1e
    if-nez v0, :cond_2

    #@20
    .line 305
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@22
    .line 296
    :goto_0
    return-void

    #@23
    .line 307
    :cond_2
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    #@25
    iget-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@27
    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    #@29
    invoke-direct {v0, p1, v3, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    #@2c
    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@2e
    goto :goto_0
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 3
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    #@0
    .prologue
    .line 316
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "A factory has already been set on this LayoutInflater"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 319
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 320
    new-instance v0, Ljava/lang/NullPointerException;

    #@11
    const-string/jumbo v1, "Given factory can not be null"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 322
    :cond_1
    const/4 v0, 0x1

    #@19
    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    #@1b
    .line 323
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@1d
    if-nez v0, :cond_2

    #@1f
    .line 324
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    #@21
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@23
    .line 315
    :goto_0
    return-void

    #@24
    .line 326
    :cond_2
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    #@26
    iget-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@28
    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    #@2a
    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    #@2d
    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    #@2f
    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    #@31
    goto :goto_0
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .locals 1
    .param p1, "filter"    # Landroid/view/LayoutInflater$Filter;

    #@0
    .prologue
    .line 359
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    #@2
    .line 360
    if-eqz p1, :cond_0

    #@4
    .line 361
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    #@b
    .line 358
    :cond_0
    return-void
.end method

.method public setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V
    .locals 3
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    #@0
    .prologue
    .line 334
    iget-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 335
    iput-object p1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    #@6
    .line 333
    :goto_0
    return-void

    #@7
    .line 337
    :cond_0
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    #@9
    iget-object v1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    #@b
    iget-object v2, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    #@d
    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    #@10
    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    #@12
    goto :goto_0
.end method
