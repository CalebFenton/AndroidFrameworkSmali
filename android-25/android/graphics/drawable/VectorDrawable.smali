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
    .line 266
    const-class v0, Landroid/graphics/drawable/VectorDrawable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    #@8
    .line 265
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 296
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@3
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    #@6
    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/VectorDrawable;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/content/res/Resources;)V

    #@9
    .line 295
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
    .line 303
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    #@4
    .line 285
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@6
    .line 286
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@8
    .line 287
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    #@c
    .line 290
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@f
    .line 293
    new-instance v0, Landroid/graphics/Rect;

    #@11
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@14
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@16
    .line 304
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@18
    .line 305
    invoke-direct {p0, p2}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@1b
    .line 303
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
    .line 605
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@4
    move-result-object v4

    #@5
    .line 606
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@8
    move-result-object v0

    #@9
    .line 608
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@c
    move-result v5

    #@d
    .local v5, "type":I
    if-eq v5, v7, :cond_1

    #@f
    .line 609
    const/4 v6, 0x1

    #@10
    if-ne v5, v6, :cond_0

    #@12
    .line 612
    :cond_1
    if-eq v5, v7, :cond_2

    #@14
    .line 613
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
    .line 620
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_0
    move-exception v3

    #@1e
    .line 621
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v6, Landroid/graphics/drawable/VectorDrawable;->LOGTAG:Ljava/lang/String;

    #@20
    const-string/jumbo v7, "parser error"

    #@23
    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@26
    .line 625
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    const/4 v6, 0x0

    #@27
    return-object v6

    #@28
    .line 616
    .restart local v0    # "attrs":Landroid/util/AttributeSet;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "type":I
    :cond_2
    :try_start_1
    new-instance v1, Landroid/graphics/drawable/VectorDrawable;

    #@2a
    invoke-direct {v1}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    #@2d
    .line 617
    .local v1, "drawable":Landroid/graphics/drawable/VectorDrawable;
    invoke-virtual {v1, p0, v4, v0}, Landroid/graphics/drawable/VectorDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@30
    .line 619
    return-object v1

    #@31
    .line 622
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v1    # "drawable":Landroid/graphics/drawable/VectorDrawable;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "type":I
    :catch_1
    move-exception v2

    #@32
    .line 623
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
    .locals 17
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
    .line 738
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4
    .line 739
    .local v11, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    const/4 v8, 0x1

    #@5
    .line 743
    .local v8, "noPathTag":Z
    new-instance v5, Ljava/util/Stack;

    #@7
    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    #@a
    .line 744
    .local v5, "groupStack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/drawable/VectorDrawable$VGroup;>;"
    iget-object v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@c
    invoke-virtual {v5, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 746
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    #@12
    move-result v4

    #@13
    .line 747
    .local v4, "eventType":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@16
    move-result v14

    #@17
    add-int/lit8 v6, v14, 0x1

    #@19
    .line 750
    .local v6, "innerDepth":I
    :goto_0
    const/4 v14, 0x1

    #@1a
    if-eq v4, v14, :cond_8

    #@1c
    .line 751
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    #@1f
    move-result v14

    #@20
    if-ge v14, v6, :cond_0

    #@22
    const/4 v14, 0x3

    #@23
    if-eq v4, v14, :cond_8

    #@25
    .line 752
    :cond_0
    const/4 v14, 0x2

    #@26
    if-ne v4, v14, :cond_7

    #@28
    .line 753
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@2b
    move-result-object v13

    #@2c
    .line 754
    .local v13, "tagName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@32
    .line 756
    .local v3, "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    const-string/jumbo v14, "path"

    #@35
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@38
    move-result v14

    #@39
    if-eqz v14, :cond_3

    #@3b
    .line 757
    new-instance v10, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@3d
    invoke-direct {v10}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>()V

    #@40
    .line 758
    .local v10, "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    move-object/from16 v0, p1

    #@42
    move-object/from16 v1, p3

    #@44
    move-object/from16 v2, p4

    #@46
    invoke-virtual {v10, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@49
    .line 759
    invoke-virtual {v3, v10}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    #@4c
    .line 760
    invoke-virtual {v10}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    #@4f
    move-result-object v14

    #@50
    if-eqz v14, :cond_1

    #@52
    .line 761
    iget-object v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@54
    invoke-virtual {v10}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getPathName()Ljava/lang/String;

    #@57
    move-result-object v15

    #@58
    invoke-virtual {v14, v15, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    .line 763
    :cond_1
    const/4 v8, 0x0

    #@5c
    .line 764
    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@5e
    iget v15, v10, Landroid/graphics/drawable/VectorDrawable$VFullPath;->mChangingConfigurations:I

    #@60
    or-int/2addr v14, v15

    #@61
    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@63
    .line 790
    .end local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v10    # "path":Landroid/graphics/drawable/VectorDrawable$VFullPath;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@66
    move-result v4

    #@67
    goto :goto_0

    #@68
    .line 765
    .restart local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_3
    const-string/jumbo v14, "clip-path"

    #@6b
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v14

    #@6f
    if-eqz v14, :cond_5

    #@71
    .line 766
    new-instance v9, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@73
    invoke-direct {v9}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>()V

    #@76
    .line 767
    .local v9, "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    move-object/from16 v0, p1

    #@78
    move-object/from16 v1, p3

    #@7a
    move-object/from16 v2, p4

    #@7c
    invoke-virtual {v9, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@7f
    .line 768
    invoke-virtual {v3, v9}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    #@82
    .line 769
    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    #@85
    move-result-object v14

    #@86
    if-eqz v14, :cond_4

    #@88
    .line 770
    iget-object v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@8a
    invoke-virtual {v9}, Landroid/graphics/drawable/VectorDrawable$VClipPath;->getPathName()Ljava/lang/String;

    #@8d
    move-result-object v15

    #@8e
    invoke-virtual {v14, v15, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@91
    .line 772
    :cond_4
    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@93
    iget v15, v9, Landroid/graphics/drawable/VectorDrawable$VClipPath;->mChangingConfigurations:I

    #@95
    or-int/2addr v14, v15

    #@96
    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@98
    goto :goto_1

    #@99
    .line 773
    .end local v9    # "path":Landroid/graphics/drawable/VectorDrawable$VClipPath;
    :cond_5
    const-string/jumbo v14, "group"

    #@9c
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v14

    #@a0
    if-eqz v14, :cond_2

    #@a2
    .line 774
    new-instance v7, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@a4
    invoke-direct {v7}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    #@a7
    .line 775
    .local v7, "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    move-object/from16 v0, p1

    #@a9
    move-object/from16 v1, p3

    #@ab
    move-object/from16 v2, p4

    #@ad
    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/drawable/VectorDrawable$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@b0
    .line 776
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    #@b3
    .line 777
    invoke-virtual {v5, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 778
    invoke-virtual {v7}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    #@b9
    move-result-object v14

    #@ba
    if-eqz v14, :cond_6

    #@bc
    .line 779
    iget-object v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@be
    invoke-virtual {v7}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getGroupName()Ljava/lang/String;

    #@c1
    move-result-object v15

    #@c2
    invoke-virtual {v14, v15, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c5
    .line 782
    :cond_6
    iget v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@c7
    invoke-static {v7}, Landroid/graphics/drawable/VectorDrawable$VGroup;->-get7(Landroid/graphics/drawable/VectorDrawable$VGroup;)I

    #@ca
    move-result v15

    #@cb
    or-int/2addr v14, v15

    #@cc
    iput v14, v11, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@ce
    goto :goto_1

    #@cf
    .line 784
    .end local v3    # "currentGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v7    # "newChildGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_7
    const/4 v14, 0x3

    #@d0
    if-ne v4, v14, :cond_2

    #@d2
    .line 785
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@d5
    move-result-object v13

    #@d6
    .line 786
    .restart local v13    # "tagName":Ljava/lang/String;
    const-string/jumbo v14, "group"

    #@d9
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@dc
    move-result v14

    #@dd
    if-eqz v14, :cond_2

    #@df
    .line 787
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    #@e2
    goto :goto_1

    #@e3
    .line 793
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_8
    if-eqz v8, :cond_a

    #@e5
    .line 794
    new-instance v12, Ljava/lang/StringBuffer;

    #@e7
    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    #@ea
    .line 796
    .local v12, "tag":Ljava/lang/StringBuffer;
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    #@ed
    move-result v14

    #@ee
    if-lez v14, :cond_9

    #@f0
    .line 797
    const-string/jumbo v14, " or "

    #@f3
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f6
    .line 799
    :cond_9
    const-string/jumbo v14, "path"

    #@f9
    invoke-virtual {v12, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@fc
    .line 801
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    #@fe
    new-instance v15, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v16, "no "

    #@106
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v15

    #@10a
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v15

    #@10e
    const-string/jumbo v16, " defined"

    #@111
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v15

    #@115
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v15

    #@119
    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@11c
    throw v14

    #@11d
    .line 737
    .end local v12    # "tag":Ljava/lang/StringBuffer;
    :cond_a
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
    .line 815
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
    .line 317
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget v1, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    #@4
    invoke-static {p1, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@7
    move-result v0

    #@8
    .line 318
    .local v0, "density":I
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    #@a
    if-eq v1, v0, :cond_0

    #@c
    .line 319
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    #@e
    .line 320
    const/4 v1, 0x1

    #@f
    iput-boolean v1, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@11
    .line 323
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
    .line 316
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
    .line 667
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    .line 670
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
    .line 673
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@e
    move-result-object v11

    #@f
    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@11
    .line 675
    const/4 v11, 0x6

    #@12
    const/4 v12, -0x1

    #@13
    invoke-virtual {p1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    #@16
    move-result v8

    #@17
    .line 676
    .local v8, "tintMode":I
    const/4 v11, -0x1

    #@18
    if-eq v8, v11, :cond_0

    #@1a
    .line 677
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@1c
    invoke-static {v8, v11}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    #@1f
    move-result-object v11

    #@20
    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@22
    .line 680
    :cond_0
    const/4 v11, 0x1

    #@23
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    #@26
    move-result-object v7

    #@27
    .line 681
    .local v7, "tint":Landroid/content/res/ColorStateList;
    if-eqz v7, :cond_1

    #@29
    .line 682
    iput-object v7, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@2b
    .line 686
    :cond_1
    iget-boolean v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@2d
    const/4 v12, 0x5

    #@2e
    .line 685
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@31
    move-result v11

    #@32
    iput-boolean v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@34
    .line 689
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@36
    const/4 v12, 0x7

    #@37
    .line 688
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3a
    move-result v10

    #@3b
    .line 691
    .local v10, "viewportWidth":F
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@3d
    const/16 v12, 0x8

    #@3f
    .line 690
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@42
    move-result v9

    #@43
    .line 692
    .local v9, "viewportHeight":F
    invoke-virtual {v6, v10, v9}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setViewportSize(FF)V

    #@46
    .line 694
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@48
    const/4 v12, 0x0

    #@49
    cmpg-float v11, v11, v12

    #@4b
    if-gtz v11, :cond_2

    #@4d
    .line 695
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
    .line 696
    const-string/jumbo v13, "<vector> tag requires viewportWidth > 0"

    #@5f
    .line 695
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
    .line 697
    :cond_2
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@6d
    const/4 v12, 0x0

    #@6e
    cmpg-float v11, v11, v12

    #@70
    if-gtz v11, :cond_3

    #@72
    .line 698
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
    .line 699
    const-string/jumbo v13, "<vector> tag requires viewportHeight > 0"

    #@84
    .line 698
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
    .line 703
    :cond_3
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@92
    const/4 v12, 0x3

    #@93
    .line 702
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@96
    move-result v11

    #@97
    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@99
    .line 705
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@9b
    const/4 v12, 0x2

    #@9c
    .line 704
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@9f
    move-result v11

    #@a0
    iput v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@a2
    .line 707
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@a4
    const/4 v12, 0x0

    #@a5
    cmpg-float v11, v11, v12

    #@a7
    if-gtz v11, :cond_4

    #@a9
    .line 708
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
    .line 709
    const-string/jumbo v13, "<vector> tag requires width > 0"

    #@bb
    .line 708
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
    .line 710
    :cond_4
    iget v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@c9
    const/4 v12, 0x0

    #@ca
    cmpg-float v11, v11, v12

    #@cc
    if-gtz v11, :cond_5

    #@ce
    .line 711
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
    .line 712
    const-string/jumbo v13, "<vector> tag requires height > 0"

    #@e0
    .line 711
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
    .line 716
    :cond_5
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@ee
    iget v11, v11, Landroid/graphics/Insets;->left:I

    #@f0
    const/16 v12, 0x9

    #@f2
    .line 715
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@f5
    move-result v2

    #@f6
    .line 718
    .local v2, "insetLeft":I
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@f8
    iget v11, v11, Landroid/graphics/Insets;->top:I

    #@fa
    const/16 v12, 0xa

    #@fc
    .line 717
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@ff
    move-result v4

    #@100
    .line 720
    .local v4, "insetTop":I
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@102
    iget v11, v11, Landroid/graphics/Insets;->right:I

    #@104
    const/16 v12, 0xb

    #@106
    .line 719
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@109
    move-result v3

    #@10a
    .line 722
    .local v3, "insetRight":I
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@10c
    iget v11, v11, Landroid/graphics/Insets;->bottom:I

    #@10e
    const/16 v12, 0xc

    #@110
    .line 721
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@113
    move-result v1

    #@114
    .line 723
    .local v1, "insetBottom":I
    invoke-static {v2, v4, v3, v1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@117
    move-result-object v11

    #@118
    iput-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@11a
    .line 726
    invoke-virtual {v6}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getAlpha()F

    #@11d
    move-result v11

    #@11e
    const/4 v12, 0x4

    #@11f
    .line 725
    invoke-virtual {p1, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@122
    move-result v0

    #@123
    .line 727
    .local v0, "alphaInFloat":F
    invoke-virtual {v6, v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setAlpha(F)Z

    #@126
    .line 729
    const/4 v11, 0x0

    #@127
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@12a
    move-result-object v5

    #@12b
    .line 730
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_6

    #@12d
    .line 731
    iput-object v5, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootName:Ljava/lang/String;

    #@12f
    .line 732
    iget-object v11, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mVGTargetsMap:Landroid/util/ArrayMap;

    #@131
    invoke-virtual {v11, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@134
    .line 666
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
    .line 539
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@4
    .line 541
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@6
    .line 542
    .local v3, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    if-nez v3, :cond_0

    #@8
    .line 543
    return-void

    #@9
    .line 546
    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@b
    .line 547
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
    .line 546
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    #@17
    move-result v1

    #@18
    .line 548
    .local v1, "changedDensity":Z
    iget-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@1a
    or-int/2addr v4, v1

    #@1b
    iput-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@1d
    .line 550
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@1f
    if-eqz v4, :cond_1

    #@21
    .line 552
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mThemeAttrs:[I

    #@23
    sget-object v5, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    #@25
    .line 551
    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@28
    move-result-object v0

    #@29
    .line 554
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    #@2a
    :try_start_0
    iput-boolean v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@2c
    .line 555
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 559
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@32
    .line 563
    iput-boolean v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@34
    .line 567
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
    .line 568
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@42
    invoke-virtual {v4, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@45
    move-result-object v4

    #@46
    iput-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@48
    .line 571
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
    .line 572
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@56
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@59
    .line 576
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    #@5c
    move-result-object v4

    #@5d
    invoke-direct {p0, v4}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@60
    .line 538
    return-void

    #@61
    .line 556
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v2

    #@62
    .line 557
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
    .line 558
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    #@69
    .line 559
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@6c
    .line 558
    throw v4
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 534
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
    .line 339
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    #@3
    .line 340
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    #@6
    .line 338
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
    .line 505
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4
    iget-object v2, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mOpticalInsets:Landroid/graphics/Insets;

    #@6
    .line 507
    .local v2, "opticalInsets":Landroid/graphics/Insets;
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@8
    iget v4, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mDensity:I

    #@a
    .line 508
    .local v4, "sourceDensity":I
    iget v5, p0, Landroid/graphics/drawable/VectorDrawable;->mTargetDensity:I

    #@c
    .line 509
    .local v5, "targetDensity":I
    if-eq v5, v4, :cond_0

    #@e
    .line 511
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@10
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@12
    float-to-int v7, v7

    #@13
    .line 510
    invoke-static {v7, v4, v5, v9}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@16
    move-result v7

    #@17
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@19
    .line 513
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@1b
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@1d
    float-to-int v7, v7

    #@1e
    .line 512
    invoke-static {v7, v4, v5, v9}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@21
    move-result v7

    #@22
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@24
    .line 515
    iget v7, v2, Landroid/graphics/Insets;->left:I

    #@26
    .line 514
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@29
    move-result v1

    #@2a
    .line 517
    .local v1, "left":I
    iget v7, v2, Landroid/graphics/Insets;->right:I

    #@2c
    .line 516
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@2f
    move-result v3

    #@30
    .line 519
    .local v3, "right":I
    iget v7, v2, Landroid/graphics/Insets;->top:I

    #@32
    .line 518
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@35
    move-result v6

    #@36
    .line 521
    .local v6, "top":I
    iget v7, v2, Landroid/graphics/Insets;->bottom:I

    #@38
    .line 520
    invoke-static {v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    #@3b
    move-result v0

    #@3c
    .line 522
    .local v0, "bottom":I
    invoke-static {v1, v6, v3, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@3f
    move-result-object v7

    #@40
    iput-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    #@42
    .line 529
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v3    # "right":I
    .end local v6    # "top":I
    :goto_0
    iput-boolean v8, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@44
    .line 504
    return-void

    #@45
    .line 524
    :cond_0
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@47
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@49
    float-to-int v7, v7

    #@4a
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@4c
    .line 525
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4e
    iget v7, v7, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@50
    float-to-int v7, v7

    #@51
    iput v7, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@53
    .line 526
    iput-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledInsets:Landroid/graphics/Insets;

    #@55
    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->copyBounds(Landroid/graphics/Rect;)V

    #@5
    .line 358
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
    .line 360
    :cond_0
    return-void

    #@16
    .line 364
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@18
    if-nez v0, :cond_2

    #@1a
    iget-object v9, p0, Landroid/graphics/drawable/VectorDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    #@1c
    .line 365
    .local v9, "colorFilter":Landroid/graphics/ColorFilter;
    :goto_0
    if-nez v9, :cond_3

    #@1e
    const-wide/16 v4, 0x0

    #@20
    .line 367
    .local v4, "colorFilterNativeInstance":J
    :goto_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@22
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->canReuseCache()Z

    #@25
    move-result v8

    #@26
    .line 368
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
    .line 369
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mTmpBounds:Landroid/graphics/Rect;

    #@32
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable;->needMirroring()Z

    #@35
    move-result v7

    #@36
    .line 368
    invoke-static/range {v0 .. v8}, Landroid/graphics/drawable/VectorDrawable;->nDraw(JJJLandroid/graphics/Rect;ZZ)I

    #@39
    move-result v11

    #@3a
    .line 371
    .local v11, "pixelCount":I
    if-nez v11, :cond_4

    #@3c
    .line 374
    return-void

    #@3d
    .line 364
    .end local v4    # "colorFilterNativeInstance":J
    .end local v8    # "canReuseCache":Z
    .end local v9    # "colorFilter":Landroid/graphics/ColorFilter;
    .end local v11    # "pixelCount":I
    :cond_2
    iget-object v9, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@3f
    goto :goto_0

    #@40
    .line 366
    .restart local v9    # "colorFilter":Landroid/graphics/ColorFilter;
    :cond_3
    iget-wide v4, v9, Landroid/graphics/ColorFilter;->native_instance:J

    #@42
    .restart local v4    # "colorFilterNativeInstance":J
    goto :goto_1

    #@43
    .line 381
    .restart local v8    # "canReuseCache":Z
    .restart local v11    # "pixelCount":I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    #@46
    move-result v0

    #@47
    if-eqz v0, :cond_6

    #@49
    .line 383
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4b
    iget v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    #@4d
    sub-int v0, v11, v0

    #@4f
    mul-int/lit8 v10, v0, 0x4

    #@51
    .line 384
    .local v10, "deltaInBytes":I
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@53
    iput v11, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastHWCachePixelCount:I

    #@55
    .line 390
    :goto_2
    if-lez v10, :cond_7

    #@57
    .line 391
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0, v10}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    #@5e
    .line 354
    :cond_5
    :goto_3
    return-void

    #@5f
    .line 387
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
    .line 388
    .restart local v10    # "deltaInBytes":I
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@69
    iput v11, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mLastSWCachePixelCount:I

    #@6b
    goto :goto_2

    #@6c
    .line 392
    :cond_7
    if-gez v10, :cond_5

    #@6e
    .line 393
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
    .line 400
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
    .line 807
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
    .line 418
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    iput v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mChangingConfigurations:I

    #@8
    .line 350
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@a
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 485
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 486
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    #@7
    .line 488
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledHeight:I

    #@9
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 477
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 478
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    #@7
    .line 480
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledWidth:I

    #@9
    return v0
.end method

.method public getNativeTree()J
    .locals 2

    #@0
    .prologue
    .line 835
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getOpacity()I
    .locals 1

    #@0
    .prologue
    .line 472
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
    .line 494
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 495
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->computeVectorSize()V

    #@7
    .line 497
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
    .line 586
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@3
    if-eqz v6, :cond_0

    #@5
    .line 587
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@7
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@9
    cmpl-float v6, v6, v7

    #@b
    if-nez v6, :cond_1

    #@d
    .line 591
    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    #@f
    return v6

    #@10
    .line 588
    :cond_1
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@12
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@14
    cmpl-float v6, v6, v7

    #@16
    if-eqz v6, :cond_0

    #@18
    .line 589
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@1a
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@1c
    cmpl-float v6, v6, v7

    #@1e
    if-eqz v6, :cond_0

    #@20
    .line 590
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@22
    iget v6, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@24
    cmpl-float v6, v6, v7

    #@26
    if-eqz v6, :cond_0

    #@28
    .line 593
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2a
    iget v1, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseWidth:F

    #@2c
    .line 594
    .local v1, "intrinsicWidth":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2e
    iget v0, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mBaseHeight:F

    #@30
    .line 595
    .local v0, "intrinsicHeight":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@32
    iget v5, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportWidth:F

    #@34
    .line 596
    .local v5, "viewportWidth":F
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@36
    iget v4, v6, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mViewportHeight:F

    #@38
    .line 597
    .local v4, "viewportHeight":F
    div-float v2, v5, v1

    #@3a
    .line 598
    .local v2, "scaleX":F
    div-float v3, v4, v0

    #@3c
    .line 599
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
    .line 344
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
    .line 632
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
    .line 634
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@10
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 636
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
    .line 638
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@25
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@27
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    #@2a
    .line 640
    :cond_1
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2c
    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@2e
    invoke-direct {v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>()V

    #@31
    iput-object v3, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@33
    .line 641
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@35
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 644
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3c
    move-result-object v2

    #@3d
    const/16 v3, 0x13c

    #@3f
    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    #@42
    .line 645
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@44
    iget-object v2, v2, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mNativeTree:Lcom/android/internal/util/VirtualRefBasePtr;

    #@46
    invoke-virtual {v2}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    #@49
    .line 647
    :cond_2
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4b
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@4d
    iget-object v3, v3, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mRootGroup:Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@4f
    invoke-static {v2, v3}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->-wrap0(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    #@52
    .line 649
    :cond_3
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@54
    .line 650
    .local v1, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    const/4 v2, 0x0

    #@55
    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@58
    move-result v2

    #@59
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->setDensity(I)Z

    #@5c
    .line 652
    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawable:[I

    #@5e
    invoke-static {p1, p4, p3, v2}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@61
    move-result-object v0

    #@62
    .line 653
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@65
    .line 654
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@68
    .line 656
    iput-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable;->mDpiScaledDirty:Z

    #@6a
    .line 658
    iput-boolean v5, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@6c
    .line 659
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/VectorDrawable;->inflateChildElements(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@6f
    .line 661
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onTreeConstructionFinished()V

    #@72
    .line 663
    invoke-direct {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    #@75
    .line 631
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 828
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
    .line 443
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
    .line 328
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
    .line 329
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@c
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;-><init>(Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;)V

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@13
    .line 330
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable;->mMutated:Z

    #@16
    .line 332
    :cond_0
    return-object p0
.end method

.method protected onStateChange([I)Z
    .locals 5
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 448
    const/4 v0, 0x0

    #@1
    .line 452
    .local v0, "changed":Z
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->isStateful()Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 453
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    #@a
    .line 455
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@c
    .line 456
    .local v1, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->onStateChange([I)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 457
    const/4 v0, 0x1

    #@13
    .line 458
    const/4 v2, 0x1

    #@14
    iput-boolean v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mCacheDirty:Z

    #@16
    .line 460
    :cond_1
    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@18
    if-eqz v2, :cond_2

    #@1a
    iget-object v2, v1, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 461
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
    .line 462
    const/4 v0, 0x1

    #@2b
    .line 465
    :cond_2
    return v0
.end method

.method setAllowCaching(Z)V
    .locals 2
    .param p1, "allowCaching"    # Z

    #@0
    .prologue
    .line 811
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->getNativeRenderer()J

    #@5
    move-result-wide v0

    #@6
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->nSetAllowCaching(JZ)V

    #@9
    .line 810
    return-void
.end method

.method public setAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    #@0
    .prologue
    .line 405
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
    .line 406
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@f
    .line 404
    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 820
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    iget-boolean v0, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@4
    if-eq v0, p1, :cond_0

    #@6
    .line 821
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@8
    iput-boolean p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mAutoMirrored:Z

    #@a
    .line 822
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@d
    .line 819
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    #@0
    .prologue
    .line 412
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    #@2
    .line 413
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@5
    .line 411
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 423
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    .line 424
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@4
    if-eq v1, p1, :cond_0

    #@6
    .line 425
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTint:Landroid/content/res/ColorStateList;

    #@8
    .line 426
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
    .line 427
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@15
    .line 422
    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable;->mVectorState:Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;

    #@2
    .line 434
    .local v0, "state":Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;
    iget-object v1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@4
    if-eq v1, p1, :cond_0

    #@6
    .line 435
    iput-object p1, v0, Landroid/graphics/drawable/VectorDrawable$VectorDrawableState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    #@8
    .line 436
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
    .line 437
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable;->invalidateSelf()V

    #@15
    .line 432
    :cond_0
    return-void
.end method
