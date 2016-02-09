.class public final Landroid/icu/text/MessagePattern$Part;
.super Ljava/lang/Object;
.source "MessagePattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessagePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessagePattern$Part$Type;
    }
.end annotation


# static fields
.field private static final MAX_LENGTH:I = 0xffff

.field private static final MAX_VALUE:I = 0x7fff


# instance fields
.field private final index:I

.field private final length:C

.field private limitPartIndex:I

.field private final type:Landroid/icu/text/MessagePattern$Part$Type;

.field private value:S


# direct methods
.method static synthetic -get0(Landroid/icu/text/MessagePattern$Part;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/icu/text/MessagePattern$Part;)C
    .locals 1

    #@0
    iget-char v0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/icu/text/MessagePattern$Part;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/icu/text/MessagePattern$Part;)S
    .locals 1

    #@0
    iget-short v0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/icu/text/MessagePattern$Part;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/icu/text/MessagePattern$Part;S)S
    .locals 0

    #@0
    iput-short p1, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    #@2
    return p1
.end method

.method private constructor <init>(Landroid/icu/text/MessagePattern$Part$Type;III)V
    .locals 1
    .param p1, "t"    # Landroid/icu/text/MessagePattern$Part$Type;
    .param p2, "i"    # I
    .param p3, "l"    # I
    .param p4, "v"    # I

    #@0
    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 553
    iput-object p1, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    #@5
    .line 554
    iput p2, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    #@7
    .line 555
    int-to-char v0, p3

    #@8
    iput-char v0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    #@a
    .line 556
    int-to-short v0, p4

    #@b
    iput-short v0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    #@d
    .line 552
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/MessagePattern$Part$Type;IIILandroid/icu/text/MessagePattern$Part;)V
    .locals 0
    .param p1, "t"    # Landroid/icu/text/MessagePattern$Part$Type;
    .param p2, "i"    # I
    .param p3, "l"    # I
    .param p4, "v"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/MessagePattern$Part;-><init>(Landroid/icu/text/MessagePattern$Part$Type;III)V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 761
    if-ne p0, p1, :cond_0

    #@4
    .line 762
    return v1

    #@5
    .line 764
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern$Part;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v4

    #@f
    if-eq v3, v4, :cond_2

    #@11
    .line 765
    :cond_1
    return v2

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 767
    check-cast v0, Landroid/icu/text/MessagePattern$Part;

    #@15
    .line 769
    .local v0, "o":Landroid/icu/text/MessagePattern$Part;
    iget-object v3, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    #@17
    iget-object v4, v0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    #@19
    invoke-virtual {v3, v4}, Landroid/icu/text/MessagePattern$Part$Type;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_4

    #@1f
    .line 770
    iget v3, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    #@21
    iget v4, v0, Landroid/icu/text/MessagePattern$Part;->index:I

    #@23
    if-ne v3, v4, :cond_4

    #@25
    .line 771
    iget-char v3, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    #@27
    iget-char v4, v0, Landroid/icu/text/MessagePattern$Part;->length:C

    #@29
    if-ne v3, v4, :cond_4

    #@2b
    .line 772
    iget-short v3, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    #@2d
    iget-short v4, v0, Landroid/icu/text/MessagePattern$Part;->value:S

    #@2f
    if-ne v3, v4, :cond_4

    #@31
    .line 773
    iget v3, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    #@33
    iget v4, v0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    #@35
    if-ne v3, v4, :cond_3

    #@37
    .line 768
    :goto_0
    return v1

    #@38
    :cond_3
    move v1, v2

    #@39
    .line 773
    goto :goto_0

    #@3a
    :cond_4
    move v1, v2

    #@3b
    .line 769
    goto :goto_0
.end method

.method public getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .locals 3

    #@0
    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    #@3
    move-result-object v0

    #@4
    .line 615
    .local v0, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@a
    if-ne v0, v1, :cond_1

    #@c
    .line 616
    :cond_0
    invoke-static {}, Landroid/icu/text/MessagePattern;->-get0()[Landroid/icu/text/MessagePattern$ArgType;

    #@f
    move-result-object v1

    #@10
    iget-short v2, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    #@12
    aget-object v1, v1, v2

    #@14
    return-object v1

    #@15
    .line 618
    :cond_1
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    #@17
    return-object v1
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 574
    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    #@2
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 584
    iget-char v0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    #@2
    return v0
.end method

.method public getLimit()I
    .locals 2

    #@0
    .prologue
    .line 594
    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    #@2
    iget-char v1, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    #@4
    add-int/2addr v0, v1

    #@5
    return v0
.end method

.method public getType()Landroid/icu/text/MessagePattern$Part$Type;
    .locals 1

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    #@2
    return-object v0
.end method

.method public getValue()I
    .locals 1

    #@0
    .prologue
    .line 604
    iget-short v0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 782
    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part$Type;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x25

    #@8
    iget v1, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    #@a
    add-int/2addr v0, v1

    #@b
    mul-int/lit8 v0, v0, 0x25

    #@d
    iget-char v1, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    #@f
    add-int/2addr v0, v1

    #@10
    mul-int/lit8 v0, v0, 0x25

    #@12
    iget-short v1, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    #@14
    add-int/2addr v0, v1

    #@15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 749
    iget-object v1, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    #@2
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    #@4
    if-eq v1, v2, :cond_0

    #@6
    iget-object v1, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    #@8
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    #@a
    if-ne v1, v2, :cond_1

    #@c
    .line 750
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$ArgType;->name()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 751
    .local v0, "valueString":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    iget-object v2, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    #@1b
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part$Type;->name()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    const-string/jumbo v2, "("

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, ")@"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    iget v2, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    return-object v1

    #@40
    .line 750
    .end local v0    # "valueString":Ljava/lang/String;
    :cond_1
    iget-short v1, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    #@42
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .restart local v0    # "valueString":Ljava/lang/String;
    goto :goto_0
.end method
