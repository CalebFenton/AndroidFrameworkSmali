.class public final Landroid/icu/impl/CaseMapImpl$StringContextIterator;
.super Ljava/lang/Object;
.source "CaseMapImpl.java"

# interfaces
.implements Landroid/icu/impl/UCaseProps$ContextIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/CaseMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringContextIterator"
.end annotation


# instance fields
.field protected blacklist cpLimit:I

.field protected blacklist cpStart:I

.field protected blacklist dir:I

.field protected blacklist index:I

.field protected blacklist limit:I

.field protected blacklist s:Ljava/lang/CharSequence;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "src"    # Ljava/lang/CharSequence;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 35
    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "cpStart"    # I
    .param p3, "cpLimit"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    .line 47
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    .line 48
    iput p2, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 49
    iput p3, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    .line 50
    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist getCPLength()I
    .registers 3

    .line 126
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iget v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public blacklist getCPLimit()I
    .registers 2

    .line 122
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    return v0
.end method

.method public blacklist getCPStart()I
    .registers 2

    .line 114
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    return v0
.end method

.method public blacklist moveTo(I)V
    .registers 2
    .param p1, "i"    # I

    .line 79
    iput p1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput p1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 80
    return-void
.end method

.method public blacklist moveToLimit()V
    .registers 2

    .line 75
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 76
    return-void
.end method

.method public blacklist next()I
    .registers 4

    .line 152
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    if-lez v0, :cond_20

    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    iget-object v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 153
    iget-object v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 154
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    .line 155
    return v0

    .line 156
    .end local v0    # "c":I
    :cond_20
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    if-gez v0, :cond_3a

    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    if-lez v0, :cond_3a

    .line 157
    iget-object v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 158
    .restart local v0    # "c":I
    iget v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    .line 159
    return v0

    .line 161
    .end local v0    # "c":I
    :cond_3a
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist nextCaseMapCP()I
    .registers 4

    .line 94
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 95
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iget v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    if-ge v0, v1, :cond_1c

    .line 96
    iget-object v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 97
    .local v0, "c":I
    iget v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    .line 98
    return v0

    .line 100
    .end local v0    # "c":I
    :cond_1c
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist reset(I)V
    .registers 3
    .param p1, "direction"    # I

    .line 133
    if-lez p1, :cond_a

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 136
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    goto :goto_19

    .line 137
    :cond_a
    if-gez p1, :cond_14

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 140
    iget v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    goto :goto_19

    .line 143
    :cond_14
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 144
    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    .line 146
    :goto_19
    return-void
.end method

.method public blacklist setCPStartAndLimit(II)V
    .registers 4
    .param p1, "s"    # I
    .param p2, "l"    # I

    .line 105
    iput p1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 106
    iput p2, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 108
    return-void
.end method

.method public blacklist setLimit(I)V
    .registers 3
    .param p1, "lim"    # I

    .line 64
    if-ltz p1, :cond_d

    iget-object v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_d

    .line 65
    iput p1, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    goto :goto_15

    .line 67
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    .line 69
    :goto_15
    return-void
.end method
