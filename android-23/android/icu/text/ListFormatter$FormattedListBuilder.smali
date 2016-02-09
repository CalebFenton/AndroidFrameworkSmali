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
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 260
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
    .line 261
    if-eqz p2, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    :goto_0
    iput v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@13
    .line 259
    return-void

    #@14
    .line 261
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
    .line 300
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
.method public append(Landroid/icu/impl/SimplePatternFormatter;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;
    .locals 7
    .param p1, "pattern"    # Landroid/icu/impl/SimplePatternFormatter;
    .param p2, "next"    # Ljava/lang/Object;
    .param p3, "recordOffset"    # Z

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v2, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 269
    invoke-virtual {p1}, Landroid/icu/impl/SimplePatternFormatter;->getPlaceholderCount()I

    #@7
    move-result v1

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 270
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "Need {0} and {1} only in pattern "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 272
    :cond_0
    if-nez p3, :cond_1

    #@26
    invoke-direct {p0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offsetRecorded()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_3

    #@2c
    :cond_1
    new-array v0, v2, [I

    #@2e
    .line 274
    :goto_0
    iget-object v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->current:Ljava/lang/StringBuilder;

    #@30
    .line 273
    new-array v2, v2, [Ljava/lang/CharSequence;

    #@32
    .line 274
    iget-object v3, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->current:Ljava/lang/StringBuilder;

    #@34
    aput-object v3, v2, v4

    #@36
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    aput-object v3, v2, v5

    #@3c
    .line 273
    invoke-virtual {p1, v1, v0, v2}, Landroid/icu/impl/SimplePatternFormatter;->formatAndReplace(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3f
    .line 275
    if-eqz v0, :cond_5

    #@41
    .line 276
    aget v1, v0, v4

    #@43
    if-eq v1, v6, :cond_2

    #@45
    aget v1, v0, v5

    #@47
    if-ne v1, v6, :cond_4

    #@49
    .line 277
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4b
    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v3, "{0} or {1} missing from pattern "

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    .line 277
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@62
    throw v1

    #@63
    .line 272
    :cond_3
    const/4 v0, 0x0

    #@64
    .local v0, "offsets":[I
    goto :goto_0

    #@65
    .line 280
    .end local v0    # "offsets":[I
    :cond_4
    if-eqz p3, :cond_6

    #@67
    .line 281
    aget v1, v0, v5

    #@69
    iput v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@6b
    .line 286
    :cond_5
    :goto_1
    return-object p0

    #@6c
    .line 283
    :cond_6
    iget v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@6e
    aget v2, v0, v4

    #@70
    add-int/2addr v1, v2

    #@71
    iput v1, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@73
    goto :goto_1
.end method

.method public getOffset()I
    .locals 1

    #@0
    .prologue
    .line 296
    iget v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->offset:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;->current:Ljava/lang/StringBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
