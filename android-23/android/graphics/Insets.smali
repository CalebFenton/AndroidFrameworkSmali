.class public Landroid/graphics/Insets;
.super Ljava/lang/Object;
.source "Insets.java"


# static fields
.field public static final NONE:Landroid/graphics/Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 29
    new-instance v0, Landroid/graphics/Insets;

    #@3
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Insets;-><init>(IIII)V

    #@6
    sput-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@8
    .line 28
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput p1, p0, Landroid/graphics/Insets;->left:I

    #@5
    .line 38
    iput p2, p0, Landroid/graphics/Insets;->top:I

    #@7
    .line 39
    iput p3, p0, Landroid/graphics/Insets;->right:I

    #@9
    .line 40
    iput p4, p0, Landroid/graphics/Insets;->bottom:I

    #@b
    .line 36
    return-void
.end method

.method public static of(IIII)Landroid/graphics/Insets;
    .locals 1
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    #@0
    .prologue
    .line 56
    if-nez p0, :cond_0

    #@2
    if-nez p1, :cond_0

    #@4
    if-nez p2, :cond_0

    #@6
    if-nez p3, :cond_0

    #@8
    .line 57
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@a
    return-object v0

    #@b
    .line 59
    :cond_0
    new-instance v0, Landroid/graphics/Insets;

    #@d
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Insets;-><init>(IIII)V

    #@10
    return-object v0
.end method

.method public static of(Landroid/graphics/Rect;)Landroid/graphics/Insets;
    .locals 4
    .param p0, "r"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 70
    if-nez p0, :cond_0

    #@2
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    #@7
    iget v1, p0, Landroid/graphics/Rect;->top:I

    #@9
    iget v2, p0, Landroid/graphics/Rect;->right:I

    #@b
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    #@d
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    #@10
    move-result-object v0

    #@11
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 83
    if-ne p0, p1, :cond_0

    #@4
    return v4

    #@5
    .line 84
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/graphics/Insets;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 86
    check-cast v0, Landroid/graphics/Insets;

    #@15
    .line 88
    .local v0, "insets":Landroid/graphics/Insets;
    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    #@17
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    #@19
    if-eq v1, v2, :cond_3

    #@1b
    return v3

    #@1c
    .line 89
    :cond_3
    iget v1, p0, Landroid/graphics/Insets;->left:I

    #@1e
    iget v2, v0, Landroid/graphics/Insets;->left:I

    #@20
    if-eq v1, v2, :cond_4

    #@22
    return v3

    #@23
    .line 90
    :cond_4
    iget v1, p0, Landroid/graphics/Insets;->right:I

    #@25
    iget v2, v0, Landroid/graphics/Insets;->right:I

    #@27
    if-eq v1, v2, :cond_5

    #@29
    return v3

    #@2a
    .line 91
    :cond_5
    iget v1, p0, Landroid/graphics/Insets;->top:I

    #@2c
    iget v2, v0, Landroid/graphics/Insets;->top:I

    #@2e
    if-eq v1, v2, :cond_6

    #@30
    return v3

    #@31
    .line 93
    :cond_6
    return v4
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 98
    iget v0, p0, Landroid/graphics/Insets;->left:I

    #@2
    .line 99
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    #@4
    iget v2, p0, Landroid/graphics/Insets;->top:I

    #@6
    add-int v0, v1, v2

    #@8
    .line 100
    mul-int/lit8 v1, v0, 0x1f

    #@a
    iget v2, p0, Landroid/graphics/Insets;->right:I

    #@c
    add-int v0, v1, v2

    #@e
    .line 101
    mul-int/lit8 v1, v0, 0x1f

    #@10
    iget v2, p0, Landroid/graphics/Insets;->bottom:I

    #@12
    add-int v0, v1, v2

    #@14
    .line 102
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Insets{left="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    .line 108
    iget v1, p0, Landroid/graphics/Insets;->left:I

    #@e
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 109
    const-string/jumbo v1, ", top="

    #@15
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 109
    iget v1, p0, Landroid/graphics/Insets;->top:I

    #@1b
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 110
    const-string/jumbo v1, ", right="

    #@22
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 110
    iget v1, p0, Landroid/graphics/Insets;->right:I

    #@28
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 111
    const-string/jumbo v1, ", bottom="

    #@2f
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 111
    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    #@35
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 112
    const/16 v1, 0x7d

    #@3b
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method
