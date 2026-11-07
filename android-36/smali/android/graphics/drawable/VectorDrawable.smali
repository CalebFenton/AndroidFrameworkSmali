.class public Landroid/graphics/drawable/VectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;,
        Landroid/graphics/drawable/VectorDrawable$VGroup;,
        Landroid/graphics/drawable/VectorDrawable$VFullPath;,
        Landroid/graphics/drawable/VectorDrawable$VObject;,
        Landroid/graphics/drawable/VectorDrawable$VClipPath;,
        Landroid/graphics/drawable/VectorDrawable$VPath;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOGTAG:Ljava/lang/String;

.field private static final greylist-max-o SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"

.field private static final greylist-max-o SHAPE_GROUP:Ljava/lang/String; = "group"

.field private static final greylist-max-o SHAPE_PATH:Ljava/lang/String; = "path"

.field private static final greylist-max-o SHAPE_VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private blacklist mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist-max-o mDpiScaledDirty:Z

.field private greylist-max-o mDpiScaledHeight:I

.field private greylist-max-o mDpiScaledInsets:Landroid/graphics/Insets;

.field private greylist-max-o mDpiScaledWidth:I

.field private greylist-max-o mMutated:Z

.field private greylist-max-o mTargetDensity:I

.field private greylist-max-r mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final greylist-max-o mTmpBounds:Landroid/graphics/Rect;

.field private greylist-max-o mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnAddChild(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nAddChild(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateClipPath()J
    .registers 2

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateClipPath()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateClipPath(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateClipPath(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateFullPath()J
    .registers 2

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateFullPath()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateFullPath(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateFullPath(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateGroup()J
    .registers 2

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateGroup()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateGroup(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateGroup(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateTree(J)J
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateTree(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnCreateTreeFromCopy(JJ)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nCreateTreeFromCopy(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFillAlpha(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetFillAlpha(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFillColor(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetFillColor(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetFullPathProperties(J[BI)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nGetFullPathProperties(J[BI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetGroupProperties(J[FI)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nGetGroupProperties(J[FI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetPivotX(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetPivotX(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetPivotY(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetPivotY(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetRootAlpha(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetRootAlpha(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetRotation(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetRotation(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetScaleX(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetScaleX(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetScaleY(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetScaleY(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetStrokeAlpha(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeAlpha(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetStrokeColor(J)I
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeColor(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetStrokeWidth(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeWidth(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetTranslateX(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTranslateX(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetTranslateY(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTranslateY(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetTrimPathEnd(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathEnd(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetTrimPathOffset(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathOffset(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetTrimPathStart(J)F
    .registers 2

    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathStart(J)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetFillAlpha(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetFillAlpha(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetFillColor(JI)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetFillColor(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetName(JLjava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetName(JLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPathData(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetPathData(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPathString(JLjava/lang/String;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetPathString(JLjava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPivotX(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetPivotX(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetPivotY(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetPivotY(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetRendererViewportSize(JFF)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetRendererViewportSize(JFF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetRootAlpha(JF)Z
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetRootAlpha(JF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetRotation(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetRotation(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetScaleX(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetScaleX(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetScaleY(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetScaleY(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetStrokeAlpha(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeAlpha(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetStrokeColor(JI)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeColor(JI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetStrokeWidth(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeWidth(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetTranslateX(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTranslateX(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetTranslateY(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTranslateY(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetTrimPathEnd(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathEnd(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetTrimPathOffset(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathOffset(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnSetTrimPathStart(JF)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathStart(JF)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnUpdateFullPathFillGradient(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathFillGradient(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnUpdateFullPathProperties(JFIFIFFFFFIII)V
    .registers 14

    invoke-static/range {p0 .. p13}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathProperties(JFIFIFFFFFIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnUpdateFullPathStrokeGradient(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathStrokeGradient(JJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnUpdateGroupProperties(JFFFFFFF)V
    .registers 9

    invoke-static/range {p0 .. p8}, Landroid/graphics/drawable/VectorDrawable;->nUpdateGroupProperties(JFFFFFFF)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 319
    const-class v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    .line 353
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V
    .registers 4
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 359
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    .line 342
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    .line 343
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 349
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    .line 364
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 365
    invoke-direct {p0, p2}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 366
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public static greylist-max-o create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;
    .registers 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "rid"    # I

    .line 681
    const-string/jumbo v0, "parser error"

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 682
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 684
    .local v2, "attrs":Landroid/util/AttributeSet;
    :goto_b
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x2

    if-eq v3, v5, :cond_17

    const/4 v3, 0x1

    if-eq v4, v3, :cond_17

    goto :goto_b

    .line 688
    :cond_17
    if-ne v4, v5, :cond_22

    .line 692
    new-instance v3, Landroid/graphics/drawable/VectorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    .line 693
    .local v3, "drawable":Landroid/graphics/drawable/VectorDrawable;
    invoke-virtual {v3, p0, v1, v2}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 695
    return-object v3

    .line 689
    .end local v3    # "drawable":Landroid/graphics/drawable/VectorDrawable;
    :cond_22
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No start tag found"

    invoke-direct {v3, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "resources":Landroid/content/res/Resources;
    .end local p1    # "rid":I
    throw v3
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_2a} :catch_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2a} :catch_2a

    .line 698
    .end local v1    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "type":I
    .restart local p0    # "resources":Landroid/content/res/Resources;
    .restart local p1    # "rid":I
    :catch_2a
    move-exception v1

    .line 699
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    .line 696
    .end local v1    # "e":Ljava/io/IOException;
    :catch_31
    move-exception v1

    .line 697
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v2, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    nop

    .line 701
    :goto_38
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 821
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    const/4 v1, 0x1

    .line 825
    .local v1, "noPathTag":Z
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 826
    .local v2, "groupStack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/drawable/VectorDrawable$VGroup;>;"
    iget-object v3, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 829
    .local v3, "eventType":I
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 832
    .local v4, "innerDepth":I
    :goto_17
    const-string/jumbo v6, "path"

    if-eq v3, v5, :cond_cc

    .line 833
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v4, :cond_25

    if-eq v3, v8, :cond_cc

    .line 834
    :cond_25
    const/4 v7, 0x2

    const-string/jumbo v9, "group"

    if-ne v3, v7, :cond_b7

    .line 835
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 836
    .local v7, "tagName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 838
    .local v8, "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 839
    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {v6}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>()V

    .line 840
    .local v6, "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    invoke-virtual {v6, p1, p3, p4}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 841
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 842
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_55

    .line 843
    iget-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    :cond_55
    const/4 v1, 0x0

    .line 846
    iget v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    or-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 847
    .end local v6    # "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    goto :goto_b6

    :cond_5e
    const-string v6, "clip-path"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 848
    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    invoke-direct {v6}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>()V

    .line 849
    .local v6, "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    invoke-virtual {v6, p1, p3, p4}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 850
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 851
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_80

    .line 852
    iget-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    :cond_80
    iget v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    iget v10, v6, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    or-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .end local v6    # "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    goto :goto_b5

    .line 855
    :cond_88
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 856
    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    .line 857
    .local v6, "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    invoke-virtual {v6, p1, p3, p4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 858
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 859
    invoke-virtual {v2, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_ab

    .line 861
    iget-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_ab
    iget v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-static {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-$$Nest$fgetmChangingConfigurations(Landroid/graphics/drawable/VectorDrawable$VGroup;)I

    move-result v10

    or-int/2addr v9, v10

    iput v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    goto :goto_b6

    .line 855
    .end local v6    # "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_b5
    :goto_b5
    nop

    .line 866
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_b6
    :goto_b6
    goto :goto_c6

    :cond_b7
    if-ne v3, v8, :cond_b6

    .line 867
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 868
    .local v6, "tagName":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 869
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 872
    .end local v6    # "tagName":Ljava/lang/String;
    :cond_c6
    :goto_c6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto/16 :goto_17

    .line 875
    :cond_cc
    if-eqz v1, :cond_101

    .line 876
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 878
    .local v5, "tag":Ljava/lang/StringBuffer;
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_de

    .line 879
    const-string v7, " or "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 881
    :cond_de
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 883
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "no "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " defined"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 885
    .end local v5    # "tag":Ljava/lang/StringBuffer;
    :cond_101
    return-void
.end method

.method private static native greylist-max-o nAddChild(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateClipPath()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateClipPath(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateFullPath()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateFullPath(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateGroup()J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateGroup(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateTree(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nCreateTreeFromCopy(JJ)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nDraw(JJJLandroid/graphics/Rect;ZZ)I
.end method

.method private static native greylist-max-o nGetFillAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFillColor(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFullPathProperties(J[BI)Z
.end method

.method private static native greylist-max-o nGetGroupProperties(J[FI)Z
.end method

.method private static native greylist-max-o nGetPivotX(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetPivotY(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetRootAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetRotation(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetScaleY(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeColor(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTranslateX(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTranslateY(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTrimPathEnd(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTrimPathOffset(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTrimPathStart(J)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAllowCaching(JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAntiAlias(JZ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFillAlpha(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFillColor(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetName(JLjava/lang/String;)V
.end method

.method private static native greylist-max-o nSetPathData(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetPathString(JLjava/lang/String;I)V
.end method

.method private static native greylist-max-o nSetPivotX(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetPivotY(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetRendererViewportSize(JFF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetRootAlpha(JF)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetRotation(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetScaleY(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeAlpha(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeColor(JI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTranslateX(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTranslateY(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTrimPathEnd(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTrimPathOffset(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTrimPathStart(JF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nUpdateFullPathFillGradient(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nUpdateFullPathProperties(JFIFIFFFFFIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nUpdateFullPathStrokeGradient(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nUpdateGroupProperties(JFFFFFFF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private greylist-max-o needMirroring()Z
    .registers 3

    .line 898
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isAutoMirrored()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private blacklist updateColorFilters(Landroid/graphics/BlendMode;Landroid/content/res/ColorStateList;)V
    .registers 5
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .line 540
    invoke-static {p1}, Landroid/graphics/BlendMode;->blendModeToPorterDuffMode(Landroid/graphics/BlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 541
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v1, p2, v0}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 542
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {p0, v1, p2, p1}, Landroid/graphics/drawable/VectorDrawable;->updateBlendModeFilter(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    .line 543
    return-void
.end method

.method private greylist-max-o updateLocalState(Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 377
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    invoke-static {p1, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    .line 378
    .local v0, "density":I
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    if-eq v1, v0, :cond_11

    .line 379
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    .line 380
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 383
    :cond_11
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateColorFilters(Landroid/graphics/BlendMode;Landroid/content/res/ColorStateList;)V

    .line 384
    return-void
.end method

.method private greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 14
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 752
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 755
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    .line 757
    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 758
    .local v1, "tintMode":I
    if-eq v1, v2, :cond_21

    .line 759
    sget-object v2, Landroid/graphics/BlendMode;->SRC_IN:Landroid/graphics/BlendMode;

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 762
    :cond_21
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 763
    .local v2, "tint":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_2a

    .line 764
    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 767
    :cond_2a
    const/4 v3, 0x5

    iget-boolean v4, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    .line 770
    const/4 v3, 0x7

    iget v4, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 772
    .local v3, "viewportWidth":F
    const/16 v4, 0x8

    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 774
    .local v4, "viewportHeight":F
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    .line 776
    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-lez v5, :cond_10d

    .line 779
    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    cmpg-float v5, v5, v6

    if-lez v5, :cond_f0

    .line 784
    const/4 v5, 0x3

    iget v6, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    .line 786
    const/4 v5, 0x2

    iget v6, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    .line 789
    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    if-lez v5, :cond_d3

    .line 792
    iget v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    if-lez v5, :cond_b6

    .line 797
    iget-object v5, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v5, v5, Landroid/graphics/Insets;->left:I

    const/16 v6, 0x9

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    .line 799
    .local v5, "insetLeft":I
    iget-object v6, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v6, v6, Landroid/graphics/Insets;->top:I

    const/16 v7, 0xa

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 801
    .local v6, "insetTop":I
    iget-object v7, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v7, v7, Landroid/graphics/Insets;->right:I

    const/16 v8, 0xb

    invoke-virtual {p1, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    .line 803
    .local v7, "insetRight":I
    iget-object v8, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v8, v8, Landroid/graphics/Insets;->bottom:I

    const/16 v9, 0xc

    invoke-virtual {p1, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v8

    .line 805
    .local v8, "insetBottom":I
    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v9

    iput-object v9, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 807
    nop

    .line 808
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    move-result v9

    .line 807
    const/4 v10, 0x4

    invoke-virtual {p1, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 809
    .local v9, "alphaInFloat":F
    invoke-virtual {v0, v9}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    .line 811
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 812
    .local v10, "name":Ljava/lang/String;
    if-eqz v10, :cond_b5

    .line 813
    iput-object v10, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    .line 814
    iget-object v11, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_b5
    return-void

    .line 793
    .end local v5    # "insetLeft":I
    .end local v6    # "insetTop":I
    .end local v7    # "insetRight":I
    .end local v8    # "insetBottom":I
    .end local v9    # "alphaInFloat":F
    .end local v10    # "name":Ljava/lang/String;
    :cond_b6
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<vector> tag requires height > 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 790
    :cond_d3
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<vector> tag requires width > 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 780
    :cond_f0
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 777
    :cond_10d
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public whitelist applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 7
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 615
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 617
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 618
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    if-nez v0, :cond_8

    .line 619
    return-void

    .line 622
    :cond_8
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 623
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v2

    .line 622
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    move-result v1

    .line 624
    .local v1, "changedDensity":Z
    iget-boolean v2, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    or-int/2addr v2, v1

    iput-boolean v2, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 626
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    if-eqz v2, :cond_42

    .line 627
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    sget-object v3, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 630
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    :try_start_29
    iput-boolean v3, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 631
    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_2e} :catch_37
    .catchall {:try_start_29 .. :try_end_2e} :catchall_35

    .line 635
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 636
    nop

    .line 639
    iput-boolean v3, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    goto :goto_42

    .line 635
    :catchall_35
    move-exception v3

    goto :goto_3e

    .line 632
    :catch_37
    move-exception v3

    .line 633
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_38
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .end local v1    # "changedDensity":Z
    .end local v2    # "a":Landroid/content/res/TypedArray;
    .end local p0    # "this":Landroid/graphics/drawable/VectorDrawable;
    .end local p1    # "t":Landroid/content/res/Resources$Theme;
    throw v4
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_35

    .line 635
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .restart local v1    # "changedDensity":Z
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    .restart local p0    # "this":Landroid/graphics/drawable/VectorDrawable;
    .restart local p1    # "t":Landroid/content/res/Resources$Theme;
    :goto_3e
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 636
    throw v3

    .line 643
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_42
    :goto_42
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_56

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 644
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 647
    :cond_56
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v2, :cond_67

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 648
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 652
    :cond_67
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    .line 653
    return-void
.end method

.method public whitelist canApplyTheme()Z
    .registers 2

    .line 610
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public greylist-max-o clearMutated()V
    .registers 2

    .line 399
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    .line 400
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    .line 401
    return-void
.end method

.method greylist-max-o computeVectorSize()V
    .registers 10

    .line 581
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 583
    .local v0, "opticalInsets":Landroid/graphics/Insets;
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    .line 584
    .local v1, "sourceDensity":I
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    .line 585
    .local v2, "targetDensity":I
    const/4 v3, 0x0

    if-eq v2, v1, :cond_41

    .line 586
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    const/4 v5, 0x1

    invoke-static {v4, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    .line 588
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    invoke-static {v4, v1, v2, v5}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    .line 590
    iget v4, v0, Landroid/graphics/Insets;->left:I

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    .line 592
    .local v4, "left":I
    iget v5, v0, Landroid/graphics/Insets;->right:I

    invoke-static {v5, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    .line 594
    .local v5, "right":I
    iget v6, v0, Landroid/graphics/Insets;->top:I

    invoke-static {v6, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v6

    .line 596
    .local v6, "top":I
    iget v7, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v7, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v7

    .line 598
    .local v7, "bottom":I
    invoke-static {v4, v6, v5, v7}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v8

    iput-object v8, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    .line 599
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    .end local v7    # "bottom":I
    goto :goto_4f

    .line 600
    :cond_41
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    .line 601
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v4, v4, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    iput v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    .line 602
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    .line 605
    :goto_4f
    iput-boolean v3, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 606
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 418
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 419
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_7b

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_16

    goto :goto_7b

    .line 425
    :cond_16
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mBlendModeColorFilter:Landroid/graphics/BlendModeColorFilter;

    goto :goto_1f

    .line 426
    :cond_1d
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    :goto_1f
    nop

    .line 427
    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    if-nez v0, :cond_25

    const-wide/16 v1, 0x0

    goto :goto_29

    .line 428
    :cond_25
    invoke-virtual {v0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    :goto_29
    move-wide v7, v1

    .line 429
    .local v7, "colorFilterNativeInstance":J
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canReuseCache()Z

    move-result v11

    .line 430
    .local v11, "canReuseCache":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v5

    iget-object v9, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    .line 431
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;->needMirroring()Z

    move-result v10

    .line 430
    invoke-static/range {v3 .. v11}, Landroid/graphics/drawable/VectorDrawable;->nDraw(JJJLandroid/graphics/Rect;ZZ)I

    move-result v1

    .line 433
    .local v1, "pixelCount":I
    if-nez v1, :cond_47

    .line 436
    return-void

    .line 443
    :cond_47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 445
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    sub-int v2, v1, v2

    mul-int/lit8 v2, v2, 0x4

    .line 446
    .local v2, "deltaInBytes":I
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput v1, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    goto :goto_66

    .line 449
    .end local v2    # "deltaInBytes":I
    :cond_5a
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    sub-int v2, v1, v2

    mul-int/lit8 v2, v2, 0x4

    .line 450
    .restart local v2    # "deltaInBytes":I
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput v1, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    .line 452
    :goto_66
    if-lez v2, :cond_70

    .line 453
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    goto :goto_7a

    .line 454
    :cond_70
    if-gez v2, :cond_7a

    .line 455
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    neg-int v4, v2

    invoke-virtual {v3, v4}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 457
    :cond_7a
    :goto_7a
    return-void

    .line 421
    .end local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v1    # "pixelCount":I
    .end local v2    # "deltaInBytes":I
    .end local v7    # "colorFilterNativeInstance":J
    .end local v11    # "canReuseCache":Z
    :cond_7b
    :goto_7b
    return-void
.end method

.method public whitelist getAlpha()I
    .registers 3

    .line 462
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 889
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    .line 480
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 410
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    .line 411
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    return-object v0
.end method

.method public whitelist getIntrinsicHeight()I
    .registers 2

    .line 562
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_7

    .line 563
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    .line 565
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    return v0
.end method

.method public whitelist getIntrinsicWidth()I
    .registers 2

    .line 554
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_7

    .line 555
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    .line 557
    :cond_7
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    return v0
.end method

.method public greylist-max-o getNativeTree()J
    .registers 3

    .line 918
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getOpacity()I
    .registers 2

    .line 549
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getAlpha()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x2

    goto :goto_9

    :cond_8
    const/4 v0, -0x3

    :goto_9
    return v0
.end method

.method public whitelist getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    .line 570
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    if-eqz v0, :cond_7

    .line 571
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    .line 573
    :cond_7
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public greylist-max-o getPixelSize()F
    .registers 8

    .line 662
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_22

    goto :goto_3d

    .line 669
    :cond_22
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:I

    int-to-float v0, v0

    .line 670
    .local v0, "intrinsicWidth":F
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:I

    int-to-float v1, v1

    .line 671
    .local v1, "intrinsicHeight":F
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    .line 672
    .local v2, "viewportWidth":F
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    .line 673
    .local v3, "viewportHeight":F
    div-float v4, v2, v0

    .line 674
    .local v4, "scaleX":F
    div-float v5, v3, v1

    .line 675
    .local v5, "scaleY":F
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    return v6

    .line 667
    .end local v0    # "intrinsicWidth":F
    .end local v1    # "intrinsicHeight":F
    .end local v2    # "viewportWidth":F
    .end local v3    # "viewportHeight":F
    .end local v4    # "scaleX":F
    .end local v5    # "scaleY":F
    :cond_3d
    :goto_3d
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method greylist getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 405
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist hasFocusStateSpecified()Z
    .registers 2

    .line 512
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->hasFocusStateSpecified()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 10
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    const-wide/16 v0, 0x2000

    :try_start_2
    const-string v2, "VectorDrawable#inflate"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 710
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-nez v2, :cond_13

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v2, :cond_58

    .line 712
    :cond_13
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v2, :cond_30

    .line 714
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 715
    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativeSize()I

    move-result v3

    .line 714
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 717
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 719
    :cond_30
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    iput-object v3, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 720
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v2, :cond_4f

    .line 723
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const/16 v3, 0x13c

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 724
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 726
    :cond_4f
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-static {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->-$$Nest$mcreateNativeTree(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    .line 728
    :cond_58
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 729
    .local v2, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    .line 731
    sget-object v3, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    invoke-static {p1, p4, p3, v3}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 732
    .local v3, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v3}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 733
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 735
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    .line 737
    iput-boolean v4, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 738
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 740
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    .line 742
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V
    :try_end_7c
    .catchall {:try_start_2 .. :try_end_7c} :catchall_81

    .line 744
    .end local v2    # "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .end local v3    # "a":Landroid/content/res/TypedArray;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 745
    nop

    .line 746
    return-void

    .line 744
    :catchall_81
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 745
    throw v2
.end method

.method public whitelist isAutoMirrored()Z
    .registers 2

    .line 911
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    return v0
.end method

.method public whitelist isStateful()Z
    .registers 2

    .line 507
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public whitelist mutate()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 388
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    if-nez v0, :cond_16

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_16

    .line 389
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    .line 392
    :cond_16
    return-object p0
.end method

.method protected whitelist onStateChange([I)Z
    .registers 6
    .param p1, "stateSet"    # [I

    .line 517
    const/4 v0, 0x0

    .line 521
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 522
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 524
    :cond_a
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 525
    .local v1, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onStateChange([I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 526
    const/4 v0, 0x1

    .line 527
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    .line 529
    :cond_16
    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_26

    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eqz v2, :cond_26

    .line 530
    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 531
    .local v2, "blendMode":Landroid/graphics/BlendMode;
    iget-object v3, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 532
    .local v3, "tint":Landroid/content/res/ColorStateList;
    invoke-direct {p0, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->updateColorFilters(Landroid/graphics/BlendMode;Landroid/content/res/ColorStateList;)V

    .line 533
    const/4 v0, 0x1

    .line 536
    .end local v2    # "blendMode":Landroid/graphics/BlendMode;
    .end local v3    # "tint":Landroid/content/res/ColorStateList;
    :cond_26
    return v0
.end method

.method greylist setAllowCaching(Z)V
    .registers 4
    .param p1, "allowCaching"    # Z

    .line 894
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->nSetAllowCaching(JZ)V

    .line 895
    return-void
.end method

.method public whitelist setAlpha(I)V
    .registers 5
    .param p1, "alpha"    # I

    .line 467
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    int-to-float v1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 468
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 470
    :cond_f
    return-void
.end method

.method public greylist-max-o setAntiAlias(Z)V
    .registers 4
    .param p1, "aa"    # Z

    .line 925
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->nSetAntiAlias(JZ)V

    .line 926
    return-void
.end method

.method public whitelist setAutoMirrored(Z)V
    .registers 3
    .param p1, "mirrored"    # Z

    .line 903
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_d

    .line 904
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iput-boolean p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    .line 905
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 907
    :cond_d
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 474
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 475
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 476
    return-void
.end method

.method public whitelist setTintBlendMode(Landroid/graphics/BlendMode;)V
    .registers 5
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;

    .line 496
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 497
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    if-eq v1, p1, :cond_12

    .line 498
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    .line 500
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateColorFilters(Landroid/graphics/BlendMode;Landroid/content/res/ColorStateList;)V

    .line 501
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 503
    :cond_12
    return-void
.end method

.method public whitelist setTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 485
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    .line 486
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_12

    .line 487
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    .line 489
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    iget-object v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBlendMode:Landroid/graphics/BlendMode;

    invoke-direct {p0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->updateColorFilters(Landroid/graphics/BlendMode;Landroid/content/res/ColorStateList;)V

    .line 490
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    .line 492
    :cond_12
    return-void
.end method
