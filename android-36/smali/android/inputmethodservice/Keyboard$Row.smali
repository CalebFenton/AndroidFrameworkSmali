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
.field public whitelist defaultHeight:I

.field public whitelist defaultHorizontalGap:I

.field public whitelist defaultWidth:I

.field greylist-max-o mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist mode:I

.field private greylist-max-o parent:Landroid/inputmethodservice/Keyboard;

.field public whitelist rowEdgeFlags:I

.field public whitelist verticalGap:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetparent(Landroid/inputmethodservice/Keyboard$Row;)Landroid/inputmethodservice/Keyboard;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .registers 10
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 199
    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    .line 200
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDefaultWidth(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    .line 205
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayHeight(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDefaultHeight(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 208
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDefaultHorizontalGap(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    const/4 v5, 0x2

    invoke-static {v0, v5, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    .line 211
    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayHeight(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDefaultVerticalGap(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    const/4 v5, 0x3

    invoke-static {v0, v5, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 214
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard_Row:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    .line 218
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    .line 220
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 221
    return-void
.end method

.method public constructor whitelist <init>(Landroid/inputmethodservice/Keyboard;)V
    .registers 3
    .param p1, "parent"    # Landroid/inputmethodservice/Keyboard;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    .line 195
    iput-object p1, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    .line 196
    return-void
.end method
