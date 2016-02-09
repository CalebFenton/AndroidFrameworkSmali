.class public abstract Landroid/graphics/drawable/Drawable;
.super Ljava/lang/Object;
.source "Drawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/Drawable$Callback;,
        Landroid/graphics/drawable/Drawable$ConstantState;
    }
.end annotation


# static fields
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mChangingConfigurations:I

.field private mLayoutDirection:I

.field private mLevel:I

.field private mStateSet:[I

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 129
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    #@7
    .line 131
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@9
    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@b
    .line 128
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 133
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    #@6
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    #@8
    .line 134
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    #@a
    .line 135
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    #@c
    .line 136
    sget-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@10
    .line 137
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    #@13
    .line 138
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@16
    .line 128
    return-void
.end method

.method public static createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "pathName"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v6, 0x2000

    #@2
    const/4 v0, 0x0

    #@3
    .line 1224
    if-nez p0, :cond_0

    #@5
    .line 1225
    return-object v0

    #@6
    .line 1228
    :cond_0
    invoke-static {v6, v7, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1230
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@c
    move-result-object v1

    #@d
    .line 1231
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    #@f
    .line 1232
    const/4 v0, 0x0

    #@10
    const/4 v2, 0x0

    #@11
    const/4 v3, 0x0

    #@12
    const/4 v4, 0x0

    #@13
    move-object v5, p0

    #@14
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    move-result-object v0

    #@18
    .line 1235
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@1b
    .line 1232
    return-object v0

    #@1c
    .line 1235
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@1f
    .line 1238
    return-object v0

    #@20
    .line 1234
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    #@21
    .line 1235
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@24
    .line 1234
    throw v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v2, 0x2000

    #@2
    .line 1044
    if-eqz p3, :cond_0

    #@4
    move-object v0, p3

    #@5
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 1046
    const/4 v0, 0x0

    #@9
    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .line 1048
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@10
    .line 1046
    return-object v0

    #@11
    .line 1044
    :cond_0
    const-string/jumbo v0, "Unknown drawable"

    #@14
    goto :goto_0

    #@15
    .line 1047
    :catchall_0
    move-exception v0

    #@16
    .line 1048
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@19
    .line 1047
    throw v0
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "srcName"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/graphics/BitmapFactory$Options;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1058
    if-nez p2, :cond_0

    #@3
    .line 1059
    return-object v5

    #@4
    .line 1068
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    #@6
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@9
    .line 1077
    .local v3, "pad":Landroid/graphics/Rect;
    if-nez p4, :cond_1

    #@b
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    #@d
    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@10
    .line 1078
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    if-eqz p0, :cond_2

    #@12
    .line 1079
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@15
    move-result-object v0

    #@16
    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    #@18
    .line 1078
    :goto_0
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    #@1a
    .line 1080
    invoke-static {p0, p1, p2, v3, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1d
    move-result-object v1

    #@1e
    .line 1081
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_4

    #@20
    .line 1082
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    #@23
    move-result-object v2

    #@24
    .line 1083
    .local v2, "np":[B
    if-eqz v2, :cond_3

    #@26
    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3

    #@2c
    .line 1088
    .end local v2    # "np":[B
    .end local v3    # "pad":Landroid/graphics/Rect;
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    #@2e
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@31
    .line 1089
    .local v4, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    #@34
    move-object v0, p0

    #@35
    move-object v5, p3

    #@36
    .line 1090
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@39
    move-result-object v0

    #@3a
    return-object v0

    #@3b
    .line 1079
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "opticalInsets":Landroid/graphics/Rect;
    .restart local v3    # "pad":Landroid/graphics/Rect;
    :cond_2
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    #@3d
    goto :goto_0

    #@3e
    .line 1084
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "np":[B
    :cond_3
    const/4 v2, 0x0

    #@3f
    .line 1085
    .local v2, "np":[B
    const/4 v3, 0x0

    #@40
    .local v3, "pad":Landroid/graphics/Rect;
    goto :goto_1

    #@41
    .line 1092
    .end local v2    # "np":[B
    .local v3, "pad":Landroid/graphics/Rect;
    :cond_4
    return-object v5
.end method

.method public static createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "srcName"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v2, 0x2000

    #@2
    .line 1030
    if-eqz p1, :cond_0

    #@4
    move-object v0, p1

    #@5
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 1032
    const/4 v0, 0x0

    #@9
    const/4 v1, 0x0

    #@a
    :try_start_0
    invoke-static {v0, v1, p0, p1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    .line 1034
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@11
    .line 1032
    return-object v0

    #@12
    .line 1030
    :cond_0
    const-string/jumbo v0, "Unknown drawable"

    #@15
    goto :goto_0

    #@16
    .line 1033
    :catchall_0
    move-exception v0

    #@17
    .line 1034
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@1a
    .line 1033
    throw v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1102
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    .line 1112
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@4
    move-result-object v0

    #@5
    .line 1115
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v2

    #@9
    .local v2, "type":I
    if-eq v2, v4, :cond_1

    #@b
    .line 1116
    const/4 v3, 0x1

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 1120
    :cond_1
    if-eq v2, v4, :cond_2

    #@10
    .line 1121
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@12
    const-string/jumbo v4, "No start tag found"

    #@15
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 1124
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v1

    #@1d
    .line 1126
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3

    #@1f
    .line 1127
    new-instance v3, Ljava/lang/RuntimeException;

    #@21
    new-instance v4, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v5, "Unknown initial tag: "

    #@29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v4

    #@2d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v3

    #@3d
    .line 1130
    :cond_3
    return-object v1
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1140
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1154
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1155
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v2, "selector"

    #@7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1157
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    #@f
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    #@12
    .line 1215
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@15
    .line 1216
    return-object v0

    #@16
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string/jumbo v2, "animated-selector"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 1160
    new-instance v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    #@21
    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    #@24
    .line 1161
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@25
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    const-string/jumbo v2, "level-list"

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v2

    #@2c
    if-eqz v2, :cond_2

    #@2e
    .line 1163
    new-instance v0, Landroid/graphics/drawable/LevelListDrawable;

    #@30
    invoke-direct {v0}, Landroid/graphics/drawable/LevelListDrawable;-><init>()V

    #@33
    .line 1164
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@34
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string/jumbo v2, "layer-list"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    if-eqz v2, :cond_3

    #@3d
    .line 1166
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    #@3f
    invoke-direct {v0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    #@42
    .line 1167
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@43
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const-string/jumbo v2, "transition"

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v2

    #@4a
    if-eqz v2, :cond_4

    #@4c
    .line 1169
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    #@4e
    invoke-direct {v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>()V

    #@51
    .line 1170
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@52
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    const-string/jumbo v2, "ripple"

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_5

    #@5b
    .line 1172
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    #@5d
    invoke-direct {v0}, Landroid/graphics/drawable/RippleDrawable;-><init>()V

    #@60
    .line 1173
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@61
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string/jumbo v2, "color"

    #@64
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v2

    #@68
    if-eqz v2, :cond_6

    #@6a
    .line 1175
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    #@6c
    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    #@6f
    .line 1176
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@70
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    const-string/jumbo v2, "shape"

    #@73
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v2

    #@77
    if-eqz v2, :cond_7

    #@79
    .line 1178
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    #@7b
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    #@7e
    .line 1179
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@7f
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    const-string/jumbo v2, "vector"

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v2

    #@86
    if-eqz v2, :cond_8

    #@88
    .line 1181
    new-instance v0, Landroid/graphics/drawable/VectorDrawable;

    #@8a
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable;-><init>()V

    #@8d
    .line 1182
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    #@8e
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_8
    const-string/jumbo v2, "animated-vector"

    #@91
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v2

    #@95
    if-eqz v2, :cond_9

    #@97
    .line 1184
    new-instance v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    #@99
    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;-><init>()V

    #@9c
    .line 1185
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    #@9e
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    const-string/jumbo v2, "scale"

    #@a1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a4
    move-result v2

    #@a5
    if-eqz v2, :cond_a

    #@a7
    .line 1187
    new-instance v0, Landroid/graphics/drawable/ScaleDrawable;

    #@a9
    invoke-direct {v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>()V

    #@ac
    .line 1188
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    #@ae
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    const-string/jumbo v2, "clip"

    #@b1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v2

    #@b5
    if-eqz v2, :cond_b

    #@b7
    .line 1190
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    #@b9
    invoke-direct {v0}, Landroid/graphics/drawable/ClipDrawable;-><init>()V

    #@bc
    .line 1191
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    #@be
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    const-string/jumbo v2, "rotate"

    #@c1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c4
    move-result v2

    #@c5
    if-eqz v2, :cond_c

    #@c7
    .line 1193
    new-instance v0, Landroid/graphics/drawable/RotateDrawable;

    #@c9
    invoke-direct {v0}, Landroid/graphics/drawable/RotateDrawable;-><init>()V

    #@cc
    .line 1194
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    #@ce
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c
    const-string/jumbo v2, "animated-rotate"

    #@d1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d4
    move-result v2

    #@d5
    if-eqz v2, :cond_d

    #@d7
    .line 1196
    new-instance v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    #@d9
    invoke-direct {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;-><init>()V

    #@dc
    .line 1197
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    #@de
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_d
    const-string/jumbo v2, "animation-list"

    #@e1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e4
    move-result v2

    #@e5
    if-eqz v2, :cond_e

    #@e7
    .line 1199
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    #@e9
    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    #@ec
    .line 1200
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    #@ee
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_e
    const-string/jumbo v2, "inset"

    #@f1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f4
    move-result v2

    #@f5
    if-eqz v2, :cond_f

    #@f7
    .line 1202
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    #@f9
    invoke-direct {v0}, Landroid/graphics/drawable/InsetDrawable;-><init>()V

    #@fc
    .line 1203
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    #@fe
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_f
    const-string/jumbo v2, "bitmap"

    #@101
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@104
    move-result v2

    #@105
    if-eqz v2, :cond_10

    #@107
    .line 1205
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@109
    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    #@10c
    .line 1206
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    #@10e
    .line 1155
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_10
    const-string/jumbo v2, "nine-patch"

    #@111
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@114
    move-result v2

    #@115
    if-eqz v2, :cond_11

    #@117
    .line 1208
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    #@119
    invoke-direct {v0}, Landroid/graphics/drawable/NinePatchDrawable;-><init>()V

    #@11c
    .line 1209
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    #@11e
    .line 1211
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_11
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    #@120
    new-instance v3, Ljava/lang/StringBuilder;

    #@122
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    #@128
    move-result-object v4

    #@129
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v3

    #@12d
    .line 1212
    const-string/jumbo v4, ": invalid drawable tag "

    #@130
    .line 1211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v3

    #@134
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v3

    #@138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v3

    #@13c
    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@13f
    throw v2
.end method

.method private static drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "np"    # [B
    .param p3, "pad"    # Landroid/graphics/Rect;
    .param p4, "layoutBounds"    # Landroid/graphics/Rect;
    .param p5, "srcName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1369
    if-eqz p2, :cond_0

    #@2
    .line 1370
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v4, p3

    #@8
    move-object v5, p4

    #@9
    move-object v6, p5

    #@a
    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    #@d
    return-object v0

    #@e
    .line 1373
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    #@10
    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@13
    return-object v0
.end method

.method static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1402
    if-nez p1, :cond_0

    #@3
    .line 1403
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 1405
    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 1415
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1422
    :pswitch_0
    return-object p1

    #@4
    .line 1416
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@6
    return-object v0

    #@7
    .line 1417
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@9
    return-object v0

    #@a
    .line 1418
    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@c
    return-object v0

    #@d
    .line 1419
    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@f
    return-object v0

    #@10
    .line 1420
    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    #@12
    return-object v0

    #@13
    .line 1421
    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    #@15
    return-object v0

    #@16
    .line 1415
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static resolveOpacity(II)I
    .locals 3
    .param p0, "op1"    # I
    .param p1, "op2"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x2

    #@2
    const/4 v0, -0x3

    #@3
    .line 855
    if-ne p0, p1, :cond_0

    #@5
    .line 856
    return p0

    #@6
    .line 858
    :cond_0
    if-eqz p0, :cond_1

    #@8
    if-nez p1, :cond_2

    #@a
    .line 859
    :cond_1
    return v2

    #@b
    .line 861
    :cond_2
    if-eq p0, v0, :cond_3

    #@d
    if-ne p1, v0, :cond_4

    #@f
    .line 862
    :cond_3
    return v0

    #@10
    .line 864
    :cond_4
    if-eq p0, v1, :cond_5

    #@12
    if-ne p1, v1, :cond_6

    #@14
    .line 865
    :cond_5
    return v1

    #@15
    .line 867
    :cond_6
    const/4 v0, -0x1

    #@16
    return v0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 795
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 799
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public clearColorFilter()V
    .locals 1

    #@0
    .prologue
    .line 600
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@4
    .line 599
    return-void
.end method

.method public clearMutated()V
    .locals 0

    #@0
    .prologue
    .line 1022
    return-void
.end method

.method public final copyBounds()Landroid/graphics/Rect;
    .locals 2

    #@0
    .prologue
    .line 201
    new-instance v0, Landroid/graphics/Rect;

    #@2
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@4
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@7
    return-object v0
.end method

.method public final copyBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 189
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 188
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 477
    const/16 v0, 0xff

    #@2
    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 2

    #@0
    .prologue
    .line 220
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@2
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 221
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@d
    .line 224
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@f
    return-object v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 367
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 368
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    #@d
    return-object v0

    #@e
    .line 370
    :cond_0
    return-object v1
.end method

.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 268
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 593
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    #@0
    .prologue
    .line 1363
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    .prologue
    .line 710
    return-object p0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 238
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 630
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7
    .line 629
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 924
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 916
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    #@0
    .prologue
    .line 430
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    #@2
    return v0
.end method

.method public final getLevel()I
    .locals 1

    #@0
    .prologue
    .line 743
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    #@2
    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 951
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@4
    move-result v0

    #@5
    .line 952
    .local v0, "intrinsicHeight":I
    if-lez v0, :cond_0

    #@7
    .end local v0    # "intrinsicHeight":I
    :goto_0
    return v0

    #@8
    .restart local v0    # "intrinsicHeight":I
    :cond_0
    move v0, v1

    #@9
    goto :goto_0
.end method

.method public getMinimumWidth()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 937
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@4
    move-result v0

    #@5
    .line 938
    .local v0, "intrinsicWidth":I
    if-lez v0, :cond_0

    #@7
    .end local v0    # "intrinsicWidth":I
    :goto_0
    return v0

    #@8
    .restart local v0    # "intrinsicWidth":I
    :cond_0
    move v0, v1

    #@9
    goto :goto_0
.end method

.method public abstract getOpacity()I
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 1

    #@0
    .prologue
    .line 975
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@2
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 990
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    #@7
    .line 991
    const/4 v0, 0x0

    #@8
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    #@b
    .line 989
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 964
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@4
    .line 965
    return v0
.end method

.method public getState()[I
    .locals 1

    #@0
    .prologue
    .line 693
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    #@2
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    #@0
    .prologue
    .line 884
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1248
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@4
    .line 1247
    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
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
    const/4 v2, 0x0

    #@1
    .line 1264
    if-eqz p4, :cond_0

    #@3
    .line 1266
    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    #@5
    .line 1265
    invoke-virtual {p4, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 1271
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v2}, Landroid/graphics/drawable/Drawable;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    #@c
    .line 1272
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@f
    .line 1262
    return-void

    #@10
    .line 1268
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    #@12
    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@15
    move-result-object v0

    #@16
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method

.method inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V
    .locals 1
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/content/res/TypedArray;
    .param p4, "visibleAttr"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1283
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@2
    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5
    move-result v0

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@8
    .line 1282
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 384
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 385
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 382
    :cond_0
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 789
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isFilterBitmap()Z
    .locals 1

    #@0
    .prologue
    .line 298
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isProjected()Z
    .locals 1

    #@0
    .prologue
    .line 639
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 652
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final isVisible()Z
    .locals 1

    #@0
    .prologue
    .line 770
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@2
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    #@0
    .prologue
    .line 700
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    .prologue
    .line 1009
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 909
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 460
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 904
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    #@0
    .prologue
    .line 896
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Runnable;
    .param p2, "when"    # J

    #@0
    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 401
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 402
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    #@9
    .line 399
    :cond_0
    return-void
.end method

.method public abstract setAlpha(I)V
.end method

.method public setAutoMirrored(Z)V
    .locals 0
    .param p1, "mirrored"    # Z

    #@0
    .prologue
    .line 779
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@2
    .line 157
    .local v0, "oldBounds":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 158
    new-instance v0, Landroid/graphics/Rect;

    #@8
    .end local v0    # "oldBounds":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@d
    .line 161
    .restart local v0    # "oldBounds":Landroid/graphics/Rect;
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@f
    if-ne v1, p1, :cond_1

    #@11
    iget v1, v0, Landroid/graphics/Rect;->top:I

    #@13
    if-eq v1, p2, :cond_4

    #@15
    .line 163
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 165
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    #@1e
    .line 167
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@23
    .line 168
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@25
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@28
    .line 154
    :cond_3
    return-void

    #@29
    .line 162
    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->right:I

    #@2b
    if-ne v1, p3, :cond_1

    #@2d
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    #@2f
    if-eq v1, p4, :cond_3

    #@31
    goto :goto_0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 177
    iget v0, p1, Landroid/graphics/Rect;->left:I

    #@2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    #@4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    #@6
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    #@8
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@b
    .line 176
    return-void
.end method

.method public final setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/graphics/drawable/Drawable$Callback;

    #@0
    .prologue
    .line 355
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@5
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    #@7
    .line 354
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    #@0
    .prologue
    .line 251
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    #@2
    .line 250
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 524
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@8
    .line 523
    return-void
.end method

.method public abstract setColorFilter(Landroid/graphics/ColorFilter;)V
.end method

.method public setDither(Z)V
    .locals 0
    .param p1, "dither"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 279
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 291
    return-void
.end method

.method public setHotspot(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 609
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 621
    return-void
.end method

.method public final setLayoutDirection(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 444
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 445
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    #@6
    .line 446
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 448
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public final setLevel(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 730
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 731
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    #@6
    .line 732
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 734
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 678
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    #@2
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 679
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    #@a
    .line 680
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 682
    :cond_0
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    #@0
    .prologue
    .line 548
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@7
    .line 547
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 568
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 585
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 761
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@2
    if-eq v1, p1, :cond_1

    #@4
    const/4 v0, 0x1

    #@5
    .line 762
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 763
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@9
    .line 764
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    #@c
    .line 766
    :cond_0
    return v0

    #@d
    .line 761
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    #@e
    .restart local v0    # "changed":Z
    goto :goto_0
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    #@0
    .prologue
    .line 489
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 417
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 418
    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    #@9
    .line 415
    :cond_0
    return-void
.end method

.method updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p1, "tintFilter"    # Landroid/graphics/PorterDuffColorFilter;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;
    .param p3, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1382
    if-eqz p2, :cond_0

    #@3
    if-nez p3, :cond_1

    #@5
    .line 1383
    :cond_0
    return-object v1

    #@6
    .line 1386
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x0

    #@b
    invoke-virtual {p2, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    #@e
    move-result v0

    #@f
    .line 1387
    .local v0, "color":I
    if-nez p1, :cond_2

    #@11
    .line 1388
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    #@13
    invoke-direct {v1, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@16
    return-object v1

    #@17
    .line 1391
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    #@1a
    .line 1392
    invoke-virtual {p1, p3}, Landroid/graphics/PorterDuffColorFilter;->setMode(Landroid/graphics/PorterDuff$Mode;)V

    #@1d
    .line 1393
    return-object p1
.end method
