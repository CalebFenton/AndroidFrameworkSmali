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
.field private greylist-max-o argType:Landroid/icu/text/MessagePattern$ArgType;

.field private greylist-max-o complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

.field private greylist-max-o name:Ljava/lang/String;

.field private greylist-max-o number:I

.field private greylist-max-o style:Ljava/lang/String;

.field private greylist-max-o typeName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputargType(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePattern$ArgType;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputcomplexStyle(Landroid/icu/text/MessagePatternUtil$ArgNode;Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputname(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputnumber(Landroid/icu/text/MessagePatternUtil$ArgNode;I)V
    .registers 2

    iput p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputstyle(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputtypeName(Landroid/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateArgNode()Landroid/icu/text/MessagePatternUtil$ArgNode;
    .registers 1

    invoke-static {}, Landroid/icu/text/MessagePatternUtil$ArgNode;->createArgNode()Landroid/icu/text/MessagePatternUtil$ArgNode;

    move-result-object v0

    return-object v0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 264
    sget-object v0, Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;->ARG:Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/MessagePatternUtil$MessageContentsNode;-><init>(Landroid/icu/text/MessagePatternUtil$MessageContentsNode$Type;Landroid/icu/text/MessagePatternUtil-IA;)V

    .line 272
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    .line 265
    return-void
.end method

.method private static greylist-max-o createArgNode()Landroid/icu/text/MessagePatternUtil$ArgNode;
    .registers 1

    .line 267
    new-instance v0, Landroid/icu/text/MessagePatternUtil$ArgNode;

    invoke-direct {v0}, Landroid/icu/text/MessagePatternUtil$ArgNode;-><init>()V

    return-object v0
.end method


# virtual methods
.method public greylist-max-o getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .registers 2

    .line 209
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    return-object v0
.end method

.method public greylist-max-o getComplexStyle()Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    return-object v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getNumber()I
    .registers 2

    .line 221
    iget v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->number:I

    return v0
.end method

.method public greylist-max-o getSimpleStyle()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getTypeName()Ljava/lang/String;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v2, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v1, v2, :cond_42

    .line 251
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->typeName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->argType:Landroid/icu/text/MessagePattern$ArgType;

    sget-object v3, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v2, v3, :cond_35

    .line 253
    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    if-eqz v2, :cond_42

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->style:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 257
    :cond_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MessagePatternUtil$ArgNode;->complexStyle:Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    invoke-virtual {v2}, Landroid/icu/text/MessagePatternUtil$ComplexArgStyleNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    :cond_42
    :goto_42
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
