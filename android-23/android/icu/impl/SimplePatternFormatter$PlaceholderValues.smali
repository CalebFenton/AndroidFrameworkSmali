.class Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;
.super Ljava/lang/Object;
.source "SimplePatternFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/SimplePatternFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceholderValues"
.end annotation


# instance fields
.field private appendTo:Ljava/lang/CharSequence;

.field private appendToCopy:Ljava/lang/String;

.field private final values:[Ljava/lang/CharSequence;


# direct methods
.method public varargs constructor <init>([Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "values"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 387
    iput-object p1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->values:[Ljava/lang/CharSequence;

    #@6
    .line 388
    iput-object v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->appendTo:Ljava/lang/CharSequence;

    #@8
    .line 389
    iput-object v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->appendToCopy:Ljava/lang/String;

    #@a
    .line 386
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 416
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->appendTo:Ljava/lang/CharSequence;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->appendTo:Ljava/lang/CharSequence;

    #@6
    iget-object v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->values:[Ljava/lang/CharSequence;

    #@8
    aget-object v1, v1, p1

    #@a
    if-eq v0, v1, :cond_1

    #@c
    .line 417
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->values:[Ljava/lang/CharSequence;

    #@e
    aget-object v0, v0, p1

    #@10
    return-object v0

    #@11
    .line 419
    :cond_1
    iget-object v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->appendToCopy:Ljava/lang/String;

    #@13
    return-object v0
.end method

.method public isAppendToInAnyIndexExcept(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p1, "appendTo"    # Ljava/lang/CharSequence;
    .param p2, "exceptIndex"    # I

    #@0
    .prologue
    .line 396
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->values:[Ljava/lang/CharSequence;

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 397
    if-eq v0, p2, :cond_0

    #@8
    iget-object v1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->values:[Ljava/lang/CharSequence;

    #@a
    aget-object v1, v1, v0

    #@c
    if-ne v1, p1, :cond_0

    #@e
    .line 398
    const/4 v1, 0x1

    #@f
    return v1

    #@10
    .line 396
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 401
    :cond_1
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public snapshotAppendTo(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "appendTo"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 408
    iput-object p1, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->appendTo:Ljava/lang/CharSequence;

    #@2
    .line 409
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Landroid/icu/impl/SimplePatternFormatter$PlaceholderValues;->appendToCopy:Ljava/lang/String;

    #@8
    .line 407
    return-void
.end method
