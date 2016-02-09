.class public Landroid/widget/GridLayout$Spec;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final DEFAULT_WEIGHT:F

.field static final UNDEFINED:Landroid/widget/GridLayout$Spec;


# instance fields
.field final alignment:Landroid/widget/GridLayout$Alignment;

.field final span:Landroid/widget/GridLayout$Interval;

.field final startDefined:Z

.field final weight:F


# direct methods
.method static synthetic -wrap0(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;
    .locals 1
    .param p1, "horizontal"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/widget/GridLayout$Alignment;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2520
    const/high16 v0, -0x80000000

    #@2
    invoke-static {v0}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    #@8
    .line 2519
    return-void
.end method

.method private constructor <init>(ZIILandroid/widget/GridLayout$Alignment;F)V
    .locals 2
    .param p1, "startDefined"    # Z
    .param p2, "start"    # I
    .param p3, "size"    # I
    .param p4, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p5, "weight"    # F

    #@0
    .prologue
    .line 2536
    new-instance v0, Landroid/widget/GridLayout$Interval;

    #@2
    add-int v1, p2, p3

    #@4
    invoke-direct {v0, p2, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    #@7
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    #@a
    .line 2535
    return-void
.end method

.method synthetic constructor <init>(ZIILandroid/widget/GridLayout$Alignment;FLandroid/widget/GridLayout$Spec;)V
    .locals 0
    .param p1, "startDefined"    # Z
    .param p2, "start"    # I
    .param p3, "size"    # I
    .param p4, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p5, "weight"    # F

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;F)V

    #@3
    return-void
.end method

.method private constructor <init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V
    .locals 0
    .param p1, "startDefined"    # Z
    .param p2, "span"    # Landroid/widget/GridLayout$Interval;
    .param p3, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p4, "weight"    # F

    #@0
    .prologue
    .line 2528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2529
    iput-boolean p1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    #@5
    .line 2530
    iput-object p2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@7
    .line 2531
    iput-object p3, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    #@9
    .line 2532
    iput p4, p0, Landroid/widget/GridLayout$Spec;->weight:F

    #@b
    .line 2528
    return-void
.end method

.method private getAbsoluteAlignment(Z)Landroid/widget/GridLayout$Alignment;
    .locals 2
    .param p1, "horizontal"    # Z

    #@0
    .prologue
    .line 2540
    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    #@2
    sget-object v1, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 2541
    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    #@8
    return-object v0

    #@9
    .line 2543
    :cond_0
    iget v0, p0, Landroid/widget/GridLayout$Spec;->weight:F

    #@b
    const/4 v1, 0x0

    #@c
    cmpl-float v0, v0, v1

    #@e
    if-nez v0, :cond_2

    #@10
    .line 2544
    if-eqz p1, :cond_1

    #@12
    sget-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    #@14
    :goto_0
    return-object v0

    #@15
    :cond_1
    sget-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    #@17
    goto :goto_0

    #@18
    .line 2546
    :cond_2
    sget-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    #@1a
    return-object v0
.end method


# virtual methods
.method final copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .locals 4
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;

    #@0
    .prologue
    .line 2554
    new-instance v0, Landroid/widget/GridLayout$Spec;

    #@2
    iget-boolean v1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    #@4
    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@6
    iget v3, p0, Landroid/widget/GridLayout$Spec;->weight:F

    #@8
    invoke-direct {v0, v1, v2, p1, v3}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    #@b
    return-object v0
.end method

.method final copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;
    .locals 4
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;

    #@0
    .prologue
    .line 2550
    new-instance v0, Landroid/widget/GridLayout$Spec;

    #@2
    iget-boolean v1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    #@4
    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    #@6
    iget v3, p0, Landroid/widget/GridLayout$Spec;->weight:F

    #@8
    invoke-direct {v0, v1, p1, v2, v3}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    #@b
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2573
    if-ne p0, p1, :cond_0

    #@4
    .line 2574
    return v4

    #@5
    .line 2576
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/widget/GridLayout$Spec;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    .line 2577
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 2580
    check-cast v0, Landroid/widget/GridLayout$Spec;

    #@15
    .line 2582
    .local v0, "spec":Landroid/widget/GridLayout$Spec;
    iget-object v1, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    #@17
    iget-object v2, v0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    #@19
    invoke-virtual {v1, v2}, Landroid/widget/GridLayout$Alignment;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_3

    #@1f
    .line 2583
    return v3

    #@20
    .line 2586
    :cond_3
    iget-object v1, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@22
    iget-object v2, v0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@24
    invoke-virtual {v1, v2}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_4

    #@2a
    .line 2587
    return v3

    #@2b
    .line 2590
    :cond_4
    return v4
.end method

.method final getFlexibility()I
    .locals 2

    #@0
    .prologue
    .line 2558
    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    #@2
    sget-object v1, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    iget v0, p0, Landroid/widget/GridLayout$Spec;->weight:F

    #@8
    const/4 v1, 0x0

    #@9
    cmpl-float v0, v0, v1

    #@b
    if-nez v0, :cond_0

    #@d
    const/4 v0, 0x0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x2

    #@10
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 2595
    iget-object v1, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    #@2
    invoke-virtual {v1}, Landroid/widget/GridLayout$Interval;->hashCode()I

    #@5
    move-result v0

    #@6
    .line 2596
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@8
    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    #@a
    invoke-virtual {v2}, Landroid/widget/GridLayout$Alignment;->hashCode()I

    #@d
    move-result v2

    #@e
    add-int v0, v1, v2

    #@10
    .line 2597
    return v0
.end method
