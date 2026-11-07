.class public Landroid/icu/impl/UnicodeMapIterator;
.super Ljava/lang/Object;
.source "UnicodeMapIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static blacklist IS_STRING:I


# instance fields
.field public blacklist codepoint:I

.field public blacklist codepointEnd:I

.field protected blacklist endElement:I

.field private blacklist endRange:I

.field private blacklist map:Landroid/icu/impl/UnicodeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/UnicodeMap<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected blacklist nextElement:I

.field private blacklist range:I

.field public blacklist string:Ljava/lang/String;

.field private blacklist stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    const/4 v0, -0x1

    sput v0, Landroid/icu/impl/UnicodeMapIterator;->IS_STRING:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 101
    .local p0, "this":Landroid/icu/impl/UnicodeMapIterator;, "Landroid/icu/impl/UnicodeMapIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->endRange:I

    .line 237
    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->range:I

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    .line 102
    new-instance v0, Landroid/icu/impl/UnicodeMap;

    invoke-direct {v0}, Landroid/icu/impl/UnicodeMap;-><init>()V

    invoke-virtual {p0, v0}, Landroid/icu/impl/UnicodeMapIterator;->reset(Landroid/icu/impl/UnicodeMap;)V

    .line 103
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/UnicodeMap;)V
    .registers 3
    .param p1, "set"    # Landroid/icu/impl/UnicodeMap;

    .line 92
    .local p0, "this":Landroid/icu/impl/UnicodeMapIterator;, "Landroid/icu/impl/UnicodeMapIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->endRange:I

    .line 237
    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->range:I

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    .line 93
    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeMapIterator;->reset(Landroid/icu/impl/UnicodeMap;)V

    .line 94
    return-void
.end method


# virtual methods
.method public blacklist getString()Ljava/lang/String;
    .registers 3

    .line 227
    .local p0, "this":Landroid/icu/impl/UnicodeMapIterator;, "Landroid/icu/impl/UnicodeMapIterator<TT;>;"
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepoint:I

    sget v1, Landroid/icu/impl/UnicodeMapIterator;->IS_STRING:I

    if-eq v0, v1, :cond_d

    .line 228
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepoint:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 230
    :cond_d
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->string:Ljava/lang/String;

    return-object v0
.end method

.method protected blacklist loadRange(I)Ljava/lang/Object;
    .registers 3
    .param p1, "range"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 247
    .local p0, "this":Landroid/icu/impl/UnicodeMapIterator;, "Landroid/icu/impl/UnicodeMapIterator<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->map:Landroid/icu/impl/UnicodeMap;

    invoke-virtual {v0, p1}, Landroid/icu/impl/UnicodeMap;->getRangeStart(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    .line 248
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->map:Landroid/icu/impl/UnicodeMap;

    invoke-virtual {v0, p1}, Landroid/icu/impl/UnicodeMap;->getRangeEnd(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->endElement:I

    .line 249
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->map:Landroid/icu/impl/UnicodeMap;

    invoke-virtual {v0, p1}, Landroid/icu/impl/UnicodeMap;->getRangeValue(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->value:Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist next()Z
    .registers 4

    .line 124
    .local p0, "this":Landroid/icu/impl/UnicodeMapIterator;, "Landroid/icu/impl/UnicodeMapIterator<TT;>;"
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    iget v1, p0, Landroid/icu/impl/UnicodeMapIterator;->endElement:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_12

    .line 125
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepointEnd:I

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepoint:I

    .line 126
    return v2

    .line 128
    :cond_12
    :goto_12
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->range:I

    iget v1, p0, Landroid/icu/impl/UnicodeMapIterator;->endRange:I

    if-ge v0, v1, :cond_2f

    .line 129
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->range:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->range:I

    invoke-virtual {p0, v0}, Landroid/icu/impl/UnicodeMapIterator;->loadRange(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_24

    .line 130
    goto :goto_12

    .line 132
    :cond_24
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepointEnd:I

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepoint:I

    .line 133
    return v2

    .line 138
    :cond_2f
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    if-nez v0, :cond_35

    const/4 v0, 0x0

    return v0

    .line 139
    :cond_35
    sget v0, Landroid/icu/impl/UnicodeMapIterator;->IS_STRING:I

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepoint:I

    .line 140
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->string:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4e

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    .line 142
    :cond_4e
    return v2
.end method

.method public blacklist nextRange()Z
    .registers 4

    .line 165
    .local p0, "this":Landroid/icu/impl/UnicodeMapIterator;, "Landroid/icu/impl/UnicodeMapIterator<TT;>;"
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    iget v1, p0, Landroid/icu/impl/UnicodeMapIterator;->endElement:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_15

    .line 166
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->endElement:I

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepointEnd:I

    .line 167
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepoint:I

    .line 168
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->endElement:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    .line 169
    return v2

    .line 171
    :cond_15
    :goto_15
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->range:I

    iget v1, p0, Landroid/icu/impl/UnicodeMapIterator;->endRange:I

    if-ge v0, v1, :cond_35

    .line 172
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->range:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->range:I

    invoke-virtual {p0, v0}, Landroid/icu/impl/UnicodeMapIterator;->loadRange(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    .line 173
    goto :goto_15

    .line 175
    :cond_27
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->endElement:I

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepointEnd:I

    .line 176
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepoint:I

    .line 177
    iget v0, p0, Landroid/icu/impl/UnicodeMapIterator;->endElement:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    .line 178
    return v2

    .line 183
    :cond_35
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    return v0

    .line 184
    :cond_3b
    sget v0, Landroid/icu/impl/UnicodeMapIterator;->IS_STRING:I

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->codepoint:I

    .line 185
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->string:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_54

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    .line 187
    :cond_54
    return v2
.end method

.method public blacklist reset()Landroid/icu/impl/UnicodeMapIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/icu/impl/UnicodeMapIterator<",
            "TT;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Landroid/icu/impl/UnicodeMapIterator;, "Landroid/icu/impl/UnicodeMapIterator<TT;>;"
    iget-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->map:Landroid/icu/impl/UnicodeMap;

    invoke-virtual {v0}, Landroid/icu/impl/UnicodeMap;->getRangeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->endRange:I

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->nextElement:I

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->endElement:I

    .line 211
    iput v0, p0, Landroid/icu/impl/UnicodeMapIterator;->range:I

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    .line 214
    iget-object v1, p0, Landroid/icu/impl/UnicodeMapIterator;->map:Landroid/icu/impl/UnicodeMap;

    invoke-virtual {v1}, Landroid/icu/impl/UnicodeMap;->getNonRangeStrings()Ljava/util/Set;

    move-result-object v1

    .line 215
    .local v1, "strings":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2d

    .line 216
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    .line 217
    iget-object v2, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2d

    iput-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->stringIterator:Ljava/util/Iterator;

    .line 219
    :cond_2d
    iput-object v0, p0, Landroid/icu/impl/UnicodeMapIterator;->value:Ljava/lang/Object;

    .line 220
    return-object p0
.end method

.method public blacklist reset(Landroid/icu/impl/UnicodeMap;)V
    .registers 2
    .param p1, "set"    # Landroid/icu/impl/UnicodeMap;

    .line 197
    .local p0, "this":Landroid/icu/impl/UnicodeMapIterator;, "Landroid/icu/impl/UnicodeMapIterator<TT;>;"
    iput-object p1, p0, Landroid/icu/impl/UnicodeMapIterator;->map:Landroid/icu/impl/UnicodeMap;

    .line 198
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeMapIterator;->reset()Landroid/icu/impl/UnicodeMapIterator;

    .line 199
    return-void
.end method
