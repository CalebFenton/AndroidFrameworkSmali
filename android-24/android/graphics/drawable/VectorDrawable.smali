.class public Landroid/graphics/drawable/VectorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VClipPath;,
        Landroid/graphics/drawable/VectorDrawable$VFullPath;,
        Landroid/graphics/drawable/VectorDrawable$VGroup;,
        Landroid/graphics/drawable/VectorDrawable$VObject;,
        Landroid/graphics/drawable/VectorDrawable$VPath;,
        Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final SHAPE_CLIP_PATH:Ljava/lang/String; = "clip-path"

.field private static final SHAPE_GROUP:Ljava/lang/String; = "group"

.field private static final SHAPE_PATH:Ljava/lang/String; = "path"

.field private static final SHAPE_VECTOR:Ljava/lang/String; = "vector"


# instance fields
.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDpiScaledDirty:Z

.field private mDpiScaledHeight:I

.field private mDpiScaledInsets:Landroid/graphics/Insets;

.field private mDpiScaledWidth:I

.field private mMutated:Z

.field private mTargetDensity:I

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;


# direct methods
.method static synthetic -wrap0(J[BI)Z
    .locals 2
    .param p0, "pathPtr"    # J
    .param p2, "properties"    # [B
    .param p3, "length"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nGetFullPathProperties(J[BI)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(J[FI)Z
    .locals 2
    .param p0, "groupPtr"    # J
    .param p2, "properties"    # [F
    .param p3, "length"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nGetGroupProperties(J[FI)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeAlpha(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap11(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeWidth(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap12(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTranslateX(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap13(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTranslateY(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap14(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathEnd(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap15(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathOffset(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap16(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetTrimPathStart(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap17(J)I
    .locals 2
    .param p0, "pathPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetFillColor(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap18(J)I
    .locals 2
    .param p0, "pathPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetStrokeColor(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap19()J
    .locals 2

    #@0
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateClipPath()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap2(JF)Z
    .locals 2
    .param p0, "rendererPtr"    # J
    .param p2, "alpha"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetRootAlpha(JF)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap20(J)J
    .locals 2
    .param p0, "clipPathPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateClipPath(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap21()J
    .locals 2

    #@0
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateFullPath()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap22(J)J
    .locals 2
    .param p0, "nativeFullPathPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateFullPath(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap23()J
    .locals 2

    #@0
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->nCreateGroup()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap24(J)J
    .locals 2
    .param p0, "groupPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateGroup(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap25(JJ)J
    .locals 2
    .param p0, "treeToCopy"    # J
    .param p2, "rootGroupPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nCreateTreeFromCopy(JJ)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap26(J)J
    .locals 2
    .param p0, "rootGroupPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nCreateTree(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap27(JJ)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "nodePtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nAddChild(JJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap28(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "fillAlpha"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetFillAlpha(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap29(JI)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "fillColor"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetFillColor(JI)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(J)F
    .locals 2
    .param p0, "pathPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetFillAlpha(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap30(JLjava/lang/String;)V
    .locals 0
    .param p0, "nodePtr"    # J
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetName(JLjava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap31(JJ)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "pathDataPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetPathData(JJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap32(JLjava/lang/String;I)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "pathString"    # Ljava/lang/String;
    .param p3, "length"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetPathString(JLjava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap33(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "pivotX"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetPivotX(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap34(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "pivotY"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetPivotY(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap35(JFF)V
    .locals 0
    .param p0, "rendererPtr"    # J
    .param p2, "viewportWidth"    # F
    .param p3, "viewportHeight"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nSetRendererViewportSize(JFF)V

    #@3
    return-void
.end method

.method static synthetic -wrap36(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "rotation"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetRotation(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap37(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "scaleX"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetScaleX(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap38(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "scaleY"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetScaleY(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap39(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "alpha"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeAlpha(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetPivotX(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap40(JI)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "strokeColor"    # I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeColor(JI)V

    #@3
    return-void
.end method

.method static synthetic -wrap41(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "width"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetStrokeWidth(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap42(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "translateX"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTranslateX(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap43(JF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "translateY"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTranslateY(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap44(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "trimPathEnd"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathEnd(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap45(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "trimPathOffset"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathOffset(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap46(JF)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "trimPathStart"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;->nSetTrimPathStart(JF)V

    #@3
    return-void
.end method

.method static synthetic -wrap47(JJ)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "fillGradientPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathFillGradient(JJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap48(JFIFIFFFFFIII)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "strokeWidth"    # F
    .param p3, "strokeColor"    # I
    .param p4, "strokeAlpha"    # F
    .param p5, "fillColor"    # I
    .param p6, "fillAlpha"    # F
    .param p7, "trimPathStart"    # F
    .param p8, "trimPathEnd"    # F
    .param p9, "trimPathOffset"    # F
    .param p10, "strokeMiterLimit"    # F
    .param p11, "strokeLineCap"    # I
    .param p12, "strokeLineJoin"    # I
    .param p13, "fillType"    # I

    #@0
    .prologue
    invoke-static/range {p0 .. p13}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathProperties(JFIFIFFFFFIII)V

    #@3
    return-void
.end method

.method static synthetic -wrap49(JJ)V
    .locals 0
    .param p0, "pathPtr"    # J
    .param p2, "strokeGradientPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/drawable/VectorDrawable;->nUpdateFullPathStrokeGradient(JJ)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetPivotY(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap50(JFFFFFFF)V
    .locals 0
    .param p0, "groupPtr"    # J
    .param p2, "rotate"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F
    .param p5, "scaleX"    # F
    .param p6, "scaleY"    # F
    .param p7, "translateX"    # F
    .param p8, "translateY"    # F

    #@0
    .prologue
    invoke-static/range {p0 .. p8}, Landroid/graphics/drawable/VectorDrawable;->nUpdateGroupProperties(JFFFFFFF)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(J)F
    .locals 2
    .param p0, "rendererPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetRootAlpha(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap7(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetRotation(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap8(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetScaleX(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap9(J)F
    .locals 2
    .param p0, "groupPtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->nGetScaleY(J)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 205
    const-class v0, Landroid/graphics/drawable/VectorDrawable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    #@8
    .line 204
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 235
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    #@9
    .line 234
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 242
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 224
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@6
    .line 225
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@8
    .line 226
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    #@c
    .line 229
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@f
    .line 232
    new-instance v0, Landroid/graphics/Rect;

    #@11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@14
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@16
    .line 243
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@18
    .line 244
    invoke-direct {p0, p2}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@1b
    .line 242
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;Landroid/graphics/drawable/VectorDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    .param p2, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    #@3
    return-void
.end method

.method public static create(Landroid/content/res/Resources;I)Landroid/graphics/drawable/VectorDrawable;
    .locals 8
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "rid"    # I

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    .line 544
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@4
    move-result-object v4

    #@5
    .line 545
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@8
    move-result-object v0

    #@9
    .line 547
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@c
    move-result v5

    #@d
    .local v5, "type":I
    if-eq v5, v7, :cond_1

    #@f
    .line 548
    const/4 v6, 0x1

    #@10
    if-ne v5, v6, :cond_0

    #@12
    .line 551
    :cond_1
    if-eq v5, v7, :cond_2

    #@14
    .line 552
    new-instance v6, Lorg/xmlpull/v1/XmlPullParserException;

    #@16
    const-string/jumbo v7, "No start tag found"

    #@19
    invoke-direct {v6, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1d
    .line 559
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_0
    move-exception v3

    #@1e
    .line 560
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    #@20
    const-string/jumbo v7, "parser error"

    #@23
    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 564
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    const/4 v6, 0x0

    #@27
    return-object v6

    #@28
    .line 555
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_2
    :try_start_1
    new-instance v1, Landroid/graphics/drawable/VectorDrawable;

    #@2a
    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    #@2d
    .line 556
    .local v1, "drawable":Landroid/graphics/drawable/VectorDrawable;
    invoke-virtual {v1, p0, v4, v0}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@30
    .line 558
    return-object v1

    #@31
    .line 561
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "drawable":Landroid/graphics/drawable/VectorDrawable;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_1
    move-exception v2

    #@32
    .line 562
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    #@34
    const-string/jumbo v7, "parser error"

    #@37
    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0
.end method

.method private inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 16
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

    #@0
    .prologue
    .line 677
    move-object/from16 v0, p0

    #@2
    iget-object v10, v0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4
    .line 678
    .local v10, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    const/4 v7, 0x1

    #@5
    .line 682
    .local v7, "noPathTag":Z
    new-instance v5, Ljava/util/Stack;

    #@7
    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    #@a
    .line 683
    .local v5, "groupStack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/drawable/VectorDrawable$VGroup;>;"
    iget-object v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@c
    invoke-virtual {v5, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 685
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@12
    move-result v4

    #@13
    .line 686
    .local v4, "eventType":I
    :goto_0
    const/4 v13, 0x1

    #@14
    if-eq v4, v13, :cond_7

    #@16
    .line 687
    const/4 v13, 0x2

    #@17
    if-ne v4, v13, :cond_6

    #@19
    .line 688
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v12

    #@1d
    .line 689
    .local v12, "tagName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@23
    .line 691
    .local v3, "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    const-string/jumbo v13, "path"

    #@26
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v13

    #@2a
    if-eqz v13, :cond_2

    #@2c
    .line 692
    new-instance v9, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@2e
    invoke-direct {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>()V

    #@31
    .line 693
    .local v9, "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    move-object/from16 v0, p1

    #@33
    move-object/from16 v1, p3

    #@35
    move-object/from16 v2, p4

    #@37
    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@3a
    .line 694
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    #@3d
    .line 695
    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    #@40
    move-result-object v13

    #@41
    if-eqz v13, :cond_0

    #@43
    .line 696
    iget-object v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@45
    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    #@48
    move-result-object v14

    #@49
    invoke-virtual {v13, v14, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4c
    .line 698
    :cond_0
    const/4 v7, 0x0

    #@4d
    .line 699
    iget v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@4f
    iget v14, v9, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    #@51
    or-int/2addr v13, v14

    #@52
    iput v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@54
    .line 725
    .end local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v9    # "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@57
    move-result v4

    #@58
    goto :goto_0

    #@59
    .line 700
    .restart local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .restart local v12    # "tagName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v13, "clip-path"

    #@5c
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v13

    #@60
    if-eqz v13, :cond_4

    #@62
    .line 701
    new-instance v8, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@64
    invoke-direct {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>()V

    #@67
    .line 702
    .local v8, "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    move-object/from16 v0, p1

    #@69
    move-object/from16 v1, p3

    #@6b
    move-object/from16 v2, p4

    #@6d
    invoke-virtual {v8, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@70
    .line 703
    invoke-virtual {v3, v8}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    #@73
    .line 704
    invoke-virtual {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    #@76
    move-result-object v13

    #@77
    if-eqz v13, :cond_3

    #@79
    .line 705
    iget-object v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@7b
    invoke-virtual {v8}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    #@7e
    move-result-object v14

    #@7f
    invoke-virtual {v13, v14, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@82
    .line 707
    :cond_3
    iget v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@84
    iget v14, v8, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    #@86
    or-int/2addr v13, v14

    #@87
    iput v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@89
    goto :goto_1

    #@8a
    .line 708
    .end local v8    # "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    :cond_4
    const-string/jumbo v13, "group"

    #@8d
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@90
    move-result v13

    #@91
    if-eqz v13, :cond_1

    #@93
    .line 709
    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@95
    invoke-direct {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    #@98
    .line 710
    .local v6, "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    move-object/from16 v0, p1

    #@9a
    move-object/from16 v1, p3

    #@9c
    move-object/from16 v2, p4

    #@9e
    invoke-virtual {v6, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@a1
    .line 711
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    #@a4
    .line 712
    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@a7
    .line 713
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    #@aa
    move-result-object v13

    #@ab
    if-eqz v13, :cond_5

    #@ad
    .line 714
    iget-object v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@af
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    #@b2
    move-result-object v14

    #@b3
    invoke-virtual {v13, v14, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 717
    :cond_5
    iget v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@b8
    invoke-static {v6}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get0(Landroid/graphics/drawable/VectorDrawable$VGroup;)I

    #@bb
    move-result v14

    #@bc
    or-int/2addr v13, v14

    #@bd
    iput v13, v10, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@bf
    goto :goto_1

    #@c0
    .line 719
    .end local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v6    # "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_6
    const/4 v13, 0x3

    #@c1
    if-ne v4, v13, :cond_1

    #@c3
    .line 720
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@c6
    move-result-object v12

    #@c7
    .line 721
    .restart local v12    # "tagName":Ljava/lang/String;
    const-string/jumbo v13, "group"

    #@ca
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cd
    move-result v13

    #@ce
    if-eqz v13, :cond_1

    #@d0
    .line 722
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@d3
    goto :goto_1

    #@d4
    .line 728
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_7
    if-eqz v7, :cond_9

    #@d6
    .line 729
    new-instance v11, Ljava/lang/StringBuffer;

    #@d8
    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    #@db
    .line 731
    .local v11, "tag":Ljava/lang/StringBuffer;
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    #@de
    move-result v13

    #@df
    if-lez v13, :cond_8

    #@e1
    .line 732
    const-string/jumbo v13, " or "

    #@e4
    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e7
    .line 734
    :cond_8
    const-string/jumbo v13, "path"

    #@ea
    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@ed
    .line 736
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    #@ef
    new-instance v14, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    const-string/jumbo v15, "no "

    #@f7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v14

    #@fb
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v14

    #@ff
    const-string/jumbo v15, " defined"

    #@102
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v14

    #@106
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v14

    #@10a
    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@10d
    throw v13

    #@10e
    .line 676
    .end local v11    # "tag":Ljava/lang/StringBuffer;
    :cond_9
    return-void
.end method

.method private static native nAddChild(JJ)V
.end method

.method private static native nCreateClipPath()J
.end method

.method private static native nCreateClipPath(J)J
.end method

.method private static native nCreateFullPath()J
.end method

.method private static native nCreateFullPath(J)J
.end method

.method private static native nCreateGroup()J
.end method

.method private static native nCreateGroup(J)J
.end method

.method private static native nCreateTree(J)J
.end method

.method private static native nCreateTreeFromCopy(JJ)J
.end method

.method private static native nDraw(JJJLandroid/graphics/Rect;ZZ)I
.end method

.method private static native nGetFillAlpha(J)F
.end method

.method private static native nGetFillColor(J)I
.end method

.method private static native nGetFullPathProperties(J[BI)Z
.end method

.method private static native nGetGroupProperties(J[FI)Z
.end method

.method private static native nGetPivotX(J)F
.end method

.method private static native nGetPivotY(J)F
.end method

.method private static native nGetRootAlpha(J)F
.end method

.method private static native nGetRotation(J)F
.end method

.method private static native nGetScaleX(J)F
.end method

.method private static native nGetScaleY(J)F
.end method

.method private static native nGetStrokeAlpha(J)F
.end method

.method private static native nGetStrokeColor(J)I
.end method

.method private static native nGetStrokeWidth(J)F
.end method

.method private static native nGetTranslateX(J)F
.end method

.method private static native nGetTranslateY(J)F
.end method

.method private static native nGetTrimPathEnd(J)F
.end method

.method private static native nGetTrimPathOffset(J)F
.end method

.method private static native nGetTrimPathStart(J)F
.end method

.method private static native nSetAllowCaching(JZ)V
.end method

.method private static native nSetFillAlpha(JF)V
.end method

.method private static native nSetFillColor(JI)V
.end method

.method private static native nSetName(JLjava/lang/String;)V
.end method

.method private static native nSetPathData(JJ)V
.end method

.method private static native nSetPathString(JLjava/lang/String;I)V
.end method

.method private static native nSetPivotX(JF)V
.end method

.method private static native nSetPivotY(JF)V
.end method

.method private static native nSetRendererViewportSize(JFF)V
.end method

.method private static native nSetRootAlpha(JF)Z
.end method

.method private static native nSetRotation(JF)V
.end method

.method private static native nSetScaleX(JF)V
.end method

.method private static native nSetScaleY(JF)V
.end method

.method private static native nSetStrokeAlpha(JF)V
.end method

.method private static native nSetStrokeColor(JI)V
.end method

.method private static native nSetStrokeWidth(JF)V
.end method

.method private static native nSetTranslateX(JF)V
.end method

.method private static native nSetTranslateY(JF)V
.end method

.method private static native nSetTrimPathEnd(JF)V
.end method

.method private static native nSetTrimPathOffset(JF)V
.end method

.method private static native nSetTrimPathStart(JF)V
.end method

.method private static native nUpdateFullPathFillGradient(JJ)V
.end method

.method private static native nUpdateFullPathProperties(JFIFIFFFFFIII)V
.end method

.method private static native nUpdateFullPathStrokeGradient(JJ)V
.end method

.method private static native nUpdateGroupProperties(JFFFFFFF)V
.end method

.method private needMirroring()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 750
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isAutoMirrored()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getLayoutDirection()I

    #@b
    move-result v2

    #@c
    if-ne v2, v0, :cond_0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    move v0, v1

    #@10
    goto :goto_0
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    #@0
    .prologue
    .line 256
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    #@4
    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@7
    move-result v0

    #@8
    .line 257
    .local v0, "density":I
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    #@a
    if-eq v1, v0, :cond_0

    #@c
    .line 258
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    #@e
    .line 259
    const/4 v1, 0x1

    #@f
    iput-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@11
    .line 262
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@13
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@15
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@17
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@19
    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@1b
    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@21
    .line 255
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    .line 606
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    .line 609
    .local v6, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@7
    move-result v12

    #@8
    or-int/2addr v11, v12

    #@9
    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@b
    .line 612
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v11

    #@f
    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@11
    .line 614
    const/4 v11, 0x6

    #@12
    const/4 v12, -0x1

    #@13
    invoke-virtual {p1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    #@16
    move-result v8

    #@17
    .line 615
    .local v8, "tintMode":I
    const/4 v11, -0x1

    #@18
    if-eq v8, v11, :cond_0

    #@1a
    .line 616
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@1c
    invoke-static {v8, v11}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@1f
    move-result-object v11

    #@20
    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@22
    .line 619
    :cond_0
    const/4 v11, 0x1

    #@23
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@26
    move-result-object v7

    #@27
    .line 620
    .local v7, "tint":Landroid/content/res/ColorStateList;
    if-eqz v7, :cond_1

    #@29
    .line 621
    iput-object v7, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@2b
    .line 625
    :cond_1
    iget-boolean v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@2d
    const/4 v12, 0x5

    #@2e
    .line 624
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@31
    move-result v11

    #@32
    iput-boolean v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@34
    .line 628
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@36
    const/4 v12, 0x7

    #@37
    .line 627
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3a
    move-result v10

    #@3b
    .line 630
    .local v10, "viewportWidth":F
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@3d
    const/16 v12, 0x8

    #@3f
    .line 629
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@42
    move-result v9

    #@43
    .line 631
    .local v9, "viewportHeight":F
    invoke-virtual {v6, v10, v9}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    #@46
    .line 633
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@48
    const/4 v12, 0x0

    #@49
    cmpg-float v11, v11, v12

    #@4b
    if-gtz v11, :cond_2

    #@4d
    .line 634
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    #@4f
    new-instance v12, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@57
    move-result-object v13

    #@58
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v12

    #@5c
    .line 635
    const-string/jumbo v13, "<vector> tag requires viewportWidth > 0"

    #@5f
    .line 634
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v12

    #@63
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v12

    #@67
    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v11

    #@6b
    .line 636
    :cond_2
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@6d
    const/4 v12, 0x0

    #@6e
    cmpg-float v11, v11, v12

    #@70
    if-gtz v11, :cond_3

    #@72
    .line 637
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    #@74
    new-instance v12, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@7c
    move-result-object v13

    #@7d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v12

    #@81
    .line 638
    const-string/jumbo v13, "<vector> tag requires viewportHeight > 0"

    #@84
    .line 637
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v12

    #@88
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v12

    #@8c
    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v11

    #@90
    .line 642
    :cond_3
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@92
    const/4 v12, 0x3

    #@93
    .line 641
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@96
    move-result v11

    #@97
    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@99
    .line 644
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@9b
    const/4 v12, 0x2

    #@9c
    .line 643
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@9f
    move-result v11

    #@a0
    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@a2
    .line 646
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@a4
    const/4 v12, 0x0

    #@a5
    cmpg-float v11, v11, v12

    #@a7
    if-gtz v11, :cond_4

    #@a9
    .line 647
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    #@ab
    new-instance v12, Ljava/lang/StringBuilder;

    #@ad
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@b3
    move-result-object v13

    #@b4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v12

    #@b8
    .line 648
    const-string/jumbo v13, "<vector> tag requires width > 0"

    #@bb
    .line 647
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v12

    #@bf
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c2
    move-result-object v12

    #@c3
    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@c6
    throw v11

    #@c7
    .line 649
    :cond_4
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@c9
    const/4 v12, 0x0

    #@ca
    cmpg-float v11, v11, v12

    #@cc
    if-gtz v11, :cond_5

    #@ce
    .line 650
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;

    #@d0
    new-instance v12, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    #@d8
    move-result-object v13

    #@d9
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v12

    #@dd
    .line 651
    const-string/jumbo v13, "<vector> tag requires height > 0"

    #@e0
    .line 650
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v12

    #@e4
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v12

    #@e8
    invoke-direct {v11, v12}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@eb
    throw v11

    #@ec
    .line 655
    :cond_5
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@ee
    iget v11, v11, Landroid/graphics/Insets;->left:I

    #@f0
    const/16 v12, 0x9

    #@f2
    .line 654
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@f5
    move-result v2

    #@f6
    .line 657
    .local v2, "insetLeft":I
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@f8
    iget v11, v11, Landroid/graphics/Insets;->top:I

    #@fa
    const/16 v12, 0xa

    #@fc
    .line 656
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@ff
    move-result v4

    #@100
    .line 659
    .local v4, "insetTop":I
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@102
    iget v11, v11, Landroid/graphics/Insets;->right:I

    #@104
    const/16 v12, 0xb

    #@106
    .line 658
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@109
    move-result v3

    #@10a
    .line 661
    .local v3, "insetRight":I
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@10c
    iget v11, v11, Landroid/graphics/Insets;->bottom:I

    #@10e
    const/16 v12, 0xc

    #@110
    .line 660
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@113
    move-result v1

    #@114
    .line 662
    .local v1, "insetBottom":I
    invoke-static {v2, v4, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@117
    move-result-object v11

    #@118
    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@11a
    .line 665
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    #@11d
    move-result v11

    #@11e
    const/4 v12, 0x4

    #@11f
    .line 664
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@122
    move-result v0

    #@123
    .line 666
    .local v0, "alphaInFloat":F
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    #@126
    .line 668
    const/4 v11, 0x0

    #@127
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@12a
    move-result-object v5

    #@12b
    .line 669
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@12d
    .line 670
    iput-object v5, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    #@12f
    .line 671
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@131
    invoke-virtual {v11, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@134
    .line 605
    :cond_6
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 8
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 478
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@4
    .line 480
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@6
    .line 481
    .local v3, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    if-nez v3, :cond_0

    #@8
    .line 482
    return-void

    #@9
    .line 485
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@b
    .line 486
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@e
    move-result-object v5

    #@f
    const/4 v6, 0x0

    #@10
    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@13
    move-result v5

    #@14
    .line 485
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    #@17
    move-result v1

    #@18
    .line 487
    .local v1, "changedDensity":Z
    iget-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@1a
    or-int/2addr v4, v1

    #@1b
    iput-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@1d
    .line 489
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 491
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@23
    sget-object v5, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    #@25
    .line 490
    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@28
    move-result-object v0

    #@29
    .line 493
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    #@2a
    :try_start_0
    iput-boolean v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@2c
    .line 494
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 498
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@32
    .line 502
    iput-boolean v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@34
    .line 506
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@36
    if-eqz v4, :cond_2

    #@38
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@3a
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@3d
    move-result v4

    #@3e
    if-eqz v4, :cond_2

    #@40
    .line 507
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@42
    invoke-virtual {v4, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@45
    move-result-object v4

    #@46
    iput-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@48
    .line 510
    :cond_2
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4a
    if-eqz v4, :cond_3

    #@4c
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4e
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    #@51
    move-result v4

    #@52
    if-eqz v4, :cond_3

    #@54
    .line 511
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@56
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@59
    .line 515
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@5c
    move-result-object v4

    #@5d
    invoke-direct {p0, v4}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@60
    .line 477
    return-void

    #@61
    .line 495
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v2

    #@62
    .line 496
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v4, Ljava/lang/RuntimeException;

    #@64
    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@67
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@68
    .line 497
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    #@69
    .line 498
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@6c
    .line 497
    throw v4
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@6
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canApplyTheme()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_1

    #@c
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_1
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public clearMutated()V
    .locals 1

    #@0
    .prologue
    .line 278
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 279
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    #@6
    .line 277
    return-void
.end method

.method computeVectorSize()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 444
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4
    iget-object v2, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@6
    .line 446
    .local v2, "opticalInsets":Landroid/graphics/Insets;
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@8
    iget v4, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    #@a
    .line 447
    .local v4, "sourceDensity":I
    iget v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    #@c
    .line 448
    .local v5, "targetDensity":I
    if-eq v5, v4, :cond_0

    #@e
    .line 450
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@10
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@12
    float-to-int v7, v7

    #@13
    .line 449
    invoke-static {v7, v4, v5, v9}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@16
    move-result v7

    #@17
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@19
    .line 452
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@1b
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@1d
    float-to-int v7, v7

    #@1e
    .line 451
    invoke-static {v7, v4, v5, v9}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@21
    move-result v7

    #@22
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@24
    .line 454
    iget v7, v2, Landroid/graphics/Insets;->left:I

    #@26
    .line 453
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@29
    move-result v1

    #@2a
    .line 456
    .local v1, "left":I
    iget v7, v2, Landroid/graphics/Insets;->right:I

    #@2c
    .line 455
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@2f
    move-result v3

    #@30
    .line 458
    .local v3, "right":I
    iget v7, v2, Landroid/graphics/Insets;->top:I

    #@32
    .line 457
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@35
    move-result v6

    #@36
    .line 460
    .local v6, "top":I
    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    #@38
    .line 459
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@3b
    move-result v0

    #@3c
    .line 461
    .local v0, "bottom":I
    invoke-static {v1, v6, v3, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@3f
    move-result-object v7

    #@40
    iput-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    #@42
    .line 468
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v3    # "right":I
    .end local v6    # "top":I
    :goto_0
    iput-boolean v8, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@44
    .line 443
    return-void

    #@45
    .line 463
    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@47
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@49
    float-to-int v7, v7

    #@4a
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@4c
    .line 464
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4e
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@50
    float-to-int v7, v7

    #@51
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@53
    .line 465
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    #@55
    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    #@5
    .line 297
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@7
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    #@a
    move-result v0

    #@b
    if-lez v0, :cond_0

    #@d
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@f
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    #@12
    move-result v0

    #@13
    if-gtz v0, :cond_1

    #@15
    .line 299
    :cond_0
    return-void

    #@16
    .line 303
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@18
    if-nez v0, :cond_2

    #@1a
    iget-object v9, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@1c
    .line 304
    .local v9, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_0
    if-nez v9, :cond_3

    #@1e
    const-wide/16 v4, 0x0

    #@20
    .line 306
    .local v4, "colorFilterNativeInstance":J
    :goto_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@22
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canReuseCache()Z

    #@25
    move-result v8

    #@26
    .line 307
    .local v8, "canReuseCache":Z
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@28
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    #@2b
    move-result-wide v0

    #@2c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    #@2f
    move-result-wide v2

    #@30
    .line 308
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@32
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;->needMirroring()Z

    #@35
    move-result v7

    #@36
    .line 307
    invoke-static/range {v0 .. v8}, Landroid/graphics/drawable/VectorDrawable;->nDraw(JJJLandroid/graphics/Rect;ZZ)I

    #@39
    move-result v11

    #@3a
    .line 310
    .local v11, "pixelCount":I
    if-nez v11, :cond_4

    #@3c
    .line 313
    return-void

    #@3d
    .line 303
    .end local v4    # "colorFilterNativeInstance":J
    .end local v8    # "canReuseCache":Z
    .end local v9    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v11    # "pixelCount":I
    :cond_2
    iget-object v9, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@3f
    goto :goto_0

    #@40
    .line 305
    .restart local v9    # "colorFilter":Landroid/graphics/ColorFilter;
    :cond_3
    iget-wide v4, v9, Landroid/graphics/ColorFilter;->native_instance:J

    #@42
    .restart local v4    # "colorFilterNativeInstance":J
    goto :goto_1

    #@43
    .line 320
    .restart local v8    # "canReuseCache":Z
    .restart local v11    # "pixelCount":I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_6

    #@49
    .line 322
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4b
    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    #@4d
    sub-int v0, v11, v0

    #@4f
    mul-int/lit8 v10, v0, 0x4

    #@51
    .line 323
    .local v10, "deltaInBytes":I
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@53
    iput v11, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    #@55
    .line 329
    :goto_2
    if-lez v10, :cond_7

    #@57
    .line 330
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0, v10}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@5e
    .line 293
    :cond_5
    :goto_3
    return-void

    #@5f
    .line 326
    .end local v10    # "deltaInBytes":I
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@61
    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    #@63
    sub-int v0, v11, v0

    #@65
    mul-int/lit8 v10, v0, 0x4

    #@67
    .line 327
    .restart local v10    # "deltaInBytes":I
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@69
    iput v11, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    #@6b
    goto :goto_2

    #@6c
    .line 331
    :cond_7
    if-gez v10, :cond_5

    #@6e
    .line 332
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@71
    move-result-object v0

    #@72
    neg-int v1, v10

    #@73
    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@76
    goto :goto_3
.end method

.method public getAlpha()I
    .locals 2

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    #@5
    move-result v0

    #@6
    const/high16 v1, 0x437f0000    # 255.0f

    #@8
    mul-float/2addr v0, v1

    #@9
    float-to-int v0, v0

    #@a
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    #@0
    .prologue
    .line 742
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    #@3
    move-result v0

    #@4
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@6
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getChangingConfigurations()I

    #@9
    move-result v1

    #@a
    or-int/2addr v0, v1

    #@b
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@8
    .line 289
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@a
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 424
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 425
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    #@7
    .line 427
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@9
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 416
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 417
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    #@7
    .line 419
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@9
    return v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 411
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getAlpha()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, -0x2

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x3

    #@9
    goto :goto_0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    #@0
    .prologue
    .line 433
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 434
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    #@7
    .line 436
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    #@9
    return-object v0
.end method

.method public getPixelSize()F
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 525
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@3
    if-eqz v6, :cond_0

    #@5
    .line 526
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@7
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@9
    cmpl-float v6, v6, v7

    #@b
    if-nez v6, :cond_1

    #@d
    .line 530
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    #@f
    return v6

    #@10
    .line 527
    :cond_1
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@12
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@14
    cmpl-float v6, v6, v7

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 528
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@1a
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@1c
    cmpl-float v6, v6, v7

    #@1e
    if-eqz v6, :cond_0

    #@20
    .line 529
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@22
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@24
    cmpl-float v6, v6, v7

    #@26
    if-eqz v6, :cond_0

    #@28
    .line 532
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2a
    iget v1, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@2c
    .line 533
    .local v1, "intrinsicWidth":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2e
    iget v0, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@30
    .line 534
    .local v0, "intrinsicHeight":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@32
    iget v5, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@34
    .line 535
    .local v5, "viewportWidth":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@36
    iget v4, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@38
    .line 536
    .local v4, "viewportHeight":F
    div-float v2, v5, v1

    #@3a
    .line 537
    .local v2, "scaleX":F
    div-float v3, v4, v0

    #@3c
    .line 538
    .local v3, "scaleY":F
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    #@3f
    move-result v6

    #@40
    return v6
.end method

.method getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget-object v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@4
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 6
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

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 571
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@6
    if-nez v2, :cond_0

    #@8
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@a
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@c
    if-eqz v2, :cond_3

    #@e
    .line 573
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@10
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 575
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@1a
    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@1c
    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getNativeSize()I

    #@1f
    move-result v3

    #@20
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@23
    .line 577
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@25
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@27
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    #@2a
    .line 579
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2c
    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2e
    invoke-direct {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    #@31
    iput-object v3, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@33
    .line 580
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@35
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 583
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3c
    move-result-object v2

    #@3d
    const/16 v3, 0x13c

    #@3f
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@42
    .line 584
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@44
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@46
    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    #@49
    .line 586
    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4b
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4d
    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@4f
    invoke-static {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->-wrap0(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    #@52
    .line 588
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@54
    .line 589
    .local v1, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    const/4 v2, 0x0

    #@55
    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@58
    move-result v2

    #@59
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    #@5c
    .line 591
    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    #@5e
    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@61
    move-result-object v0

    #@62
    .line 592
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@65
    .line 593
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@68
    .line 595
    iput-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@6a
    .line 597
    iput-boolean v5, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@6c
    .line 598
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@6f
    .line 600
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    #@72
    .line 602
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@75
    .line 570
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 763
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@4
    return v0
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 382
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@8
    if-eqz v0, :cond_1

    #@a
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@c
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->isStateful()Z

    #@f
    move-result v0

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0

    #@13
    :cond_1
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    if-ne v0, p0, :cond_0

    #@a
    .line 268
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@13
    .line 269
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    #@16
    .line 271
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 387
    const/4 v0, 0x0

    #@1
    .line 391
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 392
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@a
    .line 394
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@c
    .line 395
    .local v1, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onStateChange([I)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 396
    const/4 v0, 0x1

    #@13
    .line 397
    const/4 v2, 0x1

    #@14
    iput-boolean v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@16
    .line 399
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@18
    if-eqz v2, :cond_2

    #@1a
    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 400
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@20
    iget-object v3, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@22
    iget-object v4, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@24
    invoke-virtual {p0, v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@27
    move-result-object v2

    #@28
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@2a
    .line 401
    const/4 v0, 0x1

    #@2b
    .line 404
    :cond_2
    return v0
.end method

.method setAllowCaching(Z)V
    .locals 2
    .param p1, "allowCaching"    # Z

    #@0
    .prologue
    .line 746
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->nSetAllowCaching(JZ)V

    #@9
    .line 745
    return-void
.end method

.method public setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 344
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    int-to-float v1, p1

    #@3
    const/high16 v2, 0x437f0000    # 255.0f

    #@5
    div-float/2addr v1, v2

    #@6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 345
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@f
    .line 343
    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 755
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 756
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@a
    .line 757
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@d
    .line 754
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 351
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    .line 352
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@5
    .line 350
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    .line 363
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eq v1, p1, :cond_0

    #@6
    .line 364
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    .line 365
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@a
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@c
    invoke-virtual {p0, v1, p1, v2}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@12
    .line 366
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@15
    .line 361
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    .line 373
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    if-eq v1, p1, :cond_0

    #@6
    .line 374
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    .line 375
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@a
    iget-object v2, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@c
    invoke-virtual {p0, v1, v2, p1}, Landroid/graphics/drawable/VectorDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    #@f
    move-result-object v1

    #@10
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@12
    .line 376
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@15
    .line 371
    :cond_0
    return-void
.end method
