.class public Landroid/inputmethodservice/Keyboard$Row;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field private parent:Landroid/inputmethodservice/Keyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method static synthetic -get0(Landroid/inputmethodservice/Keyboard$Row;)Landroid/inputmethodservice/Keyboard;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 171
    new-instance v1, Ljava/util/ArrayList;

    #@7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v1, p0, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    #@c
    .line 189
    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    #@e
    .line 190
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@11
    move-result-object v1

    #@12
    .line 191
    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard:[I

    #@14
    .line 190
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@17
    move-result-object v0

    #@18
    .line 194
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-get5(Landroid/inputmethodservice/Keyboard;)I

    #@1b
    move-result v1

    #@1c
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-get3(Landroid/inputmethodservice/Keyboard;)I

    #@1f
    move-result v2

    #@20
    .line 192
    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@23
    move-result v1

    #@24
    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    #@26
    .line 197
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-get4(Landroid/inputmethodservice/Keyboard;)I

    #@29
    move-result v1

    #@2a
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-get0(Landroid/inputmethodservice/Keyboard;)I

    #@2d
    move-result v2

    #@2e
    .line 195
    invoke-static {v0, v5, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@31
    move-result v1

    #@32
    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    #@34
    .line 200
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-get5(Landroid/inputmethodservice/Keyboard;)I

    #@37
    move-result v1

    #@38
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-get1(Landroid/inputmethodservice/Keyboard;)I

    #@3b
    move-result v2

    #@3c
    .line 199
    const/4 v3, 0x2

    #@3d
    .line 198
    invoke-static {v0, v3, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@40
    move-result v1

    #@41
    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    #@43
    .line 203
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-get4(Landroid/inputmethodservice/Keyboard;)I

    #@46
    move-result v1

    #@47
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-get2(Landroid/inputmethodservice/Keyboard;)I

    #@4a
    move-result v2

    #@4b
    .line 202
    const/4 v3, 0x3

    #@4c
    .line 201
    invoke-static {v0, v3, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    #@4f
    move-result v1

    #@50
    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    #@52
    .line 204
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@55
    .line 205
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    #@58
    move-result-object v1

    #@59
    .line 206
    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard_Row:[I

    #@5b
    .line 205
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5e
    move-result-object v0

    #@5f
    .line 207
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@62
    move-result v1

    #@63
    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    #@65
    .line 208
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@68
    move-result v1

    #@69
    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    #@6b
    .line 188
    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/Keyboard;)V
    .locals 1
    .param p1, "parent"    # Landroid/inputmethodservice/Keyboard;

    #@0
    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 171
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    #@a
    .line 185
    iput-object p1, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    #@c
    .line 184
    return-void
.end method
