.class public Landroid/icu/text/MessagePatternUtil$ArgNode;
.super Landroid/icu/text/MessagePatternUtil$MessageContentsNode;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePatternUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArgNode"
.end annotation


# instance fields
.field private argType:Landroid/icu/text/MessagePattern$ArgType;

.field private complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

.field private name:Ljava/lang/String;

.field private number:I

.field private style:Ljava/lang/String;

.field private typeName:Ljava/lang/String;


# direct methods
.method static synthetic -set0(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePattern$ArgType;)Landroid/icu/text/MessagePattern$ArgType;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Landroid/icu/text/MessagePatternUtil$ArgNode;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    #@2
    return p1
.end method

.method static synthetic -set4(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0()Landroid/icu/text/MessagePatternUtil$ArgNode;
    .locals 1

    #@0
    invoke-static {}, Landroid/icu/text/MessagePatternUtil$ArgNode;->createArgNode()Landroid/icu/text/MessagePatternUtil$ArgNode;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 279
    sget-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->ARG:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, v0, v1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;Landroid/icu/text/MessagePatternUtil$MessageContentsNode;)V

    #@6
    .line 287
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    #@9
    .line 278
    return-void
.end method

.method private static createArgNode()Landroid/icu/text/MessagePatternUtil$ArgNode;
    .locals 1

    #@0
    .prologue
    .line 282
    new-instance v0, Landroid/icu/text/MessagePatternUtil$ArgNode;

    #@2
    invoke-direct {v0}, Landroid/icu/text/MessagePatternUtil$ArgNode;-><init>()V

    #@5
    return-object v0
.end method


# virtual methods
.method public getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .locals 1

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    #@2
    return-object v0
.end method

.method public getComplexStyle()Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 1

    #@0
    .prologue
    .line 255
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNumber()I
    .locals 1

    #@0
    .prologue
    .line 232
    iget v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    #@2
    return v0
.end method

.method public getSimpleStyle()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 247
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 239
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x2c

    #@2
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 264
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 265
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    #@14
    sget-object v2, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@16
    if-eq v1, v2, :cond_0

    #@18
    .line 266
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 267
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    #@23
    sget-object v2, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    #@25
    if-ne v1, v2, :cond_1

    #@27
    .line 268
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    #@29
    if-eqz v1, :cond_0

    #@2b
    .line 269
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 275
    :cond_0
    :goto_0
    const/16 v1, 0x7d

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    return-object v1

    #@3f
    .line 272
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    #@45
    invoke-virtual {v2}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    goto :goto_0
.end method
