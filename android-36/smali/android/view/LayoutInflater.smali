.class public abstract Landroid/view/LayoutInflater;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LayoutInflater$Factory;,
        Landroid/view/LayoutInflater$Factory2;,
        Landroid/view/LayoutInflater$Filter;,
        Landroid/view/LayoutInflater$FactoryMerger;,
        Landroid/view/LayoutInflater$BlinkLayout;
    }
.end annotation


# static fields
.field private static final greylist ATTRS_THEME:[I

.field private static final greylist-max-o ATTR_LAYOUT:Ljava/lang/String; = "layout"

.field private static final greylist-max-o BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field private static final greylist-max-o TAG_1995:Ljava/lang/String; = "blink"

.field private static final greylist-max-o TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final greylist-max-o TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final greylist-max-o TAG_REQUEST_FOCUS:Ljava/lang/String; = "requestFocus"

.field private static final greylist-max-o TAG_TAG:Ljava/lang/String; = "tag"

.field static final greylist mConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final greylist-max-p sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-p mConstructorArgs:[Ljava/lang/Object;

.field protected final greylist-max-p mContext:Landroid/content/Context;

.field private greylist mFactory:Landroid/view/LayoutInflater$Factory;

.field private greylist mFactory2:Landroid/view/LayoutInflater$Factory2;

.field private greylist-max-p mFactorySet:Z

.field private greylist-max-o mFilter:Landroid/view/LayoutInflater$Filter;

.field private greylist-max-o mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

.field private greylist-max-o mTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 76
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/LayoutInflater;->TAG:Ljava/lang/String;

    .line 80
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/StackTraceElement;

    sput-object v2, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    .line 116
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v2, v1

    sput-object v2, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    .line 136
    const/high16 v1, 0x1010000

    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    .line 622
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/view/LayoutInflater;->BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 241
    const-string v0, "LayoutInflater"

    invoke-static {p1, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    iput-object p1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 243
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .registers 4
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 254
    const-string v0, "LayoutInflater"

    invoke-static {p2, v0}, Landroid/os/StrictMode;->assertConfigurationContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    iput-object p2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 256
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 257
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 258
    iget-object v0, p1, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 259
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 260
    return-void
.end method

.method private blacklist advanceToRootNode(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/InflateException;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 476
    nop

    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v0, 0x1

    if-eq v1, v0, :cond_d

    goto :goto_1

    .line 481
    :cond_d
    if-ne v1, v2, :cond_10

    .line 485
    return-void

    .line 482
    :cond_10
    new-instance v0, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": No start tag found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static final greylist-max-o consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1181
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1182
    .local v0, "currentDepth":I
    :goto_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v1, v3, :cond_12

    .line 1183
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v0, :cond_16

    :cond_12
    const/4 v1, 0x1

    if-eq v2, v1, :cond_16

    goto :goto_4

    .line 1186
    :cond_16
    return-void
.end method

.method private greylist-max-r createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 850
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "parent":Landroid/view/View;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    .local v1, "parent":Landroid/view/View;
    .local v2, "name":Ljava/lang/String;
    .local v3, "context":Landroid/content/Context;
    .local v4, "attrs":Landroid/util/AttributeSet;
    invoke-virtual/range {v0 .. v5}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private blacklist failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 785
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 786
    if-eqz p2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a

    :cond_29
    move-object v2, p1

    :goto_2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 266
    nop

    .line 267
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 268
    .local v0, "LayoutInflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_c

    .line 271
    return-object v0

    .line 269
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "LayoutInflater not found."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static blacklist getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 613
    invoke-static {p1}, Landroid/content/res/Resources;->getAttributeSetSourceResId(Landroid/util/AttributeSet;)I

    move-result v0

    .line 614
    .local v0, "sourceResId":I
    if-nez v0, :cond_b

    .line 615
    invoke-interface {p1}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 617
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 617
    return-object v1
.end method

.method private greylist parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 24
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

    .line 1050
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v7, p4

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_173

    .line 1058
    sget-object v3, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1059
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 1060
    .local v10, "themeResId":I
    const/4 v11, 0x1

    if-eqz v10, :cond_1c

    move v6, v11

    goto :goto_1d

    :cond_1c
    move v6, v9

    :goto_1d
    move v12, v6

    .line 1061
    .local v12, "hasThemeOverride":Z
    if-eqz v12, :cond_27

    .line 1062
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, v0, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v4, v3

    .end local p2    # "context":Landroid/content/Context;
    .local v3, "context":Landroid/content/Context;
    goto :goto_28

    .line 1061
    .end local v3    # "context":Landroid/content/Context;
    .restart local p2    # "context":Landroid/content/Context;
    :cond_27
    move-object v4, v0

    .line 1064
    .end local p2    # "context":Landroid/content/Context;
    .local v4, "context":Landroid/content/Context;
    :goto_28
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1068
    const/4 v0, 0x0

    const-string v3, "layout"

    invoke-interface {v7, v0, v3, v9}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 1069
    .local v5, "layout":I
    if-nez v5, :cond_5b

    .line 1070
    invoke-interface {v7, v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1071
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_53

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_53

    .line 1078
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1079
    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 1078
    const-string v0, "attr"

    invoke-virtual {v13, v14, v0, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_5b

    .line 1072
    :cond_53
    new-instance v0, Landroid/view/InflateException;

    const-string v3, "You must specify a layout in the include tag: <include layout=\"@layout/layoutID\" />"

    invoke-direct {v0, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    .end local v6    # "value":Ljava/lang/String;
    :cond_5b
    :goto_5b
    iget-object v0, v1, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    if-nez v0, :cond_66

    .line 1085
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, v1, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    .line 1087
    :cond_66
    if-eqz v5, :cond_7a

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iget-object v6, v1, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    invoke-virtual {v0, v5, v6, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1088
    iget-object v0, v1, Landroid/view/LayoutInflater;->mTempValue:Landroid/util/TypedValue;

    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    move v13, v5

    goto :goto_7b

    .line 1091
    :cond_7a
    move v13, v5

    .end local v5    # "layout":I
    .local v13, "layout":I
    :goto_7b
    if-eqz v13, :cond_14f

    .line 1097
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 1099
    .local v3, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_85
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v5, v0

    .line 1101
    .local v5, "childAttrs":Landroid/util/AttributeSet;
    :goto_8a
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v14, v0

    .local v14, "type":I
    const/4 v6, 0x2

    if-eq v0, v6, :cond_95

    if-eq v14, v11, :cond_95

    goto :goto_8a

    .line 1106
    :cond_95
    if-ne v14, v6, :cond_127

    .line 1111
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 1113
    .local v15, "childName":Ljava/lang/String;
    const-string v0, "merge"

    invoke-virtual {v0, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a2
    .catchall {:try_start_85 .. :try_end_a2} :catchall_148

    if-eqz v0, :cond_b6

    .line 1116
    const/4 v6, 0x0

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    .end local v3    # "childParser":Landroid/content/res/XmlResourceParser;
    .local v2, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_aa
    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b1

    move v6, v12

    move-object v12, v2

    goto/16 :goto_11f

    .line 1168
    .end local v5    # "childAttrs":Landroid/util/AttributeSet;
    .end local v14    # "type":I
    .end local v15    # "childName":Ljava/lang/String;
    :catchall_b1
    move-exception v0

    move v6, v12

    move-object v12, v2

    goto/16 :goto_14b

    .line 1118
    .end local v2    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v14    # "type":I
    .restart local v15    # "childName":Ljava/lang/String;
    :cond_b6
    move-object v2, v3

    .line 1119
    .end local v3    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v2    # "childParser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v1, p0

    move v6, v12

    move-object v3, v15

    move-object v12, v2

    move-object/from16 v2, p3

    .end local v2    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "childName":Ljava/lang/String;
    .local v3, "childName":Ljava/lang/String;
    .local v6, "hasThemeOverride":Z
    .local v12, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_be
    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 1120
    .local v2, "view":Landroid/view/View;
    move-object/from16 v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v15, v0

    .line 1122
    .local v15, "group":Landroid/view/ViewGroup;
    sget-object v0, Lcom/android/internal/R$styleable;->Include:[I

    invoke-virtual {v4, v7, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object/from16 p2, v0

    .line 1123
    .local p2, "a":Landroid/content/res/TypedArray;
    const/4 v11, -0x1

    move-object/from16 v16, v3

    move-object/from16 v3, p2

    .end local p2    # "a":Landroid/content/res/TypedArray;
    .local v3, "a":Landroid/content/res/TypedArray;
    .local v16, "childName":Ljava/lang/String;
    invoke-virtual {v3, v9, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    move/from16 p2, v0

    .line 1124
    .local p2, "id":I
    const/4 v9, 0x1

    invoke-virtual {v3, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move v9, v0

    .line 1125
    .local v9, "visibility":I
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_e4
    .catchall {:try_start_be .. :try_end_e4} :catchall_146

    .line 1135
    const/16 v17, 0x0

    .line 1137
    .local v17, "params":Landroid/view/ViewGroup$LayoutParams;
    :try_start_e6
    invoke-virtual {v15, v7}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0
    :try_end_ea
    .catch Ljava/lang/RuntimeException; {:try_start_e6 .. :try_end_ea} :catch_ed
    .catchall {:try_start_e6 .. :try_end_ea} :catchall_146

    move-object/from16 v17, v0

    .line 1140
    goto :goto_ee

    .line 1138
    :catch_ed
    move-exception v0

    .line 1141
    :goto_ee
    if-nez v17, :cond_f7

    .line 1142
    :try_start_f0
    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_f9

    .line 1141
    :cond_f7
    move-object/from16 v0, v17

    .line 1144
    .end local v17    # "params":Landroid/view/ViewGroup$LayoutParams;
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_f9
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    const/4 v11, 0x1

    invoke-virtual {v1, v12, v2, v5, v11}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 1149
    move/from16 v11, p2

    const/4 v1, -0x1

    .end local p2    # "id":I
    .local v11, "id":I
    if-eq v11, v1, :cond_108

    .line 1150
    invoke-virtual {v2, v11}, Landroid/view/View;->setId(I)V

    .line 1153
    :cond_108
    packed-switch v9, :pswitch_data_17c

    goto :goto_11c

    .line 1161
    :pswitch_10c
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11c

    .line 1158
    :pswitch_112
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1159
    goto :goto_11c

    .line 1155
    :pswitch_117
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    nop

    .line 1165
    :goto_11c
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_11f
    .catchall {:try_start_f0 .. :try_end_11f} :catchall_146

    .line 1168
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "childAttrs":Landroid/util/AttributeSet;
    .end local v9    # "visibility":I
    .end local v11    # "id":I
    .end local v15    # "group":Landroid/view/ViewGroup;
    .end local v16    # "childName":Ljava/lang/String;
    :goto_11f
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1169
    nop

    .line 1171
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1172
    return-void

    .line 1107
    .end local v6    # "hasThemeOverride":Z
    .local v3, "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "childAttrs":Landroid/util/AttributeSet;
    .local v12, "hasThemeOverride":Z
    :cond_127
    move v6, v12

    move-object v12, v3

    .end local v3    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "hasThemeOverride":Z
    .local v12, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_129
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v5}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": No start tag found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "hasThemeOverride":Z
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v10    # "themeResId":I
    .end local v12    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v13    # "layout":I
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p3    # "parent":Landroid/view/View;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v0
    :try_end_146
    .catchall {:try_start_129 .. :try_end_146} :catchall_146

    .line 1168
    .end local v5    # "childAttrs":Landroid/util/AttributeSet;
    .end local v14    # "type":I
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "hasThemeOverride":Z
    .restart local v8    # "ta":Landroid/content/res/TypedArray;
    .restart local v10    # "themeResId":I
    .restart local v12    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v13    # "layout":I
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p3    # "parent":Landroid/view/View;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :catchall_146
    move-exception v0

    goto :goto_14b

    .end local v6    # "hasThemeOverride":Z
    .restart local v3    # "childParser":Landroid/content/res/XmlResourceParser;
    .local v12, "hasThemeOverride":Z
    :catchall_148
    move-exception v0

    move v6, v12

    move-object v12, v3

    .end local v3    # "childParser":Landroid/content/res/XmlResourceParser;
    .restart local v6    # "hasThemeOverride":Z
    .local v12, "childParser":Landroid/content/res/XmlResourceParser;
    :goto_14b
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1169
    throw v0

    .line 1092
    .end local v6    # "hasThemeOverride":Z
    .local v12, "hasThemeOverride":Z
    :cond_14f
    const/4 v0, 0x0

    invoke-interface {v7, v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You must specify a valid layout reference. The layout ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1051
    .end local v0    # "value":Ljava/lang/String;
    .end local v4    # "context":Landroid/content/Context;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v10    # "themeResId":I
    .end local v12    # "hasThemeOverride":Z
    .end local v13    # "layout":I
    .local p2, "context":Landroid/content/Context;
    :cond_173
    new-instance v1, Landroid/view/InflateException;

    const-string v2, "<include /> can only be used inside of a ViewGroup"

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_117
        :pswitch_112
        :pswitch_10c
    .end packed-switch
.end method

.method private greylist-max-o parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1036
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/android/internal/R$styleable;->ViewTag:[I

    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1037
    .local v1, "ta":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1038
    .local v2, "key":I
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1039
    .local v3, "value":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1040
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1042
    invoke-static {p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1043
    return-void
.end method

.method private final greylist-max-o verifyClassLoader(Ljava/lang/reflect/Constructor;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 625
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 626
    .local v0, "constructorLoader":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/view/LayoutInflater;->BOOT_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e

    .line 628
    return v2

    .line 632
    :cond_e
    iget-object v1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 634
    .local v1, "cl":Ljava/lang/ClassLoader;
    :cond_14
    if-ne v0, v1, :cond_17

    .line 635
    return v2

    .line 637
    :cond_17
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 638
    if-nez v1, :cond_14

    .line 639
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public abstract whitelist cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
.end method

.method public final whitelist createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 16
    .param p1, "viewContext"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 690
    const-string v0, ": Error inflating class "

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    sget-object v1, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 693
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    if-eqz v1, :cond_1e

    invoke-direct {p0, v1}, Landroid/view/LayoutInflater;->verifyClassLoader(Ljava/lang/reflect/Constructor;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 694
    const/4 v1, 0x0

    .line 695
    sget-object v2, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    :cond_1e
    const/4 v2, 0x0

    .line 700
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-wide/16 v3, 0x8

    :try_start_21
    invoke-static {v3, v4, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 702
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_6f

    .line 704
    if-eqz p3, :cond_3c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3d

    :cond_3c
    move-object v7, p2

    :goto_3d
    iget-object v8, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 705
    invoke-virtual {v8}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 704
    invoke-static {v7, v6, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Landroid/view/View;

    .line 705
    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    move-object v2, v7

    .line 707
    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v7, :cond_5f

    if-eqz v2, :cond_5f

    .line 708
    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v7, v2}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v7

    .line 709
    .local v7, "allowed":Z
    if-nez v7, :cond_5f

    .line 710
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 713
    .end local v7    # "allowed":Z
    :cond_5f
    sget-object v7, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    move-object v1, v7

    .line 714
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 715
    sget-object v7, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v7, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ca

    .line 718
    :cond_6f
    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v7, :cond_ca

    .line 720
    iget-object v7, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 721
    .local v7, "allowedState":Ljava/lang/Boolean;
    if-nez v7, :cond_bf

    .line 723
    if-eqz p3, :cond_91

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_92

    :cond_91
    move-object v8, p2

    :goto_92
    iget-object v9, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 724
    invoke-virtual {v9}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    .line 723
    invoke-static {v8, v6, v9}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    const-class v9, Landroid/view/View;

    .line 724
    invoke-virtual {v8, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    move-object v2, v8

    .line 726
    if-eqz v2, :cond_af

    iget-object v8, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v8, v2}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_af

    move v8, v5

    goto :goto_b0

    :cond_af
    move v8, v6

    .line 727
    .local v8, "allowed":Z
    :goto_b0
    iget-object v9, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, p2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    if-nez v8, :cond_be

    .line 729
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 731
    .end local v8    # "allowed":Z
    :cond_be
    goto :goto_ca

    :cond_bf
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_be

    .line 732
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 737
    .end local v7    # "allowedState":Ljava/lang/Boolean;
    :cond_ca
    :goto_ca
    iget-object v7, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aget-object v7, v7, v6

    .line 738
    .local v7, "lastContext":Ljava/lang/Object;
    iget-object v8, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p1, v8, v6

    .line 739
    iget-object v8, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 740
    .local v8, "args":[Ljava/lang/Object;
    aput-object p4, v8, v5
    :try_end_d6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_21 .. :try_end_d6} :catch_170
    .catch Ljava/lang/ClassCastException; {:try_start_21 .. :try_end_d6} :catch_133
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_d6} :catch_130
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_d6} :catch_101
    .catchall {:try_start_21 .. :try_end_d6} :catchall_fe

    .line 743
    :try_start_d6
    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 744
    .local v5, "view":Landroid/view/View;
    instance-of v9, v5, Landroid/view/ViewStub;

    if-eqz v9, :cond_ee

    .line 746
    move-object v9, v5

    check-cast v9, Landroid/view/ViewStub;

    .line 747
    .local v9, "viewStub":Landroid/view/ViewStub;
    aget-object v10, v8, v6

    check-cast v10, Landroid/content/Context;

    invoke-virtual {p0, v10}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V
    :try_end_ee
    .catchall {:try_start_d6 .. :try_end_ee} :catchall_f7

    .line 749
    .end local v9    # "viewStub":Landroid/view/ViewStub;
    :cond_ee
    nop

    .line 751
    :try_start_ef
    iget-object v9, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v7, v9, v6
    :try_end_f3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ef .. :try_end_f3} :catch_170
    .catch Ljava/lang/ClassCastException; {:try_start_ef .. :try_end_f3} :catch_133
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ef .. :try_end_f3} :catch_130
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f3} :catch_101
    .catchall {:try_start_ef .. :try_end_f3} :catchall_fe

    .line 777
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 749
    return-object v5

    .line 751
    .end local v5    # "view":Landroid/view/View;
    :catchall_f7
    move-exception v5

    :try_start_f8
    iget-object v9, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v7, v9, v6

    .line 752
    nop

    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "viewContext":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v5
    :try_end_fe
    .catch Ljava/lang/NoSuchMethodException; {:try_start_f8 .. :try_end_fe} :catch_170
    .catch Ljava/lang/ClassCastException; {:try_start_f8 .. :try_end_fe} :catch_133
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f8 .. :try_end_fe} :catch_130
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_fe} :catch_101
    .catchall {:try_start_f8 .. :try_end_fe} :catchall_fe

    .line 777
    .end local v7    # "lastContext":Ljava/lang/Object;
    .end local v8    # "args":[Ljava/lang/Object;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "viewContext":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :catchall_fe
    move-exception v0

    goto/16 :goto_1ab

    .line 770
    :catch_101
    move-exception v5

    .line 771
    .local v5, "e":Ljava/lang/Exception;
    :try_start_102
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    invoke-static {p1, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 773
    if-nez v2, :cond_11a

    const-string v7, "<unknown>"

    goto :goto_11e

    :cond_11a
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_11e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 774
    .local v6, "ie":Landroid/view/InflateException;
    sget-object v0, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v6, v0}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 775
    nop

    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "viewContext":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v6

    .line 767
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "ie":Landroid/view/InflateException;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "viewContext":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :catch_130
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    nop

    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "viewContext":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v0

    .line 760
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "viewContext":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :catch_133
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 763
    invoke-static {p1, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Class is not a View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 764
    if-eqz p3, :cond_15d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_15e

    :cond_15d
    move-object v7, p2

    :goto_15e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 765
    .local v5, "ie":Landroid/view/InflateException;
    sget-object v6, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v5, v6}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 766
    nop

    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "viewContext":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v5

    .line 753
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v5    # "ie":Landroid/view/InflateException;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "viewContext":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :catch_170
    move-exception v5

    .line 754
    .local v5, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    invoke-static {p1, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 756
    if-eqz p3, :cond_198

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_199

    :cond_198
    move-object v7, p2

    :goto_199
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    .restart local v6    # "ie":Landroid/view/InflateException;
    sget-object v0, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v6, v0}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 758
    nop

    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "viewContext":Landroid/content/Context;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "prefix":Ljava/lang/String;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    throw v6
    :try_end_1ab
    .catchall {:try_start_102 .. :try_end_1ab} :catchall_fe

    .line 777
    .end local v5    # "e":Ljava/lang/NoSuchMethodException;
    .end local v6    # "ie":Landroid/view/InflateException;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "viewContext":Landroid/content/Context;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "prefix":Ljava/lang/String;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    :goto_1ab
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 778
    throw v0
.end method

.method public final whitelist createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Landroid/content/Context;

    .line 662
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_b

    .line 663
    iget-object v0, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 665
    :cond_b
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/view/LayoutInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method greylist-max-r createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroid/view/View;
    .registers 13
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "ignoreThemeAttr"    # Z

    .line 871
    const-string v0, ": Error inflating class "

    const-string/jumbo v1, "view"

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 872
    const-string v1, "class"

    invoke-interface {p4, v2, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 876
    :cond_12
    const/4 v1, 0x0

    if-nez p5, :cond_2a

    .line 877
    sget-object v3, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    invoke-virtual {p3, p4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 878
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 879
    .local v4, "themeResId":I
    if-eqz v4, :cond_27

    .line 880
    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-direct {v5, p3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p3, v5

    .line 882
    :cond_27
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 886
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    .end local v4    # "themeResId":I
    :cond_2a
    :try_start_2a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/LayoutInflater;->tryCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3

    .line 888
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_58

    .line 889
    iget-object v4, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aget-object v4, v4, v1

    .line 890
    .local v4, "lastContext":Ljava/lang/Object;
    iget-object v5, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object p3, v5, v1
    :try_end_38
    .catch Landroid/view/InflateException; {:try_start_2a .. :try_end_38} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_38} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_38} :catch_59

    .line 892
    const/16 v5, 0x2e

    :try_start_3a
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-ne v6, v5, :cond_47

    .line 893
    invoke-virtual {p0, p3, p1, p2, p4}, Landroid/view/LayoutInflater;->onCreateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    .end local v3    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    goto :goto_4c

    .line 895
    .end local v2    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    :cond_47
    invoke-virtual {p0, p3, p2, v2, p4}, Landroid/view/LayoutInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_51

    move-object v3, v2

    .line 898
    :goto_4c
    :try_start_4c
    iget-object v2, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v4, v2, v1

    .line 899
    goto :goto_58

    .line 898
    :catchall_51
    move-exception v2

    iget-object v5, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v4, v5, v1

    .line 899
    nop

    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parent":Landroid/view/View;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "attrs":Landroid/util/AttributeSet;
    .end local p5    # "ignoreThemeAttr":Z
    throw v2
    :try_end_58
    .catch Landroid/view/InflateException; {:try_start_4c .. :try_end_58} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4c .. :try_end_58} :catch_7e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_58} :catch_59

    .line 902
    .end local v4    # "lastContext":Ljava/lang/Object;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parent":Landroid/view/View;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "context":Landroid/content/Context;
    .restart local p4    # "attrs":Landroid/util/AttributeSet;
    .restart local p5    # "ignoreThemeAttr":Z
    :cond_58
    :goto_58
    return-object v3

    .line 913
    .end local v3    # "view":Landroid/view/View;
    :catch_59
    move-exception v1

    .line 914
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    invoke-static {p3, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 917
    .local v2, "ie":Landroid/view/InflateException;
    sget-object v0, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v0}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 918
    throw v2

    .line 906
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ie":Landroid/view/InflateException;
    :catch_7e
    move-exception v1

    .line 907
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 908
    invoke-static {p3, p4}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 910
    .restart local v2    # "ie":Landroid/view/InflateException;
    sget-object v0, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v0}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 911
    throw v2

    .line 903
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "ie":Landroid/view/InflateException;
    :catch_a3
    move-exception v0

    .line 904
    .local v0, "e":Landroid/view/InflateException;
    throw v0
.end method

.method public whitelist getContext()Landroid/content/Context;
    .registers 2

    .line 293
    iget-object v0, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final whitelist getFactory()Landroid/view/LayoutInflater$Factory;
    .registers 2

    .line 302
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    return-object v0
.end method

.method public final whitelist getFactory2()Landroid/view/LayoutInflater$Factory2;
    .registers 2

    .line 313
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    return-object v0
.end method

.method public whitelist getFilter()Landroid/view/LayoutInflater$Filter;
    .registers 2

    .line 382
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    return-object v0
.end method

.method public whitelist inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .line 413
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 7
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .line 454
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 460
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 462
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_c
    invoke-virtual {p0, v1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 464
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 462
    return-object v2

    .line 464
    :catchall_14
    move-exception v2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 465
    throw v2
.end method

.method public whitelist inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .line 433
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public whitelist inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 22
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .line 510
    move-object/from16 v1, p0

    iget-object v7, v1, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v7

    .line 511
    :try_start_5
    const-string v0, "inflate"

    const-wide/16 v8, 0x8

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 513
    iget-object v4, v1, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 514
    .local v4, "inflaterContext":Landroid/content/Context;
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 515
    .local v5, "attrs":Landroid/util/AttributeSet;
    iget-object v0, v1, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v10, 0x0

    aget-object v0, v0, v10

    check-cast v0, Landroid/content/Context;

    move-object v11, v0

    .line 516
    .local v11, "lastContext":Landroid/content/Context;
    iget-object v0, v1, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v4, v0, v10

    .line 517
    move-object/from16 v12, p2

    .line 519
    .local v12, "result":Landroid/view/View;
    const/4 v13, 0x0

    if-eqz p2, :cond_28

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    goto :goto_29

    :cond_28
    move-object v0, v13

    :goto_29
    move-object v14, v0

    .line 520
    .local v14, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v14, :cond_2f

    .line 521
    invoke-virtual {v14}, Landroid/view/ViewRootImpl;->notifyRendererOfExpensiveFrame()V
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_109

    .line 525
    :cond_2f
    const/4 v15, 0x1

    :try_start_30
    invoke-direct/range {p0 .. p1}, Landroid/view/LayoutInflater;->advanceToRootNode(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 526
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "name":Ljava/lang/String;
    const-string v2, "merge"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_3d} :catch_e4
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3d} :catch_b2
    .catchall {:try_start_30 .. :try_end_3d} :catchall_aa

    if-eqz v2, :cond_5a

    .line 536
    if-eqz p2, :cond_50

    if-eqz p3, :cond_50

    .line 541
    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    :try_start_48
    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    move-wide/from16 v16, v8

    move-object/from16 v8, p1

    goto :goto_92

    .line 536
    :cond_50
    move-object/from16 v3, p2

    .line 537
    new-instance v2, Landroid/view/InflateException;

    const-string v6, "<merge /> can be used only with a valid ViewGroup root and attachToRoot=true"

    invoke-direct {v2, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "inflaterContext":Landroid/content/Context;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "lastContext":Landroid/content/Context;
    .end local v12    # "result":Landroid/view/View;
    .end local v14    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Landroid/view/ViewGroup;
    .end local p3    # "attachToRoot":Z
    throw v2

    .line 544
    .restart local v4    # "inflaterContext":Landroid/content/Context;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "lastContext":Landroid/content/Context;
    .restart local v12    # "result":Landroid/view/View;
    .restart local v14    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Landroid/view/ViewGroup;
    .restart local p3    # "attachToRoot":Z
    :cond_5a
    move-object/from16 v3, p2

    invoke-direct {v1, v3, v0, v4, v5}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    .line 546
    .local v2, "temp":Landroid/view/View;
    if-nez v3, :cond_71

    if-eqz v2, :cond_71

    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    if-eqz v6, :cond_71

    .line 547
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->notifyRendererOfExpensiveFrame()V

    .line 550
    :cond_71
    const/4 v6, 0x0

    .line 552
    .local v6, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_7f

    .line 558
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v6, v16

    .line 559
    if-nez p3, :cond_7f

    .line 562
    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_48 .. :try_end_7f} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_7f} :catch_a6
    .catchall {:try_start_48 .. :try_end_7f} :catchall_a4

    .line 571
    :cond_7f
    move-wide/from16 v16, v8

    move-object/from16 v8, p1

    :try_start_83
    invoke-virtual {v1, v8, v2, v5, v15}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 579
    if-eqz v3, :cond_8d

    if-eqz p3, :cond_8d

    .line 580
    invoke-virtual {v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_8d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_83 .. :try_end_8d} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8d} :catch_a0
    .catchall {:try_start_83 .. :try_end_8d} :catchall_fb

    .line 585
    :cond_8d
    if-eqz v3, :cond_91

    if-nez p3, :cond_92

    .line 586
    :cond_91
    move-object v12, v2

    .line 602
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "temp":Landroid/view/View;
    .end local v6    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_92
    :goto_92
    :try_start_92
    iget-object v0, v1, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v11, v0, v10

    .line 603
    iget-object v0, v1, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v13, v0, v15

    .line 605
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    nop

    .line 608
    monitor-exit v7
    :try_end_9f
    .catchall {:try_start_92 .. :try_end_9f} :catchall_110

    return-object v12

    .line 594
    :catch_a0
    move-exception v0

    goto :goto_b9

    .line 590
    :catch_a2
    move-exception v0

    goto :goto_eb

    .line 602
    :catchall_a4
    move-exception v0

    goto :goto_ad

    .line 594
    :catch_a6
    move-exception v0

    goto :goto_b5

    .line 590
    :catch_a8
    move-exception v0

    goto :goto_e7

    .line 602
    :catchall_aa
    move-exception v0

    move-object/from16 v3, p2

    :goto_ad
    move-wide/from16 v16, v8

    move-object/from16 v8, p1

    goto :goto_fc

    .line 594
    :catch_b2
    move-exception v0

    move-object/from16 v3, p2

    :goto_b5
    move-wide/from16 v16, v8

    move-object/from16 v8, p1

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    :goto_b9
    :try_start_b9
    new-instance v2, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    invoke-static {v4, v5}, Landroid/view/LayoutInflater;->getParserStateDescription(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 597
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    .local v2, "ie":Landroid/view/InflateException;
    sget-object v6, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v6}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 599
    nop

    .end local v4    # "inflaterContext":Landroid/content/Context;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "lastContext":Landroid/content/Context;
    .end local v12    # "result":Landroid/view/View;
    .end local v14    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Landroid/view/ViewGroup;
    .end local p3    # "attachToRoot":Z
    throw v2

    .line 590
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ie":Landroid/view/InflateException;
    .restart local v4    # "inflaterContext":Landroid/content/Context;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "lastContext":Landroid/content/Context;
    .restart local v12    # "result":Landroid/view/View;
    .restart local v14    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Landroid/view/ViewGroup;
    .restart local p3    # "attachToRoot":Z
    :catch_e4
    move-exception v0

    move-object/from16 v3, p2

    :goto_e7
    move-wide/from16 v16, v8

    move-object/from16 v8, p1

    .line 591
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_eb
    new-instance v2, Landroid/view/InflateException;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 592
    .restart local v2    # "ie":Landroid/view/InflateException;
    sget-object v6, Landroid/view/LayoutInflater;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v6}, Landroid/view/InflateException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 593
    nop

    .end local v4    # "inflaterContext":Landroid/content/Context;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "lastContext":Landroid/content/Context;
    .end local v12    # "result":Landroid/view/View;
    .end local v14    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Landroid/view/ViewGroup;
    .end local p3    # "attachToRoot":Z
    throw v2
    :try_end_fb
    .catchall {:try_start_b9 .. :try_end_fb} :catchall_fb

    .line 602
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "ie":Landroid/view/InflateException;
    .restart local v4    # "inflaterContext":Landroid/content/Context;
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v11    # "lastContext":Landroid/content/Context;
    .restart local v12    # "result":Landroid/view/View;
    .restart local v14    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Landroid/view/ViewGroup;
    .restart local p3    # "attachToRoot":Z
    :catchall_fb
    move-exception v0

    :goto_fc
    :try_start_fc
    iget-object v2, v1, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v11, v2, v10

    .line 603
    iget-object v2, v1, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    aput-object v13, v2, v15

    .line 605
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 606
    nop

    .end local p0    # "this":Landroid/view/LayoutInflater;
    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "root":Landroid/view/ViewGroup;
    .end local p3    # "attachToRoot":Z
    throw v0

    .line 609
    .end local v4    # "inflaterContext":Landroid/content/Context;
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v11    # "lastContext":Landroid/content/Context;
    .end local v12    # "result":Landroid/view/View;
    .end local v14    # "viewRootImpl":Landroid/view/ViewRootImpl;
    .restart local p0    # "this":Landroid/view/LayoutInflater;
    .restart local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p2    # "root":Landroid/view/ViewGroup;
    .restart local p3    # "attachToRoot":Z
    :catchall_109
    move-exception v0

    move-object/from16 v8, p1

    move-object/from16 v3, p2

    :goto_10e
    monitor-exit v7
    :try_end_10f
    .catchall {:try_start_fc .. :try_end_10f} :catchall_110

    throw v0

    :catchall_110
    move-exception v0

    goto :goto_10e
.end method

.method public whitelist onCreateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 6
    .param p1, "viewContext"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 839
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 819
    invoke-virtual {p0, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 802
    const-string v0, "android.view."

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V
    .registers 14
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

    .line 986
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 988
    .local v0, "depth":I
    const/4 v1, 0x0

    .line 990
    .local v1, "pendingRequestFocus":Z
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_13

    .line 991
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_75

    :cond_13
    const/4 v2, 0x1

    if-eq v3, v2, :cond_75

    .line 993
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1a

    .line 994
    goto :goto_5

    .line 997
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 999
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v5, "requestFocus"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1000
    const/4 v1, 0x1

    .line 1001
    invoke-static {p1}, Landroid/view/LayoutInflater;->consumeChildElements(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6c

    .line 1002
    :cond_2c
    const-string/jumbo v5, "tag"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1003
    invoke-direct {p0, p1, p2, p4}, Landroid/view/LayoutInflater;->parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_6c

    .line 1004
    :cond_39
    const-string v5, "include"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1005
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-eqz v2, :cond_4b

    .line 1008
    invoke-direct {p0, p1, p3, p2, p4}, Landroid/view/LayoutInflater;->parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_6c

    .line 1006
    :cond_4b
    new-instance v2, Landroid/view/InflateException;

    const-string v5, "<include /> cannot be the root element"

    invoke-direct {v2, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1009
    :cond_53
    const-string v5, "merge"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 1012
    invoke-direct {p0, p2, v4, p3, p4}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 1013
    .local v5, "view":Landroid/view/View;
    move-object v6, p2

    check-cast v6, Landroid/view/ViewGroup;

    .line 1014
    .local v6, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v6, p4}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1015
    .local v7, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p1, v5, p4, v2}, Landroid/view/LayoutInflater;->rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    .line 1016
    invoke-virtual {v6, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewGroup":Landroid/view/ViewGroup;
    .end local v7    # "params":Landroid/view/ViewGroup$LayoutParams;
    :goto_6c
    goto :goto_5

    .line 1010
    .restart local v4    # "name":Ljava/lang/String;
    :cond_6d
    new-instance v2, Landroid/view/InflateException;

    const-string v5, "<merge /> must be the root element"

    invoke-direct {v2, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1020
    .end local v4    # "name":Ljava/lang/String;
    :cond_75
    if-eqz v1, :cond_7a

    .line 1021
    invoke-virtual {p2}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 1024
    :cond_7a
    if-eqz p5, :cond_7f

    .line 1025
    invoke-virtual {p2}, Landroid/view/View;->onFinishInflate()V

    .line 1027
    :cond_7f
    return-void
.end method

.method final greylist-max-o rInflateChildren(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    .registers 11
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

    .line 973
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .end local p1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local p2    # "parent":Landroid/view/View;
    .end local p3    # "attrs":Landroid/util/AttributeSet;
    .end local p4    # "finishInflate":Z
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "parent":Landroid/view/View;
    .local v4, "attrs":Landroid/util/AttributeSet;
    .local v5, "finishInflate":Z
    invoke-virtual/range {v0 .. v5}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    .line 974
    return-void
.end method

.method public whitelist setFactory(Landroid/view/LayoutInflater$Factory;)V
    .registers 6
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    .line 332
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-nez v0, :cond_25

    .line 335
    if-eqz p1, :cond_1d

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 339
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_10

    .line 340
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_1c

    .line 342
    :cond_10
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 344
    :goto_1c
    return-void

    .line 336
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .registers 5
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .line 351
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-nez v0, :cond_28

    .line 354
    if-eqz p1, :cond_20

    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 358
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_12

    .line 359
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_1f

    .line 361
    :cond_12
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 363
    :goto_1f
    return-void

    .line 355
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFilter(Landroid/view/LayoutInflater$Filter;)V
    .registers 3
    .param p1, "filter"    # Landroid/view/LayoutInflater$Filter;

    .line 395
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    .line 396
    if-eqz p1, :cond_b

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    .line 399
    :cond_b
    return-void
.end method

.method public greylist setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V
    .registers 5
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .line 370
    iget-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-nez v0, :cond_7

    .line 371
    iput-object p1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    goto :goto_12

    .line 373
    :cond_7
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 375
    :goto_12
    return-void
.end method

.method public final greylist tryCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .line 943
    const-string v0, "blink"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 945
    new-instance v0, Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {v0, p3, p4}, Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0

    .line 949
    :cond_e
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v0, :cond_19

    .line 950
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    goto :goto_25

    .line 951
    .end local v0    # "view":Landroid/view/View;
    :cond_19
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-eqz v0, :cond_24

    .line 952
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v0, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_25

    .line 954
    .end local v0    # "view":Landroid/view/View;
    :cond_24
    const/4 v0, 0x0

    .line 957
    .restart local v0    # "view":Landroid/view/View;
    :goto_25
    if-nez v0, :cond_31

    iget-object v1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-eqz v1, :cond_31

    .line 958
    iget-object v1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 961
    :cond_31
    return-object v0
.end method
