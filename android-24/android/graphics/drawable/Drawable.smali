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
    .line 175
    new-instance v0, Landroid/graphics/Rect;

    #@2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@5
    sput-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    #@7
    .line 177
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@9
    sput-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    #@b
    .line 174
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 179
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    #@6
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    #@8
    .line 180
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    #@a
    .line 181
    iput v1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    #@c
    .line 182
    sget-object v0, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    #@e
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@10
    .line 183
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    #@13
    .line 184
    const/4 v0, 0x1

    #@14
    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@16
    .line 174
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
    .line 1231
    if-nez p0, :cond_0

    #@5
    .line 1232
    return-object v0

    #@6
    .line 1235
    :cond_0
    invoke-static {v6, v7, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@9
    .line 1237
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    #@c
    move-result-object v1

    #@d
    .line 1238
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    #@f
    .line 1239
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
    .line 1242
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@1b
    .line 1239
    return-object v0

    #@1c
    .line 1242
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@1f
    .line 1245
    return-object v0

    #@20
    .line 1241
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    #@21
    .line 1242
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    #@24
    .line 1241
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
    .line 1117
    if-eqz p3, :cond_0

    #@4
    move-object v0, p3

    #@5
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 1119
    const/4 v0, 0x0

    #@9
    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v0

    #@d
    .line 1121
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@10
    .line 1119
    return-object v0

    #@11
    .line 1117
    :cond_0
    const-string/jumbo v0, "Unknown drawable"

    #@14
    goto :goto_0

    #@15
    .line 1120
    :catchall_0
    move-exception v0

    #@16
    .line 1121
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@19
    .line 1120
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
    .line 1131
    if-nez p2, :cond_0

    #@3
    .line 1132
    return-object v5

    #@4
    .line 1141
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    #@6
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    #@9
    .line 1150
    .local v3, "pad":Landroid/graphics/Rect;
    if-nez p4, :cond_1

    #@b
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    #@d
    .end local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    #@10
    .line 1151
    .restart local p4    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v0, 0x0

    #@11
    invoke-static {p0, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    #@14
    move-result v0

    #@15
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    #@17
    .line 1152
    invoke-static {p0, p1, p2, v3, p4}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    #@1a
    move-result-object v1

    #@1b
    .line 1153
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    #@1d
    .line 1154
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    #@20
    move-result-object v2

    #@21
    .line 1155
    .local v2, "np":[B
    if-eqz v2, :cond_2

    #@23
    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    #@26
    move-result v0

    #@27
    if-eqz v0, :cond_2

    #@29
    .line 1160
    .end local v2    # "np":[B
    .end local v3    # "pad":Landroid/graphics/Rect;
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    #@2b
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    #@2e
    .line 1161
    .local v4, "opticalInsets":Landroid/graphics/Rect;
    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->getOpticalInsets(Landroid/graphics/Rect;)V

    #@31
    move-object v0, p0

    #@32
    move-object v5, p3

    #@33
    .line 1162
    invoke-static/range {v0 .. v5}, Landroid/graphics/drawable/Drawable;->drawableFromBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    #@36
    move-result-object v0

    #@37
    return-object v0

    #@38
    .line 1156
    .end local v4    # "opticalInsets":Landroid/graphics/Rect;
    .restart local v2    # "np":[B
    .restart local v3    # "pad":Landroid/graphics/Rect;
    :cond_2
    const/4 v2, 0x0

    #@39
    .line 1157
    .local v2, "np":[B
    const/4 v3, 0x0

    #@3a
    .local v3, "pad":Landroid/graphics/Rect;
    goto :goto_0

    #@3b
    .line 1164
    .end local v2    # "np":[B
    .local v3, "pad":Landroid/graphics/Rect;
    :cond_3
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
    .line 1103
    if-eqz p1, :cond_0

    #@4
    move-object v0, p1

    #@5
    :goto_0
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    #@8
    .line 1105
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
    .line 1107
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@11
    .line 1105
    return-object v0

    #@12
    .line 1103
    :cond_0
    const-string/jumbo v0, "Unknown drawable"

    #@15
    goto :goto_0

    #@16
    .line 1106
    :catchall_0
    move-exception v0

    #@17
    .line 1107
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    #@1a
    .line 1106
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
    .line 1174
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
    .line 1184
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@4
    move-result-object v0

    #@5
    .line 1188
    .local v0, "attrs":Landroid/util/AttributeSet;
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    #@8
    move-result v2

    #@9
    .local v2, "type":I
    if-eq v2, v4, :cond_1

    #@b
    .line 1189
    const/4 v3, 0x1

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 1193
    :cond_1
    if-eq v2, v4, :cond_2

    #@10
    .line 1194
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    #@12
    const-string/jumbo v4, "No start tag found"

    #@15
    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 1197
    :cond_2
    invoke-static {p0, p1, v0, p2}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v1

    #@1d
    .line 1199
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_3

    #@1f
    .line 1200
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
    .line 1203
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
    .line 1213
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
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
    .line 1224
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDrawableInflater()Landroid/graphics/drawable/DrawableInflater;

    #@3
    move-result-object v0

    #@4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/graphics/drawable/DrawableInflater;->inflateFromXml(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v0

    #@c
    return-object v0
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
    .line 1395
    if-eqz p2, :cond_0

    #@2
    .line 1396
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
    .line 1399
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
    .line 1428
    if-nez p1, :cond_0

    #@3
    .line 1429
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 1431
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
    .line 1512
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1519
    :pswitch_0
    return-object p1

    #@4
    .line 1513
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    #@6
    return-object v0

    #@7
    .line 1514
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    #@9
    return-object v0

    #@a
    .line 1515
    :pswitch_3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #@c
    return-object v0

    #@d
    .line 1516
    :pswitch_4
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    #@f
    return-object v0

    #@10
    .line 1517
    :pswitch_5
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    #@12
    return-object v0

    #@13
    .line 1518
    :pswitch_6
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    #@15
    return-object v0

    #@16
    .line 1512
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

.method static resolveDensity(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parentDensity"    # I

    #@0
    .prologue
    .line 1487
    if-nez p0, :cond_1

    #@2
    move v0, p1

    #@3
    .line 1488
    .local v0, "densityDpi":I
    :goto_0
    if-nez v0, :cond_0

    #@5
    const/16 v0, 0xa0

    #@7
    .end local v0    # "densityDpi":I
    :cond_0
    return v0

    #@8
    .line 1487
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@b
    move-result-object v1

    #@c
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@e
    goto :goto_0
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
    .line 910
    if-ne p0, p1, :cond_0

    #@5
    .line 911
    return p0

    #@6
    .line 913
    :cond_0
    if-eqz p0, :cond_1

    #@8
    if-nez p1, :cond_2

    #@a
    .line 914
    :cond_1
    return v2

    #@b
    .line 916
    :cond_2
    if-eq p0, v0, :cond_3

    #@d
    if-ne p1, v0, :cond_4

    #@f
    .line 917
    :cond_3
    return v0

    #@10
    .line 919
    :cond_4
    if-eq p0, v1, :cond_5

    #@12
    if-ne p1, v1, :cond_6

    #@14
    .line 920
    :cond_5
    return v1

    #@15
    .line 922
    :cond_6
    const/4 v0, -0x1

    #@16
    return v0
.end method

.method static rethrowAsRuntimeException(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "cause"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    #@0
    .prologue
    .line 1500
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@5
    .line 1501
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    #@6
    new-array v1, v1, [Ljava/lang/StackTraceElement;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    #@b
    .line 1502
    throw v0
.end method

.method static scaleFromDensity(FII)F
    .locals 2
    .param p0, "pixels"    # F
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    #@0
    .prologue
    .line 1444
    int-to-float v0, p2

    #@1
    mul-float/2addr v0, p0

    #@2
    int-to-float v1, p1

    #@3
    div-float/2addr v0, v1

    #@4
    return v0
.end method

.method static scaleFromDensity(IIIZ)I
    .locals 4
    .param p0, "pixels"    # I
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I
    .param p3, "isSize"    # Z

    #@0
    .prologue
    .line 1467
    if-eqz p0, :cond_0

    #@2
    if-ne p1, p2, :cond_1

    #@4
    .line 1468
    :cond_0
    return p0

    #@5
    .line 1471
    :cond_1
    mul-int v2, p0, p2

    #@7
    int-to-float v2, v2

    #@8
    int-to-float v3, p1

    #@9
    div-float v0, v2, v3

    #@b
    .line 1472
    .local v0, "result":F
    if-nez p3, :cond_2

    #@d
    .line 1473
    float-to-int v2, v0

    #@e
    return v2

    #@f
    .line 1476
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@12
    move-result v1

    #@13
    .line 1477
    .local v1, "rounded":I
    if-eqz v1, :cond_3

    #@15
    .line 1478
    return v1

    #@16
    .line 1479
    :cond_3
    if-lez p0, :cond_4

    #@18
    .line 1480
    const/4 v2, 0x1

    #@19
    return v2

    #@1a
    .line 1482
    :cond_4
    const/4 v2, -0x1

    #@1b
    return v2
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 849
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 853
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public clearColorFilter()V
    .locals 1

    #@0
    .prologue
    .line 652
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@4
    .line 651
    return-void
.end method

.method public clearMutated()V
    .locals 0

    #@0
    .prologue
    .line 1095
    return-void
.end method

.method public final copyBounds()Landroid/graphics/Rect;
    .locals 2

    #@0
    .prologue
    .line 248
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
    .line 235
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@5
    .line 234
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public getAlpha()I
    .locals 1

    #@0
    .prologue
    .line 529
    const/16 v0, 0xff

    #@2
    return v0
.end method

.method public final getBounds()Landroid/graphics/Rect;
    .locals 2

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@2
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 269
    new-instance v0, Landroid/graphics/Rect;

    #@8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@d
    .line 272
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@f
    return-object v0
.end method

.method public getCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 417
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    #@d
    :cond_0
    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 317
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    #@0
    .prologue
    .line 645
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    #@0
    .prologue
    .line 1389
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    .prologue
    .line 762
    return-object p0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .locals 1

    #@0
    .prologue
    .line 287
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
    .line 682
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@7
    .line 681
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    #@0
    .prologue
    .line 997
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    #@0
    .prologue
    .line 984
    const/4 v0, -0x1

    #@1
    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    #@0
    .prologue
    .line 477
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    #@2
    return v0
.end method

.method public final getLevel()I
    .locals 1

    #@0
    .prologue
    .line 795
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
    .line 1024
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@4
    move-result v0

    #@5
    .line 1025
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
    .line 1010
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@4
    move-result v0

    #@5
    .line 1011
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
    .line 1048
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@2
    return-object v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    #@0
    .prologue
    .line 1063
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setRect(Landroid/graphics/Rect;)V

    #@7
    .line 1064
    const/4 v0, 0x0

    #@8
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setAlpha(F)V

    #@b
    .line 1062
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1037
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    #@4
    .line 1038
    return v0
.end method

.method public getState()[I
    .locals 1

    #@0
    .prologue
    .line 745
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    #@2
    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    #@0
    .prologue
    .line 939
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
    .line 1255
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    #@4
    .line 1254
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
    .line 1273
    sget-object v1, Lcom/android/internal/R$styleable;->Drawable:[I

    #@2
    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 1274
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@c
    move-result v1

    #@d
    iput-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@f
    .line 1275
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@12
    .line 1272
    return-void
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
    .line 1287
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@2
    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@5
    move-result v0

    #@6
    iput-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@8
    .line 1286
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    #@0
    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 431
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 432
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@9
    .line 429
    :cond_0
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    #@0
    .prologue
    .line 841
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isFilterBitmap()Z
    .locals 1

    #@0
    .prologue
    .line 347
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isProjected()Z
    .locals 1

    #@0
    .prologue
    .line 691
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 704
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final isVisible()Z
    .locals 1

    #@0
    .prologue
    .line 822
    iget-boolean v0, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@2
    return v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    #@0
    .prologue
    .line 752
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 0

    #@0
    .prologue
    .line 1082
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 970
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 511
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 963
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    #@0
    .prologue
    .line 952
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
    .line 447
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 448
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 449
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    #@9
    .line 446
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
    .line 831
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
    .line 201
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@2
    .line 203
    .local v0, "oldBounds":Landroid/graphics/Rect;
    sget-object v1, Landroid/graphics/drawable/Drawable;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 204
    new-instance v0, Landroid/graphics/Rect;

    #@8
    .end local v0    # "oldBounds":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@b
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@d
    .line 207
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
    .line 209
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    #@18
    move-result v1

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 211
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    #@1e
    .line 213
    :cond_2
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@20
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@23
    .line 214
    iget-object v1, p0, Landroid/graphics/drawable/Drawable;->mBounds:Landroid/graphics/Rect;

    #@25
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    #@28
    .line 200
    :cond_3
    return-void

    #@29
    .line 208
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
    .line 223
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
    .line 222
    return-void
.end method

.method public final setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/graphics/drawable/Drawable$Callback;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 404
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    :cond_0
    iput-object v0, p0, Landroid/graphics/drawable/Drawable;->mCallback:Ljava/lang/ref/WeakReference;

    #@a
    .line 403
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    #@0
    .prologue
    .line 300
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mChangingConfigurations:I

    #@2
    .line 299
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 576
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    #@8
    .line 575
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
    .line 328
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0
    .param p1, "filter"    # Z

    #@0
    .prologue
    .line 340
    return-void
.end method

.method public setHotspot(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 661
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
    .line 673
    return-void
.end method

.method public final setLayoutDirection(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    .line 494
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 495
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLayoutDirection:I

    #@6
    .line 496
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLayoutDirectionChanged(I)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 498
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
    .line 782
    iget v0, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 783
    iput p1, p0, Landroid/graphics/drawable/Drawable;->mLevel:I

    #@6
    .line 784
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 786
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
    .line 730
    iget-object v0, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    #@2
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 731
    iput-object p1, p0, Landroid/graphics/drawable/Drawable;->mStateSet:[I

    #@a
    .line 732
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    #@d
    move-result v0

    #@e
    return v0

    #@f
    .line 734
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
    .line 600
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    #@7
    .line 599
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 620
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 637
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    #@0
    .prologue
    .line 813
    iget-boolean v1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@2
    if-eq v1, p1, :cond_1

    #@4
    const/4 v0, 0x1

    #@5
    .line 814
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    #@7
    .line 815
    iput-boolean p1, p0, Landroid/graphics/drawable/Drawable;->mVisible:Z

    #@9
    .line 816
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    #@c
    .line 818
    :cond_0
    return v0

    #@d
    .line 813
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    #@0
    .prologue
    .line 541
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "what"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    #@3
    move-result-object v0

    #@4
    .line 464
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    #@6
    .line 465
    invoke-interface {v0, p0, p1}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    #@9
    .line 462
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
    .line 1408
    if-eqz p2, :cond_0

    #@3
    if-nez p3, :cond_1

    #@5
    .line 1409
    :cond_0
    return-object v1

    #@6
    .line 1412
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
    .line 1413
    .local v0, "color":I
    if-nez p1, :cond_2

    #@11
    .line 1414
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    #@13
    invoke-direct {v1, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #@16
    return-object v1

    #@17
    .line 1417
    :cond_2
    invoke-virtual {p1, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    #@1a
    .line 1418
    invoke-virtual {p1, p3}, Landroid/graphics/PorterDuffColorFilter;->setMode(Landroid/graphics/PorterDuff$Mode;)V

    #@1d
    .line 1419
    return-object p1
.end method
