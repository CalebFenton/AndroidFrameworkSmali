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
.field private static final greylist-max-o MAX_LENGTH:I = 0xffff

.field private static final greylist-max-o MAX_VALUE:I = 0x7fff


# instance fields
.field private final greylist-max-o index:I

.field private final greylist-max-o length:C

.field private greylist-max-o limitPartIndex:I

.field private final greylist-max-o type:Landroid/icu/text/MessagePattern$Part$Type;

.field private greylist-max-o value:S


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetindex(Landroid/icu/text/MessagePattern$Part;)I
    .registers 1

    iget p0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlength(Landroid/icu/text/MessagePattern$Part;)C
    .registers 1

    iget-char p0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlimitPartIndex(Landroid/icu/text/MessagePattern$Part;)I
    .registers 1

    iget p0, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettype(Landroid/icu/text/MessagePattern$Part;)Landroid/icu/text/MessagePattern$Part$Type;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalue(Landroid/icu/text/MessagePattern$Part;)S
    .registers 1

    iget-short p0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputlimitPartIndex(Landroid/icu/text/MessagePattern$Part;I)V
    .registers 2

    iput p1, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputvalue(Landroid/icu/text/MessagePattern$Part;S)V
    .registers 2

    iput-short p1, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/text/MessagePattern$Part$Type;III)V
    .registers 6
    .param p1, "t"    # Landroid/icu/text/MessagePattern$Part$Type;
    .param p2, "i"    # I
    .param p3, "l"    # I
    .param p4, "v"    # I

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    .line 523
    iput p2, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    .line 524
    int-to-char v0, p3

    iput-char v0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    .line 525
    int-to-short v0, p4

    iput-short v0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    .line 526
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/MessagePattern$Part$Type;IIILandroid/icu/text/MessagePattern-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/MessagePattern$Part;-><init>(Landroid/icu/text/MessagePattern$Part$Type;III)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 706
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 707
    return v0

    .line 709
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3a

    .line 712
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/icu/text/MessagePattern$Part;

    .line 713
    .local v2, "o":Landroid/icu/text/MessagePattern$Part;
    iget-object v3, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    iget-object v4, v2, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    .line 714
    invoke-virtual {v3, v4}, Landroid/icu/text/MessagePattern$Part$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget v3, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    iget v4, v2, Landroid/icu/text/MessagePattern$Part;->index:I

    if-ne v3, v4, :cond_38

    iget-char v3, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    iget-char v4, v2, Landroid/icu/text/MessagePattern$Part;->length:C

    if-ne v3, v4, :cond_38

    iget-short v3, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    iget-short v4, v2, Landroid/icu/text/MessagePattern$Part;->value:S

    if-ne v3, v4, :cond_38

    iget v3, p0, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    iget v4, v2, Landroid/icu/text/MessagePattern$Part;->limitPartIndex:I

    if-ne v3, v4, :cond_38

    goto :goto_39

    :cond_38
    move v0, v1

    .line 713
    :goto_39
    return v0

    .line 710
    .end local v2    # "o":Landroid/icu/text/MessagePattern$Part;
    :cond_3a
    :goto_3a
    return v1
.end method

.method public whitelist test-api getArgType()Landroid/icu/text/MessagePattern$ArgType;
    .registers 4

    .line 577
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 578
    .local v0, "type":Landroid/icu/text/MessagePattern$Part$Type;
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v0, v1, :cond_10

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_d

    goto :goto_10

    .line 581
    :cond_d
    sget-object v1, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    return-object v1

    .line 579
    :cond_10
    :goto_10
    invoke-static {}, Landroid/icu/text/MessagePattern;->-$$Nest$sfgetargTypes()[Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v1

    iget-short v2, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    aget-object v1, v1, v2

    return-object v1
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 541
    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    return v0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 550
    iget-char v0, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    return v0
.end method

.method public whitelist test-api getLimit()I
    .registers 3

    .line 559
    iget v0, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    iget-char v1, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api getType()Landroid/icu/text/MessagePattern$Part$Type;
    .registers 2

    .line 533
    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    return-object v0
.end method

.method public whitelist test-api getValue()I
    .registers 2

    .line 568
    iget-short v0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 726
    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part$Type;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-char v1, p0, Landroid/icu/text/MessagePattern$Part;->length:C

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-short v1, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 695
    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_d

    goto :goto_14

    .line 696
    :cond_d
    iget-short v0, p0, Landroid/icu/text/MessagePattern$Part;->value:S

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_14
    :goto_14
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$ArgType;->name()Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "valueString":Ljava/lang/String;
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/text/MessagePattern$Part;->type:Landroid/icu/text/MessagePattern$Part$Type;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/MessagePattern$Part;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
