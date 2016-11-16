.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;
.source "PorterDuffColorFilter.java"


# instance fields
.field private mColor:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    #@3
    .line 41
    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    #@5
    .line 42
    iput-object p2, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    #@7
    .line 43
    invoke-direct {p0}, Landroid/graphics/PorterDuffColorFilter;->update()V

    #@a
    .line 40
    return-void
.end method

.method private static native native_CreatePorterDuffFilter(II)J
.end method

.method private update()V
    .locals 2

    #@0
    .prologue
    .line 105
    iget-wide v0, p0, Landroid/graphics/PorterDuffColorFilter;->native_instance:J

    #@2
    invoke-static {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->destroyFilter(J)V

    #@5
    .line 106
    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    #@7
    iget-object v1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    #@9
    iget v1, v1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    #@b
    invoke-static {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->native_CreatePorterDuffFilter(II)J

    #@e
    move-result-wide v0

    #@f
    iput-wide v0, p0, Landroid/graphics/PorterDuffColorFilter;->native_instance:J

    #@11
    .line 104
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 111
    if-ne p0, p1, :cond_0

    #@4
    .line 112
    return v4

    #@5
    .line 114
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/graphics/PorterDuffColorFilter;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    if-eq v1, v2, :cond_2

    #@11
    .line 115
    :cond_1
    return v3

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 117
    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    #@15
    .line 118
    .local v0, "other":Landroid/graphics/PorterDuffColorFilter;
    iget v1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    #@17
    iget v2, v0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    #@19
    if-ne v1, v2, :cond_3

    #@1b
    iget-object v1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    #@1d
    iget-object v2, v0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    #@1f
    if-eq v1, v2, :cond_4

    #@21
    .line 119
    :cond_3
    return v3

    #@22
    .line 121
    :cond_4
    return v4
.end method

.method public getColor()I
    .locals 1

    #@0
    .prologue
    .line 56
    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    #@2
    return v0
.end method

.method public getMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    #@5
    move-result v0

    #@6
    mul-int/lit8 v0, v0, 0x1f

    #@8
    iget v1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 72
    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    #@2
    .line 73
    invoke-direct {p0}, Landroid/graphics/PorterDuffColorFilter;->update()V

    #@5
    .line 71
    return-void
.end method

.method public setMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    #@0
    .prologue
    .line 100
    iput-object p1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    #@2
    .line 101
    invoke-direct {p0}, Landroid/graphics/PorterDuffColorFilter;->update()V

    #@5
    .line 99
    return-void
.end method
