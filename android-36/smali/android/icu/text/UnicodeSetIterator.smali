.class public Landroid/icu/text/UnicodeSetIterator;
.super Ljava/lang/Object;
.source "UnicodeSetIterator.java"


# static fields
.field public static whitelist test-api IS_STRING:I


# instance fields
.field public whitelist test-api codepoint:I

.field public whitelist test-api codepointEnd:I

.field private greylist-max-o endElement:I

.field private greylist-max-o endRange:I

.field private greylist-max-o nextElement:I

.field private greylist-max-o range:I

.field private greylist-max-o set:Landroid/icu/text/UnicodeSet;

.field public whitelist test-api string:Ljava/lang/String;

.field private greylist-max-o stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    const/4 v0, -0x1

    sput v0, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    .line 250
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    .line 98
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->reset(Landroid/icu/text/UnicodeSet;)V

    .line 99
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    .line 250
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    .line 89
    invoke-virtual {p0, p1}, Landroid/icu/text/UnicodeSetIterator;->reset(Landroid/icu/text/UnicodeSet;)V

    .line 90
    return-void
.end method

.method private greylist-max-o loadRange(I)V
    .registers 3
    .param p1, "aRange"    # I

    .line 270
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    .line 271
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    .line 272
    return-void
.end method


# virtual methods
.method public whitelist test-api getString()Ljava/lang/String;
    .registers 3

    .line 240
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v1, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v0, v1, :cond_d

    .line 241
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 243
    :cond_d
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api next()Z
    .registers 4

    .line 137
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_12

    .line 138
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 139
    return v2

    .line 141
    :cond_12
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    if-ge v0, v1, :cond_2b

    .line 142
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    .line 143
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 144
    return v2

    .line 149
    :cond_2b
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    if-nez v0, :cond_31

    .line 150
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_31
    sget v0, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 153
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    .line 157
    :cond_4a
    return v2
.end method

.method public whitelist test-api nextRange()Z
    .registers 4

    .line 180
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_15

    .line 181
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    .line 182
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 183
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    .line 184
    return v2

    .line 186
    :cond_15
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    iget v1, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    if-ge v0, v1, :cond_31

    .line 187
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    .line 188
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepointEnd:I

    .line 189
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 190
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    .line 191
    return v2

    .line 196
    :cond_31
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    if-nez v0, :cond_37

    .line 197
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_37
    sget v0, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    .line 200
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->string:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_50

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    .line 204
    :cond_50
    return v2
.end method

.method public whitelist test-api reset()V
    .registers 3

    .line 222
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    .line 224
    const/4 v1, -0x1

    iput v1, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    .line 225
    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    .line 226
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    if-ltz v0, :cond_1b

    .line 227
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    invoke-direct {p0, v0}, Landroid/icu/text/UnicodeSetIterator;->loadRange(I)V

    .line 229
    :cond_1b
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->hasStrings()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 230
    iget-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    iget-object v0, v0, Landroid/icu/text/UnicodeSet;->strings:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    goto :goto_31

    .line 232
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/UnicodeSetIterator;->stringIterator:Ljava/util/Iterator;

    .line 234
    :goto_31
    return-void
.end method

.method public whitelist test-api reset(Landroid/icu/text/UnicodeSet;)V
    .registers 2
    .param p1, "uset"    # Landroid/icu/text/UnicodeSet;

    .line 214
    iput-object p1, p0, Landroid/icu/text/UnicodeSetIterator;->set:Landroid/icu/text/UnicodeSet;

    .line 215
    invoke-virtual {p0}, Landroid/icu/text/UnicodeSetIterator;->reset()V

    .line 216
    return-void
.end method

.method public whitelist test-api skipToStrings()Landroid/icu/text/UnicodeSetIterator;
    .registers 2

    .line 111
    iget v0, p0, Landroid/icu/text/UnicodeSetIterator;->endRange:I

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->range:I

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->endElement:I

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/UnicodeSetIterator;->nextElement:I

    .line 114
    return-object p0
.end method
