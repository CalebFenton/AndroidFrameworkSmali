.class Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;
.super Ljava/lang/Object;
.source "SimplePatternFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/SimplePatternFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceholderIdBuilder"
.end annotation


# instance fields
.field private id:I

.field private idLen:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 314
    iput v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->id:I

    #@6
    .line 315
    iput v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->idLen:I

    #@8
    .line 313
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public add(C)V
    .locals 1
    .param p1, "ch"    # C

    #@0
    .prologue
    .line 337
    iget v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->id:I

    #@2
    mul-int/lit8 v0, v0, 0xa

    #@4
    add-int/2addr v0, p1

    #@5
    add-int/lit8 v0, v0, -0x30

    #@7
    iput v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->id:I

    #@9
    .line 338
    iget v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->idLen:I

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    iput v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->idLen:I

    #@f
    .line 336
    return-void
.end method

.method public appendTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 327
    iget v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->idLen:I

    #@2
    if-lez v0, :cond_0

    #@4
    .line 328
    iget v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->id:I

    #@6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9
    .line 326
    :cond_0
    return-void
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 323
    iget v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->id:I

    #@2
    return v0
.end method

.method public isValid()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 333
    iget v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->idLen:I

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 318
    iput v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->id:I

    #@3
    .line 319
    iput v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderIdBuilder;->idLen:I

    #@5
    .line 317
    return-void
.end method
