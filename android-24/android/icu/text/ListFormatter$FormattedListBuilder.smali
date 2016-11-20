.class Landroid/icu/text/ListFormatter$FormattedListBuilder;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormattedListBuilder"
.end annotation


# instance fields
.field private current:Ljava/lang/StringBuilder;

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "start"    # Ljava/lang/Object;
    .param p2, "recordOffset"    # Z

    #@0
    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    iput-object v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->current:Ljava/lang/StringBuilder;

    #@e
    .line 258
    if-eqz p2, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    :goto_0
    iput v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@13
    .line 256
    return-void

    #@14
    .line 258
    :cond_0
    const/4 v0, -0x1

    #@15
    goto :goto_0
.end method

.method private offsetRecorded()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 294
    iget v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@3
    if-ltz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "next"    # Ljava/lang/Object;
    .param p3, "recordOffset"    # Z

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 266
    if-nez p3, :cond_0

    #@6
    invoke-direct {p0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offsetRecorded()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_2

    #@c
    :cond_0
    new-array v0, v2, [I

    #@e
    .line 268
    :goto_0
    iget-object v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->current:Ljava/lang/StringBuilder;

    #@10
    .line 267
    new-array v2, v2, [Ljava/lang/CharSequence;

    #@12
    .line 268
    iget-object v3, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->current:Ljava/lang/StringBuilder;

    #@14
    aput-object v3, v2, v4

    #@16
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    aput-object v3, v2, v5

    #@1c
    .line 267
    invoke-static {p1, v1, v0, v2}, Landroid/icu/impl/SimplePatternFormatter;->formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1f
    .line 269
    if-eqz v0, :cond_4

    #@21
    .line 270
    aget v1, v0, v4

    #@23
    if-eq v1, v6, :cond_1

    #@25
    aget v1, v0, v5

    #@27
    if-ne v1, v6, :cond_3

    #@29
    .line 271
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2b
    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "{0} or {1} missing from pattern "

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v2

    #@3f
    .line 271
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v1

    #@43
    .line 266
    :cond_2
    const/4 v0, 0x0

    #@44
    .local v0, "offsets":[I
    goto :goto_0

    #@45
    .line 274
    .end local v0    # "offsets":[I
    :cond_3
    if-eqz p3, :cond_5

    #@47
    .line 275
    aget v1, v0, v5

    #@49
    iput v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@4b
    .line 280
    :cond_4
    :goto_1
    return-object p0

    #@4c
    .line 277
    :cond_5
    iget v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@4e
    aget v2, v0, v4

    #@50
    add-int/2addr v1, v2

    #@51
    iput v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@53
    goto :goto_1
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 290
    iget v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 285
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->current:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
