.class public Landroid/content/res/ColorStateList;
.super Landroid/content/res/ComplexColor;
.source "ColorStateList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/ColorStateList$ColorStateListFactory;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/res/ColorStateList;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_COLOR:I = -0x10000

.field private static final greylist-max-o EMPTY:[[I

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ColorStateList"

.field private static final greylist-max-o sCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mChangingConfigurations:I

.field private greylist mColors:[I

.field private greylist mDefaultColor:I

.field private greylist mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

.field private greylist-max-o mIsOpaque:Z

.field private greylist mStateSpecs:[[I

.field private greylist-max-o mThemeAttrs:[[I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangingConfigurations(Landroid/content/res/ColorStateList;)I
    .registers 1

    iget p0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 152
    const/4 v0, 0x0

    new-array v0, v0, [I

    filled-new-array {v0}, [[I

    move-result-object v0

    sput-object v0, Landroid/content/res/ColorStateList;->EMPTY:[[I

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    .line 785
    new-instance v0, Landroid/content/res/ColorStateList$1;

    invoke-direct {v0}, Landroid/content/res/ColorStateList$1;-><init>()V

    sput-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 173
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 175
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "orig"    # Landroid/content/res/ColorStateList;

    .line 228
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 229
    if-eqz p1, :cond_29

    .line 230
    iget v0, p1, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 231
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 232
    iget v0, p1, Landroid/content/res/ColorStateList;->mDefaultColor:I

    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 233
    iget-boolean v0, p1, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    iput-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 236
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    invoke-virtual {v0}, [[I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 237
    iget-object v0, p1, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 239
    :cond_29
    return-void
.end method

.method public constructor whitelist <init>([[I[I)V
    .registers 3
    .param p1, "states"    # [[I
    .param p2, "colors"    # [I

    .line 181
    invoke-direct {p0}, Landroid/content/res/ComplexColor;-><init>()V

    .line 182
    iput-object p1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 183
    iput-object p2, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 185
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 186
    return-void
.end method

.method private greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 13
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 465
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-nez v0, :cond_5

    .line 466
    return-void

    .line 469
    :cond_5
    const/4 v0, 0x0

    .line 471
    .local v0, "hasUnresolvedAttrs":Z
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 472
    .local v1, "themeAttrsList":[[I
    array-length v2, v1

    .line 473
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v2, :cond_66

    .line 474
    aget-object v4, v1, v3

    if-eqz v4, :cond_63

    .line 475
    aget-object v4, v1, v3

    sget-object v5, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 479
    .local v4, "a":Landroid/content/res/TypedArray;
    aget-object v5, v1, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    if-eqz v5, :cond_2c

    .line 484
    iget-object v5, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v5, v5, v3

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v5, v7

    .local v5, "defaultAlphaMod":F
    goto :goto_2e

    .line 489
    .end local v5    # "defaultAlphaMod":F
    :cond_2c
    const/high16 v5, 0x3f800000    # 1.0f

    .line 495
    .restart local v5    # "defaultAlphaMod":F
    :goto_2e
    aget-object v7, v1, v3

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v7

    aput-object v7, v1, v3

    .line 496
    aget-object v7, v1, v3

    if-eqz v7, :cond_3b

    .line 497
    const/4 v0, 0x1

    .line 500
    :cond_3b
    iget-object v7, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v7, v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 502
    .local v6, "baseColor":I
    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 504
    .local v7, "alphaMod":F
    const/4 v8, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 506
    .local v8, "lStar":F
    iget-object v9, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-direct {p0, v6, v7, v8}, Landroid/content/res/ColorStateList;->modulateColor(IFF)I

    move-result v10

    aput v10, v9, v3

    .line 509
    iget v9, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    or-int/2addr v9, v10

    iput v9, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 511
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 473
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "defaultAlphaMod":F
    .end local v6    # "baseColor":I
    .end local v7    # "alphaMod":F
    .end local v8    # "lStar":F
    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 515
    .end local v3    # "i":I
    :cond_66
    if-nez v0, :cond_6b

    .line 516
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 519
    :cond_6b
    invoke-direct {p0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 520
    return-void
.end method

.method public static blacklist createFromProto(Landroid/util/proto/ProtoInputStream;)Landroid/content/res/ColorStateList;
    .registers 11
    .param p0, "in"    # Landroid/util/proto/ProtoInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v0, "stateSpecs":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v1, "colors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_a
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_a4

    .line 826
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v2

    const-string v4, "Unhandled field while reading Icon proto!\n"

    const-string v5, "ColorStateList"

    packed-switch v2, :pswitch_data_cc

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 850
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 849
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 828
    :pswitch_35
    const-wide v2, 0x50500000002L

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    goto :goto_a

    .line 831
    :pswitch_46
    const-wide v6, 0x20b00000001L

    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v6

    .line 832
    .local v6, "stateToken":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 833
    .local v2, "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_54
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v8

    if-eq v8, v3, :cond_8b

    .line 834
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v8

    packed-switch v8, :pswitch_data_d4

    .line 839
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 840
    invoke-static {p0}, Landroid/util/proto/ProtoUtils;->currentFieldToString(Landroid/util/proto/ProtoInputStream;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 839
    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 836
    :pswitch_7a
    const-wide v8, 0x50500000001L

    invoke-virtual {p0, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    goto :goto_54

    .line 843
    :cond_8b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 844
    .local v3, "statesArray":[I
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    .line 845
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 847
    goto/16 :goto_a

    .line 854
    .end local v2    # "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "statesArray":[I
    .end local v6    # "stateToken":J
    :cond_a4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[I

    .line 855
    .local v2, "stateSpecsArray":[[I
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 856
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 857
    .local v3, "colorsArray":[I
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Landroid/content/res/ColorStateList$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-static {v3, v4}, Ljava/util/Arrays;->setAll([ILjava/util/function/IntUnaryOperator;)V

    .line 858
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v4

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_46
        :pswitch_35
    .end packed-switch

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_7a
    .end packed-switch
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 273
    .local v0, "attrs":Landroid/util/AttributeSet;
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_10

    const/4 v1, 0x1

    if-eq v2, v1, :cond_10

    goto :goto_4

    .line 278
    :cond_10
    if-ne v2, v3, :cond_17

    .line 282
    invoke-static {p0, p1, v0, p2}, Landroid/content/res/ColorStateList;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1

    .line 279
    :cond_17
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v1, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 8
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

    .line 296
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 302
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1}, Landroid/content/res/ColorStateList;-><init>()V

    .line 303
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/content/res/ColorStateList;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 304
    return-object v1

    .line 298
    .end local v1    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_16
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 31
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

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 353
    .local v2, "innerDepth":I
    const/4 v4, 0x0

    .line 354
    .local v4, "changingConfigurations":I
    const/high16 v5, -0x10000

    .line 356
    .local v5, "defaultColor":I
    const/4 v6, 0x0

    .line 358
    .local v6, "hasUnresolvedAttrs":Z
    const-class v7, [I

    const/16 v8, 0x14

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 359
    .local v7, "stateSpecList":[[I
    array-length v8, v7

    new-array v8, v8, [[I

    .line 360
    .local v8, "themeAttrsList":[[I
    array-length v9, v7

    new-array v9, v9, [I

    .line 361
    .local v9, "colorList":[I
    const/4 v10, 0x0

    .line 363
    .local v10, "listSize":I
    :goto_1f
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    move v12, v11

    .local v12, "type":I
    if-eq v11, v3, :cond_103

    .line 364
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    move v14, v11

    .local v14, "depth":I
    if-ge v11, v2, :cond_39

    const/4 v11, 0x3

    if-eq v12, v11, :cond_31

    goto :goto_39

    :cond_31
    move/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v12

    goto/16 :goto_109

    .line 365
    :cond_39
    :goto_39
    const/4 v11, 0x2

    if-ne v12, v11, :cond_f4

    if-gt v14, v2, :cond_f4

    .line 366
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v11, "item"

    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_51

    .line 367
    move/from16 v17, v2

    move/from16 v18, v6

    goto/16 :goto_fc

    .line 370
    :cond_51
    sget-object v11, Lcom/android/internal/R$styleable;->ColorStateListItem:[I

    move-object/from16 v15, p1

    move-object/from16 v3, p4

    invoke-static {v15, v3, v1, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 372
    .local v11, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v13

    .line 373
    .local v13, "themeAttrs":[I
    move/from16 v17, v2

    .end local v2    # "innerDepth":I
    .local v17, "innerDepth":I
    const v2, -0xff01

    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 374
    .local v2, "baseColor":I
    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v18, v6

    const/4 v6, 0x1

    .end local v6    # "hasUnresolvedAttrs":Z
    .local v18, "hasUnresolvedAttrs":Z
    invoke-virtual {v11, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 375
    .local v3, "alphaMod":F
    const/high16 v6, -0x40800000    # -1.0f

    move/from16 v19, v12

    const/4 v12, 0x2

    .end local v12    # "type":I
    .local v19, "type":I
    invoke-virtual {v11, v12, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 377
    .local v6, "lStar":F
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v12

    or-int/2addr v4, v12

    .line 379
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 382
    const/4 v12, 0x0

    .line 383
    .local v12, "j":I
    move/from16 v16, v4

    .end local v4    # "changingConfigurations":I
    .local v16, "changingConfigurations":I
    invoke-interface {v1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    .line 384
    .local v4, "numAttrs":I
    move-object/from16 v20, v11

    .end local v11    # "a":Landroid/content/res/TypedArray;
    .local v20, "a":Landroid/content/res/TypedArray;
    new-array v11, v4, [I

    .line 385
    .local v11, "stateSpec":[I
    const/16 v21, 0x0

    move/from16 v25, v21

    move/from16 v21, v14

    move/from16 v14, v25

    .local v14, "i":I
    .local v21, "depth":I
    :goto_96
    if-ge v14, v4, :cond_c1

    .line 386
    move/from16 v22, v4

    .end local v4    # "numAttrs":I
    .local v22, "numAttrs":I
    invoke-interface {v1, v14}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 387
    .local v4, "stateResId":I
    const v15, 0x1010647

    if-ne v4, v15, :cond_a4

    .line 389
    goto :goto_ba

    .line 391
    :cond_a4
    sparse-switch v4, :sswitch_data_134

    .line 397
    add-int/lit8 v15, v12, 0x1

    move/from16 v23, v15

    const/4 v15, 0x0

    .end local v12    # "j":I
    .local v23, "j":I
    invoke-interface {v1, v14, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v24

    if-eqz v24, :cond_b5

    .line 398
    move v15, v4

    goto :goto_b6

    .line 395
    .end local v23    # "j":I
    .restart local v12    # "j":I
    :sswitch_b4
    goto :goto_ba

    .line 398
    .end local v12    # "j":I
    .restart local v23    # "j":I
    :cond_b5
    neg-int v15, v4

    :goto_b6
    aput v15, v11, v12

    move/from16 v12, v23

    .line 385
    .end local v4    # "stateResId":I
    .end local v23    # "j":I
    .restart local v12    # "j":I
    :goto_ba
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v15, p1

    move/from16 v4, v22

    goto :goto_96

    .end local v22    # "numAttrs":I
    .local v4, "numAttrs":I
    :cond_c1
    move/from16 v22, v4

    .line 401
    .end local v4    # "numAttrs":I
    .end local v14    # "i":I
    .restart local v22    # "numAttrs":I
    invoke-static {v11, v12}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v4

    .line 406
    .end local v11    # "stateSpec":[I
    .local v4, "stateSpec":[I
    invoke-direct {v0, v2, v3, v6}, Landroid/content/res/ColorStateList;->modulateColor(IFF)I

    move-result v11

    .line 408
    .local v11, "color":I
    if-eqz v10, :cond_d0

    array-length v14, v4

    if-nez v14, :cond_d1

    .line 409
    :cond_d0
    move v5, v11

    .line 412
    :cond_d1
    if-eqz v13, :cond_d5

    .line 413
    const/4 v14, 0x1

    .end local v18    # "hasUnresolvedAttrs":Z
    .local v14, "hasUnresolvedAttrs":Z
    goto :goto_d7

    .line 412
    .end local v14    # "hasUnresolvedAttrs":Z
    .restart local v18    # "hasUnresolvedAttrs":Z
    :cond_d5
    move/from16 v14, v18

    .line 416
    .end local v18    # "hasUnresolvedAttrs":Z
    .restart local v14    # "hasUnresolvedAttrs":Z
    :goto_d7
    invoke-static {v9, v10, v11}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    .line 417
    invoke-static {v8, v10, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    move-object v8, v15

    check-cast v8, [[I

    .line 418
    invoke-static {v7, v10, v4}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    move-object v7, v15

    check-cast v7, [[I

    .line 419
    nop

    .end local v2    # "baseColor":I
    .end local v3    # "alphaMod":F
    .end local v4    # "stateSpec":[I
    .end local v6    # "lStar":F
    .end local v11    # "color":I
    .end local v12    # "j":I
    .end local v13    # "themeAttrs":[I
    .end local v20    # "a":Landroid/content/res/TypedArray;
    .end local v22    # "numAttrs":I
    add-int/lit8 v10, v10, 0x1

    .line 420
    move v6, v14

    move/from16 v4, v16

    move/from16 v2, v17

    const/4 v3, 0x1

    goto/16 :goto_1f

    .line 365
    .end local v16    # "changingConfigurations":I
    .end local v17    # "innerDepth":I
    .end local v19    # "type":I
    .end local v21    # "depth":I
    .local v2, "innerDepth":I
    .local v4, "changingConfigurations":I
    .local v6, "hasUnresolvedAttrs":Z
    .local v12, "type":I
    .local v14, "depth":I
    :cond_f4
    move/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v12

    move/from16 v21, v14

    .line 363
    .end local v2    # "innerDepth":I
    .end local v6    # "hasUnresolvedAttrs":Z
    .end local v12    # "type":I
    .end local v14    # "depth":I
    .restart local v17    # "innerDepth":I
    .restart local v18    # "hasUnresolvedAttrs":Z
    :goto_fc
    move/from16 v2, v17

    move/from16 v6, v18

    const/4 v3, 0x1

    goto/16 :goto_1f

    .end local v17    # "innerDepth":I
    .end local v18    # "hasUnresolvedAttrs":Z
    .restart local v2    # "innerDepth":I
    .restart local v6    # "hasUnresolvedAttrs":Z
    .restart local v12    # "type":I
    :cond_103
    move/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v12

    .line 422
    .end local v2    # "innerDepth":I
    .end local v6    # "hasUnresolvedAttrs":Z
    .end local v12    # "type":I
    .restart local v17    # "innerDepth":I
    .restart local v18    # "hasUnresolvedAttrs":Z
    .restart local v19    # "type":I
    :goto_109
    iput v4, v0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    .line 423
    iput v5, v0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 425
    if-eqz v18, :cond_11a

    .line 426
    new-array v2, v10, [[I

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 427
    iget-object v2, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    const/4 v15, 0x0

    invoke-static {v8, v15, v2, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_11d

    .line 429
    :cond_11a
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 432
    :goto_11d
    new-array v2, v10, [I

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 433
    new-array v2, v10, [[I

    iput-object v2, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 434
    iget-object v2, v0, Landroid/content/res/ColorStateList;->mColors:[I

    const/4 v15, 0x0

    invoke-static {v9, v15, v2, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    iget-object v2, v0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-static {v7, v15, v2, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    invoke-direct {v0}, Landroid/content/res/ColorStateList;->onColorsChanged()V

    .line 438
    return-void

    :sswitch_data_134
    .sparse-switch
        0x10101a5 -> :sswitch_b4
        0x101031f -> :sswitch_b4
    .end sparse-switch
.end method

.method private blacklist modulateColor(IFF)I
    .registers 10
    .param p1, "baseColor"    # I
    .param p2, "alphaMod"    # F
    .param p3, "lStar"    # F

    .line 557
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v1

    .line 558
    .local v0, "validLStar":Z
    :goto_f
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_18

    if-nez v0, :cond_18

    .line 559
    return p1

    .line 562
    :cond_18
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 563
    .local v2, "baseAlpha":I
    int-to-float v3, v2

    mul-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    const/16 v4, 0xff

    invoke-static {v3, v1, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    .line 565
    .local v1, "alpha":I
    if-eqz v0, :cond_3a

    .line 566
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->colorToCAM(I)Lcom/android/internal/graphics/cam/Cam;

    move-result-object v3

    .line 567
    .local v3, "baseCam":Lcom/android/internal/graphics/cam/Cam;
    invoke-virtual {v3}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v4

    invoke-virtual {v3}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v5

    invoke-static {v4, v5, p3}, Lcom/android/internal/graphics/ColorUtils;->CAMToColor(FFF)I

    move-result p1

    .line 570
    .end local v3    # "baseCam":Lcom/android/internal/graphics/cam/Cam;
    :cond_3a
    const v3, 0xffffff

    and-int/2addr v3, p1

    shl-int/lit8 v4, v1, 0x18

    or-int/2addr v3, v4

    return v3
.end method

.method private greylist-max-r onColorsChanged()V
    .registers 9

    .line 704
    const/high16 v0, -0x10000

    .line 705
    .local v0, "defaultColor":I
    const/4 v1, 0x1

    .line 707
    .local v1, "isOpaque":Z
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 708
    .local v2, "states":[[I
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 709
    .local v3, "colors":[I
    array-length v4, v2

    .line 710
    .local v4, "N":I
    if-lez v4, :cond_2e

    .line 711
    const/4 v5, 0x0

    aget v0, v3, v5

    .line 713
    add-int/lit8 v5, v4, -0x1

    .local v5, "i":I
    :goto_f
    if-lez v5, :cond_1c

    .line 714
    aget-object v6, v2, v5

    array-length v6, v6

    if-nez v6, :cond_19

    .line 715
    aget v0, v3, v5

    .line 716
    goto :goto_1c

    .line 713
    :cond_19
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    .line 720
    .end local v5    # "i":I
    :cond_1c
    :goto_1c
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1d
    if-ge v5, v4, :cond_2e

    .line 721
    aget v6, v3, v5

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_2b

    .line 722
    const/4 v1, 0x0

    .line 723
    goto :goto_2e

    .line 720
    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 728
    .end local v5    # "i":I
    :cond_2e
    :goto_2e
    iput v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    .line 729
    iput-boolean v1, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    .line 730
    return-void
.end method

.method public static whitelist valueOf(I)Landroid/content/res/ColorStateList;
    .registers 7
    .param p0, "color"    # I

    .line 193
    sget-object v0, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 194
    :try_start_3
    sget-object v1, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 195
    .local v1, "index":I
    if-ltz v1, :cond_22

    .line 196
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    .line 197
    .local v2, "cached":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1d

    .line 198
    monitor-exit v0

    return-object v2

    .line 202
    :cond_1d
    sget-object v3, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 206
    .end local v2    # "cached":Landroid/content/res/ColorStateList;
    :cond_22
    sget-object v2, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 207
    .local v2, "N":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_2a
    if-ltz v3, :cond_43

    .line 208
    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 209
    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 207
    :cond_40
    add-int/lit8 v3, v3, -0x1

    goto :goto_2a

    .line 213
    .end local v3    # "i":I
    :cond_43
    new-instance v3, Landroid/content/res/ColorStateList;

    sget-object v4, Landroid/content/res/ColorStateList;->EMPTY:[[I

    filled-new-array {p0}, [I

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 214
    .local v3, "csl":Landroid/content/res/ColorStateList;
    sget-object v4, Landroid/content/res/ColorStateList;->sCache:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    monitor-exit v0

    return-object v3

    .line 216
    .end local v1    # "index":I
    .end local v2    # "N":I
    .end local v3    # "csl":Landroid/content/res/ColorStateList;
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw v1
.end method


# virtual methods
.method public greylist canApplyTheme()Z
    .registers 2

    .line 451
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 769
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 553
    invoke-super {p0}, Landroid/content/res/ComplexColor;->getChangingConfigurations()I

    move-result v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public whitelist getColorForState([II)I
    .registers 7
    .param p1, "stateSet"    # [I
    .param p2, "defaultColor"    # I

    .line 618
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    .line 619
    .local v0, "setLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_18

    .line 620
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    .line 621
    .local v2, "stateSpec":[I
    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 622
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v1

    return v3

    .line 619
    .end local v2    # "stateSpec":[I
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 625
    .end local v1    # "i":I
    :cond_18
    return p2
.end method

.method public greylist getColors()[I
    .registers 2

    .line 659
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    return-object v0
.end method

.method public greylist-max-o getConstantState()Landroid/content/res/ConstantState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState<",
            "Landroid/content/res/ComplexColor;",
            ">;"
        }
    .end annotation

    .line 737
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    if-nez v0, :cond_b

    .line 738
    new-instance v0, Landroid/content/res/ColorStateList$ColorStateListFactory;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;-><init>(Landroid/content/res/ColorStateList;)V

    iput-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    .line 740
    :cond_b
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mFactory:Landroid/content/res/ColorStateList$ColorStateListFactory;

    return-object v0
.end method

.method public whitelist getDefaultColor()I
    .registers 2

    .line 635
    iget v0, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    return v0
.end method

.method public greylist getStates()[[I
    .registers 2

    .line 647
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    return-object v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .registers 3

    .line 592
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    const v1, 0x101009c

    invoke-static {v0, v1}, Landroid/util/StateSet;->containsAttribute([[II)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasState(I)Z
    .registers 10
    .param p1, "state"    # I

    .line 675
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 676
    .local v0, "stateSpecs":[[I
    array-length v1, v0

    .line 677
    .local v1, "specCount":I
    const/4 v2, 0x0

    .local v2, "specIndex":I
    :goto_4
    if-ge v2, v1, :cond_1e

    .line 678
    aget-object v3, v0, v2

    .line 679
    .local v3, "states":[I
    array-length v4, v3

    .line 680
    .local v4, "stateCount":I
    const/4 v5, 0x0

    .local v5, "stateIndex":I
    :goto_a
    if-ge v5, v4, :cond_1b

    .line 681
    aget v6, v3, v5

    if-eq v6, p1, :cond_19

    aget v6, v3, v5

    not-int v7, p1

    if-ne v6, v7, :cond_16

    goto :goto_19

    .line 680
    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 682
    :cond_19
    :goto_19
    const/4 v6, 0x1

    return v6

    .line 677
    .end local v3    # "states":[I
    .end local v4    # "stateCount":I
    .end local v5    # "stateIndex":I
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 686
    .end local v2    # "specIndex":I
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isOpaque()Z
    .registers 2

    .line 603
    iget-boolean v0, p0, Landroid/content/res/ColorStateList;->mIsOpaque:Z

    return v0
.end method

.method public whitelist isStateful()Z
    .registers 4

    .line 583
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_f

    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v0, v0, v1

    array-length v0, v0

    if-lez v0, :cond_f

    move v1, v2

    :cond_f
    return v1
.end method

.method public greylist-max-r obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 534
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 538
    :cond_9
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, p0}, Landroid/content/res/ColorStateList;-><init>(Landroid/content/res/ColorStateList;)V

    .line 539
    .local v0, "clone":Landroid/content/res/ColorStateList;
    invoke-direct {v0, p1}, Landroid/content/res/ColorStateList;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 540
    return-object v0

    .line 535
    .end local v0    # "clone":Landroid/content/res/ColorStateList;
    :cond_12
    :goto_12
    return-object p0
.end method

.method public bridge synthetic greylist-max-r obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorStateList{mThemeAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mThemeAttrs:[[I

    .line 692
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mChangingConfigurations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mStateSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    .line 694
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    .line 695
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mDefaultColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/res/ColorStateList;->mDefaultColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    return-object v0
.end method

.method public whitelist withAlpha(I)Landroid/content/res/ColorStateList;
    .registers 7
    .param p1, "alpha"    # I

    .line 316
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 317
    .local v0, "colors":[I
    array-length v1, v0

    .line 318
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_19

    .line 319
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v2

    const v4, 0xffffff

    and-int/2addr v3, v4

    shl-int/lit8 v4, p1, 0x18

    or-int/2addr v3, v4

    aput v3, v0, v2

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 322
    .end local v2    # "i":I
    :cond_19
    new-instance v2, Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public whitelist withLStar(F)Landroid/content/res/ColorStateList;
    .registers 7
    .param p1, "lStar"    # F

    .line 334
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 335
    .local v0, "colors":[I
    array-length v1, v0

    .line 336
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_18

    .line 337
    iget-object v3, p0, Landroid/content/res/ColorStateList;->mColors:[I

    aget v3, v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v3, v4, p1}, Landroid/content/res/ColorStateList;->modulateColor(IFF)I

    move-result v3

    aput v3, v0, v2

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 340
    .end local v2    # "i":I
    :cond_18
    new-instance v2, Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    invoke-direct {v2, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 774
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 775
    const-string v0, "ColorStateList"

    const-string v1, "Wrote partially-resolved ColorStateList to parcel!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_d
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v0, v0

    .line 778
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-ge v1, v0, :cond_20

    .line 780
    iget-object v2, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 779
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 782
    .end local v1    # "i":I
    :cond_20
    iget-object v1, p0, Landroid/content/res/ColorStateList;->mColors:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 783
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 14
    .param p1, "out"    # Landroid/util/proto/ProtoOutputStream;

    .line 806
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mStateSpecs:[[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_29

    aget-object v4, v0, v3

    .line 807
    .local v4, "states":[I
    const-wide v5, 0x20b00000001L

    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 808
    .local v5, "specToken":J
    array-length v7, v4

    move v8, v2

    :goto_14
    if-ge v8, v7, :cond_23

    aget v9, v4, v8

    .line 809
    .local v9, "state":I
    const-wide v10, 0x50500000001L

    invoke-virtual {p1, v10, v11, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 808
    .end local v9    # "state":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 811
    :cond_23
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 806
    .end local v4    # "states":[I
    .end local v5    # "specToken":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 813
    :cond_29
    iget-object v0, p0, Landroid/content/res/ColorStateList;->mColors:[I

    array-length v1, v0

    :goto_2c
    if-ge v2, v1, :cond_3b

    aget v3, v0, v2

    .line 814
    .local v3, "color":I
    const-wide v4, 0x50500000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 813
    .end local v3    # "color":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 816
    :cond_3b
    return-void
.end method
